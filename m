Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7231863FD
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 04:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j775MRsY79b/bjRitNxHoQ02qvyVdtgibqF7HF+fVUs=; b=k/nOaVodwpjdTP
	syTRSctaRIukrALtKyM/5nPKHFa7PcSgiXN9jSiXP7JWiH34X1vAACdbENS6xmkWQmyJO9MzMuqPK
	VBbGiqThpwD9E/Wba5rxuXlwIG3L7T96hBhA8wn1KmK0X78bBHq9FXEKRTB8JWPbA+9DbT6Jhm7SB
	4XHGi//UhpLSDMNVTsW/kFEPqtDuRwn/E6u3D47eB3DR1klrfPWFUm6FHv7y+h9W69Kf34P0esxee
	DDh7Rs/zLYPS4uSd02FWCuVbNPwuR0y9cXR1SNNUOVyDiDw28h4HIR1VC/HwLdDdm9LdTMt2d68eJ
	RqiSv182sB0R/h2MCT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDgpM-0007zQ-TM; Mon, 16 Mar 2020 03:54:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDgnl-0006DS-Bv; Mon, 16 Mar 2020 03:52:31 +0000
X-UUID: 6e67b35380d14f9e8a437afadb5c072d-20200315
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=BRn9NnqZ3MzE/akuLUo0HDeyKdjugwz7nkNYDj/5mmw=; 
 b=Sfoq77GzGA90VNjhb7lWXK/iPwbctW/hselRh+FxTUuj8tA6bHsEfsVevuS0Ll/AIaLGASNMOrIWBDHhKudFLFQQkvi1Xm3XQob53QdBpORStKENt7Z6Yv+vAPnhTteq41dddX8+ukUu0kS/dMV8tvwrQOlLz3TehBt95FZf9vA=;
X-UUID: 6e67b35380d14f9e8a437afadb5c072d-20200315
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1834800290; Sun, 15 Mar 2020 19:52:24 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Mar 2020 20:42:54 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 11:41:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Mar 2020 11:39:23 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.peter~sen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v5 6/8] scsi: ufs: allow customized delay for host enabling
Date: Mon, 16 Mar 2020 11:42:16 +0800
Message-ID: <20200316034218.11914-7-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200316034218.11914-1-stanley.chu@mediatek.com>
References: <20200316034218.11914-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_205229_434727_CC3141C8 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Currently a 1 ms delay is applied before polling CONTROLLER_ENABLE
bit. This delay may not be required or can be changed in different
controllers. Make the delay as a changeable value in struct ufs_hba to
allow it customized by vendors.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Reviewed-by: Can Guo <cang@codeaurora.org>
---
 drivers/scsi/ufs/ufshcd.c | 3 ++-
 drivers/scsi/ufs/ufshcd.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ce65d321a73f..dcbf45d547d8 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -4298,7 +4298,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 	 * instruction might be read back.
 	 * This delay can be changed based on the controller.
 	 */
-	ufshcd_wait_us(1000, 100, true);
+	ufshcd_wait_us(hba->hba_enable_delay_us, 100, true);
 
 	/* wait for the host controller to complete initialization */
 	retry = 10;
@@ -8418,6 +8418,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
 
 	hba->mmio_base = mmio_base;
 	hba->irq = irq;
+	hba->hba_enable_delay_us = 1000;
 
 	err = ufshcd_hba_init(hba);
 	if (err)
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 4683e7bf6640..269ddb92bb55 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -653,6 +653,7 @@ struct ufs_hba {
 	u32 eh_flags;
 	u32 intr_mask;
 	u16 ee_ctrl_mask;
+	u16 hba_enable_delay_us;
 	bool is_powered;
 
 	/* Work Queues */
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
