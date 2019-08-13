Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3738C484
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 00:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dbx15/Myf/y+Z+q5ivAFO9yR5XRftHO4wFqQY1g86+I=; b=EgHEVem3fgGoK8
	l8rgVgLPDbb6IuCHjzawDnqWXNjkR1hbGW99yMpm2ef/qHYOTOUMOkxFNskMZanYR6FAHbPfLNHJY
	6zhafTwlPw1UwwFFrrA9Gul5HYVMJsTF4QhkS9ii1AzMQ84DuMYDemje5K4FU3lVin+lXroWgKQ7N
	vQ0yJdu21kRVPyU+2vqfuTbXejOlmQSdt9MgUdZz6JypeLzcNAtADChhYjuREBz+f56xk3ytzeEqj
	m2EIVami+4kp3nizNM1jP+UaCtFj1qRmTcm8yAXk2cHFKbzB4C1y7wTHLgZE5BmK7b3lxg5GVIhAo
	c+O1U3ob30r/9q5XpuDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfgh-000387-By; Tue, 13 Aug 2019 22:54:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfge-00037k-4t
 for linux-mediatek@lists.infradead.org; Tue, 13 Aug 2019 22:54:41 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D142F20840
 for <linux-mediatek@lists.infradead.org>; Tue, 13 Aug 2019 22:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565736879;
 bh=T7Z6w1xsGWAFfny9O4/iOR2E3uaR8Uz9otlJR/il04s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=toi9x0nUOLJf0v9iPqYkAOh9i512tGkURD7IlhzYTokb2y0w/JW8yc2d7QK+6Xzbh
 gt09MXUKOALFMQ85wAWfcMD0EuE6xLzy6AXuFPTnL3B1mkoWLs4gwPJIBpZFX3WDfq
 tGmUUkb/Nx5/+JMFUkBpncQjpDi66Im5xP/umAwk=
Received: by mail-wr1-f47.google.com with SMTP id z1so109270344wru.13
 for <linux-mediatek@lists.infradead.org>; Tue, 13 Aug 2019 15:54:38 -0700 (PDT)
X-Gm-Message-State: APjAAAVHLN2DOxkVBOo7TlnboSoVdDMSWGUVVXzUkYOKVUOleH+i475t
 7aoOuETupQd0wj1hzIZaOmMe0bQ5G5X+tk9Vu4c=
X-Google-Smtp-Source: APXvYqxJC2AxU5bz7n9E8cpm+XdQnNO3ckQI8JhBZibLzaTj5Q5LS505othzwIsDKUwZZe5QuheOaD8p6XNhVA5hW9o=
X-Received: by 2002:a5d:51c7:: with SMTP id n7mr21616412wrv.73.1565736877309; 
 Tue, 13 Aug 2019 15:54:37 -0700 (PDT)
MIME-Version: 1.0
References: <1565686400-5711-1-git-send-email-light.hsieh@mediatek.com>
 <1565686400-5711-2-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1565686400-5711-2-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Tue, 13 Aug 2019 15:54:26 -0700
X-Gmail-Original-Message-ID: <CAGp9Lzq7SnZBO4QEkycszZ29D7FVn_WUvi3uGX5s8Wzqn2a3CQ@mail.gmail.com>
Message-ID: <CAGp9Lzq7SnZBO4QEkycszZ29D7FVn_WUvi3uGX5s8Wzqn2a3CQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_155440_236701_13FF2B26 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 1:53 AM Light Hsieh <light.hsieh@mediatek.com> wrote:
>
> From: Light Hsieh <light.hsieh@mediatek.com>
>
> 1. Check if gpio pin number is in valid range to prevent from get invalid
>    pointer 'desc' in the following code:
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
> 2. Use binary search in mtk_hw_pin_field_lookup()
>    Modify mtk_hw_pin_field_lookup() to use binary search for accelerating
>    search.
>
> Change-Id: I22b4644ec216b90dd9dd5e223cc41d43761701b0

remove all of Change-Id in all the patches in the series

> ---
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 +++++++++++++++++++-----
>  drivers/pinctrl/mediatek/pinctrl-paris.c         | 19 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 20e1c89..4687f63 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -68,7 +68,7 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
>  {
>         const struct mtk_pin_field_calc *c, *e;
>         const struct mtk_pin_reg_calc *rc;
> -       u32 bits;
> +       u32 bits, start = 0, end, found = 0, check;

variable found should be bool type, and the declaration should be
listed in reverse Xmas tree order

>
>         if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
>                 rc = &hw->soc->reg_cal[field];
> @@ -79,21 +79,32 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
>                 return -ENOTSUPP;
>         }
>
> +       end = rc->nranges - 1;
>         c = rc->range;
>         e = c + rc->nranges;
>
> -       while (c < e) {
> -               if (desc->number >= c->s_pin && desc->number <= c->e_pin)
> +       while (start <= end) {
> +               check = (start + end) >> 1;
> +               if (desc->number >= rc->range[check].s_pin
> +                && desc->number <= rc->range[check].e_pin) {
> +                       found = 1;

found = true;

>                         break;
> -               c++;
> +               } else if (start == end)
> +                       break;
> +               else if (desc->number < rc->range[check].s_pin)
> +                       end = check - 1;
> +               else
> +                       start = check + 1;
>         }
>
> -       if (c >= e) {
> +       if (!found) {
>                 dev_dbg(hw->dev, "Not support field %d for pin = %d (%s)\n",
>                         field, desc->number, desc->name);
>                 return -ENOTSUPP;
>         }
>
> +       c = rc->range + check;
> +
>         if (c->i_base > hw->nbase - 1) {
>                 dev_err(hw->dev,
>                         "Invalid base for field %d for pin = %d (%s)\n",
> @@ -182,6 +193,9 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>         if (err)
>                 return err;
>
> +       if (value < 0 || value > pf.mask)
> +               return -EINVAL;
> +
>         if (!pf.next)
>                 mtk_rmw(hw, pf.index, pf.offset, pf.mask << pf.bitpos,
>                         (value & pf.mask) << pf.bitpos);
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 923264d..28b4951 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -693,6 +693,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
>         const struct mtk_pin_desc *desc;
>         int value, err;
>
> +       if (gpio > hw->soc->npins)
> +               return -EINVAL;
> +
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
>         err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &value);
> @@ -708,6 +711,9 @@ static int mtk_gpio_get(struct gpio_chip *chip, unsigned int gpio)
>         const struct mtk_pin_desc *desc;
>         int value, err;
>
> +       if (gpio > hw->soc->npins)
> +               return -EINVAL;
> +
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
>         err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DI, &value);
> @@ -722,6 +728,9 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
>         struct mtk_pinctrl *hw = gpiochip_get_data(chip);
>         const struct mtk_pin_desc *desc;
>
> +       if (gpio > hw->soc->npins)
> +               return;
> +
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
>         mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO, !!value);
> @@ -729,12 +738,22 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
>
>  static int mtk_gpio_direction_input(struct gpio_chip *chip, unsigned int gpio)
>  {
> +       struct mtk_pinctrl *hw = gpiochip_get_data(chip);
> +
> +       if (gpio > hw->soc->npins)
> +               return -EINVAL;
> +
>         return pinctrl_gpio_direction_input(chip->base + gpio);
>  }
>
>  static int mtk_gpio_direction_output(struct gpio_chip *chip, unsigned int gpio,
>                                      int value)
>  {
> +       struct mtk_pinctrl *hw = gpiochip_get_data(chip);
> +
> +       if (gpio > hw->soc->npins)
> +               return -EINVAL;
> +
>         mtk_gpio_set(chip, gpio, value);
>
>         return pinctrl_gpio_direction_output(chip->base + gpio);
> --
> 1.8.1.1.dirty
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
