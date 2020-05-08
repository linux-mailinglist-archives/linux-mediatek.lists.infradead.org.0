Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0412D1CB5E2
	for <lists+linux-mediatek@lfdr.de>; Fri,  8 May 2020 19:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCIdSo6QVoy2U4JdZzZ70k41Rm0dX7POn4AOrd28zuc=; b=ZuDIP2tH9zX25s
	6TUkG4xQ7D72F/UshLP0jzqtWSRM57AMikW3t0042R/ySsswE1ynITPZ5yqCM+tlHchV8GarW73JH
	tTlBKRua1FmVgN/7kUs+VaqTJ3O77jzCOXbITZvfRCMvJpAY5Q1SPr5r6A01X7Lv6ePVP8tJskmwh
	dRRQ22Jjorms58oKL20VjR4Jsv7izwCoOWzb+qsdY3kb2AIDNlK3plnl5E+bjELRRjjDL1+Wy6un8
	LdGqs/eziNfGr2MmLL6ggwXM1Z8lukHF14GBdGzvGX17W6wWzgDw4DTLLrl1DYrapJoWVG8osFFw5
	dyrtGL5Iu0NdVK41m1ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6l7-0001UI-Dx; Fri, 08 May 2020 17:26:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6ka-00011V-2y; Fri, 08 May 2020 17:25:29 +0000
X-UUID: 7b2e4d0937124aa2a4e7f48cbb62f01c-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=mjIcA+2IIoXiUk01qKsxbOPhyEFIakxOw9WipJ7pnUo=; 
 b=RKxRCN01l/VOBVhynOsMg9W2BZLihyvERqz6AriqBM8+jmMcrBbCguFgB95ntXOR6YUS+A8CzqCY/4niXyeGQ5U7NC9Ay7LiQiysSKe3tJT9PtPM/I1IeuhIdeHBk5IdX5bAJ57gK7VsNxSgMTYuCo1YsR7m2zUL6tHGnyhijqo=;
X-UUID: 7b2e4d0937124aa2a4e7f48cbb62f01c-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1434951549; Fri, 08 May 2020 09:25:04 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:15:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 01:15:11 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 9 May 2020 01:15:12 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 4/5] scsi: ufs: use flexible definition for
 UFS_WB_BUF_REMAIN_PERCENT
Date: Sat, 9 May 2020 01:15:12 +0800
Message-ID: <20200508171513.14665-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200508171513.14665-1-stanley.chu@mediatek.com>
References: <20200508171513.14665-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_102528_138557_E9505A0E 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use macro UFS_WB_BUF_REMAIN_PERCENT() instead to provide
more flexible usage of WriteBooster available buffer values.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs.h    | 5 +----
 drivers/scsi/ufs/ufshcd.c | 4 ++--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
index b3135344ab3f..fadba3a3bbcd 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -478,10 +478,7 @@ enum ufs_dev_pwr_mode {
 	UFS_POWERDOWN_PWR_MODE	= 3,
 };
 
-enum ufs_dev_wb_buf_avail_size {
-	UFS_WB_10_PERCENT_BUF_REMAIN = 0x1,
-	UFS_WB_40_PERCENT_BUF_REMAIN = 0x4,
-};
+#define UFS_WB_BUF_REMAIN_PERCENT(val) ((val) / 10)
 
 /**
  * struct utp_cmd_rsp - Response UPIU structure
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 9a0ce6550c2f..bcc7a9ea8d2b 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5336,7 +5336,7 @@ static bool ufshcd_wb_keep_vcc_on(struct ufs_hba *hba)
 	}
 
 	if (!hba->dev_info.b_presrv_uspc_en) {
-		if (avail_buf <= UFS_WB_10_PERCENT_BUF_REMAIN)
+		if (avail_buf <= UFS_WB_BUF_REMAIN_PERCENT(10))
 			return true;
 		return false;
 	}
@@ -7463,7 +7463,7 @@ static const struct attribute_group *ufshcd_driver_groups[] = {
 
 static struct ufs_hba_variant_params ufs_hba_vps = {
 	.hba_enable_delay_us		= 1000,
-	.wb_flush_threshold		= UFS_WB_40_PERCENT_BUF_REMAIN,
+	.wb_flush_threshold		= UFS_WB_BUF_REMAIN_PERCENT(40),
 	.devfreq_profile.polling_ms	= 100,
 	.devfreq_profile.target		= ufshcd_devfreq_target,
 	.devfreq_profile.get_dev_status	= ufshcd_devfreq_get_dev_status,
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
