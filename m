Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5164630377
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 22:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57j0Loire+MzVpHtM08/VIZHMDZ2t9pb/9bEyTXoAys=; b=TkHL3h9+L7o7zl
	fbx/lUwwF/eOVzdaFhCb7VR/jwmQV0N5Pun/l/6VeNW/GFlb1q8Hv0NvnP93TlXOqqFK0AszBoeJu
	PBJDJUeNyPix5wcW6740ZfCNYBS/9Kdrs889E1Db/vTG6kLYyefpeZOW9wI+C97c/xteokv3LGWgR
	DlsB3PkcpE+y9IHrOQroL+A/OEvz0Vz2EyKahNZSmnUhU27Gnh/64TrPq3qBrFs7WXMKVGhM/Qi58
	q/moIUNqG+c2MmS0QBIRpGruwYnk0MWL1FMevlDIqu1Y9HoA2pVP4DREgFkAixOPXlG3kINOr5qt4
	y8T6ftFguGao2iKk/8wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWRvl-0007S8-B9; Thu, 30 May 2019 20:45:45 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWRvb-0007JH-JV
 for linux-mediatek@lists.infradead.org; Thu, 30 May 2019 20:45:37 +0000
Received: by mail-qt1-x843.google.com with SMTP id 14so8787003qtf.0
 for <linux-mediatek@lists.infradead.org>; Thu, 30 May 2019 13:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gWieCtH2yIUBG5LWs9OEX59nD7DlvSQy6nQ6THrqLpQ=;
 b=MVfYyapCMJ3LatqnyKDs+2vpLg9MtdQ6eIUIapTUApTID2TcLQ0zGLd1PRJdlGCyX1
 bNDECPJiTcFJ6RgaNyW5qC1fFq+gd310kusmYNxUucmmRT1PxF0j1vQLmo33XvWLYl9/
 k21lyFySdRC9fu5ciEyARhp5fKwuXC0/YaC/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gWieCtH2yIUBG5LWs9OEX59nD7DlvSQy6nQ6THrqLpQ=;
 b=BmzjNoIN2gnMMdwGDX9L6scB2/XKnfzxEJuukmtIGcR/Ji1tqzG9Joj+SIh2kwG7CS
 /osJi8LeRwzreOAziIzR28fqin3JskL0HCRJurCdjARQBBPkDfFoAiiPhRE/zJoEnWOp
 8FvElun8uSuAtf2vLfzPoWQVbxI3kJnO5AZrF/4SHkzgnFEHiVSnmPzYovLb2TNWgxPb
 EgQzjnESm5Fx4w3nBOe3KaJG/9nSRdIeWM6s08gTcv670TdJVFHrnGuGQgv1X9OLRZA2
 o579VaBouBBBKKk5fibw6s0oLFZEP34h1i9mPvbju095UHaOQo/Gzq5L8OzskBTICI9L
 JAjw==
X-Gm-Message-State: APjAAAXa7uIQmxGk1897uE3nIelXyQohW2LHjJwEWWbLhPtXyL/dM/EB
 pzn70naC1TSBOeuxfe6BzuTEk1DU4mcbHVK+XNiErg==
X-Google-Smtp-Source: APXvYqwNLwP00A8U2czycL+eEwL5OUMXo5jNJuA8YWPXcRQvTPdJRTYAmeu3ErcrzQbw0KQSEmCrt5YH4A64vrPlTC8=
X-Received: by 2002:ac8:2fce:: with SMTP id m14mr5717317qta.22.1559249133671; 
 Thu, 30 May 2019 13:45:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190519092537.69053-1-jitao.shi@mediatek.com>
 <20190519092537.69053-7-jitao.shi@mediatek.com>
In-Reply-To: <20190519092537.69053-7-jitao.shi@mediatek.com>
From: Ryan Case <ryandcase@chromium.org>
Date: Thu, 30 May 2019 13:45:23 -0700
Message-ID: <CACjz--m7X13XShZ4ST+54jF_K6=Cfzj1DNBduyVdVsVd2dpULw@mail.gmail.com>
Subject: Re: [v3 6/7] drm/mediatek: change the dsi phytiming calculate method
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_134535_674341_82D919EA 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <seanpaul@chromium.org>,
 linux-pwm@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Inki Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, yingjoe.chen@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kumar Gala <galak@codeaurora.org>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jitao,

On Sun, May 19, 2019 at 2:27 AM Jitao Shi <jitao.shi@mediatek.com> wrote:
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
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 119 +++++++++++++++++++++--------
>  1 file changed, 86 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 1165ff944889..3f51b2000c68 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -158,6 +158,25 @@
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
> @@ -182,12 +201,13 @@ struct mtk_dsi {
>         struct clk *digital_clk;
>         struct clk *hs_clk;
>
> -       u32 data_rate;
> +       u64 data_rate;
>
>         unsigned long mode_flags;
>         enum mipi_dsi_pixel_format format;
>         unsigned int lanes;
>         struct videomode vm;
> +       struct mtk_phy_timing phy_timing;
>         int refcount;
>         bool enabled;
>         u32 irq_data;
> @@ -221,17 +241,39 @@ static void mtk_dsi_phy_timconfig(struct mtk_dsi *dsi)
>  {
>         u32 timcon0, timcon1, timcon2, timcon3;
>         u32 ui, cycle_time;
> +       struct mtk_phy_timing *timing = &dsi->phy_timing;
> +
> +       ui = 1000000000 / dsi->data_rate;
> +       cycle_time = 8000000000 / dsi->data_rate;
> +
> +       timing->lpx = NS_TO_CYCLE(60, cycle_time);
> +       timing->da_hs_prepare = NS_TO_CYCLE((40 + 5 * ui), cycle_time);
> +       timing->da_hs_zero = NS_TO_CYCLE((110 + 6 * ui), cycle_time);
> +       timing->da_hs_trail = NS_TO_CYCLE(((0x4 * ui) + 80), cycle_time);
> +
> +       if (timing->da_hs_zero > timing->da_hs_prepare)
> +               timing->da_hs_zero -= timing->da_hs_prepare;

I don't follow why the above comparison and subtraction is necessary
when the values are being explicitly set immediately prior and it
seems to introduce a bug. Leftover from an early revision?

It looks like you've tuned the values such that hs_prepare+hs_zero are
just above the minimum requirements for that sum, however due to this
comparison and subtraction we wind up with a value of
hs_prepare+hs_zero-hs_prepare and fall below spec. Either boosting the
initial value set for hs_zero or removing the comparison makes display
happy again. Since I don't see any reason for the compare and subtract
I'd just drop that.

> +
> +       timing->ta_go = 4 * timing->lpx;
> +       timing->ta_sure = 3 * timing->lpx / 2;
> +       timing->ta_get = 5 * timing->lpx;
> +       timing->da_hs_exit = 2 * timing->lpx;
> +
> +       timing->clk_hs_zero = NS_TO_CYCLE(0x150, cycle_time);
> +       timing->clk_hs_trail = NS_TO_CYCLE(0x64, cycle_time) + 0xa;
>
> -       ui = 1000 / dsi->data_rate + 0x01;
> -       cycle_time = 8000 / dsi->data_rate + 0x01;
> +       timing->clk_hs_prepare = NS_TO_CYCLE(0x40, cycle_time);
> +       timing->clk_hs_post = NS_TO_CYCLE(80 + 52 * ui, cycle_time);
> +       timing->clk_hs_exit = 2 * timing->lpx;

There is a lot of alternating between hex and decimal values in this
function which makes it a little hard to follow. Would be nice to
stick to one or the other.

>
> -       timcon0 = T_LPX | T_HS_PREP << 8 | T_HS_ZERO << 16 | T_HS_TRAIL << 24;
> -       timcon1 = 4 * T_LPX | (3 * T_LPX / 2) << 8 | 5 * T_LPX << 16 |
> -                 T_HS_EXIT << 24;
> -       timcon2 = ((NS_TO_CYCLE(0x64, cycle_time) + 0xa) << 24) |
> -                 (NS_TO_CYCLE(0x150, cycle_time) << 16);
> -       timcon3 = NS_TO_CYCLE(0x40, cycle_time) | (2 * T_LPX) << 16 |
> -                 NS_TO_CYCLE(80 + 52 * ui, cycle_time) << 8;
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
> @@ -418,7 +460,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>         u32 horizontal_sync_active_byte;
>         u32 horizontal_backporch_byte;
>         u32 horizontal_frontporch_byte;
> -       u32 dsi_tmp_buf_bpp;
> +       u32 dsi_tmp_buf_bpp, data_phy_cycles;
> +       struct mtk_phy_timing *timing = &dsi->phy_timing;
>
>         struct videomode *vm = &dsi->vm;
>
> @@ -433,7 +476,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>         writel(vm->vactive, dsi->regs + DSI_VACT_NL);
>
>         if (dsi->driver_data->has_size_ctl)
> -               writel(vm->vactive << 16 | vm->hactive, dsi->regs + DSI_SIZE_CON);
> +               writel(vm->vactive << 16 | vm->hactive,
> +                      dsi->regs + DSI_SIZE_CON);
>
>         horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
>
> @@ -444,7 +488,34 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
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
> @@ -544,8 +615,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
>  {
>         struct device *dev = dsi->dev;
>         int ret;
> -       u64 pixel_clock, total_bits;
> -       u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
> +       u32 bit_per_pixel;
>
>         if (++dsi->refcount != 1)
>                 return 0;
> @@ -564,24 +634,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
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


With the earlier fix feel free to add to the next revision
Tested-by: Ryan Case <ryandcase@chromium.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
