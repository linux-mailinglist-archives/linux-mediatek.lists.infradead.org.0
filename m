Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5475E1A2AE2
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Apr 2020 23:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CS8rxeP+Xj+xPdYroqewnAhXR5BYPrgaCJ7clxD3agc=; b=PsooRdrQ8jLiNs
	GV55++XEDL1xrS0iV/GRPuYU3eHoFRGnDn/UcwD4oMnFbgLGVlPapwe3T0qP2/lymC1FMJKAIHh6z
	vLrj6JcejIBhOAFw7P0JiCEYMufxGSDGtaJCmSCXnLJYsyugPnaXWMkQwUijwPN7+Zy5BrShA8Ul+
	updkuiZ249w+po4fGKPfW3vu5kh+doSqUD63UslTVRokQy7MXERpwgSKsC+CpTltcqDhvjwMduAwL
	EloyU1wY48ZQfIRdeRBfjwmN30oldGqxmLEo0FrdOJFCR0IPPYtAZFlcOwkDSDqZGMyWfXBYkJuTH
	4CTxjcUf1RpBuKxe7Thw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMI0a-000129-4o; Wed, 08 Apr 2020 21:13:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMHz0-0007sw-Gb; Wed, 08 Apr 2020 21:11:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 0F61229748B
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] drm/mediatek: mtk_dsi: Use simple encoder
Date: Wed,  8 Apr 2020 23:11:18 +0200
Message-Id: <20200408211120.1407512-6-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408211120.1407512-1-enric.balletbo@collabora.com>
References: <20200408211120.1407512-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_141138_761916_16F1D758 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The mtk_dsi driver uses an empty implementation for its encoder. Replace
the code with the generic simple encoder.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/mediatek/mtk_dsi.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 3400d6686c85..48361c1e9f34 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -22,6 +22,7 @@
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "mtk_drm_ddp_comp.h"
 
@@ -788,15 +789,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
 	dsi->enabled = false;
 }
 
-static void mtk_dsi_encoder_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
-static const struct drm_encoder_funcs mtk_dsi_encoder_funcs = {
-	.destroy = mtk_dsi_encoder_destroy,
-};
-
 static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi);
 static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi);
 
@@ -1126,8 +1118,8 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
 {
 	int ret;
 
-	ret = drm_encoder_init(drm, &dsi->encoder, &mtk_dsi_encoder_funcs,
-			       DRM_MODE_ENCODER_DSI, NULL);
+	ret = drm_simple_encoder_init(drm, &dsi->encoder,
+				      DRM_MODE_ENCODER_DSI);
 	if (ret) {
 		DRM_ERROR("Failed to encoder init to drm\n");
 		return ret;
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
