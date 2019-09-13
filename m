Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99870B1DCD
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Sep 2019 14:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcvkorwCGjx9zrtwjc1VVnGiipv5FH2LsteXOC/rBXE=; b=AsyeKmkC3NAbyV
	V03eEu/lAQeJ2RvqdRA9PWzVtx/NlzkvaPNDh/rNog+rdtxMMHHgRBtL6ZdiM/h/CWGwuyojp3VGM
	xy3nwWS3NpFiW9MXdhxxF9IL67J3gg0czzsK+zEDUywziaWj6t4kO3St3j+7AnBHsIMSs4Hvi9adB
	A5QCTX3IHUuliSEg0O3RZRu7EZC1j6Vhj52aIyl7lXfCZmedcyuvqZAH49xpuXUP+baSVCJQtsPpw
	XKclbwOSBiXTQ5xjBP05cgosoHaxrTxotdEN9QiEMdm08iv22XdGvFpq/sqq7yOwYOem2+1GGXmSc
	EvI9bpgut9tigYknmxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8kre-0000Km-FU; Fri, 13 Sep 2019 12:39:50 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8krY-0000Jw-0u
 for linux-mediatek@lists.infradead.org; Fri, 13 Sep 2019 12:39:45 +0000
Received: by mail-lj1-x242.google.com with SMTP id q64so16430930ljb.12
 for <linux-mediatek@lists.infradead.org>; Fri, 13 Sep 2019 05:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8pSb7ipxDEbBBNYVFT9VmqMM2iZRGR+yb26FbUargVY=;
 b=YhjYxFjBqg+kG8mrU9/YmXPsS8hajlgFK3l9scWiFwopNjmhYW1Gpoa7g1nTliuW3o
 zCwMwBECsgn0FldeUKIVDrYPrme2jmYbyLIILUk2p+KGL2X833RHWZYfW5KYEtdIMoCi
 em1FI5GEzDzRzVXo+NDJjjkkZZc00VvallTjOY7+ifw/eZI54eXXfUiP/QfsGKUfySPE
 ++0HHZcYgbg7Or8g26dVFn0JzOHfqCEAfoW1b/Si20aQ7FVrTPR4vDEcTL88Oex9A5Kh
 DTDc1AGZLSFXs14Om5nO7DEQJq665Zk90lody6chSrUV93xuAWU3KmueptCtMb+lHY8Q
 +V7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8pSb7ipxDEbBBNYVFT9VmqMM2iZRGR+yb26FbUargVY=;
 b=FmdKFuhIpmZlYPrv7qpCiq23WIEVqt1kB4SmKwCKa33325Dw/cWjIZrsOcjohpqzuq
 rBNHJvlxCHV6Fe4T6nV28MG324G+0sKTGqGk0bQ6lT8YDVdY4dckNCVNWdSHQhpqUVP/
 WZe+zqVFlZVwhxmEAqOnyIfs3XooXgjtF9rfPWjKYAmB1MaIGRDvUI6DWya/w3AQ07R9
 10NDEeSEzdZcW+KRm9fjMS7FUCJiMLam8hE7h9qIDB9XttViZO9X0NngTZR0v5QfIcvf
 VnHT+vYNEqM02xg2QgijNDQBG5fiVlGT4cvr300+rllT9jSI4IIF5VS0IrTefU1KwQFq
 4Znw==
X-Gm-Message-State: APjAAAUV8HPy4bgr0qyVLYh7q7HeAA9OI72BnHLkzxoM22rDZ2FqukMO
 zMi6QrM6+EJXswSkoBaaowhcNz+iqke5wUDumwNBbg==
X-Google-Smtp-Source: APXvYqx/xoS6+u0lk/Rz7dPREJGGhbLK5x/VIw77KG0tzs3ZyOV1ZNL4/NxFs8cMHh7WRsLPa+4qT2M/8yUlnTB3vi8=
X-Received: by 2002:a2e:7d15:: with SMTP id y21mr22856642ljc.28.1568378377447; 
 Fri, 13 Sep 2019 05:39:37 -0700 (PDT)
MIME-Version: 1.0
References: <1567662796-25508-1-git-send-email-light.hsieh@mediatek.com>
 <1567662796-25508-3-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1567662796-25508-3-git-send-email-light.hsieh@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Sep 2019 14:39:26 +0200
Message-ID: <CACRpkdZnn2JdUjDO7518jBn_fLwH+89P6WTC1M9CpsxZ1CSgGA@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] pinctrl: mediatek: Refine mtk_pinconf_get() and
 mtk_pinconf_set()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_053944_087944_D19924C2 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 7:53 AM Light Hsieh <light.hsieh@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> 1.Refine mtk_pinconf_get():
(...)
> 2.Refine mtk_pinconf_set():

This explodes on the build servers and it's because of this:

> @@ -78,93 +78,75 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
>  {
>         struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
>         u32 param = pinconf_to_config_param(*config);
> -       int val, val2, err, reg, ret = 1;
> +       int err, reg, ret = 1;

Deletes "val" and "val2"

>         case MTK_PIN_CONFIG_TDSEL:
>         case MTK_PIN_CONFIG_RDSEL:
>                 reg = (param == MTK_PIN_CONFIG_TDSEL) ?
>                        PINCTRL_PIN_REG_TDSEL : PINCTRL_PIN_REG_RDSEL;
> -
>                 err = mtk_hw_get_value(hw, desc, reg, &val);
> -               if (err)
> -                       return err;
> -
> -               ret = val;
> -

Updates a bit, but look on the reg = line:
"val" is still used.

This patch can not have been properly compile tested.

Please rebase on latest "devel" branch from pinctrl, fix up the problems
and resubmit the entire series after making sure it compiles and works.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
