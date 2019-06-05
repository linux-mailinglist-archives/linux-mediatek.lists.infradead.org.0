Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E4535BE7
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Jun 2019 13:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9A5b9oU01vjLqpMi1JC1uixYtiDNSZEP7uKPux2g/Q=; b=szoZyHzQzxUdVo
	jS78lYKCUYc0X9pVPBPikSEMiXoCk1ZFxHC5AC+RqcVWY+7L004mzTGiC0wSvewowkoXxUOXpRyNo
	FIJGhbs8bvuJe9Z4tp6yGZ9pUvKh6fhzGCfvux9s6gYkCewLG++Mr9XthreJVIlcJjndMEJeE5t9o
	xBbt3ZZgKUPFzzkJ+m69Jc36HlYfHiH5mxVcQb5/ONJaXLHRsJQI8otZblF9bVN1T0epiXdvmF6/w
	JvlcSYBGDJujGEWTnqh6Z/D4BXGpfpCKHNgayt2hC5Xu9knId+Gmc0Pwtcvn1KsLUSf4ir79kIQ6G
	M6qh5AhnqNdpTE8G+78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUNF-0000CG-0F; Wed, 05 Jun 2019 11:46:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYULi-0004E0-BG; Wed, 05 Jun 2019 11:45:21 +0000
X-UUID: 23711c151a124d589792798b2461815e-20190605
X-UUID: 23711c151a124d589792798b2461815e-20190605
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 333752942; Wed, 05 Jun 2019 03:43:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 04:43:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 19:43:52 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 19:43:51 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3, 18/27] drm/medaitek: add layer_nr for ovl private data
Date: Wed, 5 Jun 2019 19:42:57 +0800
Message-ID: <1559734986-7379-19-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2A3801AC1784E8D57E6E94C569921FE9B21E459F7446BFF10B6CA10AC3FA9B252000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044459_159343_C8154CC8 
X-CRM114-Status: GOOD (  12.16  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch add layer_nr for ovl private data
ovl_2l almost same with with ovl hardware, except the
layer number for ovl_2l is 2 and ovl is 4.
this patch is a preparation for ovl-2l and
ovl share the same driver.

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index afb313c..a0ab760 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -60,6 +60,7 @@
 struct mtk_disp_ovl_data {
 	unsigned int addr;
 	unsigned int gmc_bits;
+	unsigned int layer_nr;
 	bool fmt_rgb565_is_0;
 };
 
@@ -137,7 +138,9 @@ static void mtk_ovl_config(struct mtk_ddp_comp *comp, unsigned int w,
 
 static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
 {
-	return 4;
+	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
+
+	return ovl->data->layer_nr;
 }
 
 static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
@@ -342,12 +345,14 @@ static int mtk_disp_ovl_remove(struct platform_device *pdev)
 static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT2701,
 	.gmc_bits = 8,
+	.layer_nr = 4,
 	.fmt_rgb565_is_0 = false,
 };
 
 static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT8173,
 	.gmc_bits = 8,
+	.layer_nr = 4,
 	.fmt_rgb565_is_0 = true,
 };
 
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
