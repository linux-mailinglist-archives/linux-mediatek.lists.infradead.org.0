Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735305A069
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+BtyW6l4FBsU8IDUeM/VqmPE1Ao6YyZn+gBHaylJyl0=; b=DF8JLhRZ9COAz6Fi1g/n2ACjv6
	iXbXdaB/8ml98Tvy/WbKi3vtpb3Xee45Oxa4rDj1uMA76B8Q158tc/b+it6C44xgah90+p5+dI0Rx
	UDVFcZ/1qKpFzbUexhGiB1ryW+Kjuk/2bOAMxUdaRo5nfTxIWPdcHSH2mZPlYnRk3aXStrzebiLRH
	2KxxI+mwYbBOoyG7fv6pL9+vvlnu7QnPTh263m7KpuAHV9kdxq8Q38ubc+b490YrR0BZ42A1ovQWa
	l6E7tuNG6BGZ0c/m0Oj6fKIUSwTmmZKTZgIICvD4HJSWP/pSUuj3k2pV3jZRSLc6fBb3+z8s7WDMV
	BQGZlgZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtQF-0002Jh-Sl; Fri, 28 Jun 2019 16:08:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtQA-0002Ih-Hg; Fri, 28 Jun 2019 16:08:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 59BCF28957D
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 22/22] drm/radeon: Provide ddc symlink in connector sysfs
 directory
Date: Fri, 28 Jun 2019 18:01:36 +0200
Message-Id: <dd1312ee84adef0161ebeaaf3c0448b1a1371919.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090818_844398_834F7A2D 
X-CRM114-Status: GOOD (  12.62  )
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
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
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
 drivers/gpu/drm/radeon/radeon_connectors.c | 82 +++++++++++++++++-----
 1 file changed, 63 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
index c60d1a44d22a..a876e51d275a 100644
--- a/drivers/gpu/drm/radeon/radeon_connectors.c
+++ b/drivers/gpu/drm/radeon/radeon_connectors.c
@@ -1946,11 +1946,15 @@ radeon_add_atom_connector(struct drm_device *dev,
 		radeon_dig_connector->igp_lane_info = igp_lane_info;
 		radeon_connector->con_priv = radeon_dig_connector;
 		if (i2c_bus->valid) {
-			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-			if (radeon_connector->ddc_bus)
+			struct radeon_connector *rcn = radeon_connector;
+
+			rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+			if (rcn->ddc_bus) {
 				has_aux = true;
-			else
+				connector->ddc = &rcn->ddc_bus->adapter;
+			} else {
 				DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			}
 		}
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
@@ -2045,9 +2049,13 @@ radeon_add_atom_connector(struct drm_device *dev,
 			drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			if (i2c_bus->valid) {
-				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (!radeon_connector->ddc_bus)
+				struct radeon_connector *rcn = radeon_connector;
+
+				rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+				if (!rcn->ddc_bus)
 					DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &rcn->ddc_bus->adapter;
 			}
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2070,9 +2078,13 @@ radeon_add_atom_connector(struct drm_device *dev,
 			drm_connector_init(dev, &radeon_connector->base, &radeon_vga_connector_funcs, connector_type);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_vga_connector_helper_funcs);
 			if (i2c_bus->valid) {
-				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (!radeon_connector->ddc_bus)
+				struct radeon_connector *rcn = radeon_connector;
+
+				rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+				if (!rcn->ddc_bus)
 					DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &rcn->ddc_bus->adapter;
 			}
 			radeon_connector->dac_load_detect = true;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2101,9 +2113,13 @@ radeon_add_atom_connector(struct drm_device *dev,
 			drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			if (i2c_bus->valid) {
-				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (!radeon_connector->ddc_bus)
+				struct radeon_connector *rcn = radeon_connector;
+
+				rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+				if (!rcn->ddc_bus)
 					DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &rcn->ddc_bus->adapter;
 			}
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2158,9 +2174,13 @@ radeon_add_atom_connector(struct drm_device *dev,
 			drm_connector_init(dev, &radeon_connector->base, &radeon_dvi_connector_funcs, connector_type);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_dvi_connector_helper_funcs);
 			if (i2c_bus->valid) {
-				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (!radeon_connector->ddc_bus)
+				struct radeon_connector *rcn = radeon_connector;
+
+				rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+				if (!rcn->ddc_bus)
 					DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &rcn->ddc_bus->adapter;
 			}
 			drm_object_attach_property(&radeon_connector->base.base,
 						      rdev->mode_info.coherent_mode_property,
@@ -2208,11 +2228,15 @@ radeon_add_atom_connector(struct drm_device *dev,
 			drm_connector_init(dev, &radeon_connector->base, &radeon_dp_connector_funcs, connector_type);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			if (i2c_bus->valid) {
-				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (radeon_connector->ddc_bus)
+				struct radeon_connector *rcn = radeon_connector;
+
+				rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+				if (rcn->ddc_bus) {
 					has_aux = true;
-				else
+					connector->ddc = &rcn->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&radeon_connector->base.base,
@@ -2258,11 +2282,15 @@ radeon_add_atom_connector(struct drm_device *dev,
 			drm_connector_init(dev, &radeon_connector->base, &radeon_edp_connector_funcs, connector_type);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_dp_connector_helper_funcs);
 			if (i2c_bus->valid) {
-				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (radeon_connector->ddc_bus)
+				struct radeon_connector *rcn = radeon_connector;
+
+				rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+				if (rcn->ddc_bus) {
 					has_aux = true;
-				else
+					connector->ddc = &rcn->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
@@ -2297,9 +2325,13 @@ radeon_add_atom_connector(struct drm_device *dev,
 			drm_connector_init(dev, &radeon_connector->base, &radeon_lvds_connector_funcs, connector_type);
 			drm_connector_helper_add(&radeon_connector->base, &radeon_lvds_connector_helper_funcs);
 			if (i2c_bus->valid) {
-				radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
-				if (!radeon_connector->ddc_bus)
+				struct radeon_connector *rcn = radeon_connector;
+
+				rcn->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
+				if (!rcn->ddc_bus)
 					DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &rcn->ddc_bus->adapter;
 			}
 			drm_object_attach_property(&radeon_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
@@ -2384,6 +2416,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				connector->ddc =
+					&radeon_connector->ddc_bus->adapter;
 		}
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
@@ -2401,6 +2436,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				connector->ddc =
+					&radeon_connector->ddc_bus->adapter;
 		}
 		radeon_connector->dac_load_detect = true;
 		drm_object_attach_property(&radeon_connector->base.base,
@@ -2419,6 +2457,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				connector->ddc =
+					&radeon_connector->ddc_bus->adapter;
 		}
 		if (connector_type == DRM_MODE_CONNECTOR_DVII) {
 			radeon_connector->dac_load_detect = true;
@@ -2464,6 +2505,9 @@ radeon_add_legacy_connector(struct drm_device *dev,
 			radeon_connector->ddc_bus = radeon_i2c_lookup(rdev, i2c_bus);
 			if (!radeon_connector->ddc_bus)
 				DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			else
+				connector->ddc =
+					&radeon_connector->ddc_bus->adapter;
 		}
 		drm_object_attach_property(&radeon_connector->base.base,
 					      dev->mode_config.scaling_mode_property,
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
