Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE80C5A05F
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+abuGkjM51WON8WMeV2ufjbi0fwjy6g4aArynkdPfr0=; b=EniSV6Lx5G0H1t4WsJIzSmOW3i
	D7XufqOwZJvGXdOvHE0yYIbrpTcEjPzsbKwosXEVfvPxxEZeZt1PGKPVAlGdFTuqY3hV/jhhb2KgH
	VnUtWolvRKp6pUf1lDPO8nxQf6tTSxMMY8s76yzhlUFSeMDHi73o1P4NbYbYYxFOFfCbLEx9FpoXf
	74kGCpfj9JzjQd/c/8MgjFS+cNcR/l9ogPEZER3bPZBeH19xL6P4m8qSOYJoJt50SVW2EfEY9LfAr
	Gj1Z0wjdDPGzszyUkchNUUDqELuI4E1Qpq+PN18CYa0Vk3ck5EHKe+i4CyeJMw32rFP75paOD3M5k
	XGU89o1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtPV-0001wY-Th; Fri, 28 Jun 2019 16:07:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtPR-0001vk-Ab; Fri, 28 Jun 2019 16:07:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 37875289CFB
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 18/22] drm/bridge: dumb-vga-dac: Provide ddc symlink in
 connector sysfs directory
Date: Fri, 28 Jun 2019 18:01:32 +0200
Message-Id: <33d98ef0c2a6e402515dc3ed5d100959dcb3233c.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090733_624904_D26DA32E 
X-CRM114-Status: GOOD (  14.81  )
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
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
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
 drivers/gpu/drm/bridge/dumb-vga-dac.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dumb-vga-dac.c b/drivers/gpu/drm/bridge/dumb-vga-dac.c
index d32885b906ae..b4cc3238400a 100644
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
@@ -190,14 +189,14 @@ static int dumb_vga_probe(struct platform_device *pdev)
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
 
@@ -216,8 +215,8 @@ static int dumb_vga_remove(struct platform_device *pdev)
 
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
