Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E4E145C94
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Jan 2020 20:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XrPkbloCnFUJm0Y+UsuYwWLnhn8UmhsmnDlsbty3PI=; b=ZaPGrzKAJDQC3w
	yjIRYPtWDGmErprXyV06KJAh5NNpDKELcmbKH9OU05NMEzeZvswH2pdwuGBkvkhugj2lmW1da3YLi
	92yUL09MauBt1S7+oErrFXOGtcasiAM1dPiIVMBTcpIqsz43all+uANxyZP2HJWNZSkAS54HCTMBP
	PnCDq6eRvLF50X0g8hAxXfgDx7Br4FHtCZJ/SzHTLgMBSHyjASPb4ORw6JU1N32Wjo7IFcru3ipHL
	MIE5cDMpHiQ5vpR/yXgxhOIDR1kolXIA3NoH4E5r/wlHO6rBbytkN9LqR4G4rbWQIGhfQXJP0PHRC
	XE9tYL60fVF0t7LZh+xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuLri-00070T-Bl; Wed, 22 Jan 2020 19:40:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuLrf-000701-14
 for linux-mediatek@lists.infradead.org; Wed, 22 Jan 2020 19:40:36 +0000
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1572924673
 for <linux-mediatek@lists.infradead.org>; Wed, 22 Jan 2020 19:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579722034;
 bh=I3teCKf41lP38KMQNsBxxI2JMwPoZieKq5xCCRmpZbQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T/meyFNs0x2NyU4io1GwIRdQYju4lFfJ8kTVgxkNwazAVqQYaGA1dDJigw0c8oVwG
 43K1901Un1lQMDvrVYsg7VP2HI4ZwxrX1uE/7vNPRp24IdsE1ZeO5fTwrmqWWBjEmA
 NLu9gD9wF+GMa54UdLTW3yFX+F4/svJ68CZf3gSw=
Received: by mail-io1-f44.google.com with SMTP id i7so486264ioo.5
 for <linux-mediatek@lists.infradead.org>; Wed, 22 Jan 2020 11:40:34 -0800 (PST)
X-Gm-Message-State: APjAAAWrYKotjJCrLcbGOo7KLR+F+RzyCMNgW3/21bZYUG55icDJaD6L
 ZYr8Vg5Ikzx/q4ko0apW5EIdnHLTWvsEJjBBaJg=
X-Google-Smtp-Source: APXvYqxqe7QNclBhEk+9YkjlIpvsr1YD1RWaWjX9rBV7ifqkcke9QWlPnpq6UBmwlFzuEDWombaYJpCrfBZeTIBQo6A=
X-Received: by 2002:a6b:e711:: with SMTP id b17mr7897849ioh.307.1579722033348; 
 Wed, 22 Jan 2020 11:40:33 -0800 (PST)
MIME-Version: 1.0
References: <1579675994-7001-1-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1579675994-7001-1-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Wed, 22 Jan 2020 11:40:22 -0800
X-Gmail-Original-Message-ID: <CAGp9LzqT_mncGPD5wh0rtc62vd0ak+tm22TgX1eUGeesY33zDg@mail.gmail.com>
Message-ID: <CAGp9LzqT_mncGPD5wh0rtc62vd0ak+tm22TgX1eUGeesY33zDg@mail.gmail.com>
Subject: Re: [PATCH v8 1/6] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_114035_114118_797AA885 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 lkml <linux-kernel@vger.kernel.org>, kuohong.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 10:53 PM <light.hsieh@mediatek.com> wrote:
>
> From: Light Hsieh <light.hsieh@mediatek.com>
>
> 1. Check if gpio pin number is in valid range to prevent from get invalid
>    pointer 'desc' in the following code:
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
> 2. Improve  mtk_hw_pin_field_lookup()
> 2.1 Modify mtk_hw_pin_field_lookup() to use binary search for accelerating
>      search.
> 2.2 Correct message after the following check fail:
>     if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
>                 rc = &hw->soc->reg_cal[field];
>     The original message is:
>         "Not support field %d for pin %d (%s)\n"
>     However, the check is on soc chip level, not on pin level yet.
>     So the message is corrected as:
>         "Not support field %d for this soc\n"
>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>

Acked-by: Sean Wang <sean.wang@kernel.org>

> ---
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 27 ++++++++++++++++++------
>  drivers/pinctrl/mediatek/pinctrl-paris.c         | 25 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 20e1c89..d63e05e 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -68,32 +68,44 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
>  {
>         const struct mtk_pin_field_calc *c, *e;
>         const struct mtk_pin_reg_calc *rc;
> +       int start = 0, end, check;
> +       bool found = false;
>         u32 bits;
>
>         if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
>                 rc = &hw->soc->reg_cal[field];
>         } else {
>                 dev_dbg(hw->dev,
> -                       "Not support field %d for pin %d (%s)\n",
> -                       field, desc->number, desc->name);
> +                       "Not support field %d for this soc\n", field);
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
> +                       found = true;
> +                       break;
> +               } else if (start == end)
>                         break;
> -               c++;
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
> @@ -182,6 +194,9 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
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
> index 923264d..3e13ae7 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -81,6 +81,8 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>         int val, val2, err, reg, ret = 1;
>         const struct mtk_pin_desc *desc;
>
> +       if (pin >= hw->soc->npins)
> +               return -EINVAL;
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];
>
>         switch (param) {
> @@ -206,6 +208,10 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>         int err = 0;
>         u32 reg;
>
> +       if (pin >= hw->soc->npins) {
> +               err = -EINVAL;
> +               goto err;
> +       }
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];
>
>         switch ((u32)param) {
> @@ -693,6 +699,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
>         const struct mtk_pin_desc *desc;
>         int value, err;
>
> +       if (gpio > hw->soc->npins)
> +               return -EINVAL;
> +
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
>         err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &value);
> @@ -708,6 +717,9 @@ static int mtk_gpio_get(struct gpio_chip *chip, unsigned int gpio)
>         const struct mtk_pin_desc *desc;
>         int value, err;
>
> +       if (gpio > hw->soc->npins)
> +               return -EINVAL;
> +
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
>         err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DI, &value);
> @@ -722,6 +734,9 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
>         struct mtk_pinctrl *hw = gpiochip_get_data(chip);
>         const struct mtk_pin_desc *desc;
>
> +       if (gpio > hw->soc->npins)
> +               return;
> +
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
>         mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO, !!value);
> @@ -729,12 +744,22 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
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

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
