Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D66186013
	for <lists+linux-mediatek@lfdr.de>; Sun, 15 Mar 2020 22:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngcsCExL40WEP8BSng9SFrMntn3m5/IZXGgZQIYag9I=; b=gCqP76qpYv1K5U
	p8NsKvRWszrrWRuFh0927bgRdaM0mbf4fooB7Tp7dVcXixR06acI1Cu4+uvUYBACif60yOymEtFbw
	JplYJHokiHiehfBSEMmEA0r2It3ZHY2KQ12/0MV//95WP4kHG5P6V/njXNwiNQeRv3T1POSoPrhK9
	L1PDLLIyGCOEJU4Axjmd/QksT/G8Im4WGx2w3J5yG5IiCxm7kuXPW9UKY91CQN+83GzRe+IKzfXrj
	HDtIpwza1nokFrOwGpmWgDaYFBkHMOHXUUd4CrrYrXt0ruRQ1N+4RpZrKK0kGObGDVSuYqsrqxZ60
	hszE5j87Dk112R4K/Stg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDav8-0004ny-6J; Sun, 15 Mar 2020 21:35:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDav3-0004nW-Cd
 for linux-mediatek@lists.infradead.org; Sun, 15 Mar 2020 21:35:39 +0000
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE3EE206EB
 for <linux-mediatek@lists.infradead.org>; Sun, 15 Mar 2020 21:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584308136;
 bh=Zx2DjVwX1490TeydqsRds8Diw4sddjp+Y/m725JzRIU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tTg+jil1l80YsBBIyVAHuwZvSeoMzvCwLHv+dJ8yUmtygL8Q7D7Og1cPF63Gl0/Bu
 IiXGFBMpOHEdi6YhD2F3s3d4R12b1CLD+SpCkngdANGeIiULyXDwS71FgcjCTfDNrZ
 ijw0uT57sv+/nGD2lPI7uYGr85GTgU9OeZs2EMDM=
Received: by mail-io1-f50.google.com with SMTP id d8so15134961ion.7
 for <linux-mediatek@lists.infradead.org>; Sun, 15 Mar 2020 14:35:36 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0t4k0/wFZWGgrKZmbsS5GKLHof44cElIIdBBowKA8WTKiTBULB
 7OF+WJrRt3zpFNLA5TkBsZo7l+1IOSB36uAh2wo=
X-Google-Smtp-Source: ADFU+vulvFOwmwtZU16ZaIaOk0IAGzgUC+JQeiSIYK1LQhqSBAoYUYLhTU/NgN5CYI16LfdWrYc+baytGMyIgazfKhE=
X-Received: by 2002:a02:c812:: with SMTP id p18mr1515254jao.67.1584308136032; 
 Sun, 15 Mar 2020 14:35:36 -0700 (PDT)
MIME-Version: 1.0
References: <1583825986-8189-1-git-send-email-light.hsieh@mediatek.com>
 <1583825986-8189-2-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1583825986-8189-2-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Sun, 15 Mar 2020 14:35:24 -0700
X-Gmail-Original-Message-ID: <CAGp9LzpJTYXp9R6SKjauemPYMd9wfoacD_czQBVgWtJoMcPFKg@mail.gmail.com>
Message-ID: <CAGp9LzpJTYXp9R6SKjauemPYMd9wfoacD_czQBVgWtJoMcPFKg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] pinctrl: make MediaTek pinctrl v2 driver ready for
 buidling loadable module
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_143537_471766_0CF30DC0 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi, Light

On Tue, Mar 10, 2020 at 12:39 AM <light.hsieh@mediatek.com> wrote:
>
> From: Light Hsieh <light.hsieh@mediatek.com>
>

Correct the prefix of the subject with "pinctrl: mediatek".

> In the future we want to be able to build the MediaTek pinctrl driver,
> based on paris, as kernel module. This patch allows pinctrl-paris.c, the
> external interrupt controller mtk-eint.c, and pinctrl-mtk-common-v2.c to
> be loadable as module.
>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
>  drivers/pinctrl/mediatek/Kconfig                 | 13 +++++++++++--
>  drivers/pinctrl/mediatek/Makefile                |  5 +++--
>  drivers/pinctrl/mediatek/mtk-eint.c              |  9 +++++++++
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 ++++++++++++++++++++++++
>  drivers/pinctrl/mediatek/pinctrl-paris.c         |  6 ++++++
>  drivers/pinctrl/pinconf-generic.c                |  1 +

Separate the patches for the device driver and for the core respectively.

>  6 files changed, 54 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
> index 701f9af..4cd1109 100644
> --- a/drivers/pinctrl/mediatek/Kconfig
> +++ b/drivers/pinctrl/mediatek/Kconfig
> @@ -3,10 +3,12 @@ menu "MediaTek pinctrl drivers"
>         depends on ARCH_MEDIATEK || COMPILE_TEST
>
>  config EINT_MTK
> -       bool "MediaTek External Interrupt Support"
> +       tristate "MediaTek External Interrupt Support"
>         depends on PINCTRL_MTK || PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS || COMPILE_TEST
>         select GPIOLIB
>         select IRQ_DOMAIN
> +       default y if PINCTRL_MTK || PINCTRL_MTK_MOORE
> +       default PINCTRL_MTK_PARIS
>
>  config PINCTRL_MTK
>         bool
> @@ -17,23 +19,30 @@ config PINCTRL_MTK
>         select EINT_MTK
>         select OF_GPIO
>
> +config PINCTRL_MTK_V2
> +       tristate
> +       depends on PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS

PINCTRL_MTK_V2 doesn't have to depend on PINCTRL_MTK_MOORE or
PINCTRL_MTK_PARIS to work and it can build on it own so that lets us
remove the dependency.

> +
>  config PINCTRL_MTK_MOORE
>         bool
>         depends on OF
>         select GENERIC_PINCONF
>         select GENERIC_PINCTRL_GROUPS
>         select GENERIC_PINMUX_FUNCTIONS
> +       select EINT_MTK

The original design of PINCTRL_MTK_MOORE doesn't have to work with
EINT_MTK coupled tightly so that let us remove the reverse dependency.

>         select GPIOLIB
>         select OF_GPIO
> +       select PINCTRL_MTK_V2
>
>  config PINCTRL_MTK_PARIS
> -       bool
> +       tristate
>         depends on OF
>         select PINMUX
>         select GENERIC_PINCONF
>         select GPIOLIB
>         select EINT_MTK
>         select OF_GPIO
> +       select PINCTRL_MTK_V2
>
>  # For ARMv7 SoCs
>  config PINCTRL_MT2701
> diff --git a/drivers/pinctrl/mediatek/Makefile b/drivers/pinctrl/mediatek/Makefile
> index a74325a..4b71328 100644
> --- a/drivers/pinctrl/mediatek/Makefile
> +++ b/drivers/pinctrl/mediatek/Makefile
> @@ -2,8 +2,9 @@
>  # Core
>  obj-$(CONFIG_EINT_MTK)         += mtk-eint.o
>  obj-$(CONFIG_PINCTRL_MTK)      += pinctrl-mtk-common.o
> -obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o pinctrl-mtk-common-v2.o
> -obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o pinctrl-mtk-common-v2.o
> +obj-$(CONFIG_PINCTRL_MTK_V2)   += pinctrl-mtk-common-v2.o
> +obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o
> +obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o
>
>  # SoC Drivers
>  obj-$(CONFIG_PINCTRL_MT2701)   += pinctrl-mt2701.o
> diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
> index 7e526bcf..99703a8 100644
> --- a/drivers/pinctrl/mediatek/mtk-eint.c
> +++ b/drivers/pinctrl/mediatek/mtk-eint.c
> @@ -9,6 +9,7 @@
>   *
>   */
>
> +#include <linux/module.h>

Sort in alphabetical order, please.

>  #include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/gpio/driver.h>
> @@ -379,6 +380,7 @@ int mtk_eint_do_suspend(struct mtk_eint *eint)
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_do_suspend);
>
>  int mtk_eint_do_resume(struct mtk_eint *eint)
>  {
> @@ -386,6 +388,7 @@ int mtk_eint_do_resume(struct mtk_eint *eint)
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_do_resume);
>
>  int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
>                           unsigned int debounce)
> @@ -440,6 +443,7 @@ int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_set_debounce);
>
>  int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
>  {
> @@ -451,6 +455,7 @@ int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
>
>         return irq;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_find_irq);
>
>  int mtk_eint_do_init(struct mtk_eint *eint)
>  {
> @@ -495,3 +500,7 @@ int mtk_eint_do_init(struct mtk_eint *eint)
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_do_init);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("MediaTek EINT Driver");
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 1da9425..cdf2d69 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -6,6 +6,7 @@
>   *
>   */
>
> +#include <linux/module.h>

Sort in alphabetical order, please.

>  #include <dt-bindings/pinctrl/mt65xx.h>
>  #include <linux/device.h>
>  #include <linux/err.h>
> @@ -206,6 +207,7 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_hw_set_value);
>
>  int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>                      int field, int *value)
> @@ -225,6 +227,7 @@ int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_hw_get_value);
>
>  static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
>  {
> @@ -363,6 +366,7 @@ int mtk_build_eint(struct mtk_pinctrl *hw, struct platform_device *pdev)
>
>         return mtk_eint_do_init(hw->eint);
>  }
> +EXPORT_SYMBOL_GPL(mtk_build_eint);
>
>  /* Revision 0 */
>  int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
> @@ -382,6 +386,7 @@ int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set);
>
>  int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
>                                  const struct mtk_pin_desc *desc, int *res)
> @@ -404,6 +409,7 @@ int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get);
>
>  int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
>                          const struct mtk_pin_desc *desc, bool pullup)
> @@ -423,6 +429,7 @@ int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set);
>
>  int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
>                          const struct mtk_pin_desc *desc, bool pullup, int *res)
> @@ -442,6 +449,7 @@ int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get);
>
>  /* Revision 1 */
>  int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
> @@ -456,6 +464,7 @@ int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set_rev1);
>
>  int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
>                                       const struct mtk_pin_desc *desc, int *res)
> @@ -473,6 +482,7 @@ int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get_rev1);
>
>  int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
>                               const struct mtk_pin_desc *desc, bool pullup)
> @@ -492,6 +502,7 @@ int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_rev1);
>
>  int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
>                               const struct mtk_pin_desc *desc, bool pullup,
> @@ -517,6 +528,7 @@ int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_gev1);

That should be EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get_rev1);

>
>  /* Combo for the following pull register type:
>   * 1. PU + PD
> @@ -717,6 +729,7 @@ int mtk_pinconf_bias_set_combo(struct mtk_pinctrl *hw,
>  out:
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_combo);
>
>  int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
>                               const struct mtk_pin_desc *desc,
> @@ -737,6 +750,7 @@ int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
>  out:
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get_combo);
>
>  /* Revision 0 */
>  int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
> @@ -766,6 +780,7 @@ int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
>
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set);
>
>  int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
>                           const struct mtk_pin_desc *desc, int *val)
> @@ -790,6 +805,7 @@ int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get);
>
>  /* Revision 1 */
>  int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
> @@ -811,6 +827,7 @@ int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
>
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_rev1);
>
>  int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
>                                const struct mtk_pin_desc *desc, int *val)
> @@ -828,18 +845,21 @@ int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_rev1);
>
>  int mtk_pinconf_drive_set_raw(struct mtk_pinctrl *hw,
>                                const struct mtk_pin_desc *desc, u32 arg)
>  {
>         return mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DRV, arg);
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_raw);
>
>  int mtk_pinconf_drive_get_raw(struct mtk_pinctrl *hw,
>                                const struct mtk_pin_desc *desc, int *val)
>  {
>         return mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DRV, val);
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_raw);
>
>  int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
>                              const struct mtk_pin_desc *desc, bool pullup,
> @@ -880,6 +900,7 @@ int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
>
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_set);
>
>  int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
>                              const struct mtk_pin_desc *desc, bool pullup,
> @@ -922,6 +943,7 @@ int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_get);
>
>  int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
>                               const struct mtk_pin_desc *desc, u32 arg)
> @@ -948,6 +970,7 @@ int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
>
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_set);
>
>  int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
>                               const struct mtk_pin_desc *desc, u32 *val)
> @@ -971,3 +994,4 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
>
>         return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_get);
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 83bf29c..028a3de 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -9,6 +9,7 @@
>   *        Hongzhou.Yang <hongzhou.yang@mediatek.com>
>   */
>
> +#include <linux/module.h>

Sort in alphabetical order, please.

>  #include <linux/gpio/driver.h>
>  #include <dt-bindings/pinctrl/mt65xx.h>
>  #include "pinctrl-paris.h"
> @@ -633,6 +634,7 @@ ssize_t mtk_pctrl_show_one_pin(struct mtk_pinctrl *hw,
>
>         return len;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pctrl_show_one_pin);
>
>  #define PIN_DBG_BUF_SZ 96
>  static void mtk_pctrl_dbg_show(struct pinctrl_dev *pctldev, struct seq_file *s,
> @@ -1037,3 +1039,7 @@ static int mtk_paris_pinctrl_resume(struct device *device)
>         .suspend_noirq = mtk_paris_pinctrl_suspend,
>         .resume_noirq = mtk_paris_pinctrl_resume,
>  };
> +EXPORT_SYMBOL_GPL(mtk_paris_pinctrl_probe);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("MediaTek Pinctrl Common Driver V2 Paris");
> diff --git a/drivers/pinctrl/pinconf-generic.c b/drivers/pinctrl/pinconf-generic.c
> index 9eb8630..dfef471 100644
> --- a/drivers/pinctrl/pinconf-generic.c
> +++ b/drivers/pinctrl/pinconf-generic.c
> @@ -286,6 +286,7 @@ int pinconf_generic_parse_dt_config(struct device_node *np,
>         kfree(cfg);
>         return ret;
>  }
> +EXPORT_SYMBOL_GPL(pinconf_generic_parse_dt_config);
>

The change probably has been done in b88d145191ad ("pinctrl: Export
some needed symbols at module load time").

>  int pinconf_generic_dt_subnode_to_map(struct pinctrl_dev *pctldev,
>                 struct device_node *np, struct pinctrl_map **map,
> --
> 1.8.1.1.dirty

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
