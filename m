Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCBB5A054
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m+NX5/LA1qMHyiT8uDutKl6mpFp2R21ofmr6fIT3CUM=; b=GLUIssqcXgvvc7AHbsQ+knUung
	AnyBAXQY1YEHnc/FTRgOE3IhPnndDehup33HNGuOJaCd1eZhs0zaxi39JQNfIvV4ogKYT+Wghz3yF
	n1uGgM8bJFZV9uAA62S4cGDVFNFGrVrMa/yb0Gs+dkb+xkbpeW4LiOebg3I8Brphm3+RepGWrUV42
	Kzi0/1C3BexlxrhBjzvJFNtWDhU5JcRD9z6iy6diufejAT0UeKP0ft5ThDuxPIcng1Lb8Q8axBAlV
	fcROvjmqqiOjzcv1hXAMTXlqq3fZBS4LfZTU7TkoH6FSsVA+rLvg/I1BmAVFV6sRcMtZDQGhh3rml
	zalyibng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtOd-0001UY-0M; Fri, 28 Jun 2019 16:06:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtOY-0001Ta-Pg; Fri, 28 Jun 2019 16:06:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 5C436289CF0
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 13/22] drm: zte: Provide ddc symlink in vga connector sysfs
 directory
Date: Fri, 28 Jun 2019 18:01:27 +0200
Message-Id: <f418bce1006655a581a86e2cd93d767d1f975dd1.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090639_090067_53D78891 
X-CRM114-Status: GOOD (  14.64  )
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
 Jonas Karlman <jonas@kwiboo.se>, Jani Nikula <jani.nikula@intel.com>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
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
 drivers/gpu/drm/zte/zx_vga.c | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/zte/zx_vga.c b/drivers/gpu/drm/zte/zx_vga.c
index 1634a08707fb..a3a4d6982888 100644
--- a/drivers/gpu/drm/zte/zx_vga.c
+++ b/drivers/gpu/drm/zte/zx_vga.c
@@ -23,15 +23,11 @@ struct zx_vga_pwrctrl {
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
@@ -86,7 +82,7 @@ static int zx_vga_connector_get_modes(struct drm_connector *connector)
 	 */
 	zx_writel(vga->mmio + VGA_AUTO_DETECT_SEL, 0);
 
-	edid = drm_get_edid(connector, &vga->ddc->adap);
+	edid = drm_get_edid(connector, connector->ddc);
 	if (!edid) {
 		/*
 		 * If EDID reading fails, we set the device state into
@@ -282,11 +278,10 @@ static int zx_vga_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
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
@@ -301,7 +296,7 @@ static int zx_vga_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	if (!ret)
 		ret = num;
 
-	mutex_unlock(&ddc->lock);
+	mutex_unlock(&vga->ddc_lock);
 
 	return ret;
 }
@@ -320,17 +315,15 @@ static int zx_vga_ddc_register(struct zx_vga *vga)
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
