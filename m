Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF22B1FA190
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 22:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Re6Bc3tO6CPDX0t+zYqNBwRnoNEtw6wGMt0ueS8z9M=; b=X/XxZvbTnNyysZ
	vsTybNKzY63kk370I7Qy1Bo5NQ/wkZ0txlh3MBx/M6iscuIKnCpZAgvjj3jqvMhPomcuW87T9C0t3
	VqqFyVsE1b8kFAz2Fl1XmoHMeN5xEXbM48crX6N6BWbdP7FRe5r5qg6LkhoAJtW8Oe8bwS7+HFba8
	F1i18yc8SENmUMXCKjs4Fz7cC46bNpsXV/jb03uJl++slYWyWC/3IK/oQNcYmN0XS9HMjXlGpRlCA
	1cjfsZ9cyiXZRSBO/asTRMwdkWOConTC2xxJZDWMggfI/uwxbxBfp7ps4hvlzOx1JGVI1bd4iJHrL
	zmVJJ5c0TmJ41ZCaap+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvmQ-00006y-AB; Mon, 15 Jun 2020 20:32:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvlL-0007Vi-JK; Mon, 15 Jun 2020 20:31:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 0D1F22A2CFD
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org,
	Collabora Kernel ML <kernel@collabora.com>
Subject: [RESEND PATCH v4 4/7] drm/mediatek: mtk_dsi: Convert to bridge driver
Date: Mon, 15 Jun 2020 22:31:05 +0200
Message-Id: <20200615203108.786083-5-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615203108.786083-1-enric.balletbo@collabora.com>
References: <20200615203108.786083-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_133123_891594_0CEFF6EC 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 hsinyi@chromium.org, matthias.bgg@gmail.com, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Convert mtk_dsi to a bridge driver with built-in encoder support for
compatibility with existing component drivers.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---

Changes in v4:
- Remove double call to drm_encoder_init(). (Chun-Kuang Hu)
- Cleanup the encoder in mtk_dsi_unbind(). (Chun-Kuang Hu)

Changes in v3:
- Add the bridge.type. (Laurent Pinchart)

Changes in v2: None

 drivers/gpu/drm/mediatek/mtk_dsi.c | 117 +++++++++++++++++++----------
 1 file changed, 79 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 208f49bf14a01..759a5b37fb4d2 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -181,6 +181,7 @@ struct mtk_dsi {
 	struct device *dev;
 	struct mipi_dsi_host host;
 	struct drm_encoder encoder;
+	struct drm_bridge bridge;
 	struct drm_connector conn;
 	struct drm_panel *panel;
 	struct drm_bridge *next_bridge;
@@ -206,9 +207,9 @@ struct mtk_dsi {
 	const struct mtk_dsi_driver_data *driver_data;
 };
 
-static inline struct mtk_dsi *encoder_to_dsi(struct drm_encoder *e)
+static inline struct mtk_dsi *bridge_to_dsi(struct drm_bridge *b)
 {
-	return container_of(e, struct mtk_dsi, encoder);
+	return container_of(b, struct mtk_dsi, bridge);
 }
 
 static inline struct mtk_dsi *connector_to_dsi(struct drm_connector *c)
@@ -788,32 +789,52 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
 	dsi->enabled = false;
 }
 
-static bool mtk_dsi_encoder_mode_fixup(struct drm_encoder *encoder,
-				       const struct drm_display_mode *mode,
-				       struct drm_display_mode *adjusted_mode)
+static void mtk_dsi_encoder_destroy(struct drm_encoder *encoder)
 {
-	return true;
+	drm_encoder_cleanup(encoder);
 }
 
-static void mtk_dsi_encoder_mode_set(struct drm_encoder *encoder,
-				     struct drm_display_mode *mode,
-				     struct drm_display_mode *adjusted)
+static const struct drm_encoder_funcs mtk_dsi_encoder_funcs = {
+	.destroy = mtk_dsi_encoder_destroy,
+};
+
+static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi);
+static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi);
+
+static int mtk_dsi_bridge_attach(struct drm_bridge *bridge,
+				 enum drm_bridge_attach_flags flags)
+{
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
+
+	return mtk_dsi_create_conn_enc(bridge->dev, dsi);
+}
+
+static void mtk_dsi_bridge_detach(struct drm_bridge *bridge)
 {
-	struct mtk_dsi *dsi = encoder_to_dsi(encoder);
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
+
+	mtk_dsi_destroy_conn_enc(dsi);
+}
+
+static void mtk_dsi_bridge_mode_set(struct drm_bridge *bridge,
+				    const struct drm_display_mode *mode,
+				    const struct drm_display_mode *adjusted)
+{
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
 
 	drm_display_mode_to_videomode(adjusted, &dsi->vm);
 }
 
-static void mtk_dsi_encoder_disable(struct drm_encoder *encoder)
+static void mtk_dsi_bridge_disable(struct drm_bridge *bridge)
 {
-	struct mtk_dsi *dsi = encoder_to_dsi(encoder);
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
 
 	mtk_output_dsi_disable(dsi);
 }
 
-static void mtk_dsi_encoder_enable(struct drm_encoder *encoder)
+static void mtk_dsi_bridge_enable(struct drm_bridge *bridge)
 {
-	struct mtk_dsi *dsi = encoder_to_dsi(encoder);
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
 
 	mtk_output_dsi_enable(dsi);
 }
@@ -825,11 +846,12 @@ static int mtk_dsi_connector_get_modes(struct drm_connector *connector)
 	return drm_panel_get_modes(dsi->panel, connector);
 }
 
-static const struct drm_encoder_helper_funcs mtk_dsi_encoder_helper_funcs = {
-	.mode_fixup = mtk_dsi_encoder_mode_fixup,
-	.mode_set = mtk_dsi_encoder_mode_set,
-	.disable = mtk_dsi_encoder_disable,
-	.enable = mtk_dsi_encoder_enable,
+static const struct drm_bridge_funcs mtk_dsi_bridge_funcs = {
+	.attach = mtk_dsi_bridge_attach,
+	.detach = mtk_dsi_bridge_detach,
+	.disable = mtk_dsi_bridge_disable,
+	.enable = mtk_dsi_bridge_enable,
+	.mode_set = mtk_dsi_bridge_mode_set,
 };
 
 static const struct drm_connector_funcs mtk_dsi_connector_funcs = {
@@ -880,20 +902,6 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
 {
 	int ret;
 
-	ret = drm_simple_encoder_init(drm, &dsi->encoder,
-				      DRM_MODE_ENCODER_DSI);
-	if (ret) {
-		DRM_ERROR("Failed to encoder init to drm\n");
-		return ret;
-	}
-	drm_encoder_helper_add(&dsi->encoder, &mtk_dsi_encoder_helper_funcs);
-
-	/*
-	 * Currently display data paths are statically assigned to a crtc each.
-	 * crtc 0 is OVL0 -> COLOR0 -> AAL -> OD -> RDMA0 -> UFOE -> DSI0
-	 */
-	dsi->encoder.possible_crtcs = 1;
-
 	/* If there's a next bridge, attach to it and let it create the connector */
 	if (dsi->next_bridge) {
 		ret = drm_bridge_attach(&dsi->encoder, dsi->next_bridge, NULL,
@@ -1115,6 +1123,34 @@ static const struct mipi_dsi_host_ops mtk_dsi_ops = {
 	.transfer = mtk_dsi_host_transfer,
 };
 
+static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
+{
+	int ret;
+
+	ret = drm_encoder_init(drm, &dsi->encoder, &mtk_dsi_encoder_funcs,
+			       DRM_MODE_ENCODER_DSI, NULL);
+	if (ret) {
+		DRM_ERROR("Failed to encoder init to drm\n");
+		return ret;
+	}
+
+	/*
+	 * Currently display data paths are statically assigned to a crtc each.
+	 * crtc 0 is OVL0 -> COLOR0 -> AAL -> OD -> RDMA0 -> UFOE -> DSI0
+	 */
+	dsi->encoder.possible_crtcs = 1;
+
+	ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL, 0);
+	if (ret)
+		goto err_cleanup_encoder;
+
+	return 0;
+
+err_cleanup_encoder:
+	drm_encoder_cleanup(&dsi->encoder);
+	return ret;
+}
+
 static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 {
 	int ret;
@@ -1128,11 +1164,9 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 		return ret;
 	}
 
-	ret = mtk_dsi_create_conn_enc(drm, dsi);
-	if (ret) {
-		DRM_ERROR("Encoder create failed with %d\n", ret);
+	ret = mtk_dsi_encoder_init(drm, dsi);
+	if (ret)
 		goto err_unregister;
-	}
 
 	return 0;
 
@@ -1147,7 +1181,7 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
 	struct drm_device *drm = data;
 	struct mtk_dsi *dsi = dev_get_drvdata(dev);
 
-	mtk_dsi_destroy_conn_enc(dsi);
+	drm_encoder_cleanup(&dsi->encoder);
 	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
 }
 
@@ -1257,6 +1291,12 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, dsi);
 
+	dsi->bridge.funcs = &mtk_dsi_bridge_funcs;
+	dsi->bridge.of_node = dev->of_node;
+	dsi->bridge.type = DRM_MODE_CONNECTOR_DSI;
+
+	drm_bridge_add(&dsi->bridge);
+
 	ret = component_add(&pdev->dev, &mtk_dsi_component_ops);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to add component: %d\n", ret);
@@ -1275,6 +1315,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
 	struct mtk_dsi *dsi = platform_get_drvdata(pdev);
 
 	mtk_output_dsi_disable(dsi);
+	drm_bridge_remove(&dsi->bridge);
 	component_del(&pdev->dev, &mtk_dsi_component_ops);
 	mipi_dsi_host_unregister(&dsi->host);
 
-- 
2.27.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
