Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD04730D5
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 16:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XFMxoQt0FakrJXJEeqBSC4VYoPjBm9+wXW+i7JabsNE=; b=nzg3Ku2+Atkk/w1D4shbUJ5q/+
	cixfRASu+5rBvPKXmPq8MMFIIGZMR+MGdxjvFs26o0PD7lC8aZbwSUCp/kWRutizYwZbXW7TX5jsD
	F9Zv4o2+R57+8S6sqK8bNkpoB5s+tq7iN0PMAxXmY5QkkGCf8rPRSkdPm+tWgu7T8IyzkFnIwYkQa
	Jjg1j5cOmcCvYOL6wXK/fLXk1uji8pWOF2iRei5tiOCiuTXgNs/VHdrknbtHJ0k3SkYBDOHE41uCc
	lB4I81eX0+/AX3WcuUrt7QuD0gOt65z4Aqzb/jKwtCzxULJ1DBjV5Gu/vUo6nWzC/52npQQWpxq5R
	m7hr3uFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHs1-0008CP-03; Wed, 24 Jul 2019 14:03:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHrx-0008BV-OV; Wed, 24 Jul 2019 14:03:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id CD83627E5D2
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 14/24] drm: zte: Provide ddc symlink in vga connector sysfs
 directory
Date: Wed, 24 Jul 2019 15:59:36 +0200
Message-Id: <be7b7fc2e0b4e653e378a8e889c6f16c5bd47d1e.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070350_084199_6AF32C3D 
X-CRM114-Status: GOOD (  14.89  )
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
 Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
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
 drivers/gpu/drm/zte/zx_vga.c | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/zte/zx_vga.c b/drivers/gpu/drm/zte/zx_vga.c
index 9b67e419280c..1bc6e9bce7e0 100644
--- a/drivers/gpu/drm/zte/zx_vga.c
+++ b/drivers/gpu/drm/zte/zx_vga.c
@@ -25,15 +25,11 @@ struct zx_vga_pwrctrl {
 	u32 mask;
 };
 
-struct zx_vga_i2c {
-	struct i2c_adapter adap;
-	struct mutex lock;
-};
-
 struct zx_vga {
 	struct drm_connector connector;
 	struct drm_encoder encoder;
-	struct zx_vga_i2c *ddc;
+	/* protects ddc access */
+	struct mutex ddc_lock;
 	struct device *dev;
 	void __iomem *mmio;
 	struct clk *i2c_wclk;
@@ -88,7 +84,7 @@ static int zx_vga_connector_get_modes(struct drm_connector *connector)
 	 */
 	zx_writel(vga->mmio + VGA_AUTO_DETECT_SEL, 0);
 
-	edid = drm_get_edid(connector, &vga->ddc->adap);
+	edid = drm_get_edid(connector, connector->ddc);
 	if (!edid) {
 		/*
 		 * If EDID reading fails, we set the device state into
@@ -165,8 +161,10 @@ static int zx_vga_register(struct drm_device *drm, struct zx_vga *vga)
 
 	vga->connector.polled = DRM_CONNECTOR_POLL_HPD;
 
-	ret = drm_connector_init(drm, connector, &zx_vga_connector_funcs,
-				 DRM_MODE_CONNECTOR_VGA);
+	ret = drm_connector_init_with_ddc(drm, connector,
+					  &zx_vga_connector_funcs,
+					  DRM_MODE_CONNECTOR_VGA,
+					  connector->ddc);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "failed to init connector: %d\n", ret);
 		goto clean_encoder;
@@ -284,11 +282,10 @@ static int zx_vga_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 			   int num)
 {
 	struct zx_vga *vga = i2c_get_adapdata(adap);
-	struct zx_vga_i2c *ddc = vga->ddc;
 	int ret = 0;
 	int i;
 
-	mutex_lock(&ddc->lock);
+	mutex_lock(&vga->ddc_lock);
 
 	for (i = 0; i < num; i++) {
 		if (msgs[i].flags & I2C_M_RD)
@@ -303,7 +300,7 @@ static int zx_vga_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	if (!ret)
 		ret = num;
 
-	mutex_unlock(&ddc->lock);
+	mutex_unlock(&vga->ddc_lock);
 
 	return ret;
 }
@@ -322,17 +319,15 @@ static int zx_vga_ddc_register(struct zx_vga *vga)
 {
 	struct device *dev = vga->dev;
 	struct i2c_adapter *adap;
-	struct zx_vga_i2c *ddc;
 	int ret;
 
-	ddc = devm_kzalloc(dev, sizeof(*ddc), GFP_KERNEL);
-	if (!ddc)
+	adap = devm_kzalloc(dev, sizeof(*adap), GFP_KERNEL);
+	if (!adap)
 		return -ENOMEM;
 
-	vga->ddc = ddc;
-	mutex_init(&ddc->lock);
+	vga->connector.ddc = adap;
+	mutex_init(&vga->ddc_lock);
 
-	adap = &ddc->adap;
 	adap->owner = THIS_MODULE;
 	adap->class = I2C_CLASS_DDC;
 	adap->dev.parent = dev;
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
