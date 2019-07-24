Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF01730F7
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 16:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WgZd68fw4tSO31YK/Ys0gUDeGqCPUlcZP4hd/uH9nbM=; b=MswJhIwBn6OYyj2lRsInpjiE61
	NG4iMy4B6hHJX0N0R0vv6Ra4yCggvSkCiB+Nl0Gdh1iMftCJLYOvkxcGAn2wPyMdrNQEeAZUr3I/A
	ySdIJ18KP3mQhoT/7QXnORCqx2DqXvMaEXBnB1gs3nuRd1RBnH/T4rgbkW3hoF+NHCR+j8a76p+sA
	tmkLMxiscrCJSSGoLhyBls15Jo1f7WQfnU8LR+5EBEaiQnuufXw1Xr7G7iYIImzbf8oZWyb7/G+IZ
	zfwSVBww9mwVVmVH+j4WElKByKAYOdOU28lG0pfVlZEUbTnI81mqX6cRE49q3KVotwE2xmiHSFSeT
	ywS0Pc5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHtH-0001Ka-Kx; Wed, 24 Jul 2019 14:05:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHtE-00019Q-BB; Wed, 24 Jul 2019 14:05:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 0973527FB86
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 19/24] drm/bridge: dumb-vga-dac: Provide ddc symlink in
 connector sysfs directory
Date: Wed, 24 Jul 2019 15:59:41 +0200
Message-Id: <c8a09ecf0a72f2c5eb7141e291604ac2f398c436.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070508_654920_73E6F909 
X-CRM114-Status: GOOD (  14.88  )
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
 Liviu Dudau <liviu.dudau@arm.com>, Douglas Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
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
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
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
 drivers/gpu/drm/bridge/dumb-vga-dac.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dumb-vga-dac.c b/drivers/gpu/drm/bridge/dumb-vga-dac.c
index d32885b906ae..ec04402eca38 100644
--- a/drivers/gpu/drm/bridge/dumb-vga-dac.c
+++ b/drivers/gpu/drm/bridge/dumb-vga-dac.c
@@ -20,7 +20,6 @@ struct dumb_vga {
 	struct drm_bridge	bridge;
 	struct drm_connector	connector;
 
-	struct i2c_adapter	*ddc;
 	struct regulator	*vdd;
 };
 
@@ -42,10 +41,10 @@ static int dumb_vga_get_modes(struct drm_connector *connector)
 	struct edid *edid;
 	int ret;
 
-	if (IS_ERR(vga->ddc))
+	if (IS_ERR(vga->connector.ddc))
 		goto fallback;
 
-	edid = drm_get_edid(connector, vga->ddc);
+	edid = drm_get_edid(connector, vga->connector.ddc);
 	if (!edid) {
 		DRM_INFO("EDID readout failed, falling back to standard modes\n");
 		goto fallback;
@@ -84,7 +83,7 @@ dumb_vga_connector_detect(struct drm_connector *connector, bool force)
 	 * wire the DDC pins, or the I2C bus might not be working at
 	 * all.
 	 */
-	if (!IS_ERR(vga->ddc) && drm_probe_ddc(vga->ddc))
+	if (!IS_ERR(vga->connector.ddc) && drm_probe_ddc(vga->connector.ddc))
 		return connector_status_connected;
 
 	return connector_status_unknown;
@@ -111,8 +110,10 @@ static int dumb_vga_attach(struct drm_bridge *bridge)
 
 	drm_connector_helper_add(&vga->connector,
 				 &dumb_vga_con_helper_funcs);
-	ret = drm_connector_init(bridge->dev, &vga->connector,
-				 &dumb_vga_con_funcs, DRM_MODE_CONNECTOR_VGA);
+	ret = drm_connector_init_with_ddc(bridge->dev, &vga->connector,
+					  &dumb_vga_con_funcs,
+					  DRM_MODE_CONNECTOR_VGA,
+					  vga->connector.ddc);
 	if (ret) {
 		DRM_ERROR("Failed to initialize connector\n");
 		return ret;
@@ -190,14 +191,14 @@ static int dumb_vga_probe(struct platform_device *pdev)
 		dev_dbg(&pdev->dev, "No vdd regulator found: %d\n", ret);
 	}
 
-	vga->ddc = dumb_vga_retrieve_ddc(&pdev->dev);
-	if (IS_ERR(vga->ddc)) {
-		if (PTR_ERR(vga->ddc) == -ENODEV) {
+	vga->connector.ddc = dumb_vga_retrieve_ddc(&pdev->dev);
+	if (IS_ERR(vga->connector.ddc)) {
+		if (PTR_ERR(vga->connector.ddc) == -ENODEV) {
 			dev_dbg(&pdev->dev,
 				"No i2c bus specified. Disabling EDID readout\n");
 		} else {
 			dev_err(&pdev->dev, "Couldn't retrieve i2c bus\n");
-			return PTR_ERR(vga->ddc);
+			return PTR_ERR(vga->connector.ddc);
 		}
 	}
 
@@ -216,8 +217,8 @@ static int dumb_vga_remove(struct platform_device *pdev)
 
 	drm_bridge_remove(&vga->bridge);
 
-	if (!IS_ERR(vga->ddc))
-		i2c_put_adapter(vga->ddc);
+	if (!IS_ERR(vga->connector.ddc))
+		i2c_put_adapter(vga->connector.ddc);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
