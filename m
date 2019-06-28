Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B145A061
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ESFK7kCPtkqQ6TH1yX4EfXQFp462WZHqktsj1jQ4Fg4=; b=Ou0Pb4l/NqVDX5we1UEP2JMBJj
	tDZgvzOd+x74cVCiM4BG3VSHIcNZeu3WHoG6n2cand7bYY4FzTQfiRXuJcHPeX/Fc4kn3hpsdjT7M
	cdoX+TkiLOv8jZl1kTx6V8c4MuDgseN9gwyipIvZs6ZAPLAdymIeqrIgEuc5gP6HDoUNAUvo1nwia
	UMW6DaeL1BVlAP+GjknI/ZGtxU335kPTeRtpWwsXziXDOE319oNMHqkhouVaa3SKyZMn70fckUbEW
	R6XVVzr0QKm6smttNu6as9Pw67e53s9DsNniNSTd078TaqzLmfMcElNkFa4df34Es5MCFvAXKydvU
	OFr4SOlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtPg-00021j-0N; Fri, 28 Jun 2019 16:07:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtPc-00020m-DA; Fri, 28 Jun 2019 16:07:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 37A8A289CFC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 19/22] drm/bridge: dw-hdmi: Provide ddc symlink in
 connector sysfs directory
Date: Fri, 28 Jun 2019 18:01:33 +0200
Message-Id: <c2dc5ba93148ff034bf42cceb02a807674731c84.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090744_712963_09B9B427 
X-CRM114-Status: GOOD (  18.10  )
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
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
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
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 40 +++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index c6490949d9db..0b9c9f2619da 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -161,7 +161,6 @@ struct dw_hdmi {
 
 	struct drm_display_mode previous_mode;
 
-	struct i2c_adapter *ddc;
 	void __iomem *regs;
 	bool sink_is_hdmi;
 	bool sink_has_audio;
@@ -1118,7 +1117,7 @@ static bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi)
 		return false;
 
 	/* Disable if no DDC bus */
-	if (!hdmi->ddc)
+	if (!hdmi->connector.ddc)
 		return false;
 
 	/* Disable if SCDC is not supported, or if an HF-VSDB block is absent */
@@ -1156,10 +1155,11 @@ void dw_hdmi_set_high_tmds_clock_ratio(struct dw_hdmi *hdmi)
 
 	/* Control for TMDS Bit Period/TMDS Clock-Period Ratio */
 	if (dw_hdmi_support_scdc(hdmi)) {
+		struct i2c_adapter *ddc = hdmi->connector.ddc;
 		if (mtmdsclock > HDMI14_MAX_TMDSCLK)
-			drm_scdc_set_high_tmds_clock_ratio(hdmi->ddc, 1);
+			drm_scdc_set_high_tmds_clock_ratio(ddc, 1);
 		else
-			drm_scdc_set_high_tmds_clock_ratio(hdmi->ddc, 0);
+			drm_scdc_set_high_tmds_clock_ratio(ddc, 0);
 	}
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_set_high_tmds_clock_ratio);
@@ -1750,6 +1750,7 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
 	if (dw_hdmi_support_scdc(hdmi)) {
 		if (vmode->mtmdsclock > HDMI14_MAX_TMDSCLK ||
 		    hdmi_info->scdc.scrambling.low_rates) {
+			struct i2c_adapter *ddc = hdmi->connector.ddc;
 			/*
 			 * HDMI2.0 Specifies the following procedure:
 			 * After the Source Device has determined that
@@ -1759,13 +1760,12 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
 			 * Source Devices compliant shall set the
 			 * Source Version = 1.
 			 */
-			drm_scdc_readb(hdmi->ddc, SCDC_SINK_VERSION,
-				       &bytes);
-			drm_scdc_writeb(hdmi->ddc, SCDC_SOURCE_VERSION,
+			drm_scdc_readb(ddc, SCDC_SINK_VERSION, &bytes);
+			drm_scdc_writeb(ddc, SCDC_SOURCE_VERSION,
 				min_t(u8, bytes, SCDC_MIN_SOURCE_VERSION));
 
 			/* Enabled Scrambling in the Sink */
-			drm_scdc_set_scrambling(hdmi->ddc, 1);
+			drm_scdc_set_scrambling(hdmi->connector.ddc, 1);
 
 			/*
 			 * To activate the scrambler feature, you must ensure
@@ -1781,7 +1781,7 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
 			hdmi_writeb(hdmi, 0, HDMI_FC_SCRAMBLER_CTRL);
 			hdmi_writeb(hdmi, (u8)~HDMI_MC_SWRSTZ_TMDSSWRST_REQ,
 				    HDMI_MC_SWRSTZ);
-			drm_scdc_set_scrambling(hdmi->ddc, 0);
+			drm_scdc_set_scrambling(hdmi->connector.ddc, 0);
 		}
 	}
 
@@ -2127,10 +2127,10 @@ static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
 	struct edid *edid;
 	int ret = 0;
 
-	if (!hdmi->ddc)
+	if (!hdmi->connector.ddc)
 		return 0;
 
-	edid = drm_get_edid(connector, hdmi->ddc);
+	edid = drm_get_edid(connector, hdmi->connector.ddc);
 	if (edid) {
 		dev_dbg(hdmi->dev, "got edid: width[%d] x height[%d]\n",
 			edid->width_cm, edid->height_cm);
@@ -2548,9 +2548,9 @@ __dw_hdmi_probe(struct platform_device *pdev,
 
 	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
 	if (ddc_node) {
-		hdmi->ddc = of_get_i2c_adapter_by_node(ddc_node);
+		hdmi->connector.ddc = of_get_i2c_adapter_by_node(ddc_node);
 		of_node_put(ddc_node);
-		if (!hdmi->ddc) {
+		if (!hdmi->connector.ddc) {
 			dev_dbg(hdmi->dev, "failed to read ddc node\n");
 			return ERR_PTR(-EPROBE_DEFER);
 		}
@@ -2689,7 +2689,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	hdmi_init_clk_regenerator(hdmi);
 
 	/* If DDC bus is not specified, try to register HDMI I2C bus */
-	if (!hdmi->ddc) {
+	if (!hdmi->connector.ddc) {
 		/* Look for (optional) stuff related to unwedging */
 		hdmi->pinctrl = devm_pinctrl_get(dev);
 		if (!IS_ERR(hdmi->pinctrl)) {
@@ -2708,9 +2708,9 @@ __dw_hdmi_probe(struct platform_device *pdev,
 			}
 		}
 
-		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi);
-		if (IS_ERR(hdmi->ddc))
-			hdmi->ddc = NULL;
+		hdmi->connector.ddc = dw_hdmi_i2c_adapter(hdmi);
+		if (IS_ERR(hdmi->connector.ddc))
+			hdmi->connector.ddc = NULL;
 	}
 
 	hdmi->bridge.driver_private = hdmi;
@@ -2776,7 +2776,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 err_iahb:
 	if (hdmi->i2c) {
 		i2c_del_adapter(&hdmi->i2c->adap);
-		hdmi->ddc = NULL;
+		hdmi->connector.ddc = NULL;
 	}
 
 	if (hdmi->cec_notifier)
@@ -2788,7 +2788,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 err_isfr:
 	clk_disable_unprepare(hdmi->isfr_clk);
 err_res:
-	i2c_put_adapter(hdmi->ddc);
+	i2c_put_adapter(hdmi->connector.ddc);
 
 	return ERR_PTR(ret);
 }
@@ -2814,7 +2814,7 @@ static void __dw_hdmi_remove(struct dw_hdmi *hdmi)
 	if (hdmi->i2c)
 		i2c_del_adapter(&hdmi->i2c->adap);
 	else
-		i2c_put_adapter(hdmi->ddc);
+		i2c_put_adapter(hdmi->connector.ddc);
 }
 
 /* -----------------------------------------------------------------------------
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
