Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F326655B6
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 13:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TgRRhgKGk3vFvhOc3qtFJ3L5AafviokXJbNdgS9WOfs=; b=cbp6DLwlnKbsW0XHwAOHO5F7NK
	Xmh610yVgFDdcbWH5so4IdBvKhmugKEwh8etrk/4LOnMaVS2hFq7dk++5K24YGv/y3PkUgZd4JE6K
	TYooZnWgioHLjceSNsTJIVuKvB0kq3buCct+bLoZwwOEz0+y1I1clm1cUnlRaeqxnS3n/K4rLzSRf
	LU6WyfwlqDZJcozszW4adrgLNMVRvYIycgu5H9Z4FWMfa8gir3i3QPU2ksfs9I3NLQ0QAwA33ZbDR
	chXJTb3ZEaIPOsfDPmysFTIHYgY7+joBFB5pPJYZabrwQ1BryzmDLfHsOwHk1KSbJ6YjHp76W6b0m
	ET9Ne84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXJ6-00008j-Rn; Thu, 11 Jul 2019 11:32:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXJ3-00007q-CR; Thu, 11 Jul 2019 11:32:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id B376628B690
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 22/23] drm/radeon: Provide ddc symlink in connector sysfs
 directory
Date: Thu, 11 Jul 2019 13:26:49 +0200
Message-Id: <1dc6c9e758c20ece6d6809f61362a090051a0df7.1562843413.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_043209_683351_DC93778D 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, Harry Wentland <harry.wentland@amd.com>,
 intel-gfx@lists.freedesktop.org, Shashank Sharma <shashank.sharma@intel.com>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
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
 drivers/gpu/drm/radeon/radeon_connectors.c | 80 ++++++++++++++--------
 1 file changed, 52 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
index c60d1a44d22a..ee7430d0516e 100644
--- a/drivers/gpu/drm/radeon/radeon_connectors.c
+++ b/drivers/gpu/drm/radeon/radeon_connectors.c
@@ -1947,10 +1947,12 @@ radeon_add_atom_connector(struct drm_device *dev,
 		radeon_connector->con_priv = radeon_dig_connector;
 		if (i2c_bus->valid) {
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-			if (radeon_connector->ddc_bus)
+			if (radeon_connector->ddc_bus) {
 				has_aux = true;
-			else
+				connector->ddc = &radeon_connector->ddc_bus->adapter;
+			} else {
 				DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			}
 		}
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
@@ -2042,13 +2044,15 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+					connector->ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.load_detect_property,
@@ -2067,13 +2071,15 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+					connector->ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.load_detect_property,
@@ -2098,13 +2104,15 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+					connector->ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
@@ -2155,13 +2163,15 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+					connector->ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
 						      1);
@@ -2205,15 +2215,17 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+					connector->ddc = &radeon_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init(dev, &radeon_connector->base, &radeon_dp_connector_funcs, connector_type);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
@@ -2255,15 +2267,17 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+					connector->ddc = &radeon_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init(dev, &radeon_connector->base, &radeon_edp_connector_funcs, connector_type);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -2294,13 +2308,15 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+					connector->ddc = &radeon_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -2378,13 +2394,15 @@ radeon_add_legacy_connector(struct drm_device *dev,
 
 	switch (connector_type) {
 	case DRM_MODE_CONNECTOR_VGA:
-		drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
-		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		if (i2c_bus->valid) {
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				connector->ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
 					      rdev->mode_info.load_detect_property,
@@ -2395,13 +2413,15 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
+				connector->ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
 					      rdev->mode_info.load_detect_property,
@@ -2413,13 +2433,15 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
+				connector->ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 		if (connector_type == DRM_MODE_CONNECTOR_DVII) {
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2458,13 +2480,15 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
+				connector->ddc = &radeon_connector->ddc_bus->adapter;
 		}
+		drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
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
