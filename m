Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C9E5A040
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=41QbvuqHyZfUkDnJuAMUWEE3AlgNZn5bMY3nYMb4wkI=; b=Z5qgaZVoOHj9MwM2AxohX7pS+y
	qZxu/O96VoPCcWH1/dpZmdq/TSx626499qmOvqbfPENx/jgxYgOL1KL2SOqZ5Hygkj+aWWn8xMmtc
	9Y+jTkYIQbCNFdgfqdD3/BZh/XPBO850HuIMsfvCQZTxc4QvcwOuxMQjXFBfRQSTIySSnbY6r5E0X
	YAbJAbcs65ZdKsq02apSn9anJUR4LKFihYB0THOedllZoIFzWIHLpJppnNgULEbFEge/3TqaIDmsp
	eBbARyFHKUxltSZEa6Ul15Rm6B1vSDZ8zqaBQDcDkQOClH9hEy7B4bNNg8xkINsVg2gk4caRNNpPt
	uGvTxDOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtNN-0000Za-KI; Fri, 28 Jun 2019 16:05:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtNI-0000YL-RI; Fri, 28 Jun 2019 16:05:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id AEAAC289CE5
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 06/22] drm/sun4i: hdmi: Provide ddc symlink in sun4i hdmi
 connector sysfs directory
Date: Fri, 28 Jun 2019 18:01:20 +0200
Message-Id: <4fa046adb68a57c0ee63f5d31da8af2ed8de2c57.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090521_152917_70DAAE90 
X-CRM114-Status: GOOD (  14.84  )
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
 drivers/gpu/drm/sun4i/sun4i_hdmi.h     |  1 -
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 14 +++++++-------
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi.h b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
index 7ad3f06c127e..1649273b1493 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi.h
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi.h
@@ -265,7 +265,6 @@ struct sun4i_hdmi {
 	struct clk		*tmds_clk;
 
 	struct i2c_adapter	*i2c;
-	struct i2c_adapter	*ddc_i2c;
 
 	/* Regmap fields for I2C adapter */
 	struct regmap_field	*field_ddc_en;
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index 9c3f99339b82..250bec00dc35 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -213,7 +213,7 @@ static int sun4i_hdmi_get_modes(struct drm_connector *connector)
 	struct edid *edid;
 	int ret;
 
-	edid = drm_get_edid(connector, hdmi->ddc_i2c ?: hdmi->i2c);
+	edid = drm_get_edid(connector, connector->ddc ?: hdmi->i2c);
 	if (!edid)
 		return 0;
 
@@ -598,11 +598,11 @@ static int sun4i_hdmi_bind(struct device *dev, struct device *master,
 		goto err_disable_mod_clk;
 	}
 
-	hdmi->ddc_i2c = sun4i_hdmi_get_ddc(dev);
-	if (IS_ERR(hdmi->ddc_i2c)) {
-		ret = PTR_ERR(hdmi->ddc_i2c);
+	hdmi->connector.ddc = sun4i_hdmi_get_ddc(dev);
+	if (IS_ERR(hdmi->connector.ddc)) {
+		ret = PTR_ERR(hdmi->connector.ddc);
 		if (ret == -ENODEV)
-			hdmi->ddc_i2c = NULL;
+			hdmi->connector.ddc = NULL;
 		else
 			goto err_del_i2c_adapter;
 	}
@@ -663,7 +663,7 @@ static int sun4i_hdmi_bind(struct device *dev, struct device *master,
 	cec_delete_adapter(hdmi->cec_adap);
 	drm_encoder_cleanup(&hdmi->encoder);
 err_put_ddc_i2c:
-	i2c_put_adapter(hdmi->ddc_i2c);
+	i2c_put_adapter(hdmi->connector.ddc);
 err_del_i2c_adapter:
 	i2c_del_adapter(hdmi->i2c);
 err_disable_mod_clk:
@@ -684,7 +684,7 @@ static void sun4i_hdmi_unbind(struct device *dev, struct device *master,
 	drm_connector_cleanup(&hdmi->connector);
 	drm_encoder_cleanup(&hdmi->encoder);
 	i2c_del_adapter(hdmi->i2c);
-	i2c_put_adapter(hdmi->ddc_i2c);
+	i2c_put_adapter(hdmi->connector.ddc);
 	clk_disable_unprepare(hdmi->mod_clk);
 	clk_disable_unprepare(hdmi->bus_clk);
 }
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
