Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC26C1C3CAE
	for <lists+linux-mediatek@lfdr.de>; Mon,  4 May 2020 16:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uj4PcEfnDes6rMMFucBSYwmQ+deKAsbXvMpXfrdMiYs=; b=Nqy0G4cm+7e1Yf
	556Jlgbzk6D60txh1JUBUKrhvetr2pWK2ElP2OXx+Fv2VFyvvggGf0wExKcgDHYGksO6IlwtCSeDV
	OaGvQv5SXKvtFwBkkBg10AuBzqO2bKcByHsGP/Ia1jOb8hktMsyNdIsk/RcXKkrp18dFyB6jdxvdS
	dOq/TZ8K406DDFnU/dHgz3kkxEuRZYiDB41X0JA/jtKGIeUppIJ7Pq2mkFdxe8Adj/Q8ruewce6Fu
	OvHnluZvi1c5eq31cE8SEAn/TEvVQIPWgLNfPGXyCYyuiB2t5waH2eMQckMmsGIgADU0wI32araBJ
	fU1jNtGF3UYm/HxmxPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbsc-00059y-Id; Mon, 04 May 2020 14:15:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbrQ-0001gj-1Y; Mon, 04 May 2020 14:14:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id AB72A2A131E
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org,
	Collabora Kernel ML <kernel@collabora.com>
Subject: [PATCH 3/3] drm/mediatek: mtk_dpi: Use simple encoder
Date: Mon,  4 May 2020 16:14:08 +0200
Message-Id: <20200504141408.60877-4-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200504141408.60877-1-enric.balletbo@collabora.com>
References: <20200504141408.60877-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_071420_211023_9FECF92C 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The mtk_dpi driver uses an empty implementation for its encoder. Replace
the code with the generic simple encoder.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/mediatek/mtk_dpi.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index baad198c69eb..80778b2aac2a 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -20,6 +20,7 @@
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_of.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "mtk_dpi_regs.h"
 #include "mtk_drm_ddp_comp.h"
@@ -510,15 +511,6 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	return 0;
 }
 
-static void mtk_dpi_encoder_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
-static const struct drm_encoder_funcs mtk_dpi_encoder_funcs = {
-	.destroy = mtk_dpi_encoder_destroy,
-};
-
 static int mtk_dpi_bridge_attach(struct drm_bridge *bridge,
 				 enum drm_bridge_attach_flags flags)
 {
@@ -591,8 +583,8 @@ static int mtk_dpi_bind(struct device *dev, struct device *master, void *data)
 		return ret;
 	}
 
-	ret = drm_encoder_init(drm_dev, &dpi->encoder, &mtk_dpi_encoder_funcs,
-			       DRM_MODE_ENCODER_TMDS, NULL);
+	ret = drm_simple_encoder_init(drm_dev, &dpi->encoder,
+				      DRM_MODE_ENCODER_TMDS);
 	if (ret) {
 		dev_err(dev, "Failed to initialize decoder: %d\n", ret);
 		goto err_unregister;
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
