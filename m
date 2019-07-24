Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2F873105
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 16:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y0boMEUDwLs+jLaib/E7lMS+muHdGq10RBW7DZcrwHo=; b=anD98zDISWGY8a9BUbJkvum7pJ
	YxHkHzBEwVz97FgDBMXrWLJ6RHrUMWRv2ZErPxErZslw+t9SC2sE8V7U2pHSD/cmwiMdM7iUUOfVP
	RwrxNQBqjBr1iTlHf28C+WKJAPFERkTt/yeAGv/GHps5TG9s/ueKgle98mEeK4Bzbd9oBg5nPdhwL
	aStClWL4VrhiB8N/0qJkKOne4LxQv+nwWd4LiaKcf3GdYZc6LUrRMzxqyRe0VlS3nusPqOZjp+ID8
	bLUf4pPEUVXaeCdMM0zuTRrdMZ6pS65v+1D/lVDhK8Xv6st8WQx+2KNOBJ4dxNWClS/hZlOf8fwYR
	+US8MNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHtm-0001Uz-NV; Wed, 24 Jul 2019 14:05:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHtj-0001UX-CB; Wed, 24 Jul 2019 14:05:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 85226283CC1
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 21/24] drm/bridge: ti-tfp410: Provide ddc symlink in
 connector sysfs directory
Date: Wed, 24 Jul 2019 15:59:43 +0200
Message-Id: <87b9340ea88713b8b715fcf8234dd07d77f8bc9a.1563960855.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1563960855.git.andrzej.p@collabora.com>
References: <cover.1563960855.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070539_679028_BCD57E6A 
X-CRM114-Status: GOOD (  14.75  )
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
 David Airlie <airlied@linux.ie>, Ramalingam C <ramalingam.c@intel.com>,
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
 Enrico Weigelt <info@metux.net>, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
 drivers/gpu/drm/bridge/ti-tfp410.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index dbf35c7bc85e..ca8e2f382851 100644
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
@@ -134,8 +133,10 @@ static int tfp410_attach(struct drm_bridge *bridge)
 
 	drm_connector_helper_add(&dvi->connector,
 				 &tfp410_con_helper_funcs);
-	ret = drm_connector_init(bridge->dev, &dvi->connector,
-				 &tfp410_con_funcs, dvi->connector_type);
+	ret = drm_connector_init_with_ddc(bridge->dev, &dvi->connector,
+					  &tfp410_con_funcs,
+					  dvi->connector_type,
+					  dvi->connector.ddc);
 	if (ret) {
 		dev_err(dvi->dev, "drm_connector_init() failed: %d\n", ret);
 		return ret;
@@ -297,8 +298,8 @@ static int tfp410_get_connector_properties(struct tfp410 *dvi)
 	if (!ddc_phandle)
 		goto fail;
 
-	dvi->ddc = of_get_i2c_adapter_by_node(ddc_phandle);
-	if (dvi->ddc)
+	dvi->connector.ddc = of_get_i2c_adapter_by_node(ddc_phandle);
+	if (dvi->connector.ddc)
 		dev_info(dvi->dev, "Connector's ddc i2c bus found\n");
 	else
 		ret = -EPROBE_DEFER;
@@ -367,7 +368,7 @@ static int tfp410_init(struct device *dev, bool i2c)
 
 	return 0;
 fail:
-	i2c_put_adapter(dvi->ddc);
+	i2c_put_adapter(dvi->connector.ddc);
 	if (dvi->hpd)
 		gpiod_put(dvi->hpd);
 	return ret;
@@ -382,8 +383,8 @@ static int tfp410_fini(struct device *dev)
 
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
