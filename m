Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C321115ABFC
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Feb 2020 16:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/8BUbC2sexbQE75n2VDSA47pkTyIy+rEpEO4uiccA8=; b=f6Jl3N7XBc4eLb
	AVCkfK2sYrzw8ZjojbwumjxEsNa7uZRCj6feXxedgp2VPuPywoRlFm344N8TYPGjkOwIcGz7EjsZH
	tyTQgzfXoNbIOwhHbME+0GW2YYsZIE2QKbfw0nCxxe6grl7NXyx1JNQG5Jj3ILUIzeujCG+bHYjW8
	hMTO0cUbfxExhyL+B3Uh0Qwh+Wd6BlyjrAcHewEUSBZdoviOfFYfAGyey0bA37plIZJy5JGaHNgK1
	nBb6QK5r1ZzKGyDmO8jCxUJ763Qn0cwGaz5d/9Oea5sD2IbtP8Fa0PYJQtawrmg6rQm9ieAPsr3Bh
	vI/tB/O2fFJ7sVeZrq5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1txx-0008V2-RP; Wed, 12 Feb 2020 15:30:17 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1txn-0007lE-IO
 for linux-mediatek@lists.infradead.org; Wed, 12 Feb 2020 15:30:09 +0000
Received: by mail-ua1-x943.google.com with SMTP id 59so988588uap.12
 for <linux-mediatek@lists.infradead.org>; Wed, 12 Feb 2020 07:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YdB4m3YVt1/fgLUY06qzQkSNebhsTU31mLLemG8LZmc=;
 b=I9DMVVFjBIe+z3v1QY+Sc58CdPkSiZPh7ko0p+3zm8ZuigBNkLq/4VEWRbVVmRD26d
 4QpsBOP8CSBylfyv9T9cE/7yc698GtUaseXwihqvSg92Zmwn36g5pEnGaH7x148lW3MW
 qOxUdB21C35LOWLWtojRGSzwSTlE4rwL9cTVHF2MfEMMUzSL/C9DrZTsmez5SZVt2jTH
 yZwCVtPhpy6YB6HZwUlWwQup94bl4rwKW3rGDWVO+omdx9APi9AKvY7b49TMOjfGrazx
 DkV/PkO841l46AB27n1JqHa5fQ6z+cR+sYeqcEEvIHLIpq2DUCgRdjydoulLz95mov3C
 qTfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YdB4m3YVt1/fgLUY06qzQkSNebhsTU31mLLemG8LZmc=;
 b=e0ujHH1MQh+YsgaP1Mvg1jmYj6aeiKnYR0lVnADPYabrHxfYgnXB1ZjGBmyiXf1PRT
 ri8iom/wTcryYZfoa9gjChFDPmQgNCAeOpBasdoT01UjXUaIk5d3rTO374EGduf7KA0y
 h8uDu78ON2lQ8IeZBybPEiipAuTc3WZrK9PU63kQsTS2Avnsd8JMKDyL7pybhIUH9xOW
 Jj7Vwj6Rogcn/pjwJdTQB6UNnGKUG6BdigABRlgxIPzDmC2RJo1wbM0HzuT0TXfwYHOr
 W0Z9p337tSWE3NMf6m/HsCyYiB4ZEdldn/7RAqTqul+PVkqyX3FWhGdVkWbvh88tIf5+
 mjyQ==
X-Gm-Message-State: APjAAAUpt5bx5e1wrXYj0oNuM/X2UCNfKR0604ZcCW/oxv0RqttrKPpQ
 IdI0DFElGK4yljYrD6E3Z+tTTVXZnEPbD5+wo51UUg==
X-Google-Smtp-Source: APXvYqziFyeB60oVPm+ZwS4K8wVf+b/AOYtF0dmdo9RMhOEDdweGI8FdVnSG2tXn5RFSmjr7TEc5nAfAwV2+nde15lA=
X-Received: by 2002:ab0:e16:: with SMTP id g22mr4862219uak.129.1581521404938; 
 Wed, 12 Feb 2020 07:30:04 -0800 (PST)
MIME-Version: 1.0
References: <1579591258-30940-1-git-send-email-yong.mao@mediatek.com>
 <1579591258-30940-2-git-send-email-yong.mao@mediatek.com>
In-Reply-To: <1579591258-30940-2-git-send-email-yong.mao@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Feb 2020 16:29:28 +0100
Message-ID: <CAPDyKFqh17yRi2wQcu-UxdskRHKwXWhirn8gjCH5qx3i2n=EbQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: mediatek: fix SDIO irq issue
To: Yong Mao <yong.mao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_073007_657276_1D217858 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 at 08:21, Yong Mao <yong.mao@mediatek.com> wrote:
>
> From: yong mao <yong.mao@mediatek.com>
>
> Host controller may lost interrupt in some specail case.

Please explain a bit more about the special cases. When and how often
does it happen?

> Add SDIO irq recheck mechanism to make sure all interrupts
> can be processed immediately.
>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> ---
>  drivers/mmc/host/mtk-sd.c | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 7726dcf..18a1b86 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -128,6 +128,7 @@
>  #define MSDC_PS_CDSTS           (0x1 << 1)     /* R  */
>  #define MSDC_PS_CDDEBOUNCE      (0xf << 12)    /* RW */
>  #define MSDC_PS_DAT             (0xff << 16)   /* R  */
> +#define MSDC_PS_DATA1           (0x1 << 17)    /* R  */
>  #define MSDC_PS_CMD             (0x1 << 24)    /* R  */
>  #define MSDC_PS_WP              (0x1 << 31)    /* R  */
>
> @@ -361,6 +362,7 @@ struct msdc_save_para {
>
>  struct mtk_mmc_compatible {
>         u8 clk_div_bits;
> +       bool recheck_sdio_irq;
>         bool hs400_tune; /* only used for MT8173 */
>         u32 pad_tune_reg;
>         bool async_fifo;
> @@ -436,6 +438,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8135_compat = {
>         .clk_div_bits = 8,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE,
>         .async_fifo = false,
> @@ -448,6 +451,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8173_compat = {
>         .clk_div_bits = 8,
> +       .recheck_sdio_irq = true,
>         .hs400_tune = true,
>         .pad_tune_reg = MSDC_PAD_TUNE,
>         .async_fifo = false,
> @@ -460,6 +464,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8183_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -472,6 +477,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt2701_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -484,6 +490,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt2712_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -496,6 +503,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt7622_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -508,6 +516,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8516_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -518,6 +527,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt7620_compat = {
>         .clk_div_bits = 8,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE,
>         .async_fifo = false,
> @@ -1007,6 +1017,30 @@ static int msdc_auto_cmd_done(struct msdc_host *host, int events,
>         return cmd->error;
>  }
>
> +/**
> + * msdc_recheck_sdio_irq - recheck whether the SDIO irq is lost
> + *
> + * Host controller may lost interrupt in some special case.
> + * Add SDIO irq recheck mechanism to make sure all interrupts
> + * can be processed immediately
> + *
> + */
> +static void msdc_recheck_sdio_irq(struct msdc_host *host)
> +{
> +       u32 reg_int, reg_inten, reg_ps;
> +
> +       if ((host->mmc->caps & MMC_CAP_SDIO_IRQ)) {
> +               reg_inten = readl(host->base + MSDC_INTEN);
> +               if (reg_inten & MSDC_INTEN_SDIOIRQ) {
> +                       reg_int = readl(host->base + MSDC_INT);
> +                       reg_ps = readl(host->base + MSDC_PS);
> +                       if (!((reg_int & MSDC_INT_SDIOIRQ) ||
> +                             (reg_ps & MSDC_PS_DATA1)))

This looks a bit unnecessary complicated and there are more
parentheses than needed.

I am also wondering about the logic. This looks like you want to
signal an SDIO IRQ when both MSDC_INT_SDIOIRQ and MSDC_PS_DATA1 are
cleared. Is that really correct?

Moreover, this means that you will be polling the registers for each
every request you complete. This sounds quite inefficient and I wonder
if it can be done more seldom, perhaps via a timer event instead. And,
what if there is no request for a while, then this means the re-check
doesn't gets to run. Could that be a problem?

> +                               sdio_signal_irq(host->mmc);

Before calling sdio_signal_irq(), the SDIO IRQ needs to be temporarily
disabled. In other words, looks like you should be calling
__msdc_enable_sdio_irq(0) from here as well.

> +               }
> +       }
> +}
> +
>  static void msdc_track_cmd_data(struct msdc_host *host,
>                                 struct mmc_command *cmd, struct mmc_data *data)
>  {
> @@ -1035,6 +1069,8 @@ static void msdc_request_done(struct msdc_host *host, struct mmc_request *mrq)
>         if (host->error)
>                 msdc_reset_hw(host);
>         mmc_request_done(host->mmc, mrq);
> +       if (host->dev_comp->recheck_sdio_irq)
> +               msdc_recheck_sdio_irq(host);
>  }
>
>  /* returns true if command is fully handled; returns false otherwise */
> @@ -1393,6 +1429,8 @@ static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
>         if (enb) {
>                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +               if (host->dev_comp->recheck_sdio_irq)
> +                       msdc_recheck_sdio_irq(host);
>         } else {
>                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> --
> 1.9.1

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
