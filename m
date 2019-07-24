Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E8E73110
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 16:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QfbQaKEu1R0OWNiyWNJjGOU7HTxOd39NMJP5q8LZUb4=; b=XlJ2y1TGj3zsK7J5pu8z28/eo6
	0LyUZOpGFy5YcOe9PkFznwCpzert0fAeSgyxVRfCDCVrNOux9gz1hUtPh8tvEuGEFbfvPsQA0kJws
	ry5DTZvoSCOiTaCgMdhYlYp4ORiAnE0us1fdGjxDUZPVh/HMxeK5+xcWfQJcElZ53e1fWzjLnc4+B
	J33G4tSYMhtJuz5+dUsf/25rs5Y3h7u6z8A/dTRdxhjjcqwgoH4ozae9MKyiILSdihmA47TehJh5f
	d2FKVwUszFq1kf4Ajav2RLsm6pjgUBS3eVG2vyE2wDO8cFQ8FwZkmhYGf8qgWY94aFAZf+6oAbqsz
	x1oeZH6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHuK-0001fX-BX; Wed, 24 Jul 2019 14:06:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHuF-0001el-FL; Wed, 24 Jul 2019 14:06:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id EC2AE283CFE
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 23/24] drm/radeon: Provide ddc symlink in connector sysfs
 directory
Date: Wed, 24 Jul 2019 15:59:45 +0200
Message-Id: <0c9783d97ecbbf98cecc5b9b93823e6b3da68b57.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070611_777806_49CE9835 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Armijn Hemel <armijn@tjaldur.nl>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 intel-gfx@lists.freedesktop.org, Shashank Sharma <shashank.sharma@intel.com>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
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
 drivers/gpu/drm/radeon/radeon_connectors.c | 141 +++++++++++++++------
 1 file changed, 105 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
index c60d1a44d22a..1b743edb3fbe 100644
--- a/drivers/gpu/drm/radeon/radeon_connectors.c
+++ b/drivers/gpu/drm/radeon/radeon_connectors.c
@@ -1947,17 +1947,21 @@ radeon_add_atom_connector(struct drm_device *dev,
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
 		case DRM_MODE_CONNECTOR_DVIA:
 		default:
-			drm_connector_init(dev, &radeon_connector->base,
-					   &radeon_dp_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dp_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
 			drm_connector_helper_add(&radeon_connector->base,
 						 &radeon_dp_connector_helper_funcs);
 			connector->interlace_allowed = true;
@@ -1979,8 +1983,10 @@ radeon_add_atom_connector(struct drm_device *dev,
 		case DRM_MODE_CONNECTOR_HDMIA:
 		case DRM_MODE_CONNECTOR_HDMIB:
 		case DRM_MODE_CONNECTOR_DisplayPort:
-			drm_connector_init(dev, &radeon_connector->base,
-					   &radeon_dp_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dp_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
 			drm_connector_helper_add(&radeon_connector->base,
 						 &radeon_dp_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2027,8 +2033,10 @@ radeon_add_atom_connector(struct drm_device *dev,
 			break;
 		case DRM_MODE_CONNECTOR_LVDS:
 		case DRM_MODE_CONNECTOR_eDP:
-			drm_connector_init(dev, &radeon_connector->base,
-					   &radeon_lvds_bridge_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_lvds_bridge_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
 			drm_connector_helper_add(&radeon_connector->base,
 						 &radeon_dp_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2042,13 +2050,18 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_vga_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.load_detect_property,
@@ -2067,13 +2080,18 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_vga_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.load_detect_property,
@@ -2098,13 +2116,18 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dvi_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
@@ -2155,13 +2178,18 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dvi_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
 						      1);
@@ -2205,15 +2233,20 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_dp_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
@@ -2255,15 +2288,20 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_edp_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -2274,7 +2312,10 @@ radeon_add_atom_connector(struct drm_device *dev,
 		case DRM_MODE_CONNECTOR_SVIDEO:
 		case DRM_MODE_CONNECTOR_Composite:
 		case DRM_MODE_CONNECTOR_9PinDIN:
-			drm_connector_init(dev, &radeon_connector->base, &radeon_tv_connector_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_tv_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_tv_connector_helper_funcs);
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2294,13 +2335,18 @@ radeon_add_atom_connector(struct drm_device *dev,
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
+			drm_connector_init_with_ddc(dev, &radeon_connector->base,
+						    &radeon_lvds_connector_funcs,
+						    connector_type,
+						    radeon_connector->base.ddc);
+			drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -2378,13 +2424,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
 
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
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_vga_connector_funcs,
+					    connector_type,
+					    radeon_connector->base.ddc);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
 					      rdev->mode_info.load_detect_property,
@@ -2395,13 +2446,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_vga_connector_funcs,
+					    connector_type,
+					    radeon_connector->base.ddc);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
 					      rdev->mode_info.load_detect_property,
@@ -2413,13 +2469,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_dvi_connector_funcs,
+					    connector_type,
+					    radeon_connector->base.ddc);
+		drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 		if (connector_type == DRM_MODE_CONNECTOR_DVII) {
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2436,7 +2497,10 @@ radeon_add_legacy_connector(struct drm_device *dev,
 	case DRM_MODE_CONNECTOR_SVIDEO:
 	case DRM_MODE_CONNECTOR_Composite:
 	case DRM_MODE_CONNECTOR_9PinDIN:
-		drm_connector_init(dev, &radeon_connector->base, &radeon_tv_connector_funcs, connector_type);
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_tv_connector_funcs,
+					    connector_type,
+					    radeon_connector->base.ddc);
 		drm_connector_helper_add(&radeon_connector->base, &radeon_tv_connector_helper_funcs);
 		radeon_connector->dac_load_detect = true;
 		/* RS400,RC410,RS480 chipset seems to report a lot
@@ -2458,13 +2522,18 @@ radeon_add_legacy_connector(struct drm_device *dev,
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
+		drm_connector_init_with_ddc(dev, &radeon_connector->base,
+					    &radeon_lvds_connector_funcs,
+					    connector_type,
+					    radeon_connector->base.ddc);
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
