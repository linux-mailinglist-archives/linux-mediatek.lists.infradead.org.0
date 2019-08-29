Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01430A1E26
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 16:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tlnq9+CCsRgSt1pSm0kHxCKrOmS4E60V6lawdgc55EA=; b=Kvw0cV95DEmi/t
	WiGv+Q3fwyTp1W1Sbf8h9+OC4Ll2BPH2FH+bbQrt2LEFqsNakRbQO4tFqjnPrVN5ey28eeZ/bAhvl
	0bee26CYCWT0aaAxwNYOXU6GD2PBT6EQZWpZgbyfGDQhZW7cymzlz64cq9fzg65IrPNHD1Wl1i415
	ksv9MTwfZkELTvUISlwoMeeXPvtodJNGtRpWj/hjDioXcco5kZ5VwFkY8DGgjpYEoJLFjyppxrJvv
	EaUohGcRl1PaJEBpDbn2/2ibYUUrPvvEcywlwFZL94UyS0WOU5QjqJpg9qh6bUMpGDcW2iFy5drho
	IldQ+5MynHKs2ZSy8bAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Lts-0001YG-Az; Thu, 29 Aug 2019 14:59:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Llg-0005io-4c; Thu, 29 Aug 2019 14:51:21 +0000
X-UUID: 2be6d923641d422d847bcf37b6d0b48f-20190829
X-UUID: 2be6d923641d422d847bcf37b6d0b48f-20190829
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 304195566; Thu, 29 Aug 2019 06:51:23 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 07:51:22 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:51:20 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 22:51:19 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5, 14/32] drm/mediatek: add ddp component CCORR
Date: Thu, 29 Aug 2019 22:50:36 +0800
Message-ID: <1567090254-15566-15-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_075120_627443_AAB09385 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

This patch add ddp component CCORR

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 32 +++++++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  2 ++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index d1afa06..b18bd66 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -33,6 +33,12 @@
 #define DISP_AAL_EN				0x0000
 #define DISP_AAL_SIZE				0x0030
 
+#define DISP_CCORR_EN				0x0000
+#define CCORR_EN				BIT(0)
+#define DISP_CCORR_CFG				0x0020
+#define CCORR_RELAY_MODE			BIT(0)
+#define DISP_CCORR_SIZE				0x0030
+
 #define DISP_GAMMA_EN				0x0000
 #define DISP_GAMMA_CFG				0x0020
 #define DISP_GAMMA_SIZE				0x0030
@@ -123,6 +129,24 @@ static void mtk_aal_stop(struct mtk_ddp_comp *comp)
 	writel_relaxed(0x0, comp->regs + DISP_AAL_EN);
 }
 
+static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
+			     unsigned int h, unsigned int vrefresh,
+			     unsigned int bpc)
+{
+	writel(h << 16 | w, comp->regs + DISP_CCORR_SIZE);
+	writel(CCORR_RELAY_MODE, comp->regs + DISP_CCORR_CFG);
+}
+
+static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
+{
+	writel(CCORR_EN, comp->regs + DISP_CCORR_EN);
+}
+
+static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
+{
+	writel_relaxed(0x0, comp->regs + DISP_CCORR_EN);
+}
+
 static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
 			     unsigned int bpc)
@@ -171,6 +195,12 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
 	.stop = mtk_aal_stop,
 };
 
+static const struct mtk_ddp_comp_funcs ddp_ccorr = {
+	.config = mtk_ccorr_config,
+	.start = mtk_ccorr_start,
+	.stop = mtk_ccorr_stop,
+};
+
 static const struct mtk_ddp_comp_funcs ddp_gamma = {
 	.gamma_set = mtk_gamma_set,
 	.config = mtk_gamma_config,
@@ -192,6 +222,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
 	[MTK_DISP_RDMA] = "rdma",
 	[MTK_DISP_WDMA] = "wdma",
 	[MTK_DISP_COLOR] = "color",
+	[MTK_DISP_CCORR] = "ccorr",
 	[MTK_DISP_AAL] = "aal",
 	[MTK_DISP_GAMMA] = "gamma",
 	[MTK_DISP_UFOE] = "ufoe",
@@ -213,6 +244,7 @@ struct mtk_ddp_comp_match {
 	[DDP_COMPONENT_AAL0]	= { MTK_DISP_AAL,	0, &ddp_aal },
 	[DDP_COMPONENT_AAL1]	= { MTK_DISP_AAL,	1, &ddp_aal },
 	[DDP_COMPONENT_BLS]	= { MTK_DISP_BLS,	0, NULL },
+	[DDP_COMPONENT_CCORR]	= { MTK_DISP_CCORR,	0, &ddp_ccorr },
 	[DDP_COMPONENT_COLOR0]	= { MTK_DISP_COLOR,	0, NULL },
 	[DDP_COMPONENT_COLOR1]	= { MTK_DISP_COLOR,	1, NULL },
 	[DDP_COMPONENT_DPI0]	= { MTK_DPI,		0, NULL },
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 108de60..8d220224 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -20,6 +20,7 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_RDMA,
 	MTK_DISP_WDMA,
 	MTK_DISP_COLOR,
+	MTK_DISP_CCORR,
 	MTK_DISP_AAL,
 	MTK_DISP_GAMMA,
 	MTK_DISP_UFOE,
@@ -36,6 +37,7 @@ enum mtk_ddp_comp_id {
 	DDP_COMPONENT_AAL0,
 	DDP_COMPONENT_AAL1,
 	DDP_COMPONENT_BLS,
+	DDP_COMPONENT_CCORR,
 	DDP_COMPONENT_COLOR0,
 	DDP_COMPONENT_COLOR1,
 	DDP_COMPONENT_DPI0,
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
