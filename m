Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1C99BB4C
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 05:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFjikC01xBlE1Y1hpquae9r4Vm0ZdwfPlZWWMvDsJDA=; b=P19usT/9hWtJBl
	bW9w1cNbZOUlrQ3+F8eWjQNuyRgw67FrU72AeU1iuC+6Lio+w8YQg1h4hopUNyR2Asb8gu29Gl8T1
	nFq6mD3+2niNzcM3szJOxruqnOIY1OrtyqVy+EHegCa9LCyWeykpYPBfTefx0cP8lJIl9iJ75SUdh
	n2/U5ezKVfp+NXG4A2UScgHosgxTyOfyg+O1Arr2ppk5OWvvD18wP31lGzMJYPir6wDE7pR+HAnA9
	SnY45CAPGWuOk8L9o0uBrsO2MR5y8dQhmp278jZGt6b+QwRxJ4AfJJq2NIT+whvtngci5ZoOxyuHt
	/Lk6hrWe72Ps87JWP0HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1MS6-0002sc-NO; Sat, 24 Aug 2019 03:10:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1MPM-0005OW-Mh; Sat, 24 Aug 2019 03:08:06 +0000
X-UUID: e45dfc1df49340058b5ebb99000d87bd-20190823
X-UUID: e45dfc1df49340058b5ebb99000d87bd-20190823
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1607832925; Fri, 23 Aug 2019 19:06:53 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 20:06:51 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 24 Aug 2019 11:06:50 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 24 Aug 2019 11:06:49 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v11 22/23] memory: mtk-smi: Get rid of need_larbid
Date: Sat, 24 Aug 2019 11:02:07 +0800
Message-ID: <1566615728-26388-23-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566615728-26388-1-git-send-email-yong.wu@mediatek.com>
References: <1566615728-26388-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_200804_751825_BD9AD1EA 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The "mediatek,larb-id" has already been parsed in MTK IOMMU driver.
It's no need to parse it again in SMI driver. Only clean some codes.
This patch is fit for all the current mt2701, mt2712, mt7623, mt8173
and mt8183.

After this patch, the "mediatek,larb-id" only be needed for mt2712
which have 2 M4Us. In the other SoCs, we can get the larb-id from M4U
in which the larbs in the "mediatek,larbs" always are ordered.

Correspondingly, the larb_nr in the "struct mtk_smi_iommu" could also
be deleted.

CC: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/iommu/mtk_iommu.c    |  1 -
 drivers/iommu/mtk_iommu_v1.c |  2 --
 drivers/memory/mtk-smi.c     | 26 ++------------------------
 include/soc/mediatek/smi.h   |  1 -
 4 files changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 5d5341c..cc81de2 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -656,7 +656,6 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 					     "mediatek,larbs", NULL);
 	if (larb_nr < 0)
 		return larb_nr;
-	data->smi_imu.larb_nr = larb_nr;
 
 	for (i = 0; i < larb_nr; i++) {
 		struct device_node *larbnode;
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index abeeac4..3922358 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -616,8 +616,6 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 		larb_nr++;
 	}
 
-	data->smi_imu.larb_nr = larb_nr;
-
 	platform_set_drvdata(pdev, data);
 
 	ret = mtk_iommu_hw_init(data);
diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 289e595..d6dc62f 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -59,7 +59,6 @@ struct mtk_smi_common_plat {
 };
 
 struct mtk_smi_larb_gen {
-	bool need_larbid;
 	int port_in_larb[MTK_LARB_NR_MAX + 1];
 	void (*config_port)(struct device *);
 	unsigned int			larb_direct_to_common_mask;
@@ -147,18 +146,9 @@ void mtk_smi_larb_put(struct device *larbdev)
 	struct mtk_smi_iommu *smi_iommu = data;
 	unsigned int         i;
 
-	if (larb->larb_gen->need_larbid) {
-		larb->mmu = &smi_iommu->larb_imu[larb->larbid].mmu;
-		return 0;
-	}
-
-	/*
-	 * If there is no larbid property, Loop to find the corresponding
-	 * iommu information.
-	 */
-	for (i = 0; i < smi_iommu->larb_nr; i++) {
+	for (i = 0; i < MTK_LARB_NR_MAX; i++) {
 		if (dev == smi_iommu->larb_imu[i].dev) {
-			/* The 'mmu' may be updated in iommu-attach/detach. */
+			larb->larbid = i;
 			larb->mmu = &smi_iommu->larb_imu[i].mmu;
 			return 0;
 		}
@@ -237,7 +227,6 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 };
 
 static const struct mtk_smi_larb_gen mtk_smi_larb_mt2701 = {
-	.need_larbid = true,
 	.port_in_larb = {
 		LARB0_PORT_OFFSET, LARB1_PORT_OFFSET,
 		LARB2_PORT_OFFSET, LARB3_PORT_OFFSET
@@ -246,7 +235,6 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 };
 
 static const struct mtk_smi_larb_gen mtk_smi_larb_mt2712 = {
-	.need_larbid = true,
 	.config_port                = mtk_smi_larb_config_port_gen2_general,
 	.larb_direct_to_common_mask = BIT(8) | BIT(9),      /* bdpsys */
 };
@@ -285,7 +273,6 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *smi_node;
 	struct platform_device *smi_pdev;
-	int err;
 
 	larb = devm_kzalloc(dev, sizeof(*larb), GFP_KERNEL);
 	if (!larb)
@@ -315,15 +302,6 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 	}
 	larb->smi.dev = dev;
 
-	if (larb->larb_gen->need_larbid) {
-		err = of_property_read_u32(dev->of_node, "mediatek,larb-id",
-					   &larb->larbid);
-		if (err) {
-			dev_err(dev, "missing larbid property\n");
-			return err;
-		}
-	}
-
 	smi_node = of_parse_phandle(dev->of_node, "mediatek,smi", 0);
 	if (!smi_node)
 		return -EINVAL;
diff --git a/include/soc/mediatek/smi.h b/include/soc/mediatek/smi.h
index 79b74ce..6f0b00c 100644
--- a/include/soc/mediatek/smi.h
+++ b/include/soc/mediatek/smi.h
@@ -21,7 +21,6 @@ struct mtk_smi_larb_iommu {
 };
 
 struct mtk_smi_iommu {
-	unsigned int larb_nr;
 	struct mtk_smi_larb_iommu larb_imu[MTK_LARB_NR_MAX];
 };
 
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
