Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD72417A9E1
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Mar 2020 17:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qOLMfH3MkwtgoGSmAuHbV3gga1d8i9YJWZBY4B3GHU=; b=MAwuC8Qmtgumpj
	K9a+20Fv9pFfB3KO2jMdEpqKKNZjkXN89R6jDvakxajR2tmjPNmOhFOPvl9PBEiDfx8d40WYwhgy4
	nZxsw/uP9lS0KBqw3HBhCHcn9om5p3nohot1LM6+V6nfqfrLvMj9lGuGGHoCRBKq/vy3OmTYhmuEx
	NgCCmsH8c6WdfqwKgTp9ucGQHX5gmro9uSX5o5ASORj31NwNjnPrm3XujlmF5vEIQMIl1OHsBC1Sr
	77ipDWRvt7gfClpDj4BXaPeRI4TljACPwrqJ6iWib4ZiO+BuG2czNORqqhGGThkNv/EAShJt7bAIs
	buZtX4ZiEm2AkXLqE5wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9svj-0007fI-Ds; Thu, 05 Mar 2020 16:00:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9suq-0005qJ-Qq; Thu, 05 Mar 2020 16:00:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CD85AB011;
 Thu,  5 Mar 2020 16:00:00 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, sam@ravnborg.org, abrodkin@synopsys.com,
 bbrezillon@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 jingoohan1@gmail.com, inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 krzk@kernel.org, stefan@agner.ch, alison.wang@nxp.com,
 patrik.r.jakobsson@gmail.com, xinliang.liu@linaro.org,
 zourongrong@gmail.com, john.stultz@linaro.org,
 kong.kongxinwei@hisilicon.com, puck.chen@hisilicon.com,
 linux@armlinux.org.uk, p.zabel@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, paul@crapouillou.net, ck.hu@mediatek.com,
 matthias.bgg@gmail.com, laurent.pinchart@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com, hjc@rock-chips.com,
 heiko@sntech.de, wens@csie.org, jernej.skrabec@siol.net,
 thierry.reding@gmail.com, jonathanh@nvidia.com, jsarha@ti.com,
 tomi.valkeinen@ti.com, eric@anholt.net, kraxel@redhat.com,
 rodrigosiqueiramelo@gmail.com, hamohammed.sa@gmail.com,
 sebastian.reichel@collabora.com
Subject: [PATCH 05/22] drm/gma500: Use simple encoder
Date: Thu,  5 Mar 2020 16:59:33 +0100
Message-Id: <20200305155950.2705-6-tzimmermann@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200305155950.2705-1-tzimmermann@suse.de>
References: <20200305155950.2705-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_080005_258364_BAF8E745 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The gma500 driver uses empty implementations for some of its encoders.
Replace the code with the generic simple encoder. As a side effect, the
patch also removes an indirection in the encoder setup for Medfield.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/gma500/cdv_intel_crt.c     | 14 +++-----------
 drivers/gpu/drm/gma500/cdv_intel_dp.c      | 16 +++-------------
 drivers/gpu/drm/gma500/cdv_intel_hdmi.c    |  4 ++--
 drivers/gpu/drm/gma500/cdv_intel_lvds.c    | 17 +++--------------
 drivers/gpu/drm/gma500/mdfld_dsi_dpi.c     |  7 +++----
 drivers/gpu/drm/gma500/mdfld_output.h      |  1 -
 drivers/gpu/drm/gma500/mdfld_tmd_vid.c     |  6 ------
 drivers/gpu/drm/gma500/mdfld_tpo_vid.c     |  6 ------
 drivers/gpu/drm/gma500/oaktrail_hdmi.c     | 14 ++------------
 drivers/gpu/drm/gma500/oaktrail_lvds.c     |  5 +++--
 drivers/gpu/drm/gma500/psb_intel_drv.h     |  1 -
 drivers/gpu/drm/gma500/psb_intel_lvds.c    | 18 +++---------------
 drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c |  5 -----
 13 files changed, 22 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/gma500/cdv_intel_crt.c b/drivers/gpu/drm/gma500/cdv_intel_crt.c
index 29c36d63b20e..88535f5aacc5 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_crt.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_crt.c
@@ -28,6 +28,8 @@
 #include <linux/i2c.h>
 #include <linux/pm_runtime.h>
 
+#include <drm/drm_simple_kms_helper.h>
+
 #include "cdv_device.h"
 #include "intel_bios.h"
 #include "power.h"
@@ -237,15 +239,6 @@ static const struct drm_connector_helper_funcs
 	.best_encoder = gma_best_encoder,
 };
 
-static void cdv_intel_crt_enc_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
-static const struct drm_encoder_funcs cdv_intel_crt_enc_funcs = {
-	.destroy = cdv_intel_crt_enc_destroy,
-};
-
 void cdv_intel_crt_init(struct drm_device *dev,
 			struct psb_intel_mode_device *mode_dev)
 {
@@ -271,8 +264,7 @@ void cdv_intel_crt_init(struct drm_device *dev,
 		&cdv_intel_crt_connector_funcs, DRM_MODE_CONNECTOR_VGA);
 
 	encoder = &gma_encoder->base;
-	drm_encoder_init(dev, encoder,
-		&cdv_intel_crt_enc_funcs, DRM_MODE_ENCODER_DAC, NULL);
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_DAC);
 
 	gma_connector_attach_encoder(gma_connector, gma_encoder);
 
diff --git a/drivers/gpu/drm/gma500/cdv_intel_dp.c b/drivers/gpu/drm/gma500/cdv_intel_dp.c
index 5772b2dce0d6..13947ec06dbb 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_dp.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_dp.c
@@ -32,6 +32,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_dp_helper.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "gma_display.h"
 #include "psb_drv.h"
@@ -1908,11 +1909,6 @@ cdv_intel_dp_destroy(struct drm_connector *connector)
 	kfree(connector);
 }
 
-static void cdv_intel_dp_encoder_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
 static const struct drm_encoder_helper_funcs cdv_intel_dp_helper_funcs = {
 	.dpms = cdv_intel_dp_dpms,
 	.mode_fixup = cdv_intel_dp_mode_fixup,
@@ -1935,11 +1931,6 @@ static const struct drm_connector_helper_funcs cdv_intel_dp_connector_helper_fun
 	.best_encoder = gma_best_encoder,
 };
 
-static const struct drm_encoder_funcs cdv_intel_dp_enc_funcs = {
-	.destroy = cdv_intel_dp_encoder_destroy,
-};
-
-
 static void cdv_intel_dp_add_properties(struct drm_connector *connector)
 {
 	cdv_intel_attach_force_audio_property(connector);
@@ -2016,8 +2007,7 @@ cdv_intel_dp_init(struct drm_device *dev, struct psb_intel_mode_device *mode_dev
 	encoder = &gma_encoder->base;
 
 	drm_connector_init(dev, connector, &cdv_intel_dp_connector_funcs, type);
-	drm_encoder_init(dev, encoder, &cdv_intel_dp_enc_funcs,
-			 DRM_MODE_ENCODER_TMDS, NULL);
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_TMDS);
 
 	gma_connector_attach_encoder(gma_connector, gma_encoder);
 
@@ -2120,7 +2110,7 @@ cdv_intel_dp_init(struct drm_device *dev, struct psb_intel_mode_device *mode_dev
 		if (ret == 0) {
 			/* if this fails, presume the device is a ghost */
 			DRM_INFO("failed to retrieve link info, disabling eDP\n");
-			cdv_intel_dp_encoder_destroy(encoder);
+			drm_encoder_cleanup(encoder);
 			cdv_intel_dp_destroy(connector);
 			goto err_priv;
 		} else {
diff --git a/drivers/gpu/drm/gma500/cdv_intel_hdmi.c b/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
index 1711a41acc16..0d12c6ffbc40 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
@@ -32,6 +32,7 @@
 #include <drm/drm.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "cdv_device.h"
 #include "psb_drv.h"
@@ -311,8 +312,7 @@ void cdv_hdmi_init(struct drm_device *dev,
 			   &cdv_hdmi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DVID);
 
-	drm_encoder_init(dev, encoder, &psb_intel_lvds_enc_funcs,
-			 DRM_MODE_ENCODER_TMDS, NULL);
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_TMDS);
 
 	gma_connector_attach_encoder(gma_connector, gma_encoder);
 	gma_encoder->type = INTEL_OUTPUT_HDMI;
diff --git a/drivers/gpu/drm/gma500/cdv_intel_lvds.c b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
index ea0a5d9a0acc..18de10e9ff9a 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_lvds.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
@@ -12,6 +12,8 @@
 #include <linux/i2c.h>
 #include <linux/pm_runtime.h>
 
+#include <drm/drm_simple_kms_helper.h>
+
 #include "cdv_device.h"
 #include "intel_bios.h"
 #include "power.h"
@@ -499,16 +501,6 @@ static const struct drm_connector_funcs cdv_intel_lvds_connector_funcs = {
 	.destroy = cdv_intel_lvds_destroy,
 };
 
-
-static void cdv_intel_lvds_enc_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
-static const struct drm_encoder_funcs cdv_intel_lvds_enc_funcs = {
-	.destroy = cdv_intel_lvds_enc_destroy,
-};
-
 /*
  * Enumerate the child dev array parsed from VBT to check whether
  * the LVDS is present.
@@ -616,10 +608,7 @@ void cdv_intel_lvds_init(struct drm_device *dev,
 			   &cdv_intel_lvds_connector_funcs,
 			   DRM_MODE_CONNECTOR_LVDS);
 
-	drm_encoder_init(dev, encoder,
-			 &cdv_intel_lvds_enc_funcs,
-			 DRM_MODE_ENCODER_LVDS, NULL);
-
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
 
 	gma_connector_attach_encoder(gma_connector, gma_encoder);
 	gma_encoder->type = INTEL_OUTPUT_LVDS;
diff --git a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c b/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
index d4c65f268922..aa5aa293ddb6 100644
--- a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
+++ b/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
@@ -27,6 +27,8 @@
 
 #include <linux/delay.h>
 
+#include <drm/drm_simple_kms_helper.h>
+
 #include "mdfld_dsi_dpi.h"
 #include "mdfld_dsi_pkg_sender.h"
 #include "mdfld_output.h"
@@ -993,10 +995,7 @@ struct mdfld_dsi_encoder *mdfld_dsi_dpi_init(struct drm_device *dev,
 	/*create drm encoder object*/
 	connector = &dsi_connector->base.base;
 	encoder = &dpi_output->base.base.base;
-	drm_encoder_init(dev,
-			encoder,
-			p_funcs->encoder_funcs,
-			DRM_MODE_ENCODER_LVDS, NULL);
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
 	drm_encoder_helper_add(encoder,
 				p_funcs->encoder_helper_funcs);
 
diff --git a/drivers/gpu/drm/gma500/mdfld_output.h b/drivers/gpu/drm/gma500/mdfld_output.h
index ab2b27c0f037..17a944d70add 100644
--- a/drivers/gpu/drm/gma500/mdfld_output.h
+++ b/drivers/gpu/drm/gma500/mdfld_output.h
@@ -51,7 +51,6 @@ struct panel_info {
 };
 
 struct panel_funcs {
-	const struct drm_encoder_funcs *encoder_funcs;
 	const struct drm_encoder_helper_funcs *encoder_helper_funcs;
 	struct drm_display_mode * (*get_config_mode)(struct drm_device *);
 	int (*get_panel_info)(struct drm_device *, int, struct panel_info *);
diff --git a/drivers/gpu/drm/gma500/mdfld_tmd_vid.c b/drivers/gpu/drm/gma500/mdfld_tmd_vid.c
index 49c92debb7b2..25e897b98f86 100644
--- a/drivers/gpu/drm/gma500/mdfld_tmd_vid.c
+++ b/drivers/gpu/drm/gma500/mdfld_tmd_vid.c
@@ -188,13 +188,7 @@ static const struct drm_encoder_helper_funcs
 	.commit = mdfld_dsi_dpi_commit,
 };
 
-/*TPO DPI encoder funcs*/
-static const struct drm_encoder_funcs mdfld_tpo_dpi_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
 const struct panel_funcs mdfld_tmd_vid_funcs = {
-	.encoder_funcs = &mdfld_tpo_dpi_encoder_funcs,
 	.encoder_helper_funcs = &mdfld_tpo_dpi_encoder_helper_funcs,
 	.get_config_mode = &tmd_vid_get_config_mode,
 	.get_panel_info = tmd_vid_get_panel_info,
diff --git a/drivers/gpu/drm/gma500/mdfld_tpo_vid.c b/drivers/gpu/drm/gma500/mdfld_tpo_vid.c
index a9420bf9a419..11845978fb0a 100644
--- a/drivers/gpu/drm/gma500/mdfld_tpo_vid.c
+++ b/drivers/gpu/drm/gma500/mdfld_tpo_vid.c
@@ -76,13 +76,7 @@ static const struct drm_encoder_helper_funcs
 	.commit = mdfld_dsi_dpi_commit,
 };
 
-/*TPO DPI encoder funcs*/
-static const struct drm_encoder_funcs mdfld_tpo_dpi_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
 const struct panel_funcs mdfld_tpo_vid_funcs = {
-	.encoder_funcs = &mdfld_tpo_dpi_encoder_funcs,
 	.encoder_helper_funcs = &mdfld_tpo_dpi_encoder_helper_funcs,
 	.get_config_mode = &tpo_vid_get_config_mode,
 	.get_panel_info = tpo_vid_get_panel_info,
diff --git a/drivers/gpu/drm/gma500/oaktrail_hdmi.c b/drivers/gpu/drm/gma500/oaktrail_hdmi.c
index f4370232767d..b25086f252ae 100644
--- a/drivers/gpu/drm/gma500/oaktrail_hdmi.c
+++ b/drivers/gpu/drm/gma500/oaktrail_hdmi.c
@@ -27,6 +27,7 @@
 #include <linux/delay.h>
 
 #include <drm/drm.h>
+#include <drm/drm_simple_kms_helper.h>
 
 #include "psb_drv.h"
 #include "psb_intel_drv.h"
@@ -620,15 +621,6 @@ static const struct drm_connector_funcs oaktrail_hdmi_connector_funcs = {
 	.destroy = oaktrail_hdmi_destroy,
 };
 
-static void oaktrail_hdmi_enc_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
-static const struct drm_encoder_funcs oaktrail_hdmi_enc_funcs = {
-	.destroy = oaktrail_hdmi_enc_destroy,
-};
-
 void oaktrail_hdmi_init(struct drm_device *dev,
 					struct psb_intel_mode_device *mode_dev)
 {
@@ -651,9 +643,7 @@ void oaktrail_hdmi_init(struct drm_device *dev,
 			   &oaktrail_hdmi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DVID);
 
-	drm_encoder_init(dev, encoder,
-			 &oaktrail_hdmi_enc_funcs,
-			 DRM_MODE_ENCODER_TMDS, NULL);
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_TMDS);
 
 	gma_connector_attach_encoder(gma_connector, gma_encoder);
 
diff --git a/drivers/gpu/drm/gma500/oaktrail_lvds.c b/drivers/gpu/drm/gma500/oaktrail_lvds.c
index 582e09597500..2828360153d1 100644
--- a/drivers/gpu/drm/gma500/oaktrail_lvds.c
+++ b/drivers/gpu/drm/gma500/oaktrail_lvds.c
@@ -13,6 +13,8 @@
 
 #include <asm/intel-mid.h>
 
+#include <drm/drm_simple_kms_helper.h>
+
 #include "intel_bios.h"
 #include "power.h"
 #include "psb_drv.h"
@@ -311,8 +313,7 @@ void oaktrail_lvds_init(struct drm_device *dev,
 			   &psb_intel_lvds_connector_funcs,
 			   DRM_MODE_CONNECTOR_LVDS);
 
-	drm_encoder_init(dev, encoder, &psb_intel_lvds_enc_funcs,
-			 DRM_MODE_ENCODER_LVDS, NULL);
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
 
 	gma_connector_attach_encoder(gma_connector, gma_encoder);
 	gma_encoder->type = INTEL_OUTPUT_LVDS;
diff --git a/drivers/gpu/drm/gma500/psb_intel_drv.h b/drivers/gpu/drm/gma500/psb_intel_drv.h
index 16c6136f778b..fb601983cef0 100644
--- a/drivers/gpu/drm/gma500/psb_intel_drv.h
+++ b/drivers/gpu/drm/gma500/psb_intel_drv.h
@@ -252,7 +252,6 @@ extern int psb_intel_lvds_set_property(struct drm_connector *connector,
 					struct drm_property *property,
 					uint64_t value);
 extern void psb_intel_lvds_destroy(struct drm_connector *connector);
-extern const struct drm_encoder_funcs psb_intel_lvds_enc_funcs;
 
 /* intel_gmbus.c */
 extern void gma_intel_i2c_reset(struct drm_device *dev);
diff --git a/drivers/gpu/drm/gma500/psb_intel_lvds.c b/drivers/gpu/drm/gma500/psb_intel_lvds.c
index afaebab7bc17..063c66bb946d 100644
--- a/drivers/gpu/drm/gma500/psb_intel_lvds.c
+++ b/drivers/gpu/drm/gma500/psb_intel_lvds.c
@@ -11,6 +11,8 @@
 #include <linux/i2c.h>
 #include <linux/pm_runtime.h>
 
+#include <drm/drm_simple_kms_helper.h>
+
 #include "intel_bios.h"
 #include "power.h"
 #include "psb_drv.h"
@@ -621,18 +623,6 @@ const struct drm_connector_funcs psb_intel_lvds_connector_funcs = {
 	.destroy = psb_intel_lvds_destroy,
 };
 
-
-static void psb_intel_lvds_enc_destroy(struct drm_encoder *encoder)
-{
-	drm_encoder_cleanup(encoder);
-}
-
-const struct drm_encoder_funcs psb_intel_lvds_enc_funcs = {
-	.destroy = psb_intel_lvds_enc_destroy,
-};
-
-
-
 /**
  * psb_intel_lvds_init - setup LVDS connectors on this device
  * @dev: drm device
@@ -683,9 +673,7 @@ void psb_intel_lvds_init(struct drm_device *dev,
 			   &psb_intel_lvds_connector_funcs,
 			   DRM_MODE_CONNECTOR_LVDS);
 
-	drm_encoder_init(dev, encoder,
-			 &psb_intel_lvds_enc_funcs,
-			 DRM_MODE_ENCODER_LVDS, NULL);
+	drm_simple_encoder_init(dev, encoder, DRM_MODE_ENCODER_LVDS);
 
 	gma_connector_attach_encoder(gma_connector, gma_encoder);
 	gma_encoder->type = INTEL_OUTPUT_LVDS;
diff --git a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
index 9e8224456ea2..f7e121f4c609 100644
--- a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
+++ b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
@@ -765,12 +765,7 @@ static const struct drm_encoder_helper_funcs tc35876x_encoder_helper_funcs = {
 	.commit = mdfld_dsi_dpi_commit,
 };
 
-static const struct drm_encoder_funcs tc35876x_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
 const struct panel_funcs mdfld_tc35876x_funcs = {
-	.encoder_funcs = &tc35876x_encoder_funcs,
 	.encoder_helper_funcs = &tc35876x_encoder_helper_funcs,
 	.get_config_mode = tc35876x_get_config_mode,
 	.get_panel_info = tc35876x_get_panel_info,
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
