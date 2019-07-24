Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A6D730CA
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 16:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F2lEAeN/zLUAQHk1k4fcX9hRKJel0dFO13cFUMtTf0Y=; b=Cgdo3M7+9mgSloT5ahOC/KgO09
	rsr+aN6GCjyt6PrYaKQAISEmQ0SXL58TcV5AyExtLr8DjTGC1A9MO1gYGPFfSHBa0b2WJvl112xVM
	0EJo/cFFy8O+g3WszGK//NI0Q4k7zpDPfU7Dh7SkZX/FYxIn8SyW8KZdzmpAFoO99R4leQmkkTni5
	Mk1y2ou2TjbFL5xate3Ozk1+WN+LWmwS0S/TYLWL5a7nqcGbDpiBWZALcbXQekOqjStToGJ5t5bl6
	8xNRK6MKOcrrO7+LXkRxSkdOYlaVc7mFVuhjPGQQmuzxvMoXA7rrLjONwF+2+N6RtWHkmkQ5f0BQ4
	aWh/25Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHrk-00085p-F6; Wed, 24 Jul 2019 14:03:36 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHrh-00084z-44; Wed, 24 Jul 2019 14:03:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id B7C2E26D598
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 13/24] drm: zte: Provide ddc symlink in hdmi connector
 sysfs directory
Date: Wed, 24 Jul 2019 15:59:35 +0200
Message-Id: <acafbea21c1af8301afcfb8e56ea1a186163e39c.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070333_436975_13B44C74 
X-CRM114-Status: GOOD (  14.38  )
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
 drivers/gpu/drm/zte/zx_hdmi.c | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/zte/zx_hdmi.c b/drivers/gpu/drm/zte/zx_hdmi.c
index a50f5a1f09b8..502d357b40a5 100644
--- a/drivers/gpu/drm/zte/zx_hdmi.c
+++ b/drivers/gpu/drm/zte/zx_hdmi.c
@@ -29,15 +29,11 @@
 #define ZX_HDMI_INFOFRAME_SIZE		31
 #define DDC_SEGMENT_ADDR		0x30
 
-struct zx_hdmi_i2c {
-	struct i2c_adapter adap;
-	struct mutex lock;
-};
-
 struct zx_hdmi {
 	struct drm_connector connector;
 	struct drm_encoder encoder;
-	struct zx_hdmi_i2c *ddc;
+	/* protects ddc access */
+	struct mutex ddc_lock;
 	struct device *dev;
 	struct drm_device *drm;
 	void __iomem *mmio;
@@ -264,7 +260,7 @@ static int zx_hdmi_connector_get_modes(struct drm_connector *connector)
 	struct edid *edid;
 	int ret;
 
-	edid = drm_get_edid(connector, &hdmi->ddc->adap);
+	edid = drm_get_edid(connector, connector->ddc);
 	if (!edid)
 		return 0;
 
@@ -319,8 +315,10 @@ static int zx_hdmi_register(struct drm_device *drm, struct zx_hdmi *hdmi)
 
 	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
 
-	drm_connector_init(drm, &hdmi->connector, &zx_hdmi_connector_funcs,
-			   DRM_MODE_CONNECTOR_HDMIA);
+	drm_connector_init_with_ddc(drm, &hdmi->connector,
+				    &zx_hdmi_connector_funcs,
+				    DRM_MODE_CONNECTOR_HDMIA,
+				    hdmi->connector.ddc);
 	drm_connector_helper_add(&hdmi->connector,
 				 &zx_hdmi_connector_helper_funcs);
 
@@ -562,10 +560,9 @@ static int zx_hdmi_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 			    int num)
 {
 	struct zx_hdmi *hdmi = i2c_get_adapdata(adap);
-	struct zx_hdmi_i2c *ddc = hdmi->ddc;
 	int i, ret = 0;
 
-	mutex_lock(&ddc->lock);
+	mutex_lock(&hdmi->ddc_lock);
 
 	/* Enable DDC master access */
 	hdmi_writeb_mask(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, HW_DDC_MASTER);
@@ -590,7 +587,7 @@ static int zx_hdmi_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	/* Disable DDC master access */
 	hdmi_writeb_mask(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, 0);
 
-	mutex_unlock(&ddc->lock);
+	mutex_unlock(&hdmi->ddc_lock);
 
 	return ret;
 }
@@ -608,17 +605,15 @@ static const struct i2c_algorithm zx_hdmi_algorithm = {
 static int zx_hdmi_ddc_register(struct zx_hdmi *hdmi)
 {
 	struct i2c_adapter *adap;
-	struct zx_hdmi_i2c *ddc;
 	int ret;
 
-	ddc = devm_kzalloc(hdmi->dev, sizeof(*ddc), GFP_KERNEL);
-	if (!ddc)
+	adap = devm_kzalloc(hdmi->dev, sizeof(*adap), GFP_KERNEL);
+	if (!adap)
 		return -ENOMEM;
 
-	hdmi->ddc = ddc;
-	mutex_init(&ddc->lock);
+	hdmi->connector.ddc = adap;
+	mutex_init(&hdmi->ddc_lock);
 
-	adap = &ddc->adap;
 	adap->owner = THIS_MODULE;
 	adap->class = I2C_CLASS_DDC;
 	adap->dev.parent = hdmi->dev;
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
