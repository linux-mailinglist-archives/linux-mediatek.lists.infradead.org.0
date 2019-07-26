Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE427703D
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 19:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8KwsR111GGHaXjzzhTK2Xi6G5+2ZaAUffTbSUW/QnhI=; b=DR8YAhmv1jZzCMdIUpkTMjdhI4
	Mr1IwqtBPbTdFKaWBFjZVma2oMgjaQ86rws3PJp3sXm+ku55wLRDelbHpEAeVZs9HDForyw3dyv0m
	jDH6a856kKkyRKv+1q7tcaD+OaYtREMqalX69WEdCawGl7LbjTuSEomruS8tTiQeFBnUvmnXe0KRx
	T54FTZZnDfK3fSSLTYtN5+UsSwEhegn0CFZdwN/17YHJdmktE7b1I5NWlYeNjs9Egmq2eWUrFIg3w
	esePsJtbVgwBHskAOIZA66+zwrgPdivur9Mijm4v5i2JpzQmSsgnPDU2NzM9kPkxAZ4Ctsz9THmE+
	X+Mv6LcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr41T-0004Ek-0n; Fri, 26 Jul 2019 17:28:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr41O-0004DQ-1i; Fri, 26 Jul 2019 17:28:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id F175228C54F
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v6 22/24] drm/amdgpu: Provide ddc symlink in connector sysfs
 directory
Date: Fri, 26 Jul 2019 19:23:16 +0200
Message-Id: <7fee0fa0d0f77af6595d283d5f3ae5d551475821.1564161140.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1564161140.git.andrzej.p@collabora.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_102846_349040_68517E29 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Eric Anholt <eric@anholt.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
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
 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 96 ++++++++++++++-----
 1 file changed, 70 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
index 73b2ede773d3..ece55c8fa673 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
@@ -1505,6 +1505,7 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 	struct amdgpu_connector_atom_dig *amdgpu_dig_connector;
 	struct drm_encoder *encoder;
 	struct amdgpu_encoder *amdgpu_encoder;
+	struct i2c_adapter *ddc = NULL;
 	uint32_t subpixel_order = SubPixelNone;
 	bool shared_ddc = false;
 	bool is_dp_bridge = false;
@@ -1574,17 +1575,21 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 		amdgpu_connector->con_priv = amdgpu_dig_connector;
 		if (i2c_bus->valid) {
 			amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-			if (amdgpu_connector->ddc_bus)
+			if (amdgpu_connector->ddc_bus) {
 				has_aux = true;
-			else
+				ddc = &amdgpu_connector->ddc_bus->adapter;
+			} else {
 				DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			}
 		}
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
 		case DRM_MODE_CONNECTOR_DVIA:
 		default:
-			drm_connector_init(dev, &amdgpu_connector->base,
-					   &amdgpu_connector_dp_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_dp_funcs,
+						    connector_type,
+						    ddc);
 			drm_connector_helper_add(&amdgpu_connector->base,
 						 &amdgpu_connector_dp_helper_funcs);
 			connector->interlace_allowed = true;
@@ -1602,8 +1607,10 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 		case DRM_MODE_CONNECTOR_HDMIA:
 		case DRM_MODE_CONNECTOR_HDMIB:
 		case DRM_MODE_CONNECTOR_DisplayPort:
-			drm_connector_init(dev, &amdgpu_connector->base,
-					   &amdgpu_connector_dp_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_dp_funcs,
+						    connector_type,
+						    ddc);
 			drm_connector_helper_add(&amdgpu_connector->base,
 						 &amdgpu_connector_dp_helper_funcs);
 			drm_object_attach_property(&amdgpu_connector->base.base,
@@ -1644,8 +1651,10 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			break;
 		case DRM_MODE_CONNECTOR_LVDS:
 		case DRM_MODE_CONNECTOR_eDP:
-			drm_connector_init(dev, &amdgpu_connector->base,
-					   &amdgpu_connector_edp_funcs, connector_type);
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_edp_funcs,
+						    connector_type,
+						    ddc);
 			drm_connector_helper_add(&amdgpu_connector->base,
 						 &amdgpu_connector_dp_helper_funcs);
 			drm_object_attach_property(&amdgpu_connector->base.base,
@@ -1659,13 +1668,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
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
+					ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_vga_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			amdgpu_connector->dac_load_detect = true;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.load_detect_property,
@@ -1679,13 +1693,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
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
+					ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_vga_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			amdgpu_connector->dac_load_detect = true;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.load_detect_property,
@@ -1704,13 +1723,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
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
+					ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_dvi_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.coherent_mode_property,
@@ -1754,13 +1778,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
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
+					ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_dvi_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.coherent_mode_property,
 						      1);
@@ -1796,15 +1825,20 @@ amdgpu_connector_add(struct amdgpu_device *adev,
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
+					ddc = &amdgpu_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_dp_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.coherent_mode_property,
@@ -1838,15 +1872,20 @@ amdgpu_connector_add(struct amdgpu_device *adev,
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
+					ddc = &amdgpu_connector->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_edp_funcs,
+						    connector_type,
+						    ddc);
+			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
 						      DRM_MODE_SCALE_FULLSCREEN);
@@ -1859,13 +1898,18 @@ amdgpu_connector_add(struct amdgpu_device *adev,
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
+					ddc = &amdgpu_connector->ddc_bus->adapter;
 			}
+			drm_connector_init_with_ddc(dev, &amdgpu_connector->base,
+						    &amdgpu_connector_lvds_funcs,
+						    connector_type,
+						    ddc);
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
