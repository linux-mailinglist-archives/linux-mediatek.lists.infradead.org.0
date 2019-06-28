Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312B65A067
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qaes1Qzt5+TAs5ahV5HPP67gGhaFGbRr/HTYrDWJQ+o=; b=fyvRhWHA+UUk/eRLkcMK81DKGG
	Gbd/1KULBWfT/NRTmvIqaY+SPngBs+3IIE8LIIB4tvKSRSDfpqahb8iHo8zOvkTtP6d3XsyEsb/nf
	Yq7MjqyrKKePaXpbhm9A4lT1LTClYXn/jNvDN6F3cQvqEM9+TwynIE7EuzKcO1twc283hmkf13s1w
	uUqEGxpauKkjun3Vy22AiS6yx5Qh5NBPGfmgX6p6y/i458MjYhLmUw3rfaGk/8NESGwWHfvr+BItS
	2l/Mu0RZcynAAOpZWCRKVeWgAsISdxcVVaLuOF1OzMNsm4DVEEHjLu50H1wK1EIznkZjXRxf1hJIo
	gYWOPRVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtQ2-0002Da-Ig; Fri, 28 Jun 2019 16:08:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtPy-0002CR-BO; Fri, 28 Jun 2019 16:08:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 3282E289CF7
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 21/22] drm/amdgpu: Provide ddc symlink in connector sysfs
 directory
Date: Fri, 28 Jun 2019 18:01:35 +0200
Message-Id: <5e355b8bec8fb3907566a741db8cc3e356246a32.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090806_656310_367BF6A7 
X-CRM114-Status: GOOD (  11.76  )
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
 Maxime Ripard <maxime.ripard@bootlin.com>, Liviu Dudau <liviu.dudau@arm.com>,
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
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
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
 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    | 70 ++++++++++++++-----
 1 file changed, 51 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
index 73b2ede773d3..5f8a7e3818b9 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
@@ -1573,11 +1573,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			goto failed;
 		amdgpu_connector->con_priv = amdgpu_dig_connector;
 		if (i2c_bus->valid) {
-			amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-			if (amdgpu_connector->ddc_bus)
+			struct amdgpu_connector *acn = amdgpu_connector;
+
+			acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+			if (acn->ddc_bus) {
 				has_aux = true;
-			else
+				connector->ddc = &acn->ddc_bus->adapter;
+			} else {
 				DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+			}
 		}
 		switch (connector_type) {
 		case DRM_MODE_CONNECTOR_VGA:
@@ -1662,9 +1666,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
 			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			if (i2c_bus->valid) {
-				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (!amdgpu_connector->ddc_bus)
+				struct amdgpu_connector *acn = amdgpu_connector;
+
+				acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+				if (!acn->ddc_bus)
 					DRM_ERROR("VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &acn->ddc_bus->adapter;
 			}
 			amdgpu_connector->dac_load_detect = true;
 			drm_object_attach_property(&amdgpu_connector->base.base,
@@ -1682,9 +1690,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_vga_funcs, connector_type);
 			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_vga_helper_funcs);
 			if (i2c_bus->valid) {
-				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (!amdgpu_connector->ddc_bus)
+				struct amdgpu_connector *acn = amdgpu_connector;
+
+				acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+				if (!acn->ddc_bus)
 					DRM_ERROR("DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &acn->ddc_bus->adapter;
 			}
 			amdgpu_connector->dac_load_detect = true;
 			drm_object_attach_property(&amdgpu_connector->base.base,
@@ -1707,9 +1719,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
 			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			if (i2c_bus->valid) {
-				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (!amdgpu_connector->ddc_bus)
+				struct amdgpu_connector *acn = amdgpu_connector;
+
+				acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+				if (!acn->ddc_bus)
 					DRM_ERROR("DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &acn->ddc_bus->adapter;
 			}
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&amdgpu_connector->base.base,
@@ -1757,9 +1773,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dvi_funcs, connector_type);
 			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dvi_helper_funcs);
 			if (i2c_bus->valid) {
-				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (!amdgpu_connector->ddc_bus)
+				struct amdgpu_connector *acn = amdgpu_connector;
+
+				acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+				if (!acn->ddc_bus)
 					DRM_ERROR("HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &acn->ddc_bus->adapter;
 			}
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      adev->mode_info.coherent_mode_property,
@@ -1799,11 +1819,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_dp_funcs, connector_type);
 			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			if (i2c_bus->valid) {
-				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (amdgpu_connector->ddc_bus)
+				struct amdgpu_connector *acn = amdgpu_connector;
+
+				acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+				if (acn->ddc_bus) {
 					has_aux = true;
-				else
+					connector->ddc = &acn->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
 			subpixel_order = SubPixelHorizontalRGB;
 			drm_object_attach_property(&amdgpu_connector->base.base,
@@ -1841,11 +1865,15 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_edp_funcs, connector_type);
 			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_dp_helper_funcs);
 			if (i2c_bus->valid) {
-				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (amdgpu_connector->ddc_bus)
+				struct amdgpu_connector *acn = amdgpu_connector;
+
+				acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+				if (acn->ddc_bus) {
 					has_aux = true;
-				else
+					connector->ddc = &acn->ddc_bus->adapter;
+				} else {
 					DRM_ERROR("DP: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				}
 			}
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
@@ -1862,9 +1890,13 @@ amdgpu_connector_add(struct amdgpu_device *adev,
 			drm_connector_init(dev, &amdgpu_connector->base, &amdgpu_connector_lvds_funcs, connector_type);
 			drm_connector_helper_add(&amdgpu_connector->base, &amdgpu_connector_lvds_helper_funcs);
 			if (i2c_bus->valid) {
-				amdgpu_connector->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
-				if (!amdgpu_connector->ddc_bus)
+				struct amdgpu_connector *acn = amdgpu_connector;
+
+				acn->ddc_bus = amdgpu_i2c_lookup(adev, i2c_bus);
+				if (!acn->ddc_bus)
 					DRM_ERROR("LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\n");
+				else
+					connector->ddc = &acn->ddc_bus->adapter;
 			}
 			drm_object_attach_property(&amdgpu_connector->base.base,
 						      dev->mode_config.scaling_mode_property,
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
