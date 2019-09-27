Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710D9C0A9B
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 19:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36LclVeYpeZBx3LTyLi5WPFwkSoIvjlGLOehgdTGtqY=; b=rhEz59e5oT99O4
	iKYd8WsEiPas6pfNdFhfs88fWKO4BXqEa1fgeNHyYEDw1KhS6cByY2RNZQgVq/SZ5q4oiA/5uPFRx
	M7jn9vM9bd9+HR2hBA1FzyJgLZmrAqTTlsrHOg9xvoKCg0L/AReICKilU/HeR+yvrPSj8REALxqqN
	OVnI4EhYhyNBcOTsPWM3aNQolpbSqXz+oedCO/XbaXJ3dUxf3rGpaIto+ZAlnsQFVTDG1nniHWe6A
	hzMWCqrf0gwYY0QKKC0WQ/Dh6hmGnzm94DB2fs4BzgQXFuVXwL/6dIl1KqOkPnHvsV9UIkla4s9Nk
	HqasxrejbPdSWm2ZT6zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDuPA-00047V-TU; Fri, 27 Sep 2019 17:51:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDuP6-00046n-Sj
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 17:51:42 +0000
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 319E021841
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 17:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569606700;
 bh=3KPT+FotQbsvKh2EsdDevRBRDIPcm+cPwmf7DXmJU9c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OYz1qxX+uLyT3hdZVaLJ4rBKeni0ymD+ewFXa1zD6+QuizmJZVh5/y1ZtWThNTaoT
 aQMJaXckHpzDxIfIKpVzNOSObEwtwIZUrmmErwqNb+M40eWF0a0MoIYUUGM6MYLzbK
 OOP1cLrm7lFu7wlk9BuFzneJLzOCT0bmk/KQDe8U=
Received: by mail-wr1-f42.google.com with SMTP id l3so4168639wru.7
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 10:51:40 -0700 (PDT)
X-Gm-Message-State: APjAAAUUOK78aUtDTLlEgnhbvu1EvWYr+1O1bI1u+FQcKgdBV+Ar9/hM
 ek8JSrLCIsV1+t0RrsQ5zcT0F+K/7GCUDv/mrBQ=
X-Google-Smtp-Source: APXvYqzqFdBw9b0wTE4nl2InD0zI808HLj3LeTOZ+w78WOoyb3nN8tHl6cEInyahtt3RBB8Zv48rgblN570WFapj8aQ=
X-Received: by 2002:adf:dbc6:: with SMTP id e6mr3851738wrj.149.1569606698610; 
 Fri, 27 Sep 2019 10:51:38 -0700 (PDT)
MIME-Version: 1.0
References: <1569560532-1886-1-git-send-email-light.hsieh@mediatek.com>
 <1569560532-1886-3-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1569560532-1886-3-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Fri, 27 Sep 2019 10:51:27 -0700
X-Gmail-Original-Message-ID: <CAGp9LzqB+2DvbGccYchH+ugyEN5RQMvAwrG9cY7pHDPh=u8FOA@mail.gmail.com>
Message-ID: <CAGp9LzqB+2DvbGccYchH+ugyEN5RQMvAwrG9cY7pHDPh=u8FOA@mail.gmail.com>
Subject: Re: [PATCH v6 3/5] pinctrl: mediatek: Refine mtk_pinconf_get() and
 mtk_pinconf_set()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_105140_967595_7EAA8CEF 
X-CRM114-Status: GOOD (  26.31  )
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

Hi,

On Thu, Sep 26, 2019 at 10:02 PM Light Hsieh <light.hsieh@mediatek.com> wrote:
>
> 1.Refine mtk_pinconf_get():
> 1.1 Use only one occurrence of return at end of this function.
> 1.2 Correct cases for PIN_CONFIG_SLEW_RATE, PIN_CONFIG_INPUT_SCHMITT_ENABLE,

If you want to fix it a bug, you should submit a separate patch for
that and don't mix fixups and improvements in one.

>     and PIN_CONFIG_OUTPUT_ENABLE -
>     Use variable ret to receive value in mtk_hw_get_value() (instead of
>     variable val) since pinconf_to_config_packed() at end of this function
>     use variable ret to pack config value.

Is that a fixup or an improvement?

>
> 2.Refine mtk_pinconf_set():
> 2.1 Use only one occurrence of return at end of this function.
> 2.2 Modify case of PIN_CONFIG_INPUT_ENABLE -
>     Remove check of ies_present flag and always invoke mtk_hw_set_value()
>     since mtk_hw_pin_field_lookup() invoked inside mtk_hw_set_value() has
>     the same effect of checking if ies control is supported.
>     [The rationale is that: available of a control is always checked
>      in mtk_hw_pin_field_lookup() and no need to add ies_present flag
>      specially for ies control.]
> 2.3 Simply code logic for case of PIN_CONFIG_INPUT_SCHMITT.
> 2.4 Add case for PIN_CONFIG_INPUT_SCHMITT_ENABLE and process it with the
>     same code for case of PIN_CONFIG_INPUT_SCHMITT.

Remember that one patch only does one thing so that please split the
patch you proposed here to smaller patches in the appropriate group
which are pointed out by that is either a fixup and an improvement.

>

There are many missing tags

> ---
>  drivers/pinctrl/mediatek/pinctrl-mt6765.c |   1 -
>  drivers/pinctrl/mediatek/pinctrl-paris.c  | 211 +++++++++++-------------------
>  2 files changed, 79 insertions(+), 133 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> index e024ebc..bada37f 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> @@ -1070,7 +1070,6 @@
>         .ngrps = ARRAY_SIZE(mtk_pins_mt6765),
>         .eint_hw = &mt6765_eint_hw,
>         .gpio_m = 0,
> -       .ies_present = true,
>         .base_names = mt6765_pinctrl_register_base_names,
>         .nbase_names = ARRAY_SIZE(mt6765_pinctrl_register_base_names),
>         .bias_disable_set = mtk_pinconf_bias_disable_set,
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 5217f76..54f069b 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -78,95 +78,79 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>  {
>         struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
>         u32 param = pinconf_to_config_param(*config);
> -       int val, val2, err, reg, ret = 1;
> +       int err, reg, ret = 1;
>         const struct mtk_pin_desc *desc;
>
> -       if (pin >= hw->soc->npins)
> -               return -EINVAL;
> +       if (pin >= hw->soc->npins) {
> +               err = -EINVAL;
> +               goto out;
> +       }
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];
>
>         switch (param) {
>         case PIN_CONFIG_BIAS_DISABLE:
> -               if (hw->soc->bias_disable_get) {
> +               if (hw->soc->bias_disable_get)
>                         err = hw->soc->bias_disable_get(hw, desc, &ret);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_BIAS_PULL_UP:
> -               if (hw->soc->bias_get) {
> +               if (hw->soc->bias_get)
>                         err = hw->soc->bias_get(hw, desc, 1, &ret);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_BIAS_PULL_DOWN:
> -               if (hw->soc->bias_get) {
> +               if (hw->soc->bias_get)
>                         err = hw->soc->bias_get(hw, desc, 0, &ret);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_SLEW_RATE:
> -               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &val);
> -               if (err)
> -                       return err;
> -
> -               if (!val)
> -                       return -EINVAL;
> -
> +               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &ret);
>                 break;
>         case PIN_CONFIG_INPUT_ENABLE:
>         case PIN_CONFIG_OUTPUT_ENABLE:
> -               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
> +               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &ret);
>                 if (err)
> -                       return err;
> -
> -               /* HW takes input mode as zero; output mode as non-zero */
> -               if ((val && param == PIN_CONFIG_INPUT_ENABLE) ||
> -                   (!val && param == PIN_CONFIG_OUTPUT_ENABLE))
> -                       return -EINVAL;
> +                       goto out;
> +               /*     CONFIG     Current direction return value
> +                * -------------  ----------------- ----------------------
> +                * OUTPUT_ENABLE       output       1 (= HW value)
> +                *                     input        0 (= HW value)
> +                * INPUT_ENABLE        output       0 (= reverse HW value)
> +                *                     input        1 (= reverse HW value)
> +                */
> +               if (param == PIN_CONFIG_INPUT_ENABLE)
> +                       ret = !ret;
>
>                 break;
>         case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
> -               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
> -               if (err)
> -                       return err;
> -
> -               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SMT, &val2);
> +               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &ret);
>                 if (err)
> -                       return err;
> +                       goto out;
> +               /* return error when in output mode
> +                * because schmitt trigger only work in input mode
> +                */
> +               if (ret) {
> +                       err = -EINVAL;
> +                       goto out;
> +               }
>
> -               if (val || !val2)
> -                       return -EINVAL;
> +               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SMT, &ret);
>
>                 break;
>         case PIN_CONFIG_DRIVE_STRENGTH:
> -               if (hw->soc->drive_get) {
> +               if (hw->soc->drive_get)
>                         err = hw->soc->drive_get(hw, desc, &ret);
> -                       if (err)
> -                               return err;
> -               } else {
> +               else
>                         err = -ENOTSUPP;
> -               }
>                 break;
>         case MTK_PIN_CONFIG_TDSEL:
>         case MTK_PIN_CONFIG_RDSEL:
>                 reg = (param == MTK_PIN_CONFIG_TDSEL) ?
>                        PINCTRL_PIN_REG_TDSEL : PINCTRL_PIN_REG_RDSEL;
> -
> -               err = mtk_hw_get_value(hw, desc, reg, &val);
> -               if (err)
> -                       return err;
> -
> -               ret = val;
> -
> +               err = mtk_hw_get_value(hw, desc, reg, &ret);
>                 break;
>         case MTK_PIN_CONFIG_PU_ADV:
>         case MTK_PIN_CONFIG_PD_ADV:
> @@ -175,28 +159,24 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>
>                         pullup = param == MTK_PIN_CONFIG_PU_ADV;
>                         err = hw->soc->adv_pull_get(hw, desc, pullup, &ret);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               } else
> +                       err = -ENOTSUPP;
>                 break;
>         case MTK_PIN_CONFIG_DRV_ADV:
> -               if (hw->soc->adv_drive_get) {
> +               if (hw->soc->adv_drive_get)
>                         err = hw->soc->adv_drive_get(hw, desc, &ret);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         default:
> -               return -ENOTSUPP;
> +               err = -ENOTSUPP;
>         }
>
> -       *config = pinconf_to_config_packed(param, ret);
> +out:
> +       if (!err)
> +               *config = pinconf_to_config_packed(param, ret);
>
> -       return 0;
> +       return err;
>  }
>
>  static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
> @@ -216,60 +196,45 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>
>         switch ((u32)param) {
>         case PIN_CONFIG_BIAS_DISABLE:
> -               if (hw->soc->bias_disable_set) {
> +               if (hw->soc->bias_disable_set)
>                         err = hw->soc->bias_disable_set(hw, desc);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_BIAS_PULL_UP:
> -               if (hw->soc->bias_set) {
> +               if (hw->soc->bias_set)
>                         err = hw->soc->bias_set(hw, desc, 1);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_BIAS_PULL_DOWN:
> -               if (hw->soc->bias_set) {
> +               if (hw->soc->bias_set)
>                         err = hw->soc->bias_set(hw, desc, 0);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_OUTPUT_ENABLE:
>                 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT,
>                                        MTK_DISABLE);
> -               if (err)
> +               /* keep set direction to if SMT is not supported on this pin */
> +               if (err != -ENOTSUPP)
>                         goto err;
>
>                 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
>                                        MTK_OUTPUT);
> -               if (err)
> -                       goto err;
>                 break;
>         case PIN_CONFIG_INPUT_ENABLE:
> -               if (hw->soc->ies_present) {
> -                       mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_IES,
> -                                        MTK_ENABLE);
> -               }
> +               /* regard all non-zero value as enable */
> +               err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_IES, !!arg);
> +               if (err)
> +                       goto err;
>
>                 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
>                                        MTK_INPUT);
> -               if (err)
> -                       goto err;
>                 break;
>         case PIN_CONFIG_SLEW_RATE:
> -               err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SR,
> -                                      arg);
> -               if (err)
> -                       goto err;
> -
> +               /* regard all non-zero value as enable */
> +               err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SR, !!arg);
>                 break;
>         case PIN_CONFIG_OUTPUT:
>                 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
> @@ -279,41 +244,29 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>
>                 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO,
>                                        arg);
> -               if (err)
> -                       goto err;
>                 break;
> +       case PIN_CONFIG_INPUT_SCHMITT:
>         case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
> -               /* arg = 1: Input mode & SMT enable ;
> +               /* arg = 1: Input mode & SMT enable
>                  * arg = 0: Output mode & SMT disable
>                  */
> -               arg = arg ? 2 : 1;
> -               err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
> -                                      arg & 1);
> +               err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR, !arg);
>                 if (err)
>                         goto err;
>
> -               err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT,
> -                                      !!(arg & 2));
> -               if (err)
> -                       goto err;
> +               err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT, !!arg);
>                 break;
>         case PIN_CONFIG_DRIVE_STRENGTH:
> -               if (hw->soc->drive_set) {
> +               if (hw->soc->drive_set)
>                         err = hw->soc->drive_set(hw, desc, arg);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         case MTK_PIN_CONFIG_TDSEL:
>         case MTK_PIN_CONFIG_RDSEL:
>                 reg = (param == MTK_PIN_CONFIG_TDSEL) ?
>                        PINCTRL_PIN_REG_TDSEL : PINCTRL_PIN_REG_RDSEL;
> -
>                 err = mtk_hw_set_value(hw, desc, reg, arg);
> -               if (err)
> -                       goto err;
>                 break;
>         case MTK_PIN_CONFIG_PU_ADV:
>         case MTK_PIN_CONFIG_PD_ADV:
> @@ -323,20 +276,14 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>                         pullup = param == MTK_PIN_CONFIG_PU_ADV;
>                         err = hw->soc->adv_pull_set(hw, desc, pullup,
>                                                     arg);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               } else
> +                       err = -ENOTSUPP;
>                 break;
>         case MTK_PIN_CONFIG_DRV_ADV:
> -               if (hw->soc->adv_drive_set) {
> +               if (hw->soc->adv_drive_set)
>                         err = hw->soc->adv_drive_set(hw, desc, arg);
> -                       if (err)
> -                               return err;
> -               } else {
> -                       return -ENOTSUPP;
> -               }
> +               else
> +                       err = -ENOTSUPP;
>                 break;
>         default:
>                 err = -ENOTSUPP;
> @@ -952,6 +899,7 @@ int mtk_paris_pinctrl_probe(struct platform_device *pdev,
>         return 0;
>  }
>
> +

Remove unnecessary the change.

>  static int mtk_paris_pinctrl_suspend(struct device *device)
>  {
>         struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> @@ -970,4 +918,3 @@ static int mtk_paris_pinctrl_resume(struct device *device)
>         .suspend_noirq = mtk_paris_pinctrl_suspend,
>         .resume_noirq = mtk_paris_pinctrl_resume,
>  };
> -

Remove unnecessary the change.

> --
> 1.8.1.1.dirty
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
