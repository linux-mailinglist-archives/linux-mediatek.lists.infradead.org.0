Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C4B889B9
	for <lists+linux-mediatek@lfdr.de>; Sat, 10 Aug 2019 10:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXdD7Kw7o1yNmB5NaDDxgwaTPV32p7Y+ZToaOPJDC0E=; b=olDlyvgND0a0I8
	M9K6GPkCYkgHjAGXBmd/Tleweeul6PdiDMzzjO5lCoLYompMhgnkX7kRBHOyV+P/VpLcCNO+mUJL+
	HDw0aGifaGfhmNpnL4+Jyl2wp0ADowVQiobNJp+tAPD662I6IDWMUkQvhB9VsOd+PW+tUkmgmanEE
	soI1ybfNDdwnbVNXM+ruN7uz6pi+pzJTubukrgT8CAqLrqPCJ2H1Q3qErj6JxkwX9cMQoZ/j8TgWd
	nECphYN7Lvwo6QcOitRyrWp4USj1WcF5HTUdZwrf6SXURmYWBckh4DiZgwdbiGHcL1dQ4Lrt/J1Hm
	XzrSeeQupFgp1yj1Umdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwMNI-0002vr-FF; Sat, 10 Aug 2019 08:05:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwMKA-0007OE-Gf; Sat, 10 Aug 2019 08:02:06 +0000
X-UUID: e911f118c35847728d4d02083b67c24b-20190810
X-UUID: e911f118c35847728d4d02083b67c24b-20190810
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1273283503; Sat, 10 Aug 2019 00:01:56 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 10 Aug 2019 01:01:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 10 Aug 2019 16:01:53 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 10 Aug 2019 16:01:52 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v9 21/21] iommu/mediatek: Clean up struct mtk_smi_iommu
Date: Sat, 10 Aug 2019 15:58:21 +0800
Message-ID: <1565423901-17008-22-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565423901-17008-1-git-send-email-yong.wu@mediatek.com>
References: <1565423901-17008-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_010202_856978_D76D979E 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Remove the "struct mtk_smi_iommu" to simplify the code since it has only
one item in it right now.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/iommu/mtk_iommu.c    | 4 ++--
 drivers/iommu/mtk_iommu.h    | 6 +++---
 drivers/iommu/mtk_iommu_v1.c | 4 ++--
 drivers/memory/mtk-smi.c     | 6 +++---
 include/soc/mediatek/smi.h   | 4 ----
 5 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 274761c..d5b9454 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -254,7 +254,7 @@ static void mtk_iommu_config(struct mtk_iommu_data *data,
 	for (i = 0; i < fwspec->num_ids; ++i) {
 		larbid = MTK_M4U_TO_LARB(fwspec->ids[i]);
 		portid = MTK_M4U_TO_PORT(fwspec->ids[i]);
-		larb_mmu = &data->smi_imu.larb_imu[larbid];
+		larb_mmu = &data->larb_imu[larbid];
 
 		dev_dbg(dev, "%s iommu port: %d\n",
 			enable ? "enable" : "disable", portid);
@@ -653,7 +653,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 			of_node_put(larbnode);
 			return -EPROBE_DEFER;
 		}
-		data->smi_imu.larb_imu[id].dev = &plarbdev->dev;
+		data->larb_imu[id].dev = &plarbdev->dev;
 
 		component_match_add_release(dev, &match, release_of,
 					    compare_of, larbnode);
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 56b579c..fc0f16e 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -56,7 +56,6 @@ struct mtk_iommu_data {
 	struct mtk_iommu_suspend_reg	reg;
 	struct mtk_iommu_domain		*m4u_dom;
 	struct iommu_group		*m4u_group;
-	struct mtk_smi_iommu		smi_imu;      /* SMI larb iommu info */
 	bool                            enable_4GB;
 	bool				tlb_flush_active;
 
@@ -64,6 +63,7 @@ struct mtk_iommu_data {
 	const struct mtk_iommu_plat_data *plat_data;
 
 	struct list_head		list;
+	struct mtk_smi_larb_iommu	larb_imu[MTK_LARB_NR_MAX];
 };
 
 static inline int compare_of(struct device *dev, void *data)
@@ -80,14 +80,14 @@ static inline int mtk_iommu_bind(struct device *dev)
 {
 	struct mtk_iommu_data *data = dev_get_drvdata(dev);
 
-	return component_bind_all(dev, &data->smi_imu);
+	return component_bind_all(dev, &data->larb_imu);
 }
 
 static inline void mtk_iommu_unbind(struct device *dev)
 {
 	struct mtk_iommu_data *data = dev_get_drvdata(dev);
 
-	component_unbind_all(dev, &data->smi_imu);
+	component_unbind_all(dev, &data->larb_imu);
 }
 
 #endif
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index 3922358..860926c 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -206,7 +206,7 @@ static void mtk_iommu_config(struct mtk_iommu_data *data,
 	for (i = 0; i < fwspec->num_ids; ++i) {
 		larbid = mt2701_m4u_to_larb(fwspec->ids[i]);
 		portid = mt2701_m4u_to_port(fwspec->ids[i]);
-		larb_mmu = &data->smi_imu.larb_imu[larbid];
+		larb_mmu = &data->larb_imu[larbid];
 
 		dev_dbg(dev, "%s iommu port: %d\n",
 			enable ? "enable" : "disable", portid);
@@ -610,7 +610,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 			}
 		}
 
-		data->smi_imu.larb_imu[larb_nr].dev = &plarbdev->dev;
+		data->larb_imu[larb_nr].dev = &plarbdev->dev;
 		component_match_add_release(dev, &match, release_of,
 					    compare_of, larb_spec.np);
 		larb_nr++;
diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index d6dc62f..439d7d8 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -143,13 +143,13 @@ void mtk_smi_larb_put(struct device *larbdev)
 mtk_smi_larb_bind(struct device *dev, struct device *master, void *data)
 {
 	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
-	struct mtk_smi_iommu *smi_iommu = data;
+	struct mtk_smi_larb_iommu *larb_mmu = data;
 	unsigned int         i;
 
 	for (i = 0; i < MTK_LARB_NR_MAX; i++) {
-		if (dev == smi_iommu->larb_imu[i].dev) {
+		if (dev == larb_mmu[i].dev) {
 			larb->larbid = i;
-			larb->mmu = &smi_iommu->larb_imu[i].mmu;
+			larb->mmu = &larb_mmu[i].mmu;
 			return 0;
 		}
 	}
diff --git a/include/soc/mediatek/smi.h b/include/soc/mediatek/smi.h
index 6f0b00c..5a34b87 100644
--- a/include/soc/mediatek/smi.h
+++ b/include/soc/mediatek/smi.h
@@ -20,10 +20,6 @@ struct mtk_smi_larb_iommu {
 	unsigned int   mmu;
 };
 
-struct mtk_smi_iommu {
-	struct mtk_smi_larb_iommu larb_imu[MTK_LARB_NR_MAX];
-};
-
 /*
  * mtk_smi_larb_get: Enable the power domain and clocks for this local arbiter.
  *                   It also initialize some basic setting(like iommu).
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
