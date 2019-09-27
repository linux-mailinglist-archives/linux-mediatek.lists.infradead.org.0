Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30519C0A41
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 19:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYiCvhvzGyfR5xUVRXRqGaY0jDc5Sl0rBNoNA+36me0=; b=S8cezfsESRIZWn
	e2wng1ed3OG8vQcG+6gKViBVD+73Do0vM1K9fQRoldNrgomIjiHg0jWL22P7jvyhZHJyvrxvuY9Mq
	FmgA7F3/ShW7bVB05GqUdHofNndFTKBadcmt5iWF5QuCClwUMxPP7oT6U8vMmu94aHhecg+t4HSzA
	heFQGf9+mS3B9q2JvE8EFEB1M4l/ZqHtd3+VWLfy64jDNXbEPdwnVEPWm+h7a7YeFsuUGtLasgIDk
	zAo59ZjbZS1X+TyAtu/CvdBTuRgReH73gSADPlo6K/S5zz8KhEYWfzxlS/xizUOv5UuNVAQ2zvKU6
	Hjs3oPb8yHUqCTnWx/9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtyQ-0002XA-WE; Fri, 27 Sep 2019 17:24:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtyM-0002WI-Rq
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 17:24:04 +0000
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF4A0207FF
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 17:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569605042;
 bh=kOcQwmEQ9xS6JuM5wKRAkbCGLPjVlioHTZly03evIbg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=o1KeKyCXLKiIhi0W2HyrKT1udcB/EdNBMRlwllnZkH81mUwfaeyfjwkX36xShNdMK
 Is18t8wzgXAd4BvCV9Z6C5GS/GBcTEWIST6xtnV7a3Zr3mIiT3L+Ju50F6shFfy6nA
 uoDrNty0VLkml7piiE8UJU5F5FAZ4dj9PcrFDZeQ=
Received: by mail-wr1-f44.google.com with SMTP id o18so4059695wrv.13
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 10:24:01 -0700 (PDT)
X-Gm-Message-State: APjAAAXqLTG/kVbm8b8FWR0zH7LJV7vckx78NYqp8LmiqSbP1UY8od4d
 STQ3I1Q7MbQHFYYlrbRVCeRGHefcGgsuqsv0D6o=
X-Google-Smtp-Source: APXvYqxJRayonoJQXNATMxOzHirLDSfZSpRMI5fITwPjwiSqWk6EGlnMwwczc/mtgEUuDsHx060dSOWyoROYyy2DS24=
X-Received: by 2002:adf:9083:: with SMTP id i3mr3791325wri.310.1569605040209; 
 Fri, 27 Sep 2019 10:24:00 -0700 (PDT)
MIME-Version: 1.0
References: <1569560532-1886-1-git-send-email-light.hsieh@mediatek.com>
 <1569561287.2428.6.camel@mtkswgap22>
In-Reply-To: <1569561287.2428.6.camel@mtkswgap22>
From: Sean Wang <sean.wang@kernel.org>
Date: Fri, 27 Sep 2019 10:23:48 -0700
X-Gmail-Original-Message-ID: <CAGp9LzpnUK-wq_fStsYnYaqZn8mKMJ+9zJmURpWwEDQHA--EFg@mail.gmail.com>
Message-ID: <CAGp9LzpnUK-wq_fStsYnYaqZn8mKMJ+9zJmURpWwEDQHA--EFg@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_102402_942386_C05A4719 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Sep 26, 2019 at 10:14 PM Light Hsieh <light.hsieh@mediatek.com> wrote:
>
> Dear reviewers:
>
> Patch v6 improves v5 by:
>
> 1.in mtk_pinconf_get() and mtk_pinconf_set() @pinctrl-paris.c:
>   * check if pin is in range before using pin as array index of
>      hw->soc->pins[]
> 2.in mtk_pin_field_lookup() @pinctrl-mtk-common-v2.c:
>   * declear start, end, check as signed integer instead of unsigned
>     integer. Otherwise, kernel fault will occur when s_pin field of
>     first entry of a mtk_pin_field_calc[] array is not 0.
>

And for review these patches easily, you should put the changes
history to the cover letter.

> On Fri, 2019-09-27 at 13:02 +0800, Light Hsieh wrote:
> > 1. Check if gpio pin number is in valid range to prevent from get invalid
> >    pointer 'desc' in the following code:
> >       desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
> >
> > 2. Use binary search in mtk_hw_pin_field_lookup()
> >    Modify mtk_hw_pin_field_lookup() to use binary search for accelerating
> >    search.
> >

You almost forgot to add the tags from you and the reviewers' feedback.

> > ---
> >  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 25 +++++++++++++++++++-----
> >  drivers/pinctrl/mediatek/pinctrl-paris.c         | 25 ++++++++++++++++++++++++
> >  2 files changed, 45 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > index 20e1c89..8077855 100644
> > --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> > @@ -68,7 +68,8 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
> >  {
> >       const struct mtk_pin_field_calc *c, *e;
> >       const struct mtk_pin_reg_calc *rc;
> > -     u32 bits;
> > +     u32 bits, found = 0;

the type of found seems to be a bool

> > +     int start = 0, end, check;
> >
> >       if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
> >               rc = &hw->soc->reg_cal[field];
> > @@ -79,21 +80,32 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
> >               return -ENOTSUPP;
> >       }
> >
> > +     end = rc->nranges - 1;
> >       c = rc->range;
> >       e = c + rc->nranges;
> >
> > -     while (c < e) {
> > -             if (desc->number >= c->s_pin && desc->number <= c->e_pin)
> > +     while (start <= end) {
> > +             check = (start + end) >> 1;
> > +             if (desc->number >= rc->range[check].s_pin
> > +              && desc->number <= rc->range[check].e_pin) {
> > +                     found = 1;
> >                       break;
> > -             c++;
> > +             } else if (start == end)
> > +                     break;
> > +             else if (desc->number < rc->range[check].s_pin)
> > +                     end = check - 1;
> > +             else
> > +                     start = check + 1;
> >       }
> >

yuh, it is good to do do a binary search here

> > -     if (c >= e) {
> > +     if (!found) {
> >               dev_dbg(hw->dev, "Not support field %d for pin = %d (%s)\n",
> >                       field, desc->number, desc->name);
> >               return -ENOTSUPP;
> >       }
> >
> > +     c = rc->range + check;
> > +
> >       if (c->i_base > hw->nbase - 1) {
> >               dev_err(hw->dev,
> >                       "Invalid base for field %d for pin = %d (%s)\n",
> > @@ -182,6 +194,9 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
> >       if (err)
> >               return err;
> >
> > +     if (value < 0 || value > pf.mask)
> > +             return -EINVAL;
> > +
> >       if (!pf.next)
> >               mtk_rmw(hw, pf.index, pf.offset, pf.mask << pf.bitpos,
> >                       (value & pf.mask) << pf.bitpos);
> > diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> > index 923264d..3e13ae7 100644
> > --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> > +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> > @@ -81,6 +81,8 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
> >       int val, val2, err, reg, ret = 1;
> >       const struct mtk_pin_desc *desc;
> >
> > +     if (pin >= hw->soc->npins)
> > +             return -EINVAL;
> >       desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];
> >
> >       switch (param) {
> > @@ -206,6 +208,10 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
> >       int err = 0;
> >       u32 reg;
> >
> > +     if (pin >= hw->soc->npins) {
> > +             err = -EINVAL;
> > +             goto err;
> > +     }
> >       desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];
> >
> >       switch ((u32)param) {
> > @@ -693,6 +699,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
> >       const struct mtk_pin_desc *desc;
> >       int value, err;
> >
> > +     if (gpio > hw->soc->npins)
> > +             return -EINVAL;
> > +
> >       desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
> >
> >       err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &value);
> > @@ -708,6 +717,9 @@ static int mtk_gpio_get(struct gpio_chip *chip, unsigned int gpio)
> >       const struct mtk_pin_desc *desc;
> >       int value, err;
> >
> > +     if (gpio > hw->soc->npins)
> > +             return -EINVAL;
> > +
> >       desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
> >
> >       err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DI, &value);
> > @@ -722,6 +734,9 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
> >       struct mtk_pinctrl *hw = gpiochip_get_data(chip);
> >       const struct mtk_pin_desc *desc;
> >
> > +     if (gpio > hw->soc->npins)
> > +             return;
> > +
> >       desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
> >
> >       mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO, !!value);
> > @@ -729,12 +744,22 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
> >
> >  static int mtk_gpio_direction_input(struct gpio_chip *chip, unsigned int gpio)
> >  {
> > +     struct mtk_pinctrl *hw = gpiochip_get_data(chip);
> > +
> > +     if (gpio > hw->soc->npins)
> > +             return -EINVAL;
> > +
> >       return pinctrl_gpio_direction_input(chip->base + gpio);
> >  }
> >
> >  static int mtk_gpio_direction_output(struct gpio_chip *chip, unsigned int gpio,
> >                                    int value)
> >  {
> > +     struct mtk_pinctrl *hw = gpiochip_get_data(chip);
> > +
> > +     if (gpio > hw->soc->npins)
> > +             return -EINVAL;
> > +
> >       mtk_gpio_set(chip, gpio, value);
> >
> >       return pinctrl_gpio_direction_output(chip->base + gpio);
>
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
