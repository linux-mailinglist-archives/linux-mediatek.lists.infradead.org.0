Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE8912CCFA
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Dec 2019 06:34:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+1xYPc04RW9jv5FgtoGKl1MMCPvENbnHqU9xelUCSc=; b=hHpll9eRNz92Vo
	NmaxmC0/be7TRlVYRqsEyIQfobb8g1xT1tnrf2kIUNr8D1jhH2WbM29kdcHfy2nMy0jIAPGQn08u1
	ahioX2fr4ckmBZtEtNro8J6NCCzsFkbrJpMER8wFMU47wVcWFOb5SHq3CU4D87oeE6QLy5TmhvJOp
	fqPQeATk2fuPwQ3F5T7xMSHulkrN9cFmUFz6E29fa9FKK0J8IBFPqjUjehAKuPLELxVcVcXMShPNY
	1SH/DPp09CIJgEvieCx1iTvAGnBDykhSvBYeh5RBqTDn6ka7ag4Hm8kx82Ic7lrQbI4c50PmwQjO0
	9BTA3wGqnXkropx4LhIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnhC-0008Tv-Qh; Mon, 30 Dec 2019 05:34:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnfr-0007AA-UH; Mon, 30 Dec 2019 05:33:05 +0000
X-UUID: a824c05d782d453f830b60fd0a0875f7-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=t1x7DVC5KFTbvU5W0kCoABviHjsDt86RYQluEsX3mLY=; 
 b=q3KhXjkQo49+avXjwl8BxgY9YYi/E124YMerkAg19pvKLCyAkapZQGCU6TFq29OMa/C+rwMPP8sUlZxO98fy+fQ5ZykC0wUZiRjIhCYoKQw4xjU+4DSW9bpcYxsUs+0FynbsP+iX5sIqj+9zra8j081kyRm1KiIUi78c95gISO8=;
X-UUID: a824c05d782d453f830b60fd0a0875f7-20191229
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 705254130; Sun, 29 Dec 2019 21:33:01 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 21:33:15 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 13:32:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 30 Dec 2019 13:31:37 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <bvanassche@acm.org>, <f.fainelli@gmail.com>
Subject: [PATCH v2 5/6] scsi: ufs-mediatek: configure customized auto-hibern8
 timer
Date: Mon, 30 Dec 2019 13:32:29 +0800
Message-ID: <1577683950-1702-6-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
References: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_213304_011360_87470D36 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Configure customized auto-hibern8 timer in MediaTek Chipsets.

Cc: Alim Akhtar <alim.akhtar@samsung.com>
Cc: Avri Altman <avri.altman@wdc.com>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: Bean Huo <beanhuo@micron.com>
Cc: Can Guo <cang@codeaurora.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index fc5ba21ec02a..1f025723b61b 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/arm-smccc.h>
+#include <linux/bitfield.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/phy/phy.h>
@@ -305,6 +306,13 @@ static int ufs_mtk_post_link(struct ufs_hba *hba)
 	/* enable unipro clock gating feature */
 	ufs_mtk_cfg_unipro_cg(hba, true);
 
+	/* configure auto-hibern8 timer to 10ms */
+	if (ufshcd_is_auto_hibern8_supported(hba)) {
+		ufshcd_auto_hibern8_update(hba,
+			FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 10) |
+			FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3));
+	}
+
 	return 0;
 }
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
