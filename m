Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB11145C9D
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Jan 2020 20:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gj8T+y/Inwp2GyRY3EBveV40sVxCw1rpn+Ujvuk6Lqc=; b=fdyoI9k848Am4c
	ouKFBg9+I0ejMF6CTuwwaXQHqgxI67WjtBjBqbMA8rn++LOH7i9V9yZ96wZAIpSzhMfpvizJyOqf4
	9cWgyyCB7Ayd6OtbLWghEU5lg5dyr7z7eERzyKtI0hYKaM4sT6k4vNBZMtGQ6VaCfPd6938RvLWWR
	Z8/QQjaxpLsdgNtmo1Xgfhw31LGk+J57baXAfxtk5tf94lmwYS7BpFFwlWNZiQU30Ll5/oeQrisP7
	v864E5ilV74McfRCj9Om2N5hwof5HafkswNtWbJUIElogzNMv0OWnqI7k/TQ/ybqINwMAQ0fd/XUH
	bI2rWvnbOZkXWy3B2psg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuLuD-0007RP-OP; Wed, 22 Jan 2020 19:43:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuLuB-0007Qw-BT
 for linux-mediatek@lists.infradead.org; Wed, 22 Jan 2020 19:43:12 +0000
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1F4E24655
 for <linux-mediatek@lists.infradead.org>; Wed, 22 Jan 2020 19:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579722191;
 bh=A90BQl2RN2zbfyWz1gVKm18acKQthqJdIb4G83Hj8zw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OIts7Fe5sKuVNBOHwDMDngnIZ5ZZUdqywiV0gklD8cZ89LANd1gvTpVdvz7C/w572
 qPQw9nlzvENXfN2U6IpN2w6h3+eu8DGep0/3Je9DyKp1igtSJj4VFR/a02y4jEP+Pt
 wo4gGrYC6OzXA9ZNI/DQMn2+zq1irtB6/hHOMgO0=
Received: by mail-io1-f43.google.com with SMTP id t26so431887ioi.13
 for <linux-mediatek@lists.infradead.org>; Wed, 22 Jan 2020 11:43:10 -0800 (PST)
X-Gm-Message-State: APjAAAW2vngRdOM2EZem8246JcMLBRVXm8Eedv1ypM5NuS5wVgALFKFX
 GVi4+Si99z0g16bL7s6YA9iWw9uUH1RdHma18yQ=
X-Google-Smtp-Source: APXvYqzdEnlQiuzPtG5eVAR0sRe8hnTBInOwWTvmLS9vE8nNrXJp7n6ilt+ClJZ78Hhs87Zp1aVUE38mh90sY2c5KgA=
X-Received: by 2002:a6b:f206:: with SMTP id q6mr8435332ioh.264.1579722190438; 
 Wed, 22 Jan 2020 11:43:10 -0800 (PST)
MIME-Version: 1.0
References: <1579675994-7001-1-git-send-email-light.hsieh@mediatek.com>
 <1579675994-7001-4-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1579675994-7001-4-git-send-email-light.hsieh@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Wed, 22 Jan 2020 11:42:59 -0800
X-Gmail-Original-Message-ID: <CAGp9LzpA3fGC8wHuEiJjkju1DLTt-3NJL7Q7SerxAP68B2pXZQ@mail.gmail.com>
Message-ID: <CAGp9LzpA3fGC8wHuEiJjkju1DLTt-3NJL7Q7SerxAP68B2pXZQ@mail.gmail.com>
Subject: Re: [PATCH v8 4/6] pinctrl: mediatek: Refine mtk_pinconf_get()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_114311_432464_B9E004A8 
X-CRM114-Status: GOOD (  18.71  )
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
> Correct cases for PIN_CONFIG_SLEW_RATE, PIN_CONFIG_INPUT_SCHMITT_ENABLE,
> and PIN_CONFIG_OUTPUT_ENABLE -
> Use variable ret to receive value in mtk_hw_get_value() (instead of
> variable val) since pinconf_to_config_packed() at end of this function
> use variable ret to pack config value.
>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>

Acked-by: Sean Wang <sean.wang@kernel.org>

> ---
>  drivers/pinctrl/mediatek/pinctrl-paris.c | 40 ++++++++++++--------------------
>  1 file changed, 15 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 2f07500..d09a726 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -78,7 +78,7 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>  {
>         struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
>         u32 param = pinconf_to_config_param(*config);
> -       int val, val2, err, reg, ret = 1;
> +       int err, reg, ret = 1;
>         const struct mtk_pin_desc *desc;
>
>         if (pin >= hw->soc->npins) {
> @@ -107,17 +107,11 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>                         err = -ENOTSUPP;
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
>                         goto out;
>                 /*     CONFIG     Current direction return value
> @@ -128,20 +122,22 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>                  *                     input        1 (= reverse HW value)
>                  */
>                 if (param == PIN_CONFIG_INPUT_ENABLE)
> -                       val = !val;
> +                       ret = !ret;
>
>                 break;
>         case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
> -               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
> +               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &ret);
>                 if (err)
> -                       return err;
> -
> -               err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SMT, &val2);
> -               if (err)
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
> @@ -154,13 +150,7 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
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
> --
> 1.8.1.1.dirty

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
