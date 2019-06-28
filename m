Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808FE5A04F
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hLiRk9HKuZCDsRPOtg3tsJHE+/8F62M3JJxHcG+C0fQ=; b=KTSCO/orY9zwlw4gNk4zA7r6aL
	Crn7dEdedqpg+tWTitpgs5xBeIQv+hsUSXP/86gDRK0afdbicYBkf7lCjybK4GgzaIM+5yf6suHKI
	TVTGgfB7xPzkMDu1d0t0qFVsBIN/MSsUbB/c/d0DKhSBuUuionVDKOIRQvZbjCzv5xzRV6u4/hfu9
	fO9kHEBwTt4A1W5AvBMU42wiTl6xx5j2zgf0uDiN6Vjas3L+rtfkNGKZF7gFuuMbri3TIe2ZiAqbr
	YE3tzSm76yj+mdhA8rBDQbCnJMppg22wteIq5iQYN9LoN9WdMP00aLVPxiGPzvhyZPo4wTWoQwliA
	dSEeT/jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtOI-0001Hn-QV; Fri, 28 Jun 2019 16:06:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtOC-0001CH-Id; Fri, 28 Jun 2019 16:06:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 7144F289CEB
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 11/22] drm/vc4: Provide ddc symlink in connector sysfs
 directory
Date: Fri, 28 Jun 2019 18:01:25 +0200
Message-Id: <980ef1af2d03820f2f55f42547664ed08f75e3e7.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090616_899252_59D7FF55 
X-CRM114-Status: GOOD (  13.53  )
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
 drivers/gpu/drm/vc4/vc4_hdmi.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 87ad0879edf3..b46df3aa1798 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -75,7 +75,6 @@ struct vc4_hdmi {
 
 	struct vc4_hdmi_audio audio;
 
-	struct i2c_adapter *ddc;
 	void __iomem *hdmicore_regs;
 	void __iomem *hd_regs;
 	int hpd_gpio;
@@ -206,7 +205,7 @@ vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 		return connector_status_disconnected;
 	}
 
-	if (drm_probe_ddc(vc4->hdmi->ddc))
+	if (drm_probe_ddc(connector->ddc))
 		return connector_status_connected;
 
 	if (HDMI_READ(VC4_HDMI_HOTPLUG) & VC4_HDMI_HOTPLUG_CONNECTED)
@@ -232,7 +231,7 @@ static int vc4_hdmi_connector_get_modes(struct drm_connector *connector)
 	int ret = 0;
 	struct edid *edid;
 
-	edid = drm_get_edid(connector, vc4->hdmi->ddc);
+	edid = drm_get_edid(connector, connector->ddc);
 	cec_s_phys_addr_from_edid(vc4->hdmi->cec_adap, edid);
 	if (!edid)
 		return -ENODEV;
@@ -1287,6 +1286,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	struct vc4_hdmi *hdmi;
 	struct vc4_hdmi_encoder *vc4_hdmi_encoder;
 	struct device_node *ddc_node;
+	struct i2c_adapter *ddc;
 	u32 value;
 	int ret;
 
@@ -1334,9 +1334,9 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 		return -ENODEV;
 	}
 
-	hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
+	ddc = of_find_i2c_adapter_by_node(ddc_node);
 	of_node_put(ddc_node);
-	if (!hdmi->ddc) {
+	if (ddc) {
 		DRM_DEBUG("Failed to get ddc i2c adapter by node\n");
 		return -EPROBE_DEFER;
 	}
@@ -1396,6 +1396,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 		ret = PTR_ERR(hdmi->connector);
 		goto err_destroy_encoder;
 	}
+	hdmi->connector->ddc = ddc;
 #ifdef CONFIG_DRM_VC4_HDMI_CEC
 	hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
 					      vc4, "vc4",
@@ -1448,7 +1449,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	clk_disable_unprepare(hdmi->hsm_clock);
 	pm_runtime_disable(dev);
 err_put_i2c:
-	put_device(&hdmi->ddc->dev);
+	put_device(&ddc->dev);
 
 	return ret;
 }
@@ -1459,6 +1460,7 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	struct drm_device *drm = dev_get_drvdata(master);
 	struct vc4_dev *vc4 = drm->dev_private;
 	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct i2c_adapter *ddc = hdmi->connector->ddc;
 
 	cec_unregister_adapter(hdmi->cec_adap);
 	vc4_hdmi_connector_destroy(hdmi->connector);
@@ -1467,7 +1469,7 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	clk_disable_unprepare(hdmi->hsm_clock);
 	pm_runtime_disable(dev);
 
-	put_device(&hdmi->ddc->dev);
+	put_device(&ddc->dev);
 
 	vc4->hdmi = NULL;
 }
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
