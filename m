Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704465A046
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 18:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uvcllx8vpYXMZ6etIyGaZbdcRfnzErPm+FqBu67n+5o=; b=pVgudjN20F3F6pQFJSYWkcn5DC
	w3RN7PWy7vEZ4V93zeWPBfpLRVT9mc4T/H95Q4Sfb8R8MXGJ7OsS7VFNa6ljXY7buyElv1pEEbLNq
	N8AiWC6hOIcAKnBuFdbPdqCIQoT9E/80qQNXITCJ2fwxEoNQpkok7aGSaaSCrAYNfTFEAgJrUqttn
	aRUWZ2ySbTrDvytkl3frIOIVbay/vH7LercWmeAOjaTS3SINYufcK6fdfIqmhEcaZTZzUTxKVJll2
	ZtZvsTF2hqstEvbt+gBAgC6gNIpqotvT1JxXQ6zVKRhY4b0Uyd/lETGzft55/yQCm5EOK6x6q68f4
	TbK+pXcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtNj-0000lc-5H; Fri, 28 Jun 2019 16:05:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtNe-0000kA-Li; Fri, 28 Jun 2019 16:05:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 95DA0289CE6
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 08/22] drm/tegra: Provide ddc symlink in output connector
 sysfs directory
Date: Fri, 28 Jun 2019 18:01:22 +0200
Message-Id: <e4bcdb2accad3b0564a49d611cd27451a2705aa1.1561735433.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1561735433.git.andrzej.p@collabora.com>
References: <cover.1561735433.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090542_973339_582764F0 
X-CRM114-Status: GOOD (  14.79  )
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-rockchip@lists.infradead.org,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
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
 drivers/gpu/drm/tegra/drm.h    |  1 -
 drivers/gpu/drm/tegra/output.c | 12 ++++++------
 drivers/gpu/drm/tegra/sor.c    |  6 +++---
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/tegra/drm.h b/drivers/gpu/drm/tegra/drm.h
index 86daa19fcf24..9bf72bcd3ec1 100644
--- a/drivers/gpu/drm/tegra/drm.h
+++ b/drivers/gpu/drm/tegra/drm.h
@@ -120,7 +120,6 @@ struct tegra_output {
 	struct device *dev;
 
 	struct drm_panel *panel;
-	struct i2c_adapter *ddc;
 	const struct edid *edid;
 	struct cec_notifier *cec;
 	unsigned int hpd_irq;
diff --git a/drivers/gpu/drm/tegra/output.c b/drivers/gpu/drm/tegra/output.c
index 274cb955e2e1..0b5037a29c63 100644
--- a/drivers/gpu/drm/tegra/output.c
+++ b/drivers/gpu/drm/tegra/output.c
@@ -30,8 +30,8 @@ int tegra_output_connector_get_modes(struct drm_connector *connector)
 
 	if (output->edid)
 		edid = kmemdup(output->edid, sizeof(*edid), GFP_KERNEL);
-	else if (output->ddc)
-		edid = drm_get_edid(connector, output->ddc);
+	else if (connector->ddc)
+		edid = drm_get_edid(connector, connector->ddc);
 
 	cec_notifier_set_phys_addr_from_edid(output->cec, edid);
 	drm_connector_update_edid_property(connector, edid);
@@ -111,8 +111,8 @@ int tegra_output_probe(struct tegra_output *output)
 
 	ddc = of_parse_phandle(output->of_node, "nvidia,ddc-i2c-bus", 0);
 	if (ddc) {
-		output->ddc = of_find_i2c_adapter_by_node(ddc);
-		if (!output->ddc) {
+		output->connector.ddc = of_find_i2c_adapter_by_node(ddc);
+		if (!output->connector.ddc) {
 			err = -EPROBE_DEFER;
 			of_node_put(ddc);
 			return err;
@@ -174,8 +174,8 @@ void tegra_output_remove(struct tegra_output *output)
 	if (output->hpd_gpio)
 		free_irq(output->hpd_irq, output);
 
-	if (output->ddc)
-		put_device(&output->ddc->dev);
+	if (output->connector.ddc)
+		put_device(&output->connector.ddc->dev);
 }
 
 int tegra_output_init(struct drm_device *drm, struct tegra_output *output)
diff --git a/drivers/gpu/drm/tegra/sor.c b/drivers/gpu/drm/tegra/sor.c
index 4ffe3794e6d3..77e61f98de07 100644
--- a/drivers/gpu/drm/tegra/sor.c
+++ b/drivers/gpu/drm/tegra/sor.c
@@ -2311,7 +2311,7 @@ static void tegra_sor_hdmi_disable_scrambling(struct tegra_sor *sor)
 
 static void tegra_sor_hdmi_scdc_disable(struct tegra_sor *sor)
 {
-	struct i2c_adapter *ddc = sor->output.ddc;
+	struct i2c_adapter *ddc = sor->output.connector.ddc;
 
 	drm_scdc_set_high_tmds_clock_ratio(ddc, false);
 	drm_scdc_set_scrambling(ddc, false);
@@ -2339,7 +2339,7 @@ static void tegra_sor_hdmi_enable_scrambling(struct tegra_sor *sor)
 
 static void tegra_sor_hdmi_scdc_enable(struct tegra_sor *sor)
 {
-	struct i2c_adapter *ddc = sor->output.ddc;
+	struct i2c_adapter *ddc = sor->output.connector.ddc;
 
 	drm_scdc_set_high_tmds_clock_ratio(ddc, true);
 	drm_scdc_set_scrambling(ddc, true);
@@ -2350,7 +2350,7 @@ static void tegra_sor_hdmi_scdc_enable(struct tegra_sor *sor)
 static void tegra_sor_hdmi_scdc_work(struct work_struct *work)
 {
 	struct tegra_sor *sor = container_of(work, struct tegra_sor, scdc.work);
-	struct i2c_adapter *ddc = sor->output.ddc;
+	struct i2c_adapter *ddc = sor->output.connector.ddc;
 
 	if (!drm_scdc_get_scrambling_status(ddc)) {
 		DRM_DEBUG_KMS("SCDC not scrambled\n");
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
