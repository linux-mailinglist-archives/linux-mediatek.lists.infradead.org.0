Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66172266F
	for <lists+linux-mediatek@lfdr.de>; Sun, 19 May 2019 11:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOopIsh/ThfkbwfaRQnjdNuJ0TcQtFa2He+Mm8vNbfw=; b=tqQ7xHwxMuhyBj
	asW7ZeqOLTNpn6XcTH4s8QGPeIA/r3mESD8JhczxIzpJ6lSW1k8qP2/kYvyRaR/bqRgdAxVc9QU2C
	3C2GXDcOBPt79mkitTaz9W75ZGWqBnC6v+kvJTnhLo+GW1No1XRON89fr3Yjn7w6CXm3jZw4sG7hr
	Q8z26bcvazjNdfyc4e3lDC+Z/2VmFrtSvbiCwe8xab9pFyFYPH1JeMetGctzH2k/jZzQeEo3GT9BD
	9Cx8Uf1os5XJArUqpJV+AqmZTqcuINTeGu8mOgYWofLe/8kJYO04f9mex/DdFSZQE2FvVFKmOrPEX
	WqF0l4Zj2q2r5BCMCl2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSI5U-0007Ec-6a; Sun, 19 May 2019 09:26:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSI4q-0006Mn-67; Sun, 19 May 2019 09:26:04 +0000
X-UUID: d55ce453d71e481fab54c77c5eeafd4a-20190519
X-UUID: d55ce453d71e481fab54c77c5eeafd4a-20190519
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1234294408; Sun, 19 May 2019 01:25:53 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 02:25:51 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 19 May 2019 17:25:49 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sun, 19 May 2019 17:25:47 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, Kumar Gala <galak@codeaurora.org>,
 <linux-pwm@vger.kernel.org>, David Airlie <airlied@linux.ie>, Matthias
 Brugger <matthias.bgg@gmail.com>
Subject: [v3 6/7] drm/mediatek: change the dsi phytiming calculate method
Date: Sun, 19 May 2019 17:25:36 +0800
Message-ID: <20190519092537.69053-7-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190519092537.69053-1-jitao.shi@mediatek.com>
References: <20190519092537.69053-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_022556_439968_A018F0CD 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Change the method of frame rate calc which can get more accurate
frame rate.

data rate = pixel_clock * bit_per_pixel / lanes
Adjust hfp_wc to adapt the additional phy_data

if MIPI_DSI_MODE_VIDEO_BURST
	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12 - 6;
else
	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12;

Note:
//(2: 1 for sync, 1 for phy idle)
data_phy_cycles = T_hs_exit + T_lpx + T_hs_prepare + T_hs_zero + 2;

bpp: bit per pixel

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 119 +++++++++++++++++++++--------
 1 file changed, 86 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 1165ff944889..3f51b2000c68 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -158,6 +158,25 @@
 	(type == MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM) || \
 	(type == MIPI_DSI_DCS_READ))
 
+struct mtk_phy_timing {
+	u32 lpx;
+	u32 da_hs_prepare;
+	u32 da_hs_zero;
+	u32 da_hs_trail;
+
+	u32 ta_go;
+	u32 ta_sure;
+	u32 ta_get;
+	u32 da_hs_exit;
+
+	u32 clk_hs_zero;
+	u32 clk_hs_trail;
+
+	u32 clk_hs_prepare;
+	u32 clk_hs_post;
+	u32 clk_hs_exit;
+};
+
 struct phy;
 
 struct mtk_dsi_driver_data {
@@ -182,12 +201,13 @@ struct mtk_dsi {
 	struct clk *digital_clk;
 	struct clk *hs_clk;
 
-	u32 data_rate;
+	u64 data_rate;
 
 	unsigned long mode_flags;
 	enum mipi_dsi_pixel_format format;
 	unsigned int lanes;
 	struct videomode vm;
+	struct mtk_phy_timing phy_timing;
 	int refcount;
 	bool enabled;
 	u32 irq_data;
@@ -221,17 +241,39 @@ static void mtk_dsi_phy_timconfig(struct mtk_dsi *dsi)
 {
 	u32 timcon0, timcon1, timcon2, timcon3;
 	u32 ui, cycle_time;
+	struct mtk_phy_timing *timing = &dsi->phy_timing;
+
+	ui = 1000000000 / dsi->data_rate;
+	cycle_time = 8000000000 / dsi->data_rate;
+
+	timing->lpx = NS_TO_CYCLE(60, cycle_time);
+	timing->da_hs_prepare = NS_TO_CYCLE((40 + 5 * ui), cycle_time);
+	timing->da_hs_zero = NS_TO_CYCLE((110 + 6 * ui), cycle_time);
+	timing->da_hs_trail = NS_TO_CYCLE(((0x4 * ui) + 80), cycle_time);
+
+	if (timing->da_hs_zero > timing->da_hs_prepare)
+		timing->da_hs_zero -= timing->da_hs_prepare;
+
+	timing->ta_go = 4 * timing->lpx;
+	timing->ta_sure = 3 * timing->lpx / 2;
+	timing->ta_get = 5 * timing->lpx;
+	timing->da_hs_exit = 2 * timing->lpx;
+
+	timing->clk_hs_zero = NS_TO_CYCLE(0x150, cycle_time);
+	timing->clk_hs_trail = NS_TO_CYCLE(0x64, cycle_time) + 0xa;
 
-	ui = 1000 / dsi->data_rate + 0x01;
-	cycle_time = 8000 / dsi->data_rate + 0x01;
+	timing->clk_hs_prepare = NS_TO_CYCLE(0x40, cycle_time);
+	timing->clk_hs_post = NS_TO_CYCLE(80 + 52 * ui, cycle_time);
+	timing->clk_hs_exit = 2 * timing->lpx;
 
-	timcon0 = T_LPX | T_HS_PREP << 8 | T_HS_ZERO << 16 | T_HS_TRAIL << 24;
-	timcon1 = 4 * T_LPX | (3 * T_LPX / 2) << 8 | 5 * T_LPX << 16 |
-		  T_HS_EXIT << 24;
-	timcon2 = ((NS_TO_CYCLE(0x64, cycle_time) + 0xa) << 24) |
-		  (NS_TO_CYCLE(0x150, cycle_time) << 16);
-	timcon3 = NS_TO_CYCLE(0x40, cycle_time) | (2 * T_LPX) << 16 |
-		  NS_TO_CYCLE(80 + 52 * ui, cycle_time) << 8;
+	timcon0 = timing->lpx | timing->da_hs_prepare << 8 |
+		  timing->da_hs_zero << 16 | timing->da_hs_trail << 24;
+	timcon1 = timing->ta_go | timing->ta_sure << 8 |
+		  timing->ta_get << 16 | timing->da_hs_exit << 24;
+	timcon2 = 1 << 8 | timing->clk_hs_zero << 16 |
+		  timing->clk_hs_trail << 24;
+	timcon3 = timing->clk_hs_prepare | timing->clk_hs_post << 8 |
+		  timing->clk_hs_exit << 16;
 
 	writel(timcon0, dsi->regs + DSI_PHY_TIMECON0);
 	writel(timcon1, dsi->regs + DSI_PHY_TIMECON1);
@@ -418,7 +460,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 	u32 horizontal_sync_active_byte;
 	u32 horizontal_backporch_byte;
 	u32 horizontal_frontporch_byte;
-	u32 dsi_tmp_buf_bpp;
+	u32 dsi_tmp_buf_bpp, data_phy_cycles;
+	struct mtk_phy_timing *timing = &dsi->phy_timing;
 
 	struct videomode *vm = &dsi->vm;
 
@@ -433,7 +476,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 	writel(vm->vactive, dsi->regs + DSI_VACT_NL);
 
 	if (dsi->driver_data->has_size_ctl)
-		writel(vm->vactive << 16 | vm->hactive, dsi->regs + DSI_SIZE_CON);
+		writel(vm->vactive << 16 | vm->hactive,
+		       dsi->regs + DSI_SIZE_CON);
 
 	horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
 
@@ -444,7 +488,34 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 		horizontal_backporch_byte = ((vm->hback_porch + vm->hsync_len) *
 			dsi_tmp_buf_bpp - 10);
 
-	horizontal_frontporch_byte = (vm->hfront_porch * dsi_tmp_buf_bpp - 12);
+	data_phy_cycles = timing->lpx + timing->da_hs_prepare +
+				  timing->da_hs_zero + timing->da_hs_exit + 2;
+
+	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
+		if (vm->hfront_porch * dsi_tmp_buf_bpp >
+		    data_phy_cycles * dsi->lanes + 18) {
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp -
+						     data_phy_cycles *
+						     dsi->lanes - 18;
+		} else {
+			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp;
+		}
+	} else {
+		if (vm->hfront_porch * dsi_tmp_buf_bpp >
+		    data_phy_cycles * dsi->lanes + 12) {
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp -
+						     data_phy_cycles *
+						     dsi->lanes - 12;
+		} else {
+			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp;
+		}
+	}
 
 	writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
 	writel(horizontal_backporch_byte, dsi->regs + DSI_HBP_WC);
@@ -544,8 +615,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 {
 	struct device *dev = dsi->dev;
 	int ret;
-	u64 pixel_clock, total_bits;
-	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
+	u32 bit_per_pixel;
 
 	if (++dsi->refcount != 1)
 		return 0;
@@ -564,24 +634,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 		break;
 	}
 
-	/**
-	 * htotal_time = htotal * byte_per_pixel / num_lanes
-	 * overhead_time = lpx + hs_prepare + hs_zero + hs_trail + hs_exit
-	 * mipi_ratio = (htotal_time + overhead_time) / htotal_time
-	 * data_rate = pixel_clock * bit_per_pixel * mipi_ratio / num_lanes;
-	 */
-	pixel_clock = dsi->vm.pixelclock;
-	htotal = dsi->vm.hactive + dsi->vm.hback_porch + dsi->vm.hfront_porch +
-			dsi->vm.hsync_len;
-	htotal_bits = htotal * bit_per_pixel;
-
-	overhead_cycles = T_LPX + T_HS_PREP + T_HS_ZERO + T_HS_TRAIL +
-			T_HS_EXIT;
-	overhead_bits = overhead_cycles * dsi->lanes * 8;
-	total_bits = htotal_bits + overhead_bits;
-
-	dsi->data_rate = DIV_ROUND_UP_ULL(pixel_clock * total_bits,
-					  htotal * dsi->lanes);
+	dsi->data_rate = dsi->vm.pixelclock * bit_per_pixel / dsi->lanes;
 
 	ret = clk_set_rate(dsi->hs_clk, dsi->data_rate);
 	if (ret < 0) {
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
