Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F46822F02
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 10:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efyrLdADOZmbuU05pA833uKkRIXCnikO+tGpapmKV5k=; b=LT6FiKcSDm5fIL
	n9RgD4ri5eJ+X4UHN2b0smbozZe2YXxjdM99CacHJZXc2wb8/VQsQDKowIfwvH7OR/59m51HdFjB/
	Wux5NGvF1iwps01obIIlZvD5zNhHcABwN+VjsfMlDrp/JAWzCwHhq38jyQX/k0XhFf9T76fZ+p6qy
	k3T+BlLArVtRT1FcTATeD72SRUcDA8CJjRBFBLBt7ceqN7m27oWnmkyVE81XUGDXL4jrxbQWCILlj
	+z8KaStmjqsjGxN7NTj69tTbib5oZIz5EIoOl1StN6yHZ61iK+7yL7XnasByFfYgOuXuHdInbw/RD
	T9my8hS6N9wz5BErbuUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdk7-0003ml-8n; Mon, 20 May 2019 08:33:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdjV-0002uC-4b; Mon, 20 May 2019 08:33:22 +0000
X-UUID: c421297dde4b4c03963868779697e335-20190520
X-UUID: c421297dde4b4c03963868779697e335-20190520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1358004321; Mon, 20 May 2019 00:33:04 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 01:33:03 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 16:32:55 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 20 May 2019 16:32:55 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v3 2/3] scsi: ufs: Add error-handling of Auto-Hibernate
Date: Mon, 20 May 2019 16:32:17 +0800
Message-ID: <1558341138-18043-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1558341138-18043-1-git-send-email-stanley.chu@mediatek.com>
References: <1558341138-18043-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 49862B3C88F00119DC35D92BF2C624170F9E891BB6FEF31993D3D961EA02A64C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_013321_230426_089EEF70 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Currently auto-hibernate is activated if host supports
auto-hibern8 capability. However error-handling is not implemented,
which makes the feature somewhat risky.

If either "Hibernate Enter" or "Hibernate Exit" fail during
auto-hibernate flow, the corresponding interrupt
"UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
according to UFS specification.

This patch adds auto-hibernate error-handling:

- Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
  auto-hibernate feature is activated.

- If fail happens, trigger error-handling just like "manual-hibernate"
  fail and apply the same recovery flow: schedule UFS error handler in
  ufshcd_check_errors(), and then do host reset and restore
  in UFS error handler.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 31 +++++++++++++++++++++++++++++++
 drivers/scsi/ufs/ufshcd.h |  5 +++++
 drivers/scsi/ufs/ufshci.h |  3 +++
 3 files changed, 39 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ba04d07df279..2123b0bbb1c2 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5254,6 +5254,7 @@ static void ufshcd_err_handler(struct work_struct *work)
 			goto skip_err_handling;
 	}
 	if ((hba->saved_err & INT_FATAL_ERRORS) ||
+	    (hba->saved_err & UFSHCD_UIC_AH8_ERROR_MASK) ||
 	    ((hba->saved_err & UIC_ERROR) &&
 	    (hba->saved_uic_err & (UFSHCD_UIC_DL_PA_INIT_ERROR |
 				   UFSHCD_UIC_DL_NAC_RECEIVED_ERROR |
@@ -5413,6 +5414,23 @@ static void ufshcd_update_uic_error(struct ufs_hba *hba)
 			__func__, hba->uic_error);
 }
 
+static bool ufshcd_is_auto_hibern8_error(struct ufs_hba *hba,
+					 u32 intr_mask)
+{
+	if (!ufshcd_is_auto_hibern8_supported(hba))
+		return false;
+
+	if (!(intr_mask & UFSHCD_UIC_AH8_ERROR_MASK))
+		return false;
+
+	if (hba->active_uic_cmd &&
+	    (hba->active_uic_cmd->command == UIC_CMD_DME_HIBER_ENTER ||
+	    hba->active_uic_cmd->command == UIC_CMD_DME_HIBER_EXIT))
+		return false;
+
+	return true;
+}
+
 /**
  * ufshcd_check_errors - Check for errors that need s/w attention
  * @hba: per-adapter instance
@@ -5431,6 +5449,15 @@ static void ufshcd_check_errors(struct ufs_hba *hba)
 			queue_eh_work = true;
 	}
 
+	if (hba->errors & UFSHCD_UIC_AH8_ERROR_MASK) {
+		dev_err(hba->dev,
+			"%s: Auto Hibern8 %s failed - status: 0x%08x, upmcrs: 0x%08x\n",
+			__func__, (hba->errors & UIC_HIBERNATE_ENTER) ?
+			"Enter" : "Exit",
+			hba->errors, ufshcd_get_upmcrs(hba));
+		queue_eh_work = true;
+	}
+
 	if (queue_eh_work) {
 		/*
 		 * update the transfer error masks to sticky bits, let's do this
@@ -5493,6 +5520,10 @@ static void ufshcd_tmc_handler(struct ufs_hba *hba)
 static void ufshcd_sl_intr(struct ufs_hba *hba, u32 intr_status)
 {
 	hba->errors = UFSHCD_ERROR_MASK & intr_status;
+
+	if (ufshcd_is_auto_hibern8_error(hba, intr_status))
+		hba->errors |= (UFSHCD_UIC_AH8_ERROR_MASK & intr_status);
+
 	if (hba->errors)
 		ufshcd_check_errors(hba);
 
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index ecfa898b9ccc..994d73d03207 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -740,6 +740,11 @@ return true;
 #endif
 }
 
+static inline bool ufshcd_is_auto_hibern8_supported(struct ufs_hba *hba)
+{
+	return (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT);
+}
+
 #define ufshcd_writel(hba, val, reg)	\
 	writel((val), (hba)->mmio_base + (reg))
 #define ufshcd_readl(hba, reg)	\
diff --git a/drivers/scsi/ufs/ufshci.h b/drivers/scsi/ufs/ufshci.h
index 6fa889de5ee5..4bcb205f2077 100644
--- a/drivers/scsi/ufs/ufshci.h
+++ b/drivers/scsi/ufs/ufshci.h
@@ -148,6 +148,9 @@ enum {
 				UIC_HIBERNATE_EXIT |\
 				UIC_POWER_MODE)
 
+#define UFSHCD_UIC_AH8_ERROR_MASK	(UIC_HIBERNATE_ENTER |\
+					UIC_HIBERNATE_EXIT)
+
 #define UFSHCD_UIC_MASK		(UIC_COMMAND_COMPL | UFSHCD_UIC_PWR_MASK)
 
 #define UFSHCD_ERROR_MASK	(UIC_ERROR |\
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
