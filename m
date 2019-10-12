Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21D9D4C4C
	for <lists+linux-mediatek@lfdr.de>; Sat, 12 Oct 2019 05:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdEB4K1LgI+sdxWsHsXehnsdNokLvrqDGD2S8wGu7Aw=; b=MYHYIcXAc99KAf
	MZH0P4mRYtQXzaDEKDH2ZfOBn70xNSiz1Y+IrpkO4otmmarwwSgsGkBSdF9dj3qPfHOBBPrQusOxT
	B2hksMateL8AE0WwYGIoob3A+e1ycX1kqggXhb6B3xOhMYQUgz1NURFxDbzqxLU8nQ12soZ0ur9qa
	Ol9QheCoFEtE7kAys6qSvDsmL7FgF9U1PPQLes6S9gcU58v7oie/8nE4NiurxuEqQgtXlF//Qk8Gs
	L70zVEJt0XbXpQU2V7L18veIWbiA+XCSa6wDMjJKAly4sU3xUWXGr1eNT4iLNAg2FPmGmnE6NwI9T
	WB267rFB6IZwQy977tow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ7lA-0004gM-V7; Sat, 12 Oct 2019 03:08:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ7l6-0004eo-SM
 for linux-mediatek@lists.infradead.org; Sat, 12 Oct 2019 03:07:58 +0000
X-UUID: 560d16d74ee84d1a8a979b97a91f9225-20191011
X-UUID: 560d16d74ee84d1a8a979b97a91f9225-20191011
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 757182467; Fri, 11 Oct 2019 19:07:32 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 11 Oct 2019 20:07:49 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 12 Oct 2019 11:07:46 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sat, 12 Oct 2019 11:07:45 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v7 4/8] drm/panel: support for auo,
 kd101n80-45na wuxga dsi video mode panel
Date: Sat, 12 Oct 2019 11:07:16 +0800
Message-ID: <20191012030720.27127-5-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012030720.27127-1-jitao.shi@mediatek.com>
References: <20191012030720.27127-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3293A786B18C77DCA1B533F34E143959039A4E396C5B2CC907EC01FABA3A25D82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_200756_925453_68E782DF 
X-CRM114-Status: GOOD (  13.85  )
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
index af68236ea0e8..e6457f87bc61 100644
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
@@ -452,20 +462,30 @@ static int boe_panel_unprepare(struct drm_panel *panel)
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
@@ -495,10 +515,14 @@ static int boe_panel_prepare(struct drm_panel *panel)
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
@@ -530,6 +554,8 @@ static int boe_panel_enable(struct drm_panel *panel)
 	if (boe->enabled)
 		return 0;
 
+	msleep(130);
+
 	ret = backlight_enable(boe->backlight);
 	if (ret) {
 		dev_err(panel->dev, "Failed to enable backlight %d\n",
@@ -567,6 +593,35 @@ static const struct panel_desc boe_tv101wum_nl6_desc = {
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
@@ -693,6 +748,9 @@ static const struct of_device_id boe_of_match[] = {
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
