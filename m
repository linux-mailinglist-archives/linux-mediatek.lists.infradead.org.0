Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000C38C4F7
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 02:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rqPTQ2aT4glNMdNs/pIgaHtYxgLsfH/95kxoDVHcAg=; b=WGGHIbV4gmlOmq
	6WUOsz3RCTCRV4pRQcuo3PMOjxaVKC/YLSxSshaokGr5F9n4WHO8mHzNi6Zfqtlr1iJk60WHJd6U5
	HraTeIxbaxKxPOnG48xmjmM7FF+AkghEY+1JAEh5eyS0pC/xzD+Vx291AlJQSNOZDFO88v+N8Ht25
	Pr5Mx1ZYkdbgo4sxpAnvPEB0sRwK7g0eTKZC+nwhxt/8AE+AlL9rDUEnmBIJ9e39p1d9yIfPN+LEx
	lF2LjAmh0zUD6mQHEdr0/N9r4Bkhb9dOcDISi4pWGcyg/uNnqS4hSAe6pLhrh0bbWbgfxi/nmCXee
	ffAHuDMmQyhlWqkkdHEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxgqw-00088s-OZ; Wed, 14 Aug 2019 00:09:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxgqq-00088A-AY
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 00:09:17 +0000
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8586A20843
 for <linux-mediatek@lists.infradead.org>; Wed, 14 Aug 2019 00:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565741352;
 bh=NGCjQUMppzGC46S5+/+MwbDqpRJ6D0XRhJjiDj5cviU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vgaW+4fGXXlQYWi3ipOqfpuiyxg/c4cx4aTK5d0appRa+6m/AN5HvQkgbNiT1ADtP
 3kL/zUdYLztowLI7bmCUX0uqcehExCUJS8JkB4IEHuUKdpN0DA3yFIBjfX9UTkms6B
 ykPMUYCxU/Ocp/LGrfVvG4Ut0J1y/dl8CLOIlQOQ=
Received: by mail-wr1-f51.google.com with SMTP id z11so7447650wrt.4
 for <linux-mediatek@lists.infradead.org>; Tue, 13 Aug 2019 17:09:12 -0700 (PDT)
X-Gm-Message-State: APjAAAVhkQtHmaA8Ja2/7g0vfJI4FfDYR9b4lGFlw2Sl43ABNm+RotRM
 iCXJ9OT0/Bhpf53eyXrEh0901CvloOsUGvaIq6Q=
X-Google-Smtp-Source: APXvYqwivDoGxxCEPO2MQaT8j3ps33eTCZBUFumiEdTK3SM4Cy+U4YNRbjoczyh07Yjigp07HYQZ2T437ukacnKbfZ0=
X-Received: by 2002:adf:f90e:: with SMTP id b14mr489711wrr.124.1565741351010; 
 Tue, 13 Aug 2019 17:09:11 -0700 (PDT)
MIME-Version: 1.0
References: <1565686400-5711-1-git-send-email-light.hsieh@mediatek.com>
 <1565686400-5711-3-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1565686400-5711-3-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Tue, 13 Aug 2019 17:08:59 -0700
X-Gmail-Original-Message-ID: <CAGp9Lzr+cHZ5Ki6u1LP5LeOkuBZhbZR-xfDUHn24-w7xM2YSmg@mail.gmail.com>
Message-ID: <CAGp9Lzr+cHZ5Ki6u1LP5LeOkuBZhbZR-xfDUHn24-w7xM2YSmg@mail.gmail.com>
Subject: Re: [PATCH v1 2/5] pinctrl: mediatek: Supporting driving setting
 without mapping current to register value
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_170916_420367_E00C7C84 
X-CRM114-Status: GOOD (  17.82  )
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

Hi, Light

a few nitpicks, but the overall changes look good to me

On Tue, Aug 13, 2019 at 1:53 AM Light Hsieh <light.hsieh@mediatek.com> wrote:
>
> From: Light Hsieh <light.hsieh@mediatek.com>
>
> Mediatek's smarphone project actual usage does need to know current value
> (in mA) in procedure of finding the best driving setting.
> The steps in the procedure is like as follow:
>
> 1. set driving setting field in setting register as 0, measure waveform,
>    perform test, and etc.
> 2. set driving setting field in setting register as 1, measure waveform,
>    perform test, and etc.
> ...
> n. set driving setting field in setting register as n-1, measure
>    waveform, perform test, and etc.
> Check the results of steps 1~n and adopt the setting that get best result.
>
> This procedure does need to know the mapping between current to register
> value.
> Therefore, setting driving without mapping current is more pratical for
> Mediatek's smartphone usage.
>
> Change-Id: Iacdabf0cada230fc5acad96673810c12a6c4556d

remove change-id

> ---
>  drivers/pinctrl/mediatek/pinctrl-mt6765.c        |  4 ++--
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 21 +++++++++++++++++++++
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h |  5 +++++
>  drivers/pinctrl/mediatek/pinctrl-paris.c         |  1 +
>  4 files changed, 29 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> index 32451e8..e024ebc 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> @@ -1077,8 +1077,8 @@
>         .bias_disable_get = mtk_pinconf_bias_disable_get,
>         .bias_set = mtk_pinconf_bias_set,
>         .bias_get = mtk_pinconf_bias_get,
> -       .drive_set = mtk_pinconf_drive_set_rev1,
> -       .drive_get = mtk_pinconf_drive_get_rev1,
> +       .drive_set = mtk_pinconf_drive_set_direct_val,
> +       .drive_get = mtk_pinconf_drive_get_direct_val,

I prefer to mtk_pinconf_drive_[get,set]_raw_val that would be better
to understand.

>         .adv_pull_get = mtk_pinconf_adv_pull_get,
>         .adv_pull_set = mtk_pinconf_adv_pull_set,
>  };
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 4687f63..23a9529 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -607,6 +607,27 @@ int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
>         return 0;
>  }
>
> +/* Revision direct value */
> +int mtk_pinconf_drive_set_direct_val(struct mtk_pinctrl *hw,
> +                              const struct mtk_pin_desc *desc, u32 arg)
> +{
> +       int err;
> +
> +       err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DRV, arg);
> +
> +       return err;
> +}
> +
> +int mtk_pinconf_drive_get_direct_val(struct mtk_pinctrl *hw,
> +                              const struct mtk_pin_desc *desc, int *val)
> +{
> +       int err;
> +
> +       err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DRV, val);
> +
> +       return err;
> +}
> +
>  int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
>                              const struct mtk_pin_desc *desc, bool pullup,
>                              u32 arg)
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
> index 1b7da42..b3bada0 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
> @@ -288,6 +288,11 @@ int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
>  int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
>                                const struct mtk_pin_desc *desc, int *val);
>
> +int mtk_pinconf_drive_set_direct_val(struct mtk_pinctrl *hw,
> +                              const struct mtk_pin_desc *desc, u32 arg);
> +int mtk_pinconf_drive_get_direct_val(struct mtk_pinctrl *hw,
> +                              const struct mtk_pin_desc *desc, int *val);
> +
>  int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
>                              const struct mtk_pin_desc *desc, bool pullup,
>                              u32 arg);
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 28b4951..71c94b2 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -964,3 +964,4 @@ static int mtk_paris_pinctrl_resume(struct device *device)
>         .suspend_noirq = mtk_paris_pinctrl_suspend,
>         .resume_noirq = mtk_paris_pinctrl_resume,
>  };
> +

remove unnecessary the empty line

> --
> 1.8.1.1.dirty
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
