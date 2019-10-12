Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E39D4C63
	for <lists+linux-mediatek@lfdr.de>; Sat, 12 Oct 2019 05:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yzo5lpD2chfTvPkhu5Wi1Zw4PlEwKHc+lby5/xu2hg=; b=lE9nthsNGqpiOg
	uMgdAPL8PnhmCPlmLmKSzk9Q2xmUCQJV2mH0bHCw7I56CPdV/EfuCL1FmfQNHizEPHd41CurDpZ7o
	A/A4zPEXmsZMypZvgzqFKEFbYVY1USZXVUo3eGO+qNpV+pKd4IQod8013uulS/OIANuy0MmyZZ/u+
	aVLAFS1hQ8cgICfmG/4eaixgp7nK+J/FNKVNYjsNuoS6dZNBPuBG1elNkLRjOIKh6iX0wxwUrwFwh
	WVloI3GRRIP4HcnvtjPoshrJGh0VRKAxnJ4wno3DS14Tvw0ZslQXuXSEPqNeCHwMfHCCF+yluGkyq
	Ap8Pkp8wm7E/v/T0WZlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ7v7-0007p0-HX; Sat, 12 Oct 2019 03:18:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ7v3-0007oV-R6
 for linux-mediatek@lists.infradead.org; Sat, 12 Oct 2019 03:18:15 +0000
X-UUID: b5a6cf280cf8492e8e94b115ae7d9e61-20191011
X-UUID: b5a6cf280cf8492e8e94b115ae7d9e61-20191011
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1908500191; Fri, 11 Oct 2019 19:17:51 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 11 Oct 2019 20:08:07 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 12 Oct 2019 11:08:04 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sat, 12 Oct 2019 11:08:03 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v7 8/8] drm/panel: support for auo,
 b101uan08.3 wuxga dsi video mode panel
Date: Sat, 12 Oct 2019 11:07:20 +0800
Message-ID: <20191012030720.27127-9-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012030720.27127-1-jitao.shi@mediatek.com>
References: <20191012030720.27127-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24970.000
X-TM-AS-Result: No-4.454300-8.000000-10
X-TMASE-MatchedRID: EVs8mp2+703QIwAe9yDqC/3HILfxLV/9NV9S7O+u3KYBqgK2otzLQvDR
 cRAxsuj7oODj/ed0fo3GVaDBoTrnxixppiUy9o4cGjzBgnFZvQ7gXnxE81iysY5JUK9UdYknKKq
 yc9Qq8XoheBVUjnjCL4RjXy3Ro697sx/x3O663xdJkkUW0nPbN4iuaoNXJrK/rE4sEA01Jmn71G
 pSv+DMDC5Oh8YnEjIhgDLqnrRlXrZ8nn9tnqel2MZW5ai5WKlyfvfWIOIOReAvQUAvxRoIc1Ily
 ofhlFGqt1AsXGB1Oo9+/5H10DkP9/YLSq9KVORy7ZYS8ohwyHLD/8sPERd/m8UMBmUZEDya+F1u
 QrHm3kVAHJVliJsXGmmscOV/NgBtJ4Kg2QL3UZ5Qb0W4rFkT0Q==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--4.454300-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24970.000
X-TM-SNTS-SMTP: 6209DB2CA8B971A409A3F37904A7B71790A4D62E4B46137F4B78B181A30C48142000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_201813_882826_45A6EEE4 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Auo,auo,b101uan08.3's connector is same as boe,tv101wum-nl6.
The most codes can be reuse.
So auo,b101uan08.3 and boe,tv101wum-nl6 use one driver file.
Add the different parts in driver data.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index 7b47619675f5..e2496a334ab6 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -382,6 +382,53 @@ static const struct panel_init_cmd auo_kd101n80_45na_init_cmd[] = {
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
@@ -652,6 +699,34 @@ static const struct panel_desc boe_tv101wum_n53_desc = {
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
 static int boe_panel_get_modes(struct drm_panel *panel)
 {
 	struct boe_panel *boe = to_boe_panel(panel);
@@ -782,6 +857,9 @@ static const struct of_device_id boe_of_match[] = {
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
