Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2EE655AF
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 13:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XURTue5eRq5dV47ZeVHgvVvQQObHFBfqsF1n8qlfyqE=; b=JLo92aIP7WlP29MyukTqfBQ6mA
	6DqrEYS+wD9tGqtS1pRtaPmYFRxGqf25RrD8L3rumWP/o4Ehcf+ZLWNc1QWA3z2X4HzUSou2wSgn1
	wJmB8UlfxPaOua1DFUyibKtk79XHoLzI0cPsSyaMQQPTy4wUGzO29yYS5RizKI4yrGpLNtyLf0B/K
	nfo5v5NHi2uKgGDfws+vek+W6quDSC7UhpFXJuEB5RuD01N09BUKAVGH+E7in92De8QoaLruFNqEw
	MVh9F9wnE2Dr9/cK7Prj2Y3GnykWA1kFeyCGpYOVgdFaCv7hVGeHy367ntJ8Lf8kNNlZc/aDm25JV
	MUzHMnTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXIt-0008UV-Gs; Thu, 11 Jul 2019 11:31:59 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXIp-0008Tt-W9; Thu, 11 Jul 2019 11:31:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id A027F28B690
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 21/23] drm/amdgpu: Provide ddc symlink in connector sysfs
 directory
Date: Thu, 11 Jul 2019 13:26:48 +0200
Message-Id: <4dd453eac61d69c0181105e7a131c368b01049fc.1562843413.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_043156_293325_B9D117DF 
X-CRM114-Status: GOOD (  11.13  )
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
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
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
 linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
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
 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 56 ++++++++++++-------
 1 file changed, 36 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
index 73b2ede773d3..e119d4c1f724 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
@@ -1574,10 +1574,12 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 		amdgpu_connector->con_priv = amdgpu_dig_connector;
 		if (i2c_bus->valid) {
 			amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-			if (amdgpu_connector->ddc_bus)
+			if (amdgpu_connector->ddc_bus) {
 				has_aux = true;
-			else
+				connector->ddc = &amdgpu_connector->ddc_bus->adapter;
+			} else {
 				DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			}
 		}
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
@@ -1659,13 +1661,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 	} else {
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
-			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
-			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			if (i2c_bus->valid) {
 				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
 				if (!amdgpu_connector->ddc_bus)
 					DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			amdgpu_connector->dac_load_detect = true;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.load_detect_property,
@@ -1679,13 +1683,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			connector->doublescan_allowed = true;
 			break;
 		case DRM_MODE_CONNECTOR_DVIA:
-			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
-			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			if (i2c_bus->valid) {
 				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
 				if (!amdgpu_connector->ddc_bus)
 					DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			amdgpu_connector->dac_load_detect = true;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.load_detect_property,
@@ -1704,13 +1710,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			if (!amdgpu_dig_connector)
 				goto failed;
 			amdgpu_connector->con_priv = amdgpu_dig_connector;
-			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
-			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			if (i2c_bus->valid) {
 				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
 				if (!amdgpu_connector->ddc_bus)
 					DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.coherent_mode_property,
@@ -1754,13 +1762,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			if (!amdgpu_dig_connector)
 				goto failed;
 			amdgpu_connector->con_priv = amdgpu_dig_connector;
-			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
-			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			if (i2c_bus->valid) {
 				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
 				if (!amdgpu_connector->ddc_bus)
 					DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.coherent_mode_property,
 						      1);
@@ -1796,15 +1806,17 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			if (!amdgpu_dig_connector)
 				goto failed;
 			amdgpu_connector->con_priv = amdgpu_dig_connector;
-			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dp_funcs, connector_type);
-			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			if (i2c_bus->valid) {
 				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (amdgpu_connector->ddc_bus)
+				if (amdgpu_connector->ddc_bus) {
 					has_aux = true;
-				else
+					connector->ddc = &amdgpu_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dp_funcs, connector_type);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.coherent_mode_property,
@@ -1838,15 +1850,17 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			if (!amdgpu_dig_connector)
 				goto failed;
 			amdgpu_connector->con_priv = amdgpu_dig_connector;
-			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_edp_funcs, connector_type);
-			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			if (i2c_bus->valid) {
 				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (amdgpu_connector->ddc_bus)
+				if (amdgpu_connector->ddc_bus) {
 					has_aux = true;
-				else
+					connector->ddc = &amdgpu_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_edp_funcs, connector_type);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -1859,13 +1873,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			if (!amdgpu_dig_connector)
 				goto failed;
 			amdgpu_connector->con_priv = amdgpu_dig_connector;
-			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_lvds_funcs, connector_type);
-			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_lvds_helper_funcs);
 			if (i2c_bus->valid) {
 				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
 				if (!amdgpu_connector->ddc_bus)
 					DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_lvds_funcs, connector_type);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_lvds_helper_funcs);
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
