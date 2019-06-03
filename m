Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEA333B76
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 00:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJJYRjdpXuLMedgH6H1CVoz5c+uiCRmrdFFHD863h7Y=; b=LQPOGgPAUesjrO
	llzu5i2T24lSKCNwN8zRQkOP1SqtcTa8ZyQxu+fXqromz5NZ5oLcBaadoqoamhryASnn0F9/78Sog
	WBpiTFyT+EIDVATscM/elFf1e8saNYAQtLgFXOogD6aGHj4nVSHJY6TsBV3sOjgwylFVheeDoqr8w
	mnv0At5Vcc26NTQR4tZNTBl00wK265Jg5E3zjamP2AqealLNGnHlVb72nEmN53vyRQEYM8TDfCDAr
	AiBj//tmOUkasvT6s2t4V3jWnlagxUoAqBrwWdvJl31DXE+8zjw4pRuoGspVO37lTLCvK44SjpxkA
	UwDZR8+VEf4aeGfPyaeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvZY-0007Nz-Sj; Mon, 03 Jun 2019 22:36:56 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvZV-0007Mi-2U
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 22:36:55 +0000
Received: by mail-qt1-x842.google.com with SMTP id a15so11482913qtn.7
 for <linux-mediatek@lists.infradead.org>; Mon, 03 Jun 2019 15:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e/L03brJhYY8u9Hd3CTKtRq0xjx8/jrNsonVfIlrn3E=;
 b=Tq+s2vCSOC7yd3OQA0u3sAvdi29LqvQtz5uwvGRpL1OyrbFm8VV53GP8rVBe8tAMrA
 Vklw+bvJ4Nu4EWxHau/ubbkGPTAqfBrcq0bPu3vC/7VwlOisvCzpUOri/n7nv43qv0ex
 mmEU3vcEhX+XLPK8B41SYWj1cUv6gtROHH+6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e/L03brJhYY8u9Hd3CTKtRq0xjx8/jrNsonVfIlrn3E=;
 b=L8RrQ/uaJzxO1BCnhxIuMZHgPhY/w1uTL9cH8D8AxiPBBukC8AvVZXrXsY4Lh/EvmH
 cKtJFteRTcDwfw1BNWUm9qjn1kVxuGThRAp5MFviPPTn25JC3agqDV6O+8vO23MW5EdN
 nq/OTr/Nlk1J5qtQV1eF0+KRQ3MaUOFNxjO8R8ziOzXTvFJAO0TUNc0NeM7XJGH1F6b1
 JS5j8elNJVfKjO3gcnPSJXsd1A4Agh4Z1l/7W3uqSjf6+iQRXZq4WdZcDWJkhKgq2lLu
 3cED3ugmNnsEHcssiv0iNWxCSwqxfQyOVyYi+S0Rx/n+KCwqCKfXhezjJq8B5/kEL7JQ
 xb4g==
X-Gm-Message-State: APjAAAWqxYV9gFUTPbNhsz8HYv9lj+pTkYkTHVnjgXEuPG0WKeFu5LQQ
 OVu2G+sVyXo2n0O3l8TAEMHLqcQAqo23HwWTD0fE5g==
X-Google-Smtp-Source: APXvYqxlCEQeBkuLqEfFteDIX4bB2zq8WUaVaw6un6X2NBiAH+DDI1xY1pmVdGqgRbYiY34sx7gxfE0DyscBh4nsvNs=
X-Received: by 2002:aed:38a1:: with SMTP id k30mr5469996qte.159.1559601410233; 
 Mon, 03 Jun 2019 15:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
 <20190601092615.67917-7-jitao.shi@mediatek.com>
In-Reply-To: <20190601092615.67917-7-jitao.shi@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 4 Jun 2019 06:36:38 +0800
Message-ID: <CANMq1KDoGO=2yursnB8udJkvMG6GwV=qsW7HFAyTsc93dnBBXQ@mail.gmail.com>
Subject: Re: [v4 6/7] drm/mediatek: change the dsi phytiming calculate method
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_153653_147267_71050E18 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Guenter Roeck <groeck@chromium.org>,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa cheng <cawa.cheng@mediatek.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <seanpaul@chromium.org>,
 linux-pwm@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 lkml <linux-kernel@vger.kernel.org>, Ryan Case <ryandcase@chromium.org>,
 Sascha Hauer <kernel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 5:26 PM Jitao Shi <jitao.shi@mediatek.com> wrote:
>
> Change the method of frame rate calc which can get more accurate
> frame rate.
>
> data rate = pixel_clock * bit_per_pixel / lanes
> Adjust hfp_wc to adapt the additional phy_data
>
> if MIPI_DSI_MODE_VIDEO_BURST
>         hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12 - 6;
> else
>         hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12;
>
> Note:
> //(2: 1 for sync, 1 for phy idle)
> data_phy_cycles = T_hs_exit + T_lpx + T_hs_prepare + T_hs_zero + 2;
>
> bpp: bit per pixel
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Tested-by: Ryan Case <ryandcase@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 122 ++++++++++++++++++++---------
>  1 file changed, 83 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index abf6ddec5db6..558727c60ba3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -144,12 +144,6 @@
>  #define DATA_0                         (0xff << 16)
>  #define DATA_1                         (0xff << 24)
>
> -#define T_LPX          5
> -#define T_HS_PREP      6
> -#define T_HS_TRAIL     8
> -#define T_HS_EXIT      7
> -#define T_HS_ZERO      10
> -
>  #define NS_TO_CYCLE(n, c)    ((n) / (c) + (((n) % (c)) ? 1 : 0))
>
>  #define MTK_DSI_HOST_IS_READ(type) \
> @@ -158,6 +152,25 @@
>         (type == MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM) || \
>         (type == MIPI_DSI_DCS_READ))
>
> +struct mtk_phy_timing {
> +       u32 lpx;
> +       u32 da_hs_prepare;
> +       u32 da_hs_zero;
> +       u32 da_hs_trail;
> +
> +       u32 ta_go;
> +       u32 ta_sure;
> +       u32 ta_get;
> +       u32 da_hs_exit;
> +
> +       u32 clk_hs_zero;
> +       u32 clk_hs_trail;
> +
> +       u32 clk_hs_prepare;
> +       u32 clk_hs_post;
> +       u32 clk_hs_exit;
> +};
> +
>  struct phy;
>
>  struct mtk_dsi_driver_data {
> @@ -182,12 +195,13 @@ struct mtk_dsi {
>         struct clk *digital_clk;
>         struct clk *hs_clk;
>
> -       u32 data_rate;
> +       u64 data_rate;

As highlighted in
https://patchwork.kernel.org/patch/10949323/#22673829, this change
causes issues on 32-bit platforms.

>
>         unsigned long mode_flags;
>         enum mipi_dsi_pixel_format format;
>         unsigned int lanes;
>         struct videomode vm;
> +       struct mtk_phy_timing phy_timing;
>         int refcount;
>         bool enabled;
>         u32 irq_data;
> @@ -221,17 +235,36 @@ static void mtk_dsi_phy_timconfig(struct mtk_dsi *dsi)
>  {
>         u32 timcon0, timcon1, timcon2, timcon3;
>         u32 ui, cycle_time;
> +       struct mtk_phy_timing *timing = &dsi->phy_timing;
> +
> +       ui = 1000000000 / dsi->data_rate;
> +       cycle_time = 8000000000 / dsi->data_rate;
> +
> +       timing->lpx = NS_TO_CYCLE(60, cycle_time);
> +       timing->da_hs_prepare = NS_TO_CYCLE(40 + 5 * ui, cycle_time);
> +       timing->da_hs_zero = NS_TO_CYCLE(110 + 6 * ui, cycle_time);
> +       timing->da_hs_trail = NS_TO_CYCLE(80 + 4 * ui, cycle_time);
>
> -       ui = 1000 / dsi->data_rate + 0x01;
> -       cycle_time = 8000 / dsi->data_rate + 0x01;
> +       timing->ta_go = 4 * timing->lpx;
> +       timing->ta_sure = 3 * timing->lpx / 2;
> +       timing->ta_get = 5 * timing->lpx;
> +       timing->da_hs_exit = 2 * timing->lpx;
>
> -       timcon0 = T_LPX | T_HS_PREP << 8 | T_HS_ZERO << 16 | T_HS_TRAIL << 24;
> -       timcon1 = 4 * T_LPX | (3 * T_LPX / 2) << 8 | 5 * T_LPX << 16 |
> -                 T_HS_EXIT << 24;
> -       timcon2 = ((NS_TO_CYCLE(0x64, cycle_time) + 0xa) << 24) |
> -                 (NS_TO_CYCLE(0x150, cycle_time) << 16);
> -       timcon3 = NS_TO_CYCLE(0x40, cycle_time) | (2 * T_LPX) << 16 |
> -                 NS_TO_CYCLE(80 + 52 * ui, cycle_time) << 8;
> +       timing->clk_hs_zero = NS_TO_CYCLE(336, cycle_time);
> +       timing->clk_hs_trail = NS_TO_CYCLE(100, cycle_time) + 10;
> +
> +       timing->clk_hs_prepare = NS_TO_CYCLE(64, cycle_time);
> +       timing->clk_hs_post = NS_TO_CYCLE(80 + 52 * ui, cycle_time);
> +       timing->clk_hs_exit = 2 * timing->lpx;
> +
> +       timcon0 = timing->lpx | timing->da_hs_prepare << 8 |
> +                 timing->da_hs_zero << 16 | timing->da_hs_trail << 24;
> +       timcon1 = timing->ta_go | timing->ta_sure << 8 |
> +                 timing->ta_get << 16 | timing->da_hs_exit << 24;
> +       timcon2 = 1 << 8 | timing->clk_hs_zero << 16 |
> +                 timing->clk_hs_trail << 24;
> +       timcon3 = timing->clk_hs_prepare | timing->clk_hs_post << 8 |
> +                 timing->clk_hs_exit << 16;
>
>         writel(timcon0, dsi->regs + DSI_PHY_TIMECON0);
>         writel(timcon1, dsi->regs + DSI_PHY_TIMECON1);
> @@ -418,7 +451,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>         u32 horizontal_sync_active_byte;
>         u32 horizontal_backporch_byte;
>         u32 horizontal_frontporch_byte;
> -       u32 dsi_tmp_buf_bpp;
> +       u32 dsi_tmp_buf_bpp, data_phy_cycles;
> +       struct mtk_phy_timing *timing = &dsi->phy_timing;
>
>         struct videomode *vm = &dsi->vm;
>
> @@ -433,7 +467,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>         writel(vm->vactive, dsi->regs + DSI_VACT_NL);
>
>         if (dsi->driver_data->has_size_ctl)
> -               writel(vm->vactive << 16 | vm->hactive, dsi->regs + DSI_SIZE_CON);
> +               writel(vm->vactive << 16 | vm->hactive,
> +                      dsi->regs + DSI_SIZE_CON);
>
>         horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
>
> @@ -444,7 +479,34 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>                 horizontal_backporch_byte = ((vm->hback_porch + vm->hsync_len) *
>                         dsi_tmp_buf_bpp - 10);
>
> -       horizontal_frontporch_byte = (vm->hfront_porch * dsi_tmp_buf_bpp - 12);
> +       data_phy_cycles = timing->lpx + timing->da_hs_prepare +
> +                                 timing->da_hs_zero + timing->da_hs_exit + 2;
> +
> +       if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
> +               if (vm->hfront_porch * dsi_tmp_buf_bpp >
> +                   data_phy_cycles * dsi->lanes + 18) {
> +                       horizontal_frontporch_byte = vm->hfront_porch *
> +                                                    dsi_tmp_buf_bpp -
> +                                                    data_phy_cycles *
> +                                                    dsi->lanes - 18;
> +               } else {
> +                       DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> +                       horizontal_frontporch_byte = vm->hfront_porch *
> +                                                    dsi_tmp_buf_bpp;
> +               }
> +       } else {
> +               if (vm->hfront_porch * dsi_tmp_buf_bpp >
> +                   data_phy_cycles * dsi->lanes + 12) {
> +                       horizontal_frontporch_byte = vm->hfront_porch *
> +                                                    dsi_tmp_buf_bpp -
> +                                                    data_phy_cycles *
> +                                                    dsi->lanes - 12;
> +               } else {
> +                       DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
> +                       horizontal_frontporch_byte = vm->hfront_porch *
> +                                                    dsi_tmp_buf_bpp;
> +               }
> +       }
>
>         writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
>         writel(horizontal_backporch_byte, dsi->regs + DSI_HBP_WC);
> @@ -544,8 +606,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  {
>         struct device *dev = dsi->dev;
>         int ret;
> -       u64 pixel_clock, total_bits;
> -       u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
> +       u32 bit_per_pixel;
>
>         if (++dsi->refcount != 1)
>                 return 0;
> @@ -564,24 +625,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>                 break;
>         }
>
> -       /**
> -        * htotal_time = htotal * byte_per_pixel / num_lanes
> -        * overhead_time = lpx + hs_prepare + hs_zero + hs_trail + hs_exit
> -        * mipi_ratio = (htotal_time + overhead_time) / htotal_time
> -        * data_rate = pixel_clock * bit_per_pixel * mipi_ratio / num_lanes;
> -        */
> -       pixel_clock = dsi->vm.pixelclock;
> -       htotal = dsi->vm.hactive + dsi->vm.hback_porch + dsi->vm.hfront_porch +
> -                       dsi->vm.hsync_len;
> -       htotal_bits = htotal * bit_per_pixel;
> -
> -       overhead_cycles = T_LPX + T_HS_PREP + T_HS_ZERO + T_HS_TRAIL +
> -                       T_HS_EXIT;
> -       overhead_bits = overhead_cycles * dsi->lanes * 8;
> -       total_bits = htotal_bits + overhead_bits;
> -
> -       dsi->data_rate = DIV_ROUND_UP_ULL(pixel_clock * total_bits,
> -                                         htotal * dsi->lanes);
> +       dsi->data_rate = dsi->vm.pixelclock * bit_per_pixel / dsi->lanes;
>
>         ret = clk_set_rate(dsi->hs_clk, dsi->data_rate);
>         if (ret < 0) {
> --
> 2.21.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
