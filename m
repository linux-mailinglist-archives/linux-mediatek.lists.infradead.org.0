Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD073086
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 16:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ptZ9DrH7DWP10FgYGqokTHUN+W1p+sTAqOHzs8nYxEQ=; b=KajuEg9UwNf15pKpDibUdPYto2
	D/goin0ItzH/Ph1VgOGS1CfHocH+kJ8n0UgSVDwgH9bJRPZ8wlbbv890khCpmOLYxoPP06WzBOVg8
	GdWx4Xgp7IOtj7uUkDhRkINU3zwgEZPU6J3WobUo7jiEO1iGvRm3KBj2cgOq37cDIRVg/cs9wYnz5
	Vb0DhhqX7vy/tJXKjsOwkSugOEdwJZGiWBi4iazr/ud28Fc2xLEYlE5x7kyklTUtFnwTFRaUdrVR1
	Y2LZJ8ofEYTEYplUeUZAmGMkYTjYd4LOVFE4Xj3ZNuatWPtyaXX+d8WRXORCA7kaCP8CudNIRTZ3a
	6RueosqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHpN-00074u-4a; Wed, 24 Jul 2019 14:01:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHpJ-000748-6y; Wed, 24 Jul 2019 14:01:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id EE3BB260454
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 03/24] drm/exynos: Provide ddc symlink in connector's sysfs
Date: Wed, 24 Jul 2019 15:59:25 +0200
Message-Id: <6fea36724e29e0a6629a19a821727043e730a1e5.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070105_522362_08D7C48F 
X-CRM114-Status: GOOD (  14.09  )
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
Cc: amd-gfx@lists.freedesktop.org, "Y.C. Chen" <yc_chen@aspeedtech.com>,
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
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
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

Switch to using the ddc provided by the generic connector.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/gpu/drm/exynos/exynos_hdmi.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
index bc1565f1822a..dda94de4afe0 100644
--- a/drivers/gpu/drm/exynos/exynos_hdmi.c
+++ b/drivers/gpu/drm/exynos/exynos_hdmi.c
@@ -125,7 +125,6 @@ struct hdmi_context {
 	void __iomem			*regs;
 	void __iomem			*regs_hdmiphy;
 	struct i2c_client		*hdmiphy_port;
-	struct i2c_adapter		*ddc_adpt;
 	struct gpio_desc		*hpd_gpio;
 	int				irq;
 	struct regmap			*pmureg;
@@ -871,10 +870,10 @@ static int hdmi_get_modes(struct drm_connector *connector)
 	struct edid *edid;
 	int ret;
 
-	if (!hdata->ddc_adpt)
+	if (!connector->ddc)
 		return -ENODEV;
 
-	edid = drm_get_edid(connector, hdata->ddc_adpt);
+	edid = drm_get_edid(connector, connector->ddc);
 	if (!edid)
 		return -ENODEV;
 
@@ -940,8 +939,10 @@ static int hdmi_create_connector(struct drm_encoder *encoder)
 	connector->interlace_allowed = true;
 	connector->polled = DRM_CONNECTOR_POLL_HPD;
 
-	ret = drm_connector_init(hdata->drm_dev, connector,
-			&hdmi_connector_funcs, DRM_MODE_CONNECTOR_HDMIA);
+	ret = drm_connector_init_with_ddc(hdata->drm_dev, connector,
+					  &hdmi_connector_funcs,
+					  DRM_MODE_CONNECTOR_HDMIA,
+					  connector->ddc);
 	if (ret) {
 		DRM_DEV_ERROR(hdata->dev,
 			      "Failed to initialize connector with drm\n");
@@ -1892,7 +1893,7 @@ static int hdmi_get_ddc_adapter(struct hdmi_context *hdata)
 		return -EPROBE_DEFER;
 	}
 
-	hdata->ddc_adpt = adpt;
+	hdata->connector.ddc = adpt;
 
 	return 0;
 }
@@ -2044,7 +2045,7 @@ static int hdmi_probe(struct platform_device *pdev)
 	if (hdata->regs_hdmiphy)
 		iounmap(hdata->regs_hdmiphy);
 err_ddc:
-	put_device(&hdata->ddc_adpt->dev);
+	put_device(&hdata->connector.ddc->dev);
 
 	return ret;
 }
@@ -2071,7 +2072,7 @@ static int hdmi_remove(struct platform_device *pdev)
 	if (hdata->regs_hdmiphy)
 		iounmap(hdata->regs_hdmiphy);
 
-	put_device(&hdata->ddc_adpt->dev);
+	put_device(&hdata->connector.ddc->dev);
 
 	mutex_destroy(&hdata->mutex);
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
