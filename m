Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE99415A0B6
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Feb 2020 06:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3tmswZaSiX8X+s571BfvlN7ZQBSolTjvOGfCt6wWfk=; b=lZu84aA0Ld78q7
	DqsJ7IDo2gNa6RnvOOuv1obamlsIi8esoxhSknsXZtTJssTdR9PjCIL3JWRe9PMwwm6nqkIV5d3ij
	jmog071AsyLWngwEfG4MRCSbiBKcf2DQhDYmdJuSSsisZb261KkGi5GjIyRvB/72AXIeBayZEs5wf
	WZHYOlUs5ip1GwKTk/79lgwwDkotd+t9LdAJCF4XJL8HvHan7PZ0nRf7f2fwMjwf8WVgI+xSnei+k
	16U0UwMUjhwPJm5v6ghot5y+rvXJAWxsh2Y30MBJebZBsF0ca5wLgkjF5H8cwccl9MzIVLfMUTagv
	D4QXSV39jjaAeeMNedZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1kj6-0006jZ-8x; Wed, 12 Feb 2020 05:38:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1kj2-0006j1-77
 for linux-mediatek@lists.infradead.org; Wed, 12 Feb 2020 05:38:18 +0000
X-UUID: 11f0348624024e868fc3207f584077ec-20200211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Ez0dJw/rqq9p7b14LMsBgdPYnO6lpoGDlcoDGSdIVAk=; 
 b=dRJ/erjpzY0VgfoEqov5Q0pI8GR3C6ZBk6wZ/aj6gOwR2zRLivUYnGQxf0cG53KwX9eW0MekJVQS/ti+723HILcHKJHzPj6pI2wCU7gGfRcDcKwyzoKVt+DM4MMfaomq5l19RiI+oHYnDJJ64Nn0vto5hMPFVjLh1PwbriXjxaU=;
X-UUID: 11f0348624024e868fc3207f584077ec-20200211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 379216914; Tue, 11 Feb 2020 21:38:07 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 21:38:45 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 13:35:36 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Feb 2020 13:36:11 +0800
Message-ID: <1581485878.32467.2.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/1] pinctrl: make MediaTek MT6765 pinctrl driver
 compatible to kernel module
From: Light Hsieh <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Date: Wed, 12 Feb 2020 13:37:58 +0800
In-Reply-To: <1581485407-32393-1-git-send-email-light.hsieh@mediatek.com>
References: <1581485407-32393-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 75D87BCD14F4EEF29445494EE984EB46CC3B8262FE78AB5EE974CF70389ECF712000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_213816_268417_096A1DE6 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 kuohong.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dear reviewers:

This patch is based on the patch series  

https://patchwork.kernel.org/project/linux-mediatek/list/?series=231657

Please give your comment,

Light


On Wed, 2020-02-12 at 13:30 +0800, light.hsieh@mediatek.com wrote:
> From: Light Hsieh <light.hsieh@mediatek.com>
> 
> To make MediaTek MT6765 pinctrl driver and related MediaTek pinctrl driver
> files be both compatible for building kernel module or built-in, the
> following modification are performed:
> 
> 1. drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c: export some functions
> 
> 2. drivers/pinctrl/mediatek/pinctrl-paris.c: export some functions
> 
> 3. drivers/pinctrl/mediatek/mtk-eint.c: export some functions
> 
> 4. drivers/pinctrl/pinconf-generic.c: export
>        pinconf_generic_parse_dt_config() for usage by pinctrl-paris.c
>        built as kernel module.
> 
> 5. drivers/pinctrl/mediatek/Kconfig:
> 5.1 PINCTRL_MT6765: change from bool to tristate. It is specified in
>         kernel config file.
> 5.2 PINCTRL_MTK_PARIS: change from bool to tristate and select
>         PINCTRL_MTK_V2.
>       * PINCTRL_MTK_PARIS will be y if any PINCTRL_MTXXXX selecting
>         PINCTRL_MTK_PARIS is y.
>       * PINCTRL_MTK_PARIS will be n if all PINCTRL_MTXXXX selecting
>         PINCTRL_MTK_PARIS are n.
>       * PINCTRL_MTK_PARIS will be m if all PINCTRL_MTXXXX selecting
>         PINCTRL_MTK_PARIS are m.
> 5.3 PINCTRL_MTK_MOORE: select EINT_MTK and PINCTRL_MTK_V2.
> 5.3 PINCTRL_MTK_V2: add this tristate config which depends on
>         PINCTRL_MTK_PARIS and PINCTRL_MTK_MOORE.
>       * PINCTRL_MTK_V2 will be y if either PINCTRL_MTK_PARIS or
>         PINCTRL_MTK_MOORE is y.
>       * PINCTRL_MTK_V2 will be n if both PINCTRL_MTK_PARIS and
>         PINCTRL_MTK_MOORE are n.
>       * PINCTRL_MTK_V2 will be m if both PINCTRL_MTK_PARIS is m and
>         PINCTRL_MTK_MOORE is n.
> 5.4 EINT_MTK: change from bool to tristate and add rule for default.
>       * First rule: determine if EINT_MTK is y or n according to
>         selection of PINCTRL_MTK or PINCTRL_MTK_MORE.
>       * Second rule: determine if EINT_MTK is y, m, or n according to
>         selection of PINCTRL_MTK_PARIS.
> 
> 6. drivers/pinctrl/mediatek/Makefile: Use PINCTRL_MTK_V2 to determine
>         if pinctrl-mtk-common-v2.c is built as kernel module or
>         built-in.
> 
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> ---
>  drivers/pinctrl/mediatek/Kconfig                 | 17 +++++++++++++----
>  drivers/pinctrl/mediatek/Makefile                |  5 +++--
>  drivers/pinctrl/mediatek/mtk-eint.c              |  9 +++++++++
>  drivers/pinctrl/mediatek/pinctrl-mt6765.c        |  4 ++++
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 ++++++++++++++++++++++++
>  drivers/pinctrl/mediatek/pinctrl-paris.c         |  5 +++++
>  drivers/pinctrl/pinconf-generic.c                |  1 +
>  7 files changed, 59 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
> index 701f9af..d48c313 100644
> --- a/drivers/pinctrl/mediatek/Kconfig
> +++ b/drivers/pinctrl/mediatek/Kconfig
> @@ -3,10 +3,12 @@ menu "MediaTek pinctrl drivers"
>  	depends on ARCH_MEDIATEK || COMPILE_TEST
>  
>  config EINT_MTK
> -	bool "MediaTek External Interrupt Support"
> +	tristate "MediaTek External Interrupt Support"
>  	depends on PINCTRL_MTK || PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS || COMPILE_TEST
>  	select GPIOLIB
>  	select IRQ_DOMAIN
> +	default y if PINCTRL_MTK || PINCTRL_MTK_MOORE
> +	default PINCTRL_MTK_PARIS
>  
>  config PINCTRL_MTK
>  	bool
> @@ -17,23 +19,30 @@ config PINCTRL_MTK
>  	select EINT_MTK
>  	select OF_GPIO
>  
> +config PINCTRL_MTK_V2
> +	tristate
> +	depends on PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS
> +
>  config PINCTRL_MTK_MOORE
> -	bool
> +	tristate
>  	depends on OF
>  	select GENERIC_PINCONF
>  	select GENERIC_PINCTRL_GROUPS
>  	select GENERIC_PINMUX_FUNCTIONS
> +	select EINT_MTK
>  	select GPIOLIB
>  	select OF_GPIO
> +	select PINCTRL_MTK_V2
>  
>  config PINCTRL_MTK_PARIS
> -	bool
> +	tristate
>  	depends on OF
>  	select PINMUX
>  	select GENERIC_PINCONF
>  	select GPIOLIB
>  	select EINT_MTK
>  	select OF_GPIO
> +	select PINCTRL_MTK_V2
>  
>  # For ARMv7 SoCs
>  config PINCTRL_MT2701
> @@ -80,7 +89,7 @@ config PINCTRL_MT2712
>  	select PINCTRL_MTK
>  
>  config PINCTRL_MT6765
> -	bool "Mediatek MT6765 pin control"
> +	tristate "Mediatek MT6765 pin control"
>  	depends on OF
>  	depends on ARM64 || COMPILE_TEST
>  	default ARM64 && ARCH_MEDIATEK
> diff --git a/drivers/pinctrl/mediatek/Makefile b/drivers/pinctrl/mediatek/Makefile
> index a74325a..4b71328 100644
> --- a/drivers/pinctrl/mediatek/Makefile
> +++ b/drivers/pinctrl/mediatek/Makefile
> @@ -2,8 +2,9 @@
>  # Core
>  obj-$(CONFIG_EINT_MTK)		+= mtk-eint.o
>  obj-$(CONFIG_PINCTRL_MTK)	+= pinctrl-mtk-common.o
> -obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o pinctrl-mtk-common-v2.o
> -obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o pinctrl-mtk-common-v2.o
> +obj-$(CONFIG_PINCTRL_MTK_V2)	+= pinctrl-mtk-common-v2.o
> +obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o
> +obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o
>  
>  # SoC Drivers
>  obj-$(CONFIG_PINCTRL_MT2701)	+= pinctrl-mt2701.o
> diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
> index 7e526bcf..99703a8 100644
> --- a/drivers/pinctrl/mediatek/mtk-eint.c
> +++ b/drivers/pinctrl/mediatek/mtk-eint.c
> @@ -9,6 +9,7 @@
>   *
>   */
>  
> +#include <linux/module.h>
>  #include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/gpio/driver.h>
> @@ -379,6 +380,7 @@ int mtk_eint_do_suspend(struct mtk_eint *eint)
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_do_suspend);
>  
>  int mtk_eint_do_resume(struct mtk_eint *eint)
>  {
> @@ -386,6 +388,7 @@ int mtk_eint_do_resume(struct mtk_eint *eint)
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_do_resume);
>  
>  int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
>  			  unsigned int debounce)
> @@ -440,6 +443,7 @@ int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_set_debounce);
>  
>  int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
>  {
> @@ -451,6 +455,7 @@ int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
>  
>  	return irq;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_find_irq);
>  
>  int mtk_eint_do_init(struct mtk_eint *eint)
>  {
> @@ -495,3 +500,7 @@ int mtk_eint_do_init(struct mtk_eint *eint)
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_eint_do_init);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("MediaTek EINT Driver");
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> index 905dae8c..2c59d39 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> @@ -6,6 +6,7 @@
>   *
>   */
>  
> +#include <linux/module.h>
>  #include "pinctrl-mtk-mt6765.h"
>  #include "pinctrl-paris.h"
>  
> @@ -1103,3 +1104,6 @@ static int __init mt6765_pinctrl_init(void)
>  	return platform_driver_register(&mt6765_pinctrl_driver);
>  }
>  arch_initcall(mt6765_pinctrl_init);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("MediaTek MT6765 Pinctrl Driver");
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 1da9425..cdf2d69 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -6,6 +6,7 @@
>   *
>   */
>  
> +#include <linux/module.h>
>  #include <dt-bindings/pinctrl/mt65xx.h>
>  #include <linux/device.h>
>  #include <linux/err.h>
> @@ -206,6 +207,7 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_hw_set_value);
>  
>  int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>  		     int field, int *value)
> @@ -225,6 +227,7 @@ int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_hw_get_value);
>  
>  static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
>  {
> @@ -363,6 +366,7 @@ int mtk_build_eint(struct mtk_pinctrl *hw, struct platform_device *pdev)
>  
>  	return mtk_eint_do_init(hw->eint);
>  }
> +EXPORT_SYMBOL_GPL(mtk_build_eint);
>  
>  /* Revision 0 */
>  int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
> @@ -382,6 +386,7 @@ int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set);
>  
>  int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
>  				 const struct mtk_pin_desc *desc, int *res)
> @@ -404,6 +409,7 @@ int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get);
>  
>  int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
>  			 const struct mtk_pin_desc *desc, bool pullup)
> @@ -423,6 +429,7 @@ int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set);
>  
>  int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
>  			 const struct mtk_pin_desc *desc, bool pullup, int *res)
> @@ -442,6 +449,7 @@ int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get);
>  
>  /* Revision 1 */
>  int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
> @@ -456,6 +464,7 @@ int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set_rev1);
>  
>  int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
>  				      const struct mtk_pin_desc *desc, int *res)
> @@ -473,6 +482,7 @@ int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get_rev1);
>  
>  int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
>  			      const struct mtk_pin_desc *desc, bool pullup)
> @@ -492,6 +502,7 @@ int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_rev1);
>  
>  int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
>  			      const struct mtk_pin_desc *desc, bool pullup,
> @@ -517,6 +528,7 @@ int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_gev1);
>  
>  /* Combo for the following pull register type:
>   * 1. PU + PD
> @@ -717,6 +729,7 @@ int mtk_pinconf_bias_set_combo(struct mtk_pinctrl *hw,
>  out:
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_combo);
>  
>  int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
>  			      const struct mtk_pin_desc *desc,
> @@ -737,6 +750,7 @@ int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
>  out:
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get_combo);
>  
>  /* Revision 0 */
>  int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
> @@ -766,6 +780,7 @@ int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
>  
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set);
>  
>  int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
>  			  const struct mtk_pin_desc *desc, int *val)
> @@ -790,6 +805,7 @@ int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get);
>  
>  /* Revision 1 */
>  int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
> @@ -811,6 +827,7 @@ int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
>  
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_rev1);
>  
>  int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
>  			       const struct mtk_pin_desc *desc, int *val)
> @@ -828,18 +845,21 @@ int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_rev1);
>  
>  int mtk_pinconf_drive_set_raw(struct mtk_pinctrl *hw,
>  			       const struct mtk_pin_desc *desc, u32 arg)
>  {
>  	return mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DRV, arg);
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_raw);
>  
>  int mtk_pinconf_drive_get_raw(struct mtk_pinctrl *hw,
>  			       const struct mtk_pin_desc *desc, int *val)
>  {
>  	return mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DRV, val);
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_raw);
>  
>  int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
>  			     const struct mtk_pin_desc *desc, bool pullup,
> @@ -880,6 +900,7 @@ int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
>  
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_set);
>  
>  int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
>  			     const struct mtk_pin_desc *desc, bool pullup,
> @@ -922,6 +943,7 @@ int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_get);
>  
>  int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
>  			      const struct mtk_pin_desc *desc, u32 arg)
> @@ -948,6 +970,7 @@ int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
>  
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_set);
>  
>  int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
>  			      const struct mtk_pin_desc *desc, u32 *val)
> @@ -971,3 +994,4 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_get);
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 83bf29c..af97794 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -9,6 +9,7 @@
>   *	   Hongzhou.Yang <hongzhou.yang@mediatek.com>
>   */
>  
> +#include <linux/module.h>
>  #include <linux/gpio/driver.h>
>  #include <dt-bindings/pinctrl/mt65xx.h>
>  #include "pinctrl-paris.h"
> @@ -1037,3 +1038,7 @@ static int mtk_paris_pinctrl_resume(struct device *device)
>  	.suspend_noirq = mtk_paris_pinctrl_suspend,
>  	.resume_noirq = mtk_paris_pinctrl_resume,
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
>  	kfree(cfg);
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(pinconf_generic_parse_dt_config);
>  
>  int pinconf_generic_dt_subnode_to_map(struct pinctrl_dev *pctldev,
>  		struct device_node *np, struct pinctrl_map **map,

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
