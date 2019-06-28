Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FCA5A052
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U8dxCcRndzlsHH6CG8KfRrQtnMEVGtBujB3OIMRaWUo=; b=ORgnJScj0vVGzVckp3Wcr2FTls
	YNwl1FT3XJsHJ4cCSxX/xhRIppmERBqiyFw/F1RrIHxL5+H+Nv0fT2sD/zQvf74lr8Jz+5RcfSzKs
	iujWVQNZD3zvbR0qSefkO/Z9Aq20Uqz6uXzZlBRPN87VriFJRNpgFd+QlEl2VIe57wUg4sBdEVWYu
	2nlJW3S4Ypfz1hYY0UsUkpfhVHqi5aPyk19jfOjkwSUQf6wfyxlCfvtvSxMMD2H+aIyX2Fc6FnpWZ
	Xf55+rufXo0dgckPjQWNcC8xDwJLMkgbzO9h/l1O23hd/gSv7A+lN9jS8FGcE92wuf2edhubQfT7E
	6MXDt6Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtOR-0001P5-LM; Fri, 28 Jun 2019 16:06:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtON-0001Nh-FU; Fri, 28 Jun 2019 16:06:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 55103289CEF
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 12/22] drm: zte: Provide ddc symlink in hdmi connector
 sysfs directory
Date: Fri, 28 Jun 2019 18:01:26 +0200
Message-Id: <db660d95c4d3cc643c9da7e7a3aecfa13bc73fb7.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090627_778359_2F5F7CE1 
X-CRM114-Status: GOOD (  14.20  )
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
 drivers/gpu/drm/zte/zx_hdmi.c | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/zte/zx_hdmi.c b/drivers/gpu/drm/zte/zx_hdmi.c
index bfe918b27c5c..862a855ea14a 100644
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
 
@@ -562,10 +558,9 @@ static int zx_hdmi_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 			    int num)
 {
 	struct zx_hdmi *hdmi = i2c_get_adapdata(adap);
-	struct zx_hdmi_i2c *ddc = hdmi->ddc;
 	int i, ret = 0;
 
-	mutex_lock(&ddc->lock);
+	mutex_lock(&hdmi->ddc_lock);
 
 	/* Enable DDC master access */
 	hdmi_writeb_mask(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, HW_DDC_MASTER);
@@ -590,7 +585,7 @@ static int zx_hdmi_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	/* Disable DDC master access */
 	hdmi_writeb_mask(hdmi, TPI_DDC_MASTER_EN, HW_DDC_MASTER, 0);
 
-	mutex_unlock(&ddc->lock);
+	mutex_unlock(&hdmi->ddc_lock);
 
 	return ret;
 }
@@ -608,17 +603,15 @@ static const struct i2c_algorithm zx_hdmi_algorithm = {
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
