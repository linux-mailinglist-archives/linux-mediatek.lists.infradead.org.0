Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706C9D4C50
	for <lists+linux-mediatek@lfdr.de>; Sat, 12 Oct 2019 05:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNoLJ3yzZ055WTicBOI5p0cyku6WfFDTmPD+8FoXID8=; b=YlV0igd/oiGAuR
	UiFYXFS50Zi7yXPtnWETn9KQjZi8SRnI/I8xh3vmREv7EfliPfr1e0F4LKKk/RmC0q9bxTSGA5tCC
	sOKrXCQ4q9ZFoUkpzcTYsSv4/E9aQrHOwy9SJaZH6Qb4JQNAm8623G9frGHW3XpYvWlNUDMpaBVl8
	jG0a/xDV3nAPeGUldQTPXtlRa9QmK44c0+1YLuvnDLRzscLP7F/rJo/tKwMPvFO6ZCilMduZzgZ/i
	dG1oVa5q1NQmuAPS5xjl+T17DIPuoV5NWVHDqMXKC0WwRxfAwoCEGgM7gRojN9wqmbRtw/zTJiY9u
	YQvTORI3EPB0RXaUhUIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ7lI-0004nR-1G; Sat, 12 Oct 2019 03:08:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ7lD-0004jn-W7
 for linux-mediatek@lists.infradead.org; Sat, 12 Oct 2019 03:08:05 +0000
X-UUID: f7794d9268064970b4a208c45505cae1-20191011
X-UUID: f7794d9268064970b4a208c45505cae1-20191011
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 736997236; Fri, 11 Oct 2019 19:07:41 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 11 Oct 2019 20:07:58 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 12 Oct 2019 11:07:55 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sat, 12 Oct 2019 11:07:54 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v7 6/8] drm/panel: support for boe,
 tv101wum-n53 wuxga dsi video mode panel
Date: Sat, 12 Oct 2019 11:07:18 +0800
Message-ID: <20191012030720.27127-7-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012030720.27127-1-jitao.shi@mediatek.com>
References: <20191012030720.27127-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4D629611DAE2BCB5C0460DDC94222343CB9BBCE98EE75388431498F7F4C6D03C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_200804_068173_4CA0B1C8 
X-CRM114-Status: UNSURE (   7.64  )
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

Boe,tv101wum-n53's connector is same as boe,tv101wum-nl6.
The most codes can be reuse.
So boe,tv101wum-n53 and boe,tv101wum-nl6 use one driver file.
Add the different parts in driver data.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index e6457f87bc61..7b47619675f5 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -624,6 +624,34 @@ static const struct panel_desc auo_kd101n80_45na_desc = {
 	.discharge_on_disable = true,
 };
 
+static const struct drm_display_mode boe_tv101wum_n53_default_mode = {
+	.clock = 159833,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 114,
+	.hsync_end = 1200 + 114 + 10,
+	.htotal = 1200 + 114 + 10 + 40,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 19,
+	.vsync_end = 1920 + 19 + 4,
+	.vtotal = 1920 + 19 + 4 + 10,
+	.vrefresh = 60,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct panel_desc boe_tv101wum_n53_desc = {
+	.modes = &boe_tv101wum_n53_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 135,
+		.height_mm = 216,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init_cmds = boe_init_cmd,
+};
+
 static int boe_panel_get_modes(struct drm_panel *panel)
 {
 	struct boe_panel *boe = to_boe_panel(panel);
@@ -751,6 +779,9 @@ static const struct of_device_id boe_of_match[] = {
 	{ .compatible = "auo,kd101n80-45na",
 	  .data = &auo_kd101n80_45na_desc
 	},
+	{ .compatible = "boe,tv101wum-n53",
+	  .data = &boe_tv101wum_n53_desc
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
