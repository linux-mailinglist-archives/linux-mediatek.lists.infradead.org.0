Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718B4B6319
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 14:25:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5mIQXlQmTcmLgzT2Ta/+1ceQxpB6yWuSj8i4Td+tzw=; b=Y+WwcctlVZmgy4
	rZxjNxkitpqcpSygUnpfzIPzJOb1fDvBDfWHX6i0gudRU8yrkuaK7557Sp59EqOHVsgjwlAuulzPa
	35NWg1w8iQ1r9TMg7RSAXbu+usmWkQCZ45Z9YAQqhqQHO2okOWVBtG3LFMbo1xQpw+sG5DqzDOUF3
	df/AtBSz3KCSZ9xg70sUuT5ARs5/YYXpZlO9n6PTc77hASxlwwr/zhh6zxTZbVzdyNfuvMKu32HY8
	fDEZI+SnqQYN9nipxKZGvoY1ISaGiZ9VozFIvrNMUfWAd1GM3EFJWwooXOgyhzfHMtgav8o6+mvzQ
	A5LGdIbfskXJR2eyz4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZ1G-0006Aa-FA; Wed, 18 Sep 2019 12:25:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZ13-0005DI-PM
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 12:25:04 +0000
X-UUID: 365caa8a3d0349e5873bd475ee01fe3a-20190918
X-UUID: 365caa8a3d0349e5873bd475ee01fe3a-20190918
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 787942410; Wed, 18 Sep 2019 04:24:46 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 05:24:44 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 18 Sep 2019 20:24:40 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 18 Sep 2019 20:24:39 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 4/8] drm/panel: support for auo,
 kd101n80-45na wuxga dsi video mode panel
Date: Wed, 18 Sep 2019 20:24:18 +0800
Message-ID: <20190918122422.17339-5-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190918122422.17339-1-jitao.shi@mediatek.com>
References: <20190918122422.17339-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24918.004
X-TM-AS-Result: No-5.342400-8.000000-10
X-TMASE-MatchedRID: lYyMbP31ZgbQIwAe9yDqC/3HILfxLV/9NV9S7O+u3Kax6d2WO4Kt3WMg
 VHfStGn6oODj/ed0fo2pXR7NA6GzIq0iin8P0KjVPwKTD1v8YV5MmIwvtVXGIkp12IXZajx5ZDK
 4bzNNBeUyPUKH+39d75mQE0Q29MHfk4P+vqTbTVFJkkUW0nPbN/G6GRFYrbYYVWQnHKxp38gKJ5
 OVHpTWmhkNsHcU+86WQxx/Lw6+Y+7ZD1adyQZ2PvKUR83BvqItiK5qg1cmsr+sTiwQDTUmaQYxJ
 ykfuo4ABZ3DASds/MqZ5OJl4gE/ShgHZ8655DOPFEUknJ/kEl7dB/CxWTRRu25FeHtsUoHuaBkD
 YFryyQrVTvo1TO59OOMFE88M2XK9UIS5qWo+0Nu+68HqACCvKA==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.342400-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24918.004
X-TM-SNTS-SMTP: 8D623F33BA85C518BFB65A5DDC71C7409DE4248BE5DACD458AA82622C59775F72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_052501_847164_85880F06 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Auo,kd101n80-45na's connector is same as boe,tv101wum-nl6.
The most codes can be reuse.
So auo,kd101n80-45na and boe,tv101wum-nl6 use one driver file.
Add the different parts in driver data.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/panel/Kconfig                 |  6 +-
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 86 ++++++++++++++++---
 2 files changed, 75 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index afcadb3585fb..0e887c978796 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -19,13 +19,13 @@ config DRM_PANEL_ARM_VERSATILE
 	  in the Versatile family syscon registers.
 
 config DRM_PANEL_BOE_TV101WUM_NL6
-	tristate "BOE TV101WUM 1200x1920 panel"
+	tristate "BOE TV101WUM and AUO KD101N80 45NA 1200x1920 panel"
 	depends on OF
 	depends on DRM_MIPI_DSI
 	depends on BACKLIGHT_CLASS_DEVICE
 	help
-	  Say Y here if you want to support for BOE TV101WUM WUXGA PANEL
-	  DSI Video Mode panel
+	  Say Y here if you want to support for BOE TV101WUM and AUO KD101N80
+	  45NA WUXGA PANEL DSI Video Mode panel
 
 config DRM_PANEL_LVDS
 	tristate "Generic LVDS panel driver"
diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index e27529b80d78..f80974778360 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -35,6 +35,7 @@ struct panel_desc {
 	enum mipi_dsi_pixel_format format;
 	const struct panel_init_cmd *init_cmds;
 	unsigned int lanes;
+	bool discharge_on_disable;
 };
 
 struct boe_panel {
@@ -372,6 +373,15 @@ static const struct panel_init_cmd boe_init_cmd[] = {
 	{},
 };
 
+static const struct panel_init_cmd auo_kd101n80_45na_init_cmd[] = {
+	_INIT_DELAY_CMD(24),
+	_INIT_DCS_CMD(0x11),
+	_INIT_DELAY_CMD(120),
+	_INIT_DCS_CMD(0x29),
+	_INIT_DELAY_CMD(120),
+	{},
+};
+
 static inline struct boe_panel *to_boe_panel(struct drm_panel *panel)
 {
 	return container_of(panel, struct boe_panel, base);
@@ -449,20 +459,30 @@ static int boe_panel_unprepare(struct drm_panel *panel)
 	if (!boe->prepared)
 		return 0;
 
-	ret = boe_panel_off(boe);
-	if (ret < 0) {
-		dev_err(panel->dev, "failed to set panel off: %d\n", ret);
-		return ret;
+	if (boe->desc->discharge_on_disable) {
+		msleep(150);
+		regulator_disable(boe->avee);
+		regulator_disable(boe->avdd);
+		usleep_range(5000, 7000);
+		gpiod_set_value(boe->enable_gpio, 0);
+		usleep_range(5000, 7000);
+		regulator_disable(boe->pp1800);
+	} else {
+		ret = boe_panel_off(boe);
+		if (ret < 0) {
+			dev_err(panel->dev, "failed to set panel off: %d\n",
+				ret);
+			return ret;
+		}
+		msleep(150);
+		gpiod_set_value(boe->enable_gpio, 0);
+		usleep_range(500, 1000);
+		regulator_disable(boe->avee);
+		regulator_disable(boe->avdd);
+		usleep_range(5000, 7000);
+		regulator_disable(boe->pp1800);
 	}
 
-	msleep(150);
-	gpiod_set_value(boe->enable_gpio, 0);
-	usleep_range(500, 1000);
-	regulator_disable(boe->avee);
-	regulator_disable(boe->avdd);
-	usleep_range(5000, 7000);
-	regulator_disable(boe->pp1800);
-
 	boe->prepared = false;
 
 	return 0;
@@ -492,10 +512,14 @@ static int boe_panel_prepare(struct drm_panel *panel)
 	if (ret < 0)
 		goto poweroffavdd;
 
-	msleep(100);
+	usleep_range(5000, 10000);
 
 	gpiod_set_value(boe->enable_gpio, 1);
-	usleep_range(10000, 12000);
+	usleep_range(1000, 2000);
+	gpiod_set_value(boe->enable_gpio, 0);
+	usleep_range(1000, 2000);
+	gpiod_set_value(boe->enable_gpio, 1);
+	usleep_range(6000, 10000);
 
 	ret = boe_panel_init(boe);
 	if (ret < 0) {
@@ -527,6 +551,8 @@ static int boe_panel_enable(struct drm_panel *panel)
 	if (boe->enabled)
 		return 0;
 
+	msleep(70);
+
 	ret = backlight_enable(boe->backlight);
 	if (ret) {
 		dev_err(panel->dev, "Failed to enable backlight %d\n",
@@ -564,6 +590,35 @@ static const struct panel_desc boe_tv101wum_nl6_desc = {
 	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
 		      MIPI_DSI_MODE_LPM,
 	.init_cmds = boe_init_cmd,
+	.discharge_on_disable = false,
+};
+
+static const struct drm_display_mode auo_kd101n80_45na_default_mode = {
+	.clock = 157000,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 80,
+	.hsync_end = 1200 + 80 + 24,
+	.htotal = 1200 + 80 + 24 + 36,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 16,
+	.vsync_end = 1920 + 16 + 4,
+	.vtotal = 1920 + 16 + 4 + 16,
+	.vrefresh = 60,
+};
+
+static const struct panel_desc auo_kd101n80_45na_desc = {
+	.modes = &auo_kd101n80_45na_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 135,
+		.height_mm = 216,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init_cmds = auo_kd101n80_45na_init_cmd,
+	.discharge_on_disable = true,
 };
 
 static int boe_panel_get_modes(struct drm_panel *panel)
@@ -689,6 +744,9 @@ static const struct of_device_id boe_of_match[] = {
 	{ .compatible = "boe,tv101wum-nl6",
 	  .data = &boe_tv101wum_nl6_desc
 	},
+	{ .compatible = "auo,kd101n80-45na",
+	  .data = &auo_kd101n80_45na_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, boe_of_match);
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
