Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061D3C0D77
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 23:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ybNmThSgpyULWn6bP7C8RJKnsdTkPHnotH+lbd4ny4=; b=Yf6HCJT7zDjWnl
	8NZjKs04lvH8Tv+NIRnPjGlLVC6zDMyz1K4z1jJo2owEm2lHmTQLmg6FnAm58YU0rEtugEa5wbN2b
	JJHIaXkXR/ipK99IkQqaVyB11hzNhEiBP/z6kqZBX6f752ULAIYww9wVoMQmAaH3asa+fgCFtAZ4V
	o8pqiw15sEfYUCfOmloQK8e527pSjitOGdEJ7s3u90VKSYmc+hLkVDEAg0j24iKGdVPgbQ+N4l+iC
	L4rYgPy5Y0Giwuv6rL1Yh4w3njbFQIaZVWIoXYx8MdB88JyJh0YaDBBzzDFu08XwPZO9X1zFQA9Zn
	IMztCrDsPHIWMtKgG3Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDy2I-0005VX-Jm; Fri, 27 Sep 2019 21:44:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDy2F-0005Us-9W
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 21:44:21 +0000
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 125A22146E
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 21:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569620658;
 bh=Aw7iu127rxS5WT+GCEE362QtZANlRjXx9kTLfkZW5SQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qGvjVY69nA4zPeErPoQIw6ETjSjenGXNPZzoqeFfY39Q5qR2LVr3RSb+OtbECbasG
 w2qReh/2skDMAbPJYwU8YaZwFW17kmGH7Yvh04FeWsmT4lvPYswEUbptHIYXlrQ+kb
 d6YnVIXPJXk38viEUnCfLgELYfEpXo/ZObpQ5PQI=
Received: by mail-wm1-f44.google.com with SMTP id r17so9520870wme.0
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 14:44:17 -0700 (PDT)
X-Gm-Message-State: APjAAAUkXWm3wiX9isvttuhHnzw5MO/YGarpSbyzgLBD9UMXv5P1JU9r
 dEv4UJDgNe5vb9QtTe3NAs3PYOR7qzxnzfLIEGM=
X-Google-Smtp-Source: APXvYqxyg8W7NS0IVv7tTC0oMRxEYCakYKY43UEMg2L52SXhZyHe4wDXDNJzbSNrWJ8tew7954xARHaN8VqE0DtEEpg=
X-Received: by 2002:a7b:cb8b:: with SMTP id m11mr8921857wmi.145.1569620656522; 
 Fri, 27 Sep 2019 14:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <1569560532-1886-1-git-send-email-light.hsieh@mediatek.com>
 <1569560532-1886-4-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1569560532-1886-4-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Fri, 27 Sep 2019 14:44:04 -0700
X-Gmail-Original-Message-ID: <CAGp9Lzoa8nWtLYY0S4quyYS2ZdouTz39T5v6H-qoSuF5SQiTzA@mail.gmail.com>
Message-ID: <CAGp9Lzoa8nWtLYY0S4quyYS2ZdouTz39T5v6H-qoSuF5SQiTzA@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] pinctrl: mediatek: Backward compatible to previous
 Mediatek's bias-pull usage
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_144419_371904_7D236F09 
X-CRM114-Status: GOOD (  24.77  )
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
> Refine mtk_pinconf_set()/mtk_pinconf_get() for backward compatibility to
> previous Mediatek's bias-pull usage.

MediaTek

> In PINCTRL_MTK that use pinctrl-mtk-common.c, bias-pull setting for pins
> with 2 pull resistors can be specified as value for bias-pull-up and
> bias-pull-down. For example:
>     bias-pull-up = <MTK_PUPD_SET_R1R0_00>;
>     bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
>     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
>     bias-pull-up = <MTK_PUPD_SET_R1R0_11>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_00>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_11>;
>
> On the other hand, PINCTRL_MTK_PARIS use customized properties
> "mediatek,pull-up-adv" and "mediatek,pull-down-adv" to specify bias-pull
> setting for pins with 2 pull resistors.
> This introduce in-compatibility in device tree and increatse porting

s/increatse/inscrease/

> effort to Mediatek's customer that had already used PINCTRL_MTK version.

s/Mediatek/MediaTek/

> Besides, if customers are not awared of this change and still write devicetree

s/awared/aware/

> for PINCTRL_MTK version, they may encounter runtime failure with pinctrl and
> spent time to debug.
>
> This patch add backward compatible to previous Mediatek's bias-pull usage

s/add/adds

> so that Mediatek's customer need not use a new devicetree property name.

s/Mediatek/MediaTek/

> The rationale is that: changing driver implemenation had better leave

s/implemenation/implementation/

> interface unchanged.
>

There are many tags missing here too.

> ---
>  drivers/pinctrl/mediatek/pinctrl-mt6765.c        |   6 +-
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 285 +++++++++++++++++++++++
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h |  11 +
>  drivers/pinctrl/mediatek/pinctrl-paris.c         |  49 ++--
>  4 files changed, 327 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> index bada37f..ae85fdc 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> @@ -1072,10 +1072,8 @@
>         .gpio_m = 0,
>         .base_names = mt6765_pinctrl_register_base_names,
>         .nbase_names = ARRAY_SIZE(mt6765_pinctrl_register_base_names),
> -       .bias_disable_set = mtk_pinconf_bias_disable_set,
> -       .bias_disable_get = mtk_pinconf_bias_disable_get,
> -       .bias_set = mtk_pinconf_bias_set,
> -       .bias_get = mtk_pinconf_bias_get,
> +       .bias_set_combo = mtk_pinconf_bias_set_combo,
> +       .bias_get_combo = mtk_pinconf_bias_get_combo,
>         .drive_set = mtk_pinconf_drive_set_direct_val,
>         .drive_get = mtk_pinconf_drive_get_direct_val,
>         .adv_pull_get = mtk_pinconf_adv_pull_get,
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index acfddf9..6d9972f 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -13,6 +13,8 @@
>  #include <linux/io.h>
>  #include <linux/of_irq.h>
>
> +#include <dt-bindings/pinctrl/mt65xx.h>
> +

List the header declarations in alphabetic order.

>  #include "mtk-eint.h"
>  #include "pinctrl-mtk-common-v2.h"
>
> @@ -206,6 +208,20 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>         return 0;
>  }
>
> +void mtk_hw_set_value_no_lookup(struct mtk_pinctrl *hw,
> +                               const struct mtk_pin_desc *desc,
> +                               int value, struct mtk_pin_field *pf)
> +{
> +       if (value < 0 || value > pf->mask)
> +               return;
> +
> +       if (!pf->next)
> +               mtk_rmw(hw, pf->index, pf->offset, pf->mask << pf->bitpos,
> +                       (value & pf->mask) << pf->bitpos);
> +       else
> +               mtk_hw_write_cross_field(hw, pf, value);
> +}
> +
>  int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>                      int field, int *value)
>  {
> @@ -225,6 +241,17 @@ int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>         return 0;
>  }
>
> +void mtk_hw_get_value_no_lookup(struct mtk_pinctrl *hw,
> +                               const struct mtk_pin_desc *desc,
> +                               int *value, struct mtk_pin_field *pf)
> +{
> +       if (!pf->next)
> +               *value = (mtk_r32(hw, pf->index, pf->offset)
> +                         >> pf->bitpos) & pf->mask;
> +       else
> +               mtk_hw_read_cross_field(hw, pf, value);
> +}
> +

We are able to improve mtk_hw_[set,get]_value with a cache for the
recently visited pin_desc to speed up the subsequent access to the
same register for all clients, rather than creating a specific one
with no_lookup just for a few clients. Generally, all clients should
be able to just apply the  mtk_hw_[set,get]_value to compose what they
actually need.

And the changes related to the improvement on mtk_hw_[set,get]_value
with a cache is needed to put to a separate patch prior to the current
one.

>  static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
>  {
>         const struct mtk_pin_desc *desc;
> @@ -517,6 +544,264 @@ int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
>         return 0;
>  }
>
> +/* Combo for the following pull register type:
> + * 1. PU + PD
> + * 2. PULLSEL + PULLEN
> + * 3. PUPD + R0 + R1
> + */
> +int mtk_pinconf_bias_set_pu_pd(struct mtk_pinctrl *hw,

static int

> +                               const struct mtk_pin_desc *desc,
> +                               u32 pullup, u32 arg)
> +{
> +       struct mtk_pin_field pf;
> +       int err = -EINVAL;
> +       int pu, pd;

err doesn't need an initialization value, just keeping err in the same
line with pu, pd is fine

> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PU, &pf);
> +       if (err)
> +               goto out;
> +
> +       if (arg == MTK_DISABLE) {
> +               pu = 0;
> +               pd = 0;
> +       } else if ((arg == MTK_ENABLE) && pullup) {
> +               pu = 1;
> +               pd = 0;
> +       } else if ((arg == MTK_ENABLE) && !pullup) {
> +               pu = 0;
> +               pd = 1;
> +       } else {
> +               goto out;
> +       }
> +
> +       mtk_hw_set_value_no_lookup(hw, desc, pu, &pf);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PD, &pf);
> +       if (err)
> +               goto out;
> +
> +       mtk_hw_set_value_no_lookup(hw, desc, pd, &pf);
> +
> +out:
> +       return err;
> +}
> +
> +int mtk_pinconf_bias_set_pullsel_pullen(struct mtk_pinctrl *hw,

static int

> +                               const struct mtk_pin_desc *desc,
> +                               u32 pullup, u32 arg)
> +{
> +       struct mtk_pin_field pf;
> +       int err = -EINVAL, enable;

err doesn't need an initialization value

> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PULLEN, &pf);
> +       if (err)
> +               goto out;
> +
> +       if (arg == MTK_DISABLE)
> +               enable = 0;
> +       else if (arg == MTK_ENABLE)
> +               enable = 1;
> +       else
> +               goto out;
> +
> +       mtk_hw_set_value_no_lookup(hw, desc, enable, &pf);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PULLSEL, &pf);
> +       if (err)
> +               goto out;
> +       mtk_hw_set_value_no_lookup(hw, desc, pullup, &pf);
> +
> +out:
> +       return err;
> +}
> +
> +int mtk_pinconf_bias_set_pupd_r1_r0(struct mtk_pinctrl *hw,

static int

> +                               const struct mtk_pin_desc *desc,
> +                               u32 pullup, u32 arg)
> +{
> +       struct mtk_pin_field pf;
> +       int err = -EINVAL;
> +       int r0, r1;

err doesn't need an initialization value, just keeping err in the same
line with r0 and r1 is fine

> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PUPD, &pf);
> +       if (err)
> +               goto out;
> +
> +       if ((arg == MTK_DISABLE) || (arg == MTK_PUPD_SET_R1R0_00)) {
> +               pullup = 0;
> +               r0 = 0;
> +               r1 = 0;
> +       } else if (arg == MTK_PUPD_SET_R1R0_01) {
> +               r0 = 1;
> +               r1 = 0;
> +       } else if (arg == MTK_PUPD_SET_R1R0_10) {
> +               r0 = 0;
> +               r1 = 1;
> +       } else if (arg == MTK_PUPD_SET_R1R0_11) {
> +               r0 = 1;
> +               r1 = 1;
> +       } else
> +               goto out;
> +
> +       /* MTK HW PUPD bit: 1 for pull-down, 0 for pull-up */
> +       mtk_hw_set_value_no_lookup(hw, desc, !pullup, &pf);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_R0, &pf);
> +       if (err)
> +               goto out;
> +       mtk_hw_set_value_no_lookup(hw, desc, r0, &pf);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_R1, &pf);
> +       if (err)
> +               goto out;
> +       mtk_hw_set_value_no_lookup(hw, desc, r1, &pf);
> +
> +out:
> +       return err;
> +}
> +
> +int mtk_pinconf_bias_get_pu_pd(struct mtk_pinctrl *hw,
> +                               const struct mtk_pin_desc *desc,
> +                               u32 *pullup, u32 *enable)

static int

> +{
> +       struct mtk_pin_field pf;
> +       int err = -EINVAL;
> +       int pu, pd;

err doesn't need an initialization value, just keeping err in the same
line with pu, pd is fine

> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PU, &pf);
> +       if (err)
> +               goto out;
> +
> +       mtk_hw_get_value_no_lookup(hw, desc, &pu, &pf);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PD, &pf);
> +       if (err)
> +               goto out;
> +
> +       mtk_hw_get_value_no_lookup(hw, desc, &pd, &pf);
> +
> +       if (pu == 0 && pd == 0) {
> +               *pullup = 0;
> +               *enable = MTK_DISABLE;
> +       } else if (pu == 1 && pd == 0) {
> +               *pullup = 1;
> +               *enable = MTK_ENABLE;
> +       } else if (pu == 0 && pd == 1) {
> +               *pullup = 0;
> +               *enable = MTK_ENABLE;
> +       } else {
> +               err = -EINVAL;
> +               goto out;
> +       }
> +
> +out:
> +       return err;
> +}
> +
> +int mtk_pinconf_bias_get_pullsel_pullen(struct mtk_pinctrl *hw,
> +                               const struct mtk_pin_desc *desc,
> +                               u32 *pullup, u32 *enable)

static int

> +{
> +       struct mtk_pin_field pf;
> +       int err = -EINVAL;
> +

err doesn't need an initialization value

> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PULLSEL, &pf);
> +       if (err)
> +               goto out;
> +
> +       mtk_hw_get_value_no_lookup(hw, desc, pullup, &pf);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PULLEN, &pf);
> +       if (err)
> +               goto out;
> +
> +       mtk_hw_get_value_no_lookup(hw, desc, enable, &pf);
> +
> +out:
> +       return err;
> +}
> +
> +int mtk_pinconf_bias_get_pupd_r1_r0(struct mtk_pinctrl *hw,
> +                               const struct mtk_pin_desc *desc,
> +                               u32 *pullup, u32 *enable)

static int

> +{
> +       struct mtk_pin_field pf;
> +       int err = -EINVAL;
> +       int r0, r1;
> +

err doesn't need an initialization value, just keeping err in the same
line with r0, r1 is fine

> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_PUPD, &pf);
> +       if (err)
> +               goto out;
> +
> +       /* MTK HW PUPD bit: 1 for pull-down, 0 for pull-up */
> +       mtk_hw_get_value_no_lookup(hw, desc, pullup, &pf);
> +       *pullup = !(*pullup);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_R0, &pf);
> +       if (err)
> +               goto out;
> +       mtk_hw_get_value_no_lookup(hw, desc, &r0, &pf);
> +
> +       err = mtk_hw_pin_field_lookup(hw, desc, PINCTRL_PIN_REG_R1, &pf);
> +       if (err)
> +               goto out;
> +       mtk_hw_get_value_no_lookup(hw, desc, &r1, &pf);
> +
> +       if ((r1 == 0) && (r0 == 0))
> +               *enable = MTK_PUPD_SET_R1R0_00;
> +       else if ((r1 == 0) && (r0 == 1))
> +               *enable = MTK_PUPD_SET_R1R0_01;
> +       else if ((r1 == 1) && (r0 == 0))
> +               *enable = MTK_PUPD_SET_R1R0_10;
> +       else if ((r1 == 1) && (r0 == 1))
> +               *enable = MTK_PUPD_SET_R1R0_11;
> +       else
> +               goto out;
> +
> +out:
> +       return err;
> +}
> +
> +int mtk_pinconf_bias_set_combo(struct mtk_pinctrl *hw,
> +                               const struct mtk_pin_desc *desc,
> +                               u32 pullup, u32 arg)
> +{
> +       int err;
> +
> +       err = mtk_pinconf_bias_set_pu_pd(hw, desc, pullup, arg);
> +       if (!err)
> +               goto out;
> +
> +       err = mtk_pinconf_bias_set_pullsel_pullen(hw, desc, pullup, arg);
> +       if (!err)
> +               goto out;
> +
> +       err = mtk_pinconf_bias_set_pupd_r1_r0(hw, desc, pullup, arg);
> +
> +out:
> +       return err;
> +}
> +
> +int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
> +                             const struct mtk_pin_desc *desc,
> +                             u32 *pullup, u32 *enable)
> +{
> +       int err;
> +
> +       err = mtk_pinconf_bias_get_pu_pd(hw, desc, pullup, enable);
> +       if (!err)
> +               goto out;
> +
> +       err = mtk_pinconf_bias_get_pullsel_pullen(hw, desc, pullup, enable);
> +       if (!err)
> +               goto out;
> +
> +       err = mtk_pinconf_bias_get_pupd_r1_r0(hw, desc, pullup, enable);
> +
> +out:
> +       return err;
> +}
> +
>  /* Revision 0 */
>  int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
>                           const struct mtk_pin_desc *desc, u32 arg)
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
> index b3bada0..a13dcae 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
> @@ -216,6 +216,11 @@ struct mtk_pin_soc {
>         int (*bias_get)(struct mtk_pinctrl *hw,
>                         const struct mtk_pin_desc *desc, bool pullup, int *res);
>
> +       int (*bias_set_combo)(struct mtk_pinctrl *hw,
> +                       const struct mtk_pin_desc *desc, u32 pullup, u32 arg);
> +       int (*bias_get_combo)(struct mtk_pinctrl *hw,
> +                       const struct mtk_pin_desc *desc, u32 *pullup, u32 *arg);
> +
>         int (*drive_set)(struct mtk_pinctrl *hw,
>                          const struct mtk_pin_desc *desc, u32 arg);
>         int (*drive_get)(struct mtk_pinctrl *hw,
> @@ -277,6 +282,12 @@ int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
>  int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
>                               const struct mtk_pin_desc *desc, bool pullup,
>                               int *res);
> +int mtk_pinconf_bias_set_combo(struct mtk_pinctrl *hw,
> +                               const struct mtk_pin_desc *desc,
> +                               u32 pullup, u32 enable);
> +int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
> +                             const struct mtk_pin_desc *desc,
> +                             u32 *pullup, u32 *enable);
>
>  int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
>                           const struct mtk_pin_desc *desc, u32 arg);
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 54f069b..2a47c45 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -79,6 +79,7 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>         struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
>         u32 param = pinconf_to_config_param(*config);
>         int err, reg, ret = 1;
> +       int pullup;

Keep pullup the same line with other value with the type

>         const struct mtk_pin_desc *desc;
>
>         if (pin >= hw->soc->npins) {
> @@ -89,22 +90,31 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>
>         switch (param) {
>         case PIN_CONFIG_BIAS_DISABLE:
> -               if (hw->soc->bias_disable_get)
> -                       err = hw->soc->bias_disable_get(hw, desc, &ret);
> -               else
> -                       err = -ENOTSUPP;
> -               break;
>         case PIN_CONFIG_BIAS_PULL_UP:
> -               if (hw->soc->bias_get)
> -                       err = hw->soc->bias_get(hw, desc, 1, &ret);
> -               else
> -                       err = -ENOTSUPP;
> -               break;
>         case PIN_CONFIG_BIAS_PULL_DOWN:
> -               if (hw->soc->bias_get)
> -                       err = hw->soc->bias_get(hw, desc, 0, &ret);
> -               else
> +               if (hw->soc->bias_get_combo) {
> +                       err = hw->soc->bias_get_combo(hw, desc, &pullup, &ret);
> +                       if (err)
> +                               goto out;
> +                       if (param == PIN_CONFIG_BIAS_DISABLE) {
> +                               if (ret == MTK_PUPD_SET_R1R0_00)
> +                                       ret = MTK_DISABLE;
> +                       } else if (param == PIN_CONFIG_BIAS_PULL_UP) {
> +                               /* When desire to get pull-up value,
> +                                * return error if current setting is pull-down
> +                                */

Keep the line close to 80 char alignment as much as possible.

> +                               if (!pullup)
> +                                       err = -EINVAL;
> +                       } else if (param == PIN_CONFIG_BIAS_PULL_DOWN) {
> +                               /* When desire to get pull-down value,
> +                                * return error if current setting is pull-up
> +                                */

Keep the line close to 80 char alignment as much as possible.

> +                               if (pullup)
> +                                       err = -EINVAL;
> +                       }
> +               } else {

We don't remove the old usage (->bias_get and bias_disable_get) and
instead keep two ways exist for a while until all driver such as
MT8183 driver using the core is being switched into new old you
proposed here.

>                         err = -ENOTSUPP;
> +               }
>                 break;
>         case PIN_CONFIG_SLEW_RATE:
>                 err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &ret);
> @@ -196,20 +206,20 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>
>         switch ((u32)param) {
>         case PIN_CONFIG_BIAS_DISABLE:
> -               if (hw->soc->bias_disable_set)
> -                       err = hw->soc->bias_disable_set(hw, desc);
> +               if (hw->soc->bias_set_combo)
> +                       err = hw->soc->bias_set_combo(hw, desc, 0, MTK_DISABLE);
>                 else
>                         err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_BIAS_PULL_UP:
> -               if (hw->soc->bias_set)
> -                       err = hw->soc->bias_set(hw, desc, 1);
> +               if (hw->soc->bias_set_combo)
> +                       err = hw->soc->bias_set_combo(hw, desc, 1, arg);
>                 else
>                         err = -ENOTSUPP;
>                 break;
>         case PIN_CONFIG_BIAS_PULL_DOWN:
> -               if (hw->soc->bias_set)
> -                       err = hw->soc->bias_set(hw, desc, 0);
> +               if (hw->soc->bias_set_combo)
> +                       err = hw->soc->bias_set_combo(hw, desc, 0, arg);

Ditto as the above

>                 else
>                         err = -ENOTSUPP;
>                 break;
> @@ -899,7 +909,6 @@ int mtk_paris_pinctrl_probe(struct platform_device *pdev,
>         return 0;
>  }
>
> -

Remove the needless change

>  static int mtk_paris_pinctrl_suspend(struct device *device)
>  {
>         struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> --
> 1.8.1.1.dirty
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
