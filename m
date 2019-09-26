Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FECBBEDDE
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Sep 2019 10:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVpf1d4JIr72oHXoTcKQNykLCpP/zkIEJKhaGPyI6qw=; b=CgWMvbweL7j3lI
	wtYrKqbVXJrqe2Ud+1qGMjeh2U2p6tVcWi2VjSTr2b/6dBaFRZmvXf1SGknexsBtGZv2xUXuC8MZ2
	HY5uwhmhyQcwRMECsOsIEvk7k5Rw8qgGZjV/s8/dsFAmSv4BizN4mlhNbpVsbdrK8I+udHkeVwktN
	JuWmjCrOSZShYDHKaYdUzpx2vytN/0D1i7QUVvpKrzJjS9YyoVyKaAefBzfxXaQCwDl/rvOOpQWMs
	/oYRRdzOKNqYNu6FWK+SzATD2P39P7f/XkTx3K0nZQlsUOEesIlGAfc4YIh/AZwlr94DJCVdyZHUN
	PQr4Aq4A/TDyST9l9QLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPW7-0003O0-2Q; Thu, 26 Sep 2019 08:52:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPUj-00032b-2q
 for linux-mediatek@lists.infradead.org; Thu, 26 Sep 2019 08:51:32 +0000
X-UUID: c6f2e3a923fd45188c4c5e55177c00a6-20190926
X-UUID: c6f2e3a923fd45188c4c5e55177c00a6-20190926
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2116311003; Thu, 26 Sep 2019 00:51:21 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 01:51:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 16:51:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Sep 2019 16:51:19 +0800
Message-ID: <1569487880.9612.2.camel@mtksdaap41>
Subject: Re: [PATCH v7 7/9] drm/mediatek: change the dsi phytiming calculate
 method
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Thu, 26 Sep 2019 16:51:20 +0800
In-Reply-To: <20190919065806.111016-8-jitao.shi@mediatek.com>
References: <20190919065806.111016-1-jitao.shi@mediatek.com>
 <20190919065806.111016-8-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_015130_428271_2491829C 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, stonea168@163.com, cawa.cheng@mediatek.com,
 dri-devel@lists.freedesktop.org, Ryan Case <ryandcase@chromium.org>,
 sj.huang@mediatek.com, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

On Thu, 2019-09-19 at 14:58 +0800, Jitao Shi wrote:
> Change the method of frame rate calc which can get more accurate
> frame rate.
> 
> data rate = pixel_clock * bit_per_pixel / lanes
> Adjust hfp_wc to adapt the additional phy_data
> 
> if MIPI_DSI_MODE_VIDEO_BURST
> 	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12 - 6;
> else
> 	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12;
> 
> Note:
> //(2: 1 for sync, 1 for phy idle)
> data_phy_cycles = T_hs_exit + T_lpx + T_hs_prepare + T_hs_zero + 2;
> 
> bpp: bit per pixel

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Tested-by: Ryan Case <ryandcase@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 118 ++++++++++++++++++++---------
>  1 file changed, 81 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b3676426aeb5..b02373b04848 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -136,12 +136,6 @@
>  #define DATA_0				(0xff << 16)
>  #define DATA_1				(0xff << 24)
>  
> -#define T_LPX		5
> -#define T_HS_PREP	6
> -#define T_HS_TRAIL	8
> -#define T_HS_EXIT	7
> -#define T_HS_ZERO	10
> -
>  #define NS_TO_CYCLE(n, c)    ((n) / (c) + (((n) % (c)) ? 1 : 0))
>  
>  #define MTK_DSI_HOST_IS_READ(type) \
> @@ -150,6 +144,25 @@
>  	(type == MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM) || \
>  	(type == MIPI_DSI_DCS_READ))
>  
> +struct mtk_phy_timing {
> +	u32 lpx;
> +	u32 da_hs_prepare;
> +	u32 da_hs_zero;
> +	u32 da_hs_trail;
> +
> +	u32 ta_go;
> +	u32 ta_sure;
> +	u32 ta_get;
> +	u32 da_hs_exit;
> +
> +	u32 clk_hs_zero;
> +	u32 clk_hs_trail;
> +
> +	u32 clk_hs_prepare;
> +	u32 clk_hs_post;
> +	u32 clk_hs_exit;
> +};
> +
>  struct phy;
>  
>  struct mtk_dsi_driver_data {
> @@ -180,6 +193,7 @@ struct mtk_dsi {
>  	enum mipi_dsi_pixel_format format;
>  	unsigned int lanes;
>  	struct videomode vm;
> +	struct mtk_phy_timing phy_timing;
>  	int refcount;
>  	bool enabled;
>  	u32 irq_data;
> @@ -213,17 +227,36 @@ static void mtk_dsi_phy_timconfig(struct mtk_dsi *dsi)
>  {
>  	u32 timcon0, timcon1, timcon2, timcon3;
>  	u32 ui, cycle_time;
> +	struct mtk_phy_timing *timing = &dsi->phy_timing;
> +
> +	ui = DIV_ROUND_UP(1000000000, dsi->data_rate);
> +	cycle_time = div_u64(8000000000ULL, dsi->data_rate);
> +
> +	timing->lpx = NS_TO_CYCLE(60, cycle_time);
> +	timing->da_hs_prepare = NS_TO_CYCLE(50 + 5 * ui, cycle_time);
> +	timing->da_hs_zero = NS_TO_CYCLE(110 + 6 * ui, cycle_time);
> +	timing->da_hs_trail = NS_TO_CYCLE(77 + 4 * ui, cycle_time);
>  
> -	ui = 1000 / dsi->data_rate + 0x01;
> -	cycle_time = 8000 / dsi->data_rate + 0x01;
> +	timing->ta_go = 4 * timing->lpx;
> +	timing->ta_sure = 3 * timing->lpx / 2;
> +	timing->ta_get = 5 * timing->lpx;
> +	timing->da_hs_exit = 2 * timing->lpx;
>  
> -	timcon0 = T_LPX | T_HS_PREP << 8 | T_HS_ZERO << 16 | T_HS_TRAIL << 24;
> -	timcon1 = 4 * T_LPX | (3 * T_LPX / 2) << 8 | 5 * T_LPX << 16 |
> -		  T_HS_EXIT << 24;
> -	timcon2 = ((NS_TO_CYCLE(0x64, cycle_time) + 0xa) << 24) |
> -		  (NS_TO_CYCLE(0x150, cycle_time) << 16);
> -	timcon3 = NS_TO_CYCLE(0x40, cycle_time) | (2 * T_LPX) << 16 |
> -		  NS_TO_CYCLE(80 + 52 * ui, cycle_time) << 8;
> +	timing->clk_hs_zero = NS_TO_CYCLE(336, cycle_time);
> +	timing->clk_hs_trail = NS_TO_CYCLE(100, cycle_time) + 10;
> +
> +	timing->clk_hs_prepare = NS_TO_CYCLE(64, cycle_time);
> +	timing->clk_hs_post = NS_TO_CYCLE(80 + 52 * ui, cycle_time);
> +	timing->clk_hs_exit = 2 * timing->lpx;
> +
> +	timcon0 = timing->lpx | timing->da_hs_prepare << 8 |
> +		  timing->da_hs_zero << 16 | timing->da_hs_trail << 24;
> +	timcon1 = timing->ta_go | timing->ta_sure << 8 |
> +		  timing->ta_get << 16 | timing->da_hs_exit << 24;
> +	timcon2 = 1 << 8 | timing->clk_hs_zero << 16 |
> +		  timing->clk_hs_trail << 24;
> +	timcon3 = timing->clk_hs_prepare | timing->clk_hs_post << 8 |
> +		  timing->clk_hs_exit << 16;
>  
>  	writel(timcon0, dsi->regs + DSI_PHY_TIMECON0);
>  	writel(timcon1, dsi->regs + DSI_PHY_TIMECON1);
> @@ -410,7 +443,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>  	u32 horizontal_sync_active_byte;
>  	u32 horizontal_backporch_byte;
>  	u32 horizontal_frontporch_byte;
> -	u32 dsi_tmp_buf_bpp;
> +	u32 dsi_tmp_buf_bpp, data_phy_cycles;
> +	struct mtk_phy_timing *timing = &dsi->phy_timing;
>  
>  	struct videomode *vm = &dsi->vm;
>  
> @@ -437,7 +471,34 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>  		horizontal_backporch_byte = ((vm->hback_porch + vm->hsync_len) *
>  			dsi_tmp_buf_bpp - 10);
>  
> -	horizontal_frontporch_byte = (vm->hfront_porch * dsi_tmp_buf_bpp - 12);
> +	data_phy_cycles = timing->lpx + timing->da_hs_prepare +
> +				  timing->da_hs_zero + timing->da_hs_exit + 2;
> +
> +	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
> +		if (vm->hfront_porch * dsi_tmp_buf_bpp >
> +		    data_phy_cycles * dsi->lanes + 18) {
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp -
> +						     data_phy_cycles *
> +						     dsi->lanes - 18;
> +		} else {
> +			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp;
> +		}
> +	} else {
> +		if (vm->hfront_porch * dsi_tmp_buf_bpp >
> +		    data_phy_cycles * dsi->lanes + 12) {
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp -
> +						     data_phy_cycles *
> +						     dsi->lanes - 12;
> +		} else {
> +			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> +			horizontal_frontporch_byte = vm->hfront_porch *
> +						     dsi_tmp_buf_bpp;
> +		}
> +	}
>  
>  	writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
>  	writel(horizontal_backporch_byte, dsi->regs + DSI_HBP_WC);
> @@ -537,8 +598,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  {
>  	struct device *dev = dsi->host.dev;
>  	int ret;
> -	u64 pixel_clock, total_bits;
> -	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
> +	u32 bit_per_pixel;
>  
>  	if (++dsi->refcount != 1)
>  		return 0;
> @@ -557,24 +617,8 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  		break;
>  	}
>  
> -	/**
> -	 * htotal_time = htotal * byte_per_pixel / num_lanes
> -	 * overhead_time = lpx + hs_prepare + hs_zero + hs_trail + hs_exit
> -	 * mipi_ratio = (htotal_time + overhead_time) / htotal_time
> -	 * data_rate = pixel_clock * bit_per_pixel * mipi_ratio / num_lanes;
> -	 */
> -	pixel_clock = dsi->vm.pixelclock;
> -	htotal = dsi->vm.hactive + dsi->vm.hback_porch + dsi->vm.hfront_porch +
> -			dsi->vm.hsync_len;
> -	htotal_bits = htotal * bit_per_pixel;
> -
> -	overhead_cycles = T_LPX + T_HS_PREP + T_HS_ZERO + T_HS_TRAIL +
> -			T_HS_EXIT;
> -	overhead_bits = overhead_cycles * dsi->lanes * 8;
> -	total_bits = htotal_bits + overhead_bits;
> -
> -	dsi->data_rate = DIV_ROUND_UP_ULL(pixel_clock * total_bits,
> -					  htotal * dsi->lanes);
> +	dsi->data_rate = DIV_ROUND_UP_ULL(dsi->vm.pixelclock * bit_per_pixel,
> +					  dsi->lanes);
>  
>  	ret = clk_set_rate(dsi->hs_clk, dsi->data_rate);
>  	if (ret < 0) {



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
