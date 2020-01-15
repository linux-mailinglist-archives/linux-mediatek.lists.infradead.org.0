Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF80713C503
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 15:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQ1SOyKLj2GATcMgZvnrVtzqx899PU/pKXDnEXezucE=; b=sMp9KmaznzPLdR
	tfj3SWeISEUHl/QbSzT59oYTWXtxGLCzvzvaosh3nZXdld0+shWO550Yh5KIy5o0Xwowucq4VTqDe
	xXloUwCeer7RX95sY2l2tQyD3lraK/G5wFF+pwbctpwOM9YOPn06toXw2IGXlS5Vv9ToswmOXYZLE
	BcWc11CEaQQGEb1q6//XJcFj8tmwRmuVZNr7sb88jFWcUSVXk15jGC4cnEYU4m59Hee0vO0QcPH4M
	ArY/MRJl05Ld3wR1XstxTPNmPPZf0y+l3+B+LT5beMX7ODD91mQ2LNCxA5LKkxmBASj5G1KFqeI91
	/ylElKnAC+IVIEh8+ueA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjOJ-0000fE-3z; Wed, 15 Jan 2020 14:11:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjOA-0000aW-0Y
 for linux-mediatek@lists.infradead.org; Wed, 15 Jan 2020 14:11:24 +0000
X-UUID: 78d6d4f87cbc45f5b497c419f90a8883-20200115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=oZYrr2LEPwbdNLpuKoMeOVVJNsOiZbhJJb8h4ktYfYk=; 
 b=FVmk2u9djdawoG27yWeax2/PSlVH6YSNQQlZb+JlmRRjUmcGLjCITtnmp4ilLuaxZxSCxNzstDPBaua9KoUaQg1H0fp8ZsWdg1hT5nvhO9pP5AIxLbgsO4WNTZTw3liLQ1M6JpeaWN7cFJWE9xcZhyWRx8O62mpRUxNR2B/smCQ=;
X-UUID: 78d6d4f87cbc45f5b497c419f90a8883-20200115
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1354549739; Wed, 15 Jan 2020 06:11:14 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 06:01:15 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 15 Jan 2020 22:01:40 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 15 Jan 2020 22:01:23 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg
 <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 8/8] drm/panel: support for auo,
 b101uan08.3 wuxga dsi video mode panel
Date: Wed, 15 Jan 2020 21:59:58 +0800
Message-ID: <20200115135958.126303-9-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200115135958.126303-1-jitao.shi@mediatek.com>
References: <20200115135958.126303-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4A2ED715479501E90EC666853CA3146553CBE76094AEC6A42B2C4770B0B57D342000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_061118_073119_E73133E6 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Auo,auo,b101uan08.3's connector is same as boe,tv101wum-nl6.
The most codes can be reuse.
So auo,b101uan08.3 and boe,tv101wum-nl6 use one driver file.
Add the different parts in driver data.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index 0108bff283c5..51001940eab3 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -377,6 +377,53 @@ static const struct panel_init_cmd auo_kd101n80_45na_init_cmd[] = {
 	{},
 };
 
+static const struct panel_init_cmd auo_b101uan08_3_init_cmd[] = {
+	_INIT_DELAY_CMD(24),
+	_INIT_DCS_CMD(0xB0, 0x01),
+	_INIT_DCS_CMD(0xC0, 0x48),
+	_INIT_DCS_CMD(0xC1, 0x48),
+	_INIT_DCS_CMD(0xC2, 0x47),
+	_INIT_DCS_CMD(0xC3, 0x47),
+	_INIT_DCS_CMD(0xC4, 0x46),
+	_INIT_DCS_CMD(0xC5, 0x46),
+	_INIT_DCS_CMD(0xC6, 0x45),
+	_INIT_DCS_CMD(0xC7, 0x45),
+	_INIT_DCS_CMD(0xC8, 0x64),
+	_INIT_DCS_CMD(0xC9, 0x64),
+	_INIT_DCS_CMD(0xCA, 0x4F),
+	_INIT_DCS_CMD(0xCB, 0x4F),
+	_INIT_DCS_CMD(0xCC, 0x40),
+	_INIT_DCS_CMD(0xCD, 0x40),
+	_INIT_DCS_CMD(0xCE, 0x66),
+	_INIT_DCS_CMD(0xCF, 0x66),
+	_INIT_DCS_CMD(0xD0, 0x4F),
+	_INIT_DCS_CMD(0xD1, 0x4F),
+	_INIT_DCS_CMD(0xD2, 0x41),
+	_INIT_DCS_CMD(0xD3, 0x41),
+	_INIT_DCS_CMD(0xD4, 0x48),
+	_INIT_DCS_CMD(0xD5, 0x48),
+	_INIT_DCS_CMD(0xD6, 0x47),
+	_INIT_DCS_CMD(0xD7, 0x47),
+	_INIT_DCS_CMD(0xD8, 0x46),
+	_INIT_DCS_CMD(0xD9, 0x46),
+	_INIT_DCS_CMD(0xDA, 0x45),
+	_INIT_DCS_CMD(0xDB, 0x45),
+	_INIT_DCS_CMD(0xDC, 0x64),
+	_INIT_DCS_CMD(0xDD, 0x64),
+	_INIT_DCS_CMD(0xDE, 0x4F),
+	_INIT_DCS_CMD(0xDF, 0x4F),
+	_INIT_DCS_CMD(0xE0, 0x40),
+	_INIT_DCS_CMD(0xE1, 0x40),
+	_INIT_DCS_CMD(0xE2, 0x66),
+	_INIT_DCS_CMD(0xE3, 0x66),
+	_INIT_DCS_CMD(0xE4, 0x4F),
+	_INIT_DCS_CMD(0xE5, 0x4F),
+	_INIT_DCS_CMD(0xE6, 0x41),
+	_INIT_DCS_CMD(0xE7, 0x41),
+	_INIT_DELAY_CMD(150),
+	{},
+};
+
 static inline struct boe_panel *to_boe_panel(struct drm_panel *panel)
 {
 	return container_of(panel, struct boe_panel, base);
@@ -621,6 +668,34 @@ static const struct panel_desc boe_tv101wum_n53_desc = {
 	.init_cmds = boe_init_cmd,
 };
 
+static const struct drm_display_mode auo_b101uan08_3_default_mode = {
+	.clock = 159667,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 60,
+	.hsync_end = 1200 + 60 + 4,
+	.htotal = 1200 + 60 + 4 + 80,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 34,
+	.vsync_end = 1920 + 34 + 2,
+	.vtotal = 1920 + 34 + 2 + 24,
+	.vrefresh = 60,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct panel_desc auo_b101uan08_3_desc = {
+	.modes = &auo_b101uan08_3_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 135,
+		.height_mm = 216,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init_cmds = auo_b101uan08_3_init_cmd,
+};
+
 static int boe_panel_get_modes(struct drm_panel *panel,
 			       struct drm_connector *connector)
 {
@@ -756,6 +831,9 @@ static const struct of_device_id boe_of_match[] = {
 	{ .compatible = "boe,tv101wum-n53",
 	  .data = &boe_tv101wum_n53_desc
 	},
+	{ .compatible = "auo,b101uan08.3",
+	  .data = &auo_b101uan08_3_desc
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
