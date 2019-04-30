Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E066F3A4
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 12:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irrkjwKXu3nBzToXXFmDPEIo1kA1tvd3YxuUBrf/8bE=; b=lPe+xNqi8kDMK4
	9c+1VPrY3EVN7LIWzU98f7g+HUjhMl1CJOzbrs4GOgut/u6Yuo3VdtjXwPP6JVcLEaJdTJgLShtf3
	sRDuQnZG8vC7VM2y59HKHgVOheOZayRKoBGPosRO7QlTXUJFkxB71wo/AjCVaYxjA4EUcYjv2DEVZ
	NxYD2GysRpnAJ8bAsuPxDIIh1CICD6evWt/cj4XQwXWzq60FlwOgCTZBNuGLPb5+P6tpbcecWHvIJ
	iLgbt6VC4JV7b2s/glUTYORevLBlsXEeyM3yodZ4sGgxvQBAkI2mpv/CUoi6bA/P2adplf1SeiDEi
	RvBciL81+ENCgoE3JV9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPd8-0001Qt-MV; Tue, 30 Apr 2019 10:04:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPcY-0000eJ-Re; Tue, 30 Apr 2019 10:04:22 +0000
X-UUID: efa3e322b09e4c08849224d2bb704dab-20190430
X-UUID: efa3e322b09e4c08849224d2bb704dab-20190430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 119293181; Tue, 30 Apr 2019 02:04:17 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 03:04:15 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 18:04:03 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 30 Apr 2019 18:04:03 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [PATCH v2 4/5] mtd: rawnand: mtk: Fix wrongly assigned OOB buffer
 pointer issue
Date: Tue, 30 Apr 2019 18:02:49 +0800
Message-ID: <20190430100250.28083-5-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190430100250.28083-1-xiaolei.li@mediatek.com>
References: <20190430100250.28083-1-xiaolei.li@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F0C6D8D1A4B3ECC204026368483FB9662EFEA67EBE3809FFBFE27B17D8539A0E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_030419_471692_6EDB9E68 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-mediatek@lists.infradead.org, xiaolei.li@mediatek.com,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

One main goal of the function mtk_nfc_update_ecc_stats is to check
whether sectors are all empty. If they are empty, set these sectors's
data buffer and OOB buffer as 0xff.

But now, the sector OOB buffer pointer is wrongly assigned. We always
do memset from sector 0.

To fix this issue, pass start sector number to make OOB buffer pointer
be properly assigned.

Fixes: 1d6b1e464950 ("mtd: mediatek: driver for MTK Smart Device")
Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/mtk_nand.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index 23ebd668bbcd..48759af5c058 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -889,19 +889,21 @@ static int mtk_nfc_write_oob_std(struct nand_chip *chip, int page)
 	return mtk_nfc_write_page_raw(chip, NULL, 1, page);
 }
 
-static int mtk_nfc_update_ecc_stats(struct mtd_info *mtd, u8 *buf, u32 sectors)
+static int mtk_nfc_update_ecc_stats(struct mtd_info *mtd, u8 *buf, u32 start,
+				    u32 sectors)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mtk_nfc *nfc = nand_get_controller_data(chip);
 	struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 	struct mtk_ecc_stats stats;
+	u32 reg_size = mtk_nand->fdm.reg_size;
 	int rc, i;
 
 	rc = nfi_readl(nfc, NFI_STA) & STA_EMP_PAGE;
 	if (rc) {
 		memset(buf, 0xff, sectors * chip->ecc.size);
 		for (i = 0; i < sectors; i++)
-			memset(oob_ptr(chip, i), 0xff, mtk_nand->fdm.reg_size);
+			memset(oob_ptr(chip, start + i), 0xff, reg_size);
 		return 0;
 	}
 
@@ -921,7 +923,7 @@ static int mtk_nfc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
 	u32 spare = mtk_nand->spare_per_sector;
 	u32 column, sectors, start, end, reg;
 	dma_addr_t addr;
-	int bitflips;
+	int bitflips = 0;
 	size_t len;
 	u8 *buf;
 	int rc;
@@ -988,14 +990,11 @@ static int mtk_nfc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
 	if (rc < 0) {
 		dev_err(nfc->dev, "subpage done timeout\n");
 		bitflips = -EIO;
-	} else {
-		bitflips = 0;
-		if (!raw) {
-			rc = mtk_ecc_wait_done(nfc->ecc, ECC_DECODE);
-			bitflips = rc < 0 ? -ETIMEDOUT :
-				mtk_nfc_update_ecc_stats(mtd, buf, sectors);
-			mtk_nfc_read_fdm(chip, start, sectors);
-		}
+	} else if (!raw) {
+		rc = mtk_ecc_wait_done(nfc->ecc, ECC_DECODE);
+		bitflips = rc < 0 ? -ETIMEDOUT :
+			mtk_nfc_update_ecc_stats(mtd, buf, start, sectors);
+		mtk_nfc_read_fdm(chip, start, sectors);
 	}
 
 	dma_unmap_single(nfc->dev, addr, len, DMA_FROM_DEVICE);
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
