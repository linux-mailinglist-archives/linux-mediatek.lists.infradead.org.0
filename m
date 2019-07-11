Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2276C655A8
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 13:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RcQrTYt1K6nt5Z6QMqRLwa8F/8qgRYG2Qols+ZYD9Ng=; b=hZBADV4aQL6nOt95WQJhP/OSno
	XxN+JABHwsbjDJCqAlE2uR1U/9VkaG9c3jFd0r4io6WMlI5WwU3IqO7jzR1ogQPOm6JzdZJarsmOA
	CAo7FhywOrXdeH799BwK1dlzLIQGJUvLLFpEXRG55xRMcWQtrUHhyRgWrR+S/JGfmCnJLRYFQW1vc
	GB69NMEU7MQHj56d/5BnFO1H/AFyS+ZiC/Az28i/VYS8MuDJ6fTvTCq5e/OUA6f+I24n99JCgQMZ5
	8JJG0uQ+wNA7HRviXaKku3DIhPwtkZRx8Itfj0P33UWPcf+Z59zz7Yqdtg/WTxEOxXGgYrTnSWmbY
	QQ/Fjcag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXIh-0008Pe-CL; Thu, 11 Jul 2019 11:31:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXId-0008Ox-2n; Thu, 11 Jul 2019 11:31:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 6778928B695
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 20/23] drm/bridge: ti-tfp410: Provide ddc symlink in
 connector sysfs directory
Date: Thu, 11 Jul 2019 13:26:47 +0200
Message-Id: <c665d01c4eacc61417519c40c54d5060b0bbe105.1562843413.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_043143_385324_513C3E09 
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Ramalingam C <ramalingam.c@intel.com>,
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
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, Harry Wentland <harry.wentland@amd.com>,
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
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
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
 drivers/gpu/drm/bridge/ti-tfp410.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index dbf35c7bc85e..e55358f0a5ba 100644
--- a/drivers/gpu/drm/bridge/ti-tfp410.c
+++ b/drivers/gpu/drm/bridge/ti-tfp410.c
@@ -26,7 +26,6 @@ struct tfp410 {
 	unsigned int		connector_type;
 
 	u32			bus_format;
-	struct i2c_adapter	*ddc;
 	struct gpio_desc	*hpd;
 	int			hpd_irq;
 	struct delayed_work	hpd_work;
@@ -55,10 +54,10 @@ static int tfp410_get_modes(struct drm_connector *connector)
 	struct edid *edid;
 	int ret;
 
-	if (!dvi->ddc)
+	if (!dvi->connector.ddc)
 		goto fallback;
 
-	edid = drm_get_edid(connector, dvi->ddc);
+	edid = drm_get_edid(connector, dvi->connector.ddc);
 	if (!edid) {
 		DRM_INFO("EDID read failed. Fallback to standard modes\n");
 		goto fallback;
@@ -98,8 +97,8 @@ tfp410_connector_detect(struct drm_connector *connector, bool force)
 			return connector_status_disconnected;
 	}
 
-	if (dvi->ddc) {
-		if (drm_probe_ddc(dvi->ddc))
+	if (dvi->connector.ddc) {
+		if (drm_probe_ddc(dvi->connector.ddc))
 			return connector_status_connected;
 		else
 			return connector_status_disconnected;
@@ -297,8 +296,8 @@ static int tfp410_get_connector_properties(struct tfp410 *dvi)
 	if (!ddc_phandle)
 		goto fail;
 
-	dvi->ddc = of_get_i2c_adapter_by_node(ddc_phandle);
-	if (dvi->ddc)
+	dvi->connector.ddc = of_get_i2c_adapter_by_node(ddc_phandle);
+	if (dvi->connector.ddc)
 		dev_info(dvi->dev, "Connector's ddc i2c bus found\n");
 	else
 		ret = -EPROBE_DEFER;
@@ -367,7 +366,7 @@ static int tfp410_init(struct device *dev, bool i2c)
 
 	return 0;
 fail:
-	i2c_put_adapter(dvi->ddc);
+	i2c_put_adapter(dvi->connector.ddc);
 	if (dvi->hpd)
 		gpiod_put(dvi->hpd);
 	return ret;
@@ -382,8 +381,8 @@ static int tfp410_fini(struct device *dev)
 
 	drm_bridge_remove(&dvi->bridge);
 
-	if (dvi->ddc)
-		i2c_put_adapter(dvi->ddc);
+	if (dvi->connector.ddc)
+		i2c_put_adapter(dvi->connector.ddc);
 	if (dvi->hpd)
 		gpiod_put(dvi->hpd);
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
