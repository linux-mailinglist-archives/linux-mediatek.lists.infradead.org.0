Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C6419A08F
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Mar 2020 23:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3b0ZXO21HnsihyjjOjHPdB/cZ/Hm/TB41taxIjsYsfw=; b=cVBpOz7rIqvr3L
	HhlcuWroj34Xt6o+jNAFjytiPqBovpUOTh+NSbzjfJu4qfO65jtmXm+1usXMXGxuCnK/nznJD8T4L
	TjCj+nt2AR/gAYIkrRkSxHs0rXlvc81NUIo0JwBjKTqTJmRmrqS9Zvn5IwZ9TB8QwZYlXhugTwH2H
	3JbIMBx8a5bj1YxUq0CWtnRfKPotLryW2Ui9EvSBSRGd6ctAmFrTDkeU10VgEoLLq4M5Pbh8WBplA
	nvchFHXCKYUDbIClmy8J72FJ9Dx7zcY1rRtGSe5bp7y+j8wLGtMKy2mgeXPLnzgwXgDxrFkao7uZv
	ZOPu7lHMG1iSlPtp6JZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOF5-0007qk-5O; Tue, 31 Mar 2020 21:16:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOF1-0007pc-LI
 for linux-mediatek@lists.infradead.org; Tue, 31 Mar 2020 21:16:12 +0000
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DD9A2145D
 for <linux-mediatek@lists.infradead.org>; Tue, 31 Mar 2020 21:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585689370;
 bh=jf6zoqXWfNCOPCI+Bfu8MGbtJ3B0kxXSXQKXMuUQKKI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1MYy8H73lCY120WVEh+zL9+ak/XkWqWgR2yGBrmBrPHKN7JagqzUcvV2ykYmkhzAs
 BCWPj8OfCHW1nwkvxT3shNUHNi1SCWHqj+szbZXwjNV12R++CQnNXnK51XA4KNX4dr
 gDFIhQEztRF7LJwVAQuRn0LauQPqI7R75E2vGvp4=
Received: by mail-io1-f47.google.com with SMTP id n10so9283656iom.3
 for <linux-mediatek@lists.infradead.org>; Tue, 31 Mar 2020 14:16:10 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3+aVzL6l4vH00HgGeSF1EiNEkBovjiZaO7kwX4sxu5Ws0RP2oJ
 sfrexw3ySehZg2J5VzBXuHBaTScdvwZlq0jHT7c=
X-Google-Smtp-Source: ADFU+vuy0279ZdmmsQkWM7UtgQHdvE2o7mSVyhq21qmJU7mmw0M6FlvRofSohPicffCGA9jF0S915k7kmX9Zfg8ZH/c=
X-Received: by 2002:a02:c792:: with SMTP id n18mr17940258jao.5.1585689369479; 
 Tue, 31 Mar 2020 14:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <1585569648-14017-1-git-send-email-light.hsieh@mediatek.com>
 <1585569648-14017-2-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1585569648-14017-2-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Tue, 31 Mar 2020 14:15:57 -0700
X-Gmail-Original-Message-ID: <CAGp9LzoJ1MiqQhoRnqEgrTP6FycVGJLSQR41FOYK85ic2cgmLA@mail.gmail.com>
Message-ID: <CAGp9LzoJ1MiqQhoRnqEgrTP6FycVGJLSQR41FOYK85ic2cgmLA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] pinctrl: mediatek: make MediaTek pinctrl v2 driver
 ready for buidling loadable module
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_141611_737841_8356894B 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Light,
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
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_rev1);
>

I got build error with the patch

../drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c:529:1: error:
redefinition of '__ksymtab_mtk_pinconf_bias_set_rev1'
../drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c:503:1: note:
previous definition of '__ksymtab_mtk_pinconf_bias_set_rev1' was here
make[4]: *** [drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.o] Error 1

>  /* Combo for the following pull register type:
>   * 1. PU + PD
> @@ -717,6 +729,7 @@ int mtk_pinconf_bias_set_combo(struct mtk_pinctrl *hw,
>  out:
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(mtk_pinconf_bias_set_combo);
>
<snip>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 83bf29c..8823c0c 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -10,6 +10,7 @@
>   */
>
>  #include <linux/gpio/driver.h>
> +#include <linux/module.h>
>  #include <dt-bindings/pinctrl/mt65xx.h>
>  #include "pinctrl-paris.h"
>
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

place EXPORT_SYMBOL_GPL(mtk_paris_pinctrl_probe) exactly at the tail
of mtk_paris_pinctrl_probe definition.

> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("MediaTek Pinctrl Common Driver V2 Paris");
> --
> 1.8.1.1.dirty

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
