Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6A677042
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 19:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YXbB+1Gk3ALL17Xo1bbVWpMB2xApLRRDijIxs+txXHw=; b=VS0/GxT/dbPlR3K+z3WrdTCDk/
	itz7e8PcF1d/KW3eFHrJHIjR0MG1Pkxc9H2B4ra6fMwh54FwTNAiK8Mkhw7JhGLu3sKI9Vr7oF6sJ
	dMIok4i1lNDx8nNaZaMzDtv+UBwJflz27o/exx9bAYfz4KKxVc9SolQPHgTyLP1helT6dUm4/kLDh
	RliXJqRxm0/oT4lJt/ORIBgMCOL8vK1Fbc+3dGiYvPSiqpqn3o4KFnuGsxQIasvBQIi67E/dFsbtT
	VTvAWb+MgLMRspPnDEFZzEpSucN7taRE4XUonTEWRf4mqLdwWV14HgNonyLMIQvJH4v2En3CVKFbE
	Gt6siWBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr41f-0004UQ-Kd; Fri, 26 Jul 2019 17:29:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr41b-0004TD-71; Fri, 26 Jul 2019 17:29:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id EA76B28C54D
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v6 23/24] drm/radeon: Provide ddc symlink in connector sysfs
 directory
Date: Fri, 26 Jul 2019 19:23:17 +0200
Message-Id: <0836f34238730afce3f4d6b13f5cf04f832b668a.1564161140.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_102859_515437_49C1A078 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Jyri Sarha <jsarha@ti.com>, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use the ddc pointer provided by the generic connector.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/gpu/drm/radeon/radeon_connectors.c | 142 +++++++++++++++------
 1 file changed, 106 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
index c60d1a44d22a..b3ad8d890801 100644
--- a/drivers/gpu/drm/radeon/radeon_connectors.c
+++ b/drivers/gpu/drm/radeon/radeon_connectors.c
@@ -1870,6 +1870,7 @@ radeon_add_atom_connector(struct drm_device *dev,
 	struct radeon_connector_atom_dig *radeon_dig_connector;
 	struct drm_encoder *encoder;
 	struct radeon_encoder *radeon_encoder;
+	struct i2c_adapter *ddc;
 	uint32_t subpixel_order = SubPixelNone;
 	bool shared_ddc = false;
 	bool is_dp_bridge = false;
@@ -1947,17 +1948,21 @@ radeon_add_atom_connector(struct drm_device *dev,
 		radeon_connector->con_priv = radeon_dig_connector;
 		if (i2c_bus->valid) {
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-			if (radeon_connector->ddc_bus)
+			if (radeon_connector->ddc_bus) {
 				has_aux = true;
-			else
+				ddc = &radeon_connector->ddc_bus->adapter;
+			} else {
 				DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			}
 		}
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
 		case DRM_MODE_CONNECTOR_DVIA:
 		default:
-			drm_connector_init(dev, &radeon_connector->base,
-					   &radeon_dp_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dp_connector_funcs,
+						    connector_type,
+						    ddc);
 			drm_connector_helper_add(&radeon_connector->base,
 						 &radeon_dp_connector_helper_funcs);
 			connector->interlace_allowed = true;
@@ -1979,8 +1984,10 @@ radeon_add_atom_connector(struct drm_device *dev,
 		case DRM_MODE_CONNECTOR_HDMIA:
 		case DRM_MODE_CONNECTOR_HDMIB:
 		case DRM_MODE_CONNECTOR_DisplayPort:
-			drm_connector_init(dev, &radeon_connector->base,
-					   &radeon_dp_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dp_connector_funcs,
+						    connector_type,
+						    ddc);
 			drm_connector_helper_add(&radeon_connector->base,
 						 &radeon_dp_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2027,8 +2034,10 @@ radeon_add_atom_connector(struct drm_device *dev,
 			break;
 		case DRM_MODE_CONNECTOR_LVDS:
 		case DRM_MODE_CONNECTOR_eDP:
-			drm_connector_init(dev, &radeon_connector->base,
-					   &radeon_lvds_bridge_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_lvds_bridge_connector_funcs,
+						    connector_type,
+						    ddc);
 			drm_connector_helper_add(&radeon_connector->base,
 						 &radeon_dp_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2042,13 +2051,18 @@ radeon_add_atom_connector(struct drm_device *dev,
 	} else {
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
-			drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
-			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			if (i2c_bus->valid) {
 				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 				if (!radeon_connector->ddc_bus)
 					DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_vga_connector_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.load_detect_property,
@@ -2067,13 +2081,18 @@ radeon_add_atom_connector(struct drm_device *dev,
 			connector->doublescan_allowed = true;
 			break;
 		case DRM_MODE_CONNECTOR_DVIA:
-			drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
-			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			if (i2c_bus->valid) {
 				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 				if (!radeon_connector->ddc_bus)
 					DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_vga_connector_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.load_detect_property,
@@ -2098,13 +2117,18 @@ radeon_add_atom_connector(struct drm_device *dev,
 				goto failed;
 			radeon_dig_connector->igp_lane_info = igp_lane_info;
 			radeon_connector->con_priv = radeon_dig_connector;
-			drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
-			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			if (i2c_bus->valid) {
 				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 				if (!radeon_connector->ddc_bus)
 					DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dvi_connector_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
@@ -2155,13 +2179,18 @@ radeon_add_atom_connector(struct drm_device *dev,
 				goto failed;
 			radeon_dig_connector->igp_lane_info = igp_lane_info;
 			radeon_connector->con_priv = radeon_dig_connector;
-			drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
-			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			if (i2c_bus->valid) {
 				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 				if (!radeon_connector->ddc_bus)
 					DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dvi_connector_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
 						      1);
@@ -2205,15 +2234,20 @@ radeon_add_atom_connector(struct drm_device *dev,
 				goto failed;
 			radeon_dig_connector->igp_lane_info = igp_lane_info;
 			radeon_connector->con_priv = radeon_dig_connector;
-			drm_connector_init(dev, &radeon_connector->base, &radeon_dp_connector_funcs, connector_type);
-			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			if (i2c_bus->valid) {
 				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (radeon_connector->ddc_bus)
+				if (radeon_connector->ddc_bus) {
 					has_aux = true;
-				else
+					ddc = &radeon_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dp_connector_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
@@ -2255,15 +2289,20 @@ radeon_add_atom_connector(struct drm_device *dev,
 				goto failed;
 			radeon_dig_connector->igp_lane_info = igp_lane_info;
 			radeon_connector->con_priv = radeon_dig_connector;
-			drm_connector_init(dev, &radeon_connector->base, &radeon_edp_connector_funcs, connector_type);
-			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			if (i2c_bus->valid) {
 				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (radeon_connector->ddc_bus)
+				if (radeon_connector->ddc_bus) {
 					has_aux = true;
-				else
+					ddc = &radeon_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_edp_connector_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -2274,7 +2313,10 @@ radeon_add_atom_connector(struct drm_device *dev,
 		case DRM_MODE_CONNECTOR_SVIDEO:
 		case DRM_MODE_CONNECTOR_Composite:
 		case DRM_MODE_CONNECTOR_9PinDIN:
-			drm_connector_init(dev, &radeon_connector->base, &radeon_tv_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_tv_connector_funcs,
+						    connector_type,
+						    ddc);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_tv_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2294,13 +2336,18 @@ radeon_add_atom_connector(struct drm_device *dev,
 				goto failed;
 			radeon_dig_connector->igp_lane_info = igp_lane_info;
 			radeon_connector->con_priv = radeon_dig_connector;
-			drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
-			drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
 			if (i2c_bus->valid) {
 				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 				if (!radeon_connector->ddc_bus)
 					DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_lvds_connector_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -2378,13 +2425,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
 
 	switch (connector_type) {
 	case DRM_MODE_CONNECTOR_VGA:
-		drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
-		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		if (i2c_bus->valid) {
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_vga_connector_funcs,
+					    connector_type,
+					    ddc);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
 					      rdev->mode_info.load_detect_property,
@@ -2395,13 +2447,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
 		connector->doublescan_allowed = true;
 		break;
 	case DRM_MODE_CONNECTOR_DVIA:
-		drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
-		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		if (i2c_bus->valid) {
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_vga_connector_funcs,
+					    connector_type,
+					    ddc);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
 					      rdev->mode_info.load_detect_property,
@@ -2413,13 +2470,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
 		break;
 	case DRM_MODE_CONNECTOR_DVII:
 	case DRM_MODE_CONNECTOR_DVID:
-		drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
-		drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 		if (i2c_bus->valid) {
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_dvi_connector_funcs,
+					    connector_type,
+					    ddc);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 		if (connector_type == DRM_MODE_CONNECTOR_DVII) {
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2436,7 +2498,10 @@ radeon_add_legacy_connector(struct drm_device *dev,
 	case DRM_MODE_CONNECTOR_SVIDEO:
 	case DRM_MODE_CONNECTOR_Composite:
 	case DRM_MODE_CONNECTOR_9PinDIN:
-		drm_connector_init(dev, &radeon_connector->base, &radeon_tv_connector_funcs, connector_type);
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_tv_connector_funcs,
+					    connector_type,
+					    ddc);
 		drm_connector_helper_add(&radeon_connector->base, &radeon_tv_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		/* RS400,RC410,RS480 chipset seems to report a lot
@@ -2458,13 +2523,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
 		connector->doublescan_allowed = false;
 		break;
 	case DRM_MODE_CONNECTOR_LVDS:
-		drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
-		drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
 		if (i2c_bus->valid) {
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_lvds_connector_funcs,
+					    connector_type,
+					    ddc);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
 		drm_object_attach_property(&radeon_connector->base.base,
 					      dev->mode_config.scaling_mode_property,
 					      DRM_MODE_SCALE_FULLSCREEN);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
