Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A232F1F9ADD
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 16:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gLU5VMaCGxpmorl+RT7F8qyXgzb/p30BLbFExODfOg=; b=CekJz3cKF9xe2h
	Li0zwY2DCiqAs479LtWMMBQxiUSjVPV9rJw95NJRAvRzpb58J1CzMrnb5ADYzBeuU18gDIgoGCLxg
	sY8doc7yk0XQuswg3a8U8jbosNCzCeXn3O8JBGsS4mllBtYmgVeGHo7ZqIZ+ATTsuPtRzZ43i39/C
	GL8KmgxfgzsITHGlj9Zet4sXTy8tMc4tk5TSMDV6K+Z8XzquUyoN0jJurqJsY6qyH3U1U5kMrdxjG
	95y576P53HwSaS/IrM7cPzI0wO2ANrpBF2TlybTpn3jnpzu1VWabwvWdGW+57kiqqA2oMVcvu7Y6W
	n7tbGm2i4GPcjgfZfR9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqSP-00009l-0q; Mon, 15 Jun 2020 14:51:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqRu-00088e-1m; Mon, 15 Jun 2020 14:50:59 +0000
X-UUID: d84f0344087d407a939c16daccd107f1-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=9Jrxg+K/KEKim/cVYfaklTsm5g5BtXdZJCkdT9NVb7Y=; 
 b=QaoxgXDrbPxiv114paz3+Qxoy8lZADTKf6A+w9sShjDSX8lGpPvZoTs6crJ8qhrrwygSRKBBHrs2pX01Q4Wxjt7bZJ/J1HPUvmBM6OfX1IB/6FxP/pCrgxZYswNkjOuvyNKiJ+2B7hkWKzjgryMQFznjORlroOBDSN5qXg+5XN4=;
X-UUID: d84f0344087d407a939c16daccd107f1-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1396388888; Mon, 15 Jun 2020 06:50:53 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 07:48:06 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 22:48:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 22:48:03 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 3/3] scsi: ufs-mediatek: Print host information for failed
 supsend and resume
Date: Mon, 15 Jun 2020 22:48:05 +0800
Message-ID: <20200615144805.6921-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200615144805.6921-1-stanley.chu@mediatek.com>
References: <20200615144805.6921-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_075058_091444_E088D35C 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Print host state and register dumps while suspend or resume flow
is failed.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index d56ce8d97d4e..0bb7ed841809 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -469,23 +469,24 @@ static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
 
 	err = ufshcd_hba_enable(hba);
 	if (err)
-		return err;
+		goto out;
 
 	err = ufs_mtk_unipro_set_pm(hba, 0);
 	if (err)
-		return err;
+		goto out;
 
 	err = ufshcd_uic_hibern8_exit(hba);
 	if (!err)
 		ufshcd_set_link_active(hba);
 	else
-		return err;
+		goto out;
 
 	err = ufshcd_make_hba_operational(hba);
+out:
 	if (err)
-		return err;
-
-	return 0;
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS | UFS_INFO_PWR);
+	return err;
 }
 
 static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
@@ -494,6 +495,9 @@ static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
 
 	err = ufs_mtk_unipro_set_pm(hba, 1);
 	if (err) {
+		ufshcd_print_info(hba, UFS_INFO_HOST_STATE |
+				  UFS_INFO_HOST_REGS | UFS_INFO_PWR);
+
 		/* Resume UniPro state for following error recovery */
 		ufs_mtk_unipro_set_pm(hba, 0);
 		return err;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
