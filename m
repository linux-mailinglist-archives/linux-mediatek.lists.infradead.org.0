Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D750315D62F
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Feb 2020 12:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mt6uOfdh0TSsO5p2rz/7OAhmDwGLyXmDKR1hBAcdKrw=; b=T/Ty7hYvAyVNB5
	wbw8fsuXMg2ao9cFR3mi8yBLNatwN8yKv38XzT3ZEm01Ge1rqV+5gmf8AVrr7qYQH9aVgTEWBaa9M
	3UUvPzl/W7uSJqt+E0WAbY41QJJmJt4JxlKtruMj6CNC+vI/hfhJV8SxtythefIWahwVKGjyYMM0S
	rHvYm4XPqckVvnkkMmbJMdVB16RtGxJs8hINCa7TUNaibY5ggKLpS29DfrbXv0a2OhepNOJn6KMEz
	8nLZqyNpy2c8EJVGhLzpVeRaHfhw06Q0HObCMKGeB3/LL2cnf3BHXc9gMG5XCo+WW8GRrAnVssu/D
	FqsmHOmU3bqv8akTUAdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Yk9-0001IK-Ti; Fri, 14 Feb 2020 11:02:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Yk6-0001Gc-1R
 for linux-mediatek@lists.infradead.org; Fri, 14 Feb 2020 11:02:44 +0000
X-UUID: 7c5c15f198cc483fae2d3b5f3be44046-20200214
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=OU7PBzUStC1tAPtynQP1TQA8n05C9xmNa8s/1XvHyd0=; 
 b=DUEMN0TnPkFuOUCbZLC2Yc90udrUlMl307JnS+yhVecDaPNDampJ8uyxpFxixh/IymdeMBG1KTjmRRDqyhSN/IvfGFZJQNiVi2un0mMiqQvGf5JRpDfDw2dj6plbh97k8MoP6TevhNhcPAJXsIuOsE6iMTdYoJwo8/4jTSWgDGE=;
X-UUID: 7c5c15f198cc483fae2d3b5f3be44046-20200214
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 496827377; Fri, 14 Feb 2020 03:02:32 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 03:03:14 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 18:59:53 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Feb 2020 19:01:47 +0800
Message-ID: <1581678137.724.9.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/2] pinctrl: make MediaTek pinctrl v2 driver ready
 for buidling kernel module
From: Light Hsieh <light.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 14 Feb 2020 19:02:17 +0800
In-Reply-To: <b35c33a9-0d58-c98d-05eb-241efdc0c9af@gmail.com>
References: <1581574105-1160-1-git-send-email-light.hsieh@mediatek.com>
 <1581574624.1827.4.camel@mtkswgap22>
 <b35c33a9-0d58-c98d-05eb-241efdc0c9af@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 430B91F2C81B2B5EEC5340E3CB9259BCC9C297EBFC23162FF966BD4A63A6AF5F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_030242_095122_37F09FC6 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linus.walleij@linaro.org, sean.wang@kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2020-02-14 at 11:37 +0100, Matthias Brugger wrote:
> 
> On 13/02/2020 07:17, Light Hsieh wrote:
> > Dear Reviewers:
> > 
> > Google plan to make platform driver as kernel module in future Android
> > kernel.
> > This patch series prepare to make platforms that use MediaTek pinctrl
> > paris driver (pinctrl-paris.c, pinctrl-mtk-common-v2.c, and mtk-eint.c)
> > compatible for building either kernel module or built-in.
> > 
> > Please give your comments.
> > 
> 
> I think I didn't explain myself good enough.
> These should be three patches:
> 
> 1. change mtk-eint driver + Kconfig to be loadable as a module
> 2. change pinctrl-paris + Kconfig to be loadable as a module
> 3. change mt6765.
> 
> Please make sure that every patch compiles and does not break the system. This
> will later help to use git-bisect to hunt down bugs in the kernel.
> 
> Regards,
> Matthias
> 

Actually, I don't understand the necessity of splitting into 2 or 3
patches.

1. mtk-eint cannot be built as loadable module when pinctrl-paris and
pinctrl-mtk-common-v2 is not built as loadable module.

2. pinctrl-paris and pinctrl-mtk-common-v2 cannot be built as loadable
module when pinctrl-mtk6765 is not built as loadable module

3. besides, if pinctrl-mtk675 and any other MediaTek platform pinctrl
driver that use mtk-eint, pinctrl-paris, and pinctrl-mtk-common-v2 are
built-in, mtk-eint, pinctrl-paris, and pinctrl-mtk-common-v2 cannot be
built as loadable module.

The rationale can be learned from the description of change made to
Kconfig and Makefile.

So, just applying patch 1 and patch 2 of your proposal does not make
sense.

BR.

Light



> > Light
> > 
> > On Thu, 2020-02-13 at 14:08 +0800, light.hsieh@mediatek.com wrote:
> >> From: Light Hsieh <light.hsieh@mediatek.com>
> >>
> >> Google plan to make platform driver as kernel module for future
> >> Andriod kernel. This patch make platforms that use pinctrl-paris.c
> >> of MediaTek pinctrl v2 ready for building kernel module.
> >>
> >> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> >> ---
> >>  drivers/pinctrl/mediatek/mtk-eint.c              |  9 +++++++++
> >>  drivers/pinctrl/mediatek/pinctrl-mt6765.c        |  4 ++++
> >>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 ++++++++++++++++++++++++
> >>  drivers/pinctrl/mediatek/pinctrl-paris.c         |  5 +++++
> >>  drivers/pinctrl/pinconf-generic.c                |  1 +
> >>  5 files changed, 43 insertions(+)
> >>
> >> diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
> >> index 7e526bcf..99703a8 100644
> >> --- a/drivers/pinctrl/mediatek/mtk-eint.c
> >> +++ b/drivers/pinctrl/mediatek/mtk-eint.c
> >> @@ -9,6 +9,7 @@
> >>   *
> >>   */
> >>  
> >> +#include <linux/module.h>
> >>  #include <linux/delay.h>
> >>  #include <linux/err.h>
> >>  #include <linux/gpio/driver.h>
> >> @@ -379,6 +380,7 @@ int mtk_eint_do_suspend(struct mtk_eint *eint)
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_eint_do_suspend);
> >>  
> >>  int mtk_eint_do_resume(struct mtk_eint *eint)
> >>  {
> >> @@ -386,6 +388,7 @@ int mtk_eint_do_resume(struct mtk_eint *eint)
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_eint_do_resume);
> >>  
> >>  int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
> >>  			  unsigned int debounce)
> >> @@ -440,6 +443,7 @@ int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_num,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_eint_set_debounce);
> >>  
> >>  int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
> >>  {
> >> @@ -451,6 +455,7 @@ int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
> >>  
> >>  	return irq;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_eint_find_irq);
> >>  
> >>  int mtk_eint_do_init(struct mtk_eint *eint)
> >>  {
> >> @@ -495,3 +500,7 @@ int mtk_eint_do_init(struct mtk_eint *eint)
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_eint_do_init);
> >> +
> >> +MODULE_LICENSE("GPL v2");
> >> +MODULE_DESCRIPTION("MediaTek EINT Driver");
> >> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> >> index 905dae8c..2c59d39 100644
> >> --- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> >> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> >> @@ -6,6 +6,7 @@
> >>   *
> >>   */
> >>  
> >> +#include <linux/module.h>
> >>  #include "pinctrl-mtk-mt6765.h"
> >>  #include "pinctrl-paris.h"
> >>  
> >> @@ -1103,3 +1104,6 @@ static int __init mt6765_pinctrl_init(void)
> >>  	return platform_driver_register(&mt6765_pinctrl_driver);
> >>  }
> >>  arch_initcall(mt6765_pinctrl_init);
> >> +
> >> +MODULE_LICENSE("GPL v2");
> >> +MODULE_DESCRIPTION("MediaTek MT6765 Pinctrl Driver");
> >> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> >> index 1da9425..cdf2d69 100644
> >> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> >> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> >> @@ -6,6 +6,7 @@
> >>   *
> >>   */
> >>  
> >> +#include <linux/module.h>
> >>  #include <dt-bindings/pinctrl/mt65xx.h>
> >>  #include <linux/device.h>
> >>  #include <linux/err.h>
> >> @@ -206,6 +207,7 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_hw_set_value);
> >>  
> >>  int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
> >>  		     int field, int *value)
> >> @@ -225,6 +227,7 @@ int mtk_hw_get_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_hw_get_value);
> >>  
> >>  static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
> >>  {
> >> @@ -363,6 +366,7 @@ int mtk_build_eint(struct mtk_pinctrl *hw, struct platform_device *pdev)
> >>  
> >>  	return mtk_eint_do_init(hw->eint);
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_build_eint);
> >>  
> >>  /* Revision 0 */
> >>  int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
> >> @@ -382,6 +386,7 @@ int mtk_pinconf_bias_disable_set(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set);
> >>  
> >>  int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
> >>  				 const struct mtk_pin_desc *desc, int *res)
> >> @@ -404,6 +409,7 @@ int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get);
> >>  
> >>  int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
> >>  			 const struct mtk_pin_desc *desc, bool pullup)
> >> @@ -423,6 +429,7 @@ int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set);
> >>  
> >>  int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
> >>  			 const struct mtk_pin_desc *desc, bool pullup, int *res)
> >> @@ -442,6 +449,7 @@ int mtk_pinconf_bias_get(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get);
> >>  
> >>  /* Revision 1 */
> >>  int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
> >> @@ -456,6 +464,7 @@ int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_set_rev1);
> >>  
> >>  int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
> >>  				      const struct mtk_pin_desc *desc, int *res)
> >> @@ -473,6 +482,7 @@ int mtk_pinconf_bias_disable_get_rev1(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_disable_get_rev1);
> >>  
> >>  int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
> >>  			      const struct mtk_pin_desc *desc, bool pullup)
> >> @@ -492,6 +502,7 @@ int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_rev1);
> >>  
> >>  int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
> >>  			      const struct mtk_pin_desc *desc, bool pullup,
> >> @@ -517,6 +528,7 @@ int mtk_pinconf_bias_get_rev1(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_gev1);
> >>  
> >>  /* Combo for the following pull register type:
> >>   * 1. PU + PD
> >> @@ -717,6 +729,7 @@ int mtk_pinconf_bias_set_combo(struct mtk_pinctrl *hw,
> >>  out:
> >>  	return err;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_combo);
> >>  
> >>  int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
> >>  			      const struct mtk_pin_desc *desc,
> >> @@ -737,6 +750,7 @@ int mtk_pinconf_bias_get_combo(struct mtk_pinctrl *hw,
> >>  out:
> >>  	return err;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_get_combo);
> >>  
> >>  /* Revision 0 */
> >>  int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
> >> @@ -766,6 +780,7 @@ int mtk_pinconf_drive_set(struct mtk_pinctrl *hw,
> >>  
> >>  	return err;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set);
> >>  
> >>  int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
> >>  			  const struct mtk_pin_desc *desc, int *val)
> >> @@ -790,6 +805,7 @@ int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get);
> >>  
> >>  /* Revision 1 */
> >>  int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
> >> @@ -811,6 +827,7 @@ int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
> >>  
> >>  	return err;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_rev1);
> >>  
> >>  int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
> >>  			       const struct mtk_pin_desc *desc, int *val)
> >> @@ -828,18 +845,21 @@ int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_rev1);
> >>  
> >>  int mtk_pinconf_drive_set_raw(struct mtk_pinctrl *hw,
> >>  			       const struct mtk_pin_desc *desc, u32 arg)
> >>  {
> >>  	return mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DRV, arg);
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_set_raw);
> >>  
> >>  int mtk_pinconf_drive_get_raw(struct mtk_pinctrl *hw,
> >>  			       const struct mtk_pin_desc *desc, int *val)
> >>  {
> >>  	return mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DRV, val);
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_drive_get_raw);
> >>  
> >>  int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
> >>  			     const struct mtk_pin_desc *desc, bool pullup,
> >> @@ -880,6 +900,7 @@ int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
> >>  
> >>  	return err;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_set);
> >>  
> >>  int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
> >>  			     const struct mtk_pin_desc *desc, bool pullup,
> >> @@ -922,6 +943,7 @@ int mtk_pinconf_adv_pull_get(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_pull_get);
> >>  
> >>  int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
> >>  			      const struct mtk_pin_desc *desc, u32 arg)
> >> @@ -948,6 +970,7 @@ int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
> >>  
> >>  	return err;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_set);
> >>  
> >>  int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
> >>  			      const struct mtk_pin_desc *desc, u32 *val)
> >> @@ -971,3 +994,4 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
> >>  
> >>  	return 0;
> >>  }
> >> +EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_get);
> >> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> >> index 83bf29c..af97794 100644
> >> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> >> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> >> @@ -9,6 +9,7 @@
> >>   *	   Hongzhou.Yang <hongzhou.yang@mediatek.com>
> >>   */
> >>  
> >> +#include <linux/module.h>
> >>  #include <linux/gpio/driver.h>
> >>  #include <dt-bindings/pinctrl/mt65xx.h>
> >>  #include "pinctrl-paris.h"
> >> @@ -1037,3 +1038,7 @@ static int mtk_paris_pinctrl_resume(struct device *device)
> >>  	.suspend_noirq = mtk_paris_pinctrl_suspend,
> >>  	.resume_noirq = mtk_paris_pinctrl_resume,
> >>  };
> >> +EXPORT_SYMBOL_GPL(mtk_paris_pinctrl_probe);
> >> +
> >> +MODULE_LICENSE("GPL v2");
> >> +MODULE_DESCRIPTION("MediaTek Pinctrl Common Driver V2 Paris");
> >> diff --git a/drivers/pinctrl/pinconf-generic.c b/drivers/pinctrl/pinconf-generic.c
> >> index 9eb8630..dfef471 100644
> >> --- a/drivers/pinctrl/pinconf-generic.c
> >> +++ b/drivers/pinctrl/pinconf-generic.c
> >> @@ -286,6 +286,7 @@ int pinconf_generic_parse_dt_config(struct device_node *np,
> >>  	kfree(cfg);
> >>  	return ret;
> >>  }
> >> +EXPORT_SYMBOL_GPL(pinconf_generic_parse_dt_config);
> >>  
> >>  int pinconf_generic_dt_subnode_to_map(struct pinctrl_dev *pctldev,
> >>  		struct device_node *np, struct pinctrl_map **map,
> > 
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek
> > 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
