Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152F23976
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 16:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmyYgG9MkEuS2QoFeDw/oZ/oxLfd/fiAk2AqRVR8VRU=; b=X7EEXbf3o6o8qq
	nUvZSYrHa3Ha7zmgGbXGK1g31/yJ1eNl6BkKXtHadCpB43szs8Knme/OZJFzMLx1BHQ4jsvGq0XJo
	uhsk0PkJi2FNpmfSSI76N7lTtOPUdMs3guM7QyBHyEUJ8Ar3QthHN0AB2Y0jUwOnlcSrIPvfw1NNk
	iCCUspPPD9dqDc6s4Iw2J5K84JGlv2ooOtmrfUT/fNs3LvFTQrdBbaPoCowX9VDrQirA491elMEUq
	CzWbiGs490TMA143PoGLUP0HP9KUbjU1O5HxxO/otUHVw7zx1hxxb0Eblbyi5j/WdcDhtBLuqwmjn
	A+HJ1zfgGV+5cbtpLVKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSj0Z-0007Gz-Kx; Mon, 20 May 2019 14:11:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSj0Q-0007AR-HO; Mon, 20 May 2019 14:11:11 +0000
X-UUID: e0f2dd491c89486b9adba3fef0e30cc9-20190520
X-UUID: e0f2dd491c89486b9adba3fef0e30cc9-20190520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1672143023; Mon, 20 May 2019 06:10:56 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 07:10:55 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 22:10:46 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 20 May 2019 22:10:46 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v4 1/3] scsi: ufs: Do not overwrite Auto-Hibernate timer
Date: Mon, 20 May 2019 22:10:43 +0800
Message-ID: <1558361445-30994-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1558361445-30994-1-git-send-email-stanley.chu@mediatek.com>
References: <1558361445-30994-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3C75A427CE858A50D491FF07D908499505C4AE0E4A0C790C8C7E3CC10D97E6EC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_071110_582962_4ABDE646 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Some vendor-specific initialization flow may set its own
auto-hibernate timer. In this case, do not overwrite timer value
as "default value" in ufshcd_init().

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 8c1c551f2b42..ba04d07df279 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -8312,7 +8312,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 						UIC_LINK_HIBERN8_STATE);
 
 	/* Set the default auto-hiberate idle timer value to 150 ms */
-	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) {
+	if ((hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) && !hba->ahit) {
 		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 150) |
 			    FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3);
 	}
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
