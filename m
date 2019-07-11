Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA065544
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 13:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JUkF73fT2tfLDuNWpqTwb+2BksAbOi7DxFH/cYAq3yk=; b=WYfkYQAgAtILJAXdffaH3iDDmN
	atD4Ekf8zCwN5S/sGdY0aD/c0d9+8we3CWn6BaBYDAGOrV3BPxSkYXyiZrNUD3fF9BeNEwofkjb8w
	djZajk8ZYvo2O/ALIKDMwhqgpFKi1lzjs/CSiW1CK2hIM09lbaiPt0Qil9DzzHooyTXvkeLnqt8UY
	PYLo1wZp3rUQJ7yacpQP9XJrstxAucDjxrXvab1KMWzhEd5zL1L6jjgUs/DnHp7ttl78IYMLN6/Ji
	HCIM5cDepvcTPeyXpaeG43PpyWtcSZfnGq6eWljoiZoWx//n8hS8V91er6C8JOxovCJuytYOtD5bB
	PX3IPRjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXFC-0005gu-H4; Thu, 11 Jul 2019 11:28:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXF8-0005gA-Rd; Thu, 11 Jul 2019 11:28:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 8792328B58A
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 04/23] drm: rockchip: Provide ddc symlink in inno_hdmi
 sysfs directory
Date: Thu, 11 Jul 2019 13:26:31 +0200
Message-Id: <5ce8b3cf60575b515368d9184e7fd7d4306eddc5.1562843413.git.andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
In-Reply-To: <cover.1562843413.git.andrzej.p@collabora.com>
References: <cover.1562843413.git.andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_042807_153501_80874A72 
X-CRM114-Status: GOOD (  13.81  )
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
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Douglas Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
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
 Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
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
 drivers/gpu/drm/rockchip/inno_hdmi.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index f8ca98d294d0..d64b119c2649 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -59,7 +59,6 @@ struct inno_hdmi {
 	struct drm_encoder	encoder;
 
 	struct inno_hdmi_i2c *i2c;
-	struct i2c_adapter *ddc;
 
 	unsigned int tmds_rate;
 
@@ -552,10 +551,10 @@ static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
 	struct edid *edid;
 	int ret = 0;
 
-	if (!hdmi->ddc)
+	if (!hdmi->connector.ddc)
 		return 0;
 
-	edid = drm_get_edid(connector, hdmi->ddc);
+	edid = drm_get_edid(connector, hdmi->connector.ddc);
 	if (edid) {
 		hdmi->hdmi_data.sink_is_hdmi = drm_detect_hdmi_monitor(edid);
 		hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
@@ -850,10 +849,10 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 
 	inno_hdmi_reset(hdmi);
 
-	hdmi->ddc = inno_hdmi_i2c_adapter(hdmi);
-	if (IS_ERR(hdmi->ddc)) {
-		ret = PTR_ERR(hdmi->ddc);
-		hdmi->ddc = NULL;
+	hdmi->connector.ddc = inno_hdmi_i2c_adapter(hdmi);
+	if (IS_ERR(hdmi->connector.ddc)) {
+		ret = PTR_ERR(hdmi->connector.ddc);
+		hdmi->connector.ddc = NULL;
 		goto err_disable_clk;
 	}
 
@@ -886,7 +885,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	hdmi->connector.funcs->destroy(&hdmi->connector);
 	hdmi->encoder.funcs->destroy(&hdmi->encoder);
 err_put_adapter:
-	i2c_put_adapter(hdmi->ddc);
+	i2c_put_adapter(hdmi->connector.ddc);
 err_disable_clk:
 	clk_disable_unprepare(hdmi->pclk);
 	return ret;
@@ -900,7 +899,7 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->connector.funcs->destroy(&hdmi->connector);
 	hdmi->encoder.funcs->destroy(&hdmi->encoder);
 
-	i2c_put_adapter(hdmi->ddc);
+	i2c_put_adapter(hdmi->connector.ddc);
 	clk_disable_unprepare(hdmi->pclk);
 }
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
