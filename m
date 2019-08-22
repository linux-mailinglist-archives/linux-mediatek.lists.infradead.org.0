Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB8C99E7F
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 20:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+emkkpahsfUrFIXdIPlPOMsz+ulddJAdVJ23bEYGaI=; b=XX0a65gXCmbOMM
	uhLtE9hJU8UyEFigAmJCb3DZhI0vPUyxNFuBhuMxmry40fxc5uThSlt57I8vBfKfnYki7phqDGJ8Z
	9/zlXn+z/YQNtmSBvbNhqVl6euh7C7Xt6kyXno2wQGnfsvHn4RxIH1DAsUEndSIKaIcNqFD0Br7cF
	xACpihgzgln25z82mPe6FK6N2GzHsNXIChOZV7GK06QcnwUyK8uq1egTCdvNQ5nDvvTb838+GJrGr
	ZdwIyEBI9g5RtWtonf44t9xLnzP0zKEjPg8BlydxTwoubJ9w7riEHdNLz8LsvPzv37bRao2tw70Ai
	tjwW+iqrwjUn6bZ1oj+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rb2-0002qF-Ui; Thu, 22 Aug 2019 18:14:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0raz-0002pq-PS
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 18:14:02 +0000
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AED223400
 for <linux-mediatek@lists.infradead.org>; Thu, 22 Aug 2019 18:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566497641;
 bh=E0tPMOEUv3jrqDmtrvwzedPZXnnURm97wF7wyeFfPrI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rEPVrIANqHOqSJfeCRLws+WJyuKUk9JaQQsjGBRJIAiIp+qTcPJ0Ku4Zk5YQoAi1q
 h7+N4yk/T1mHKy8RmeDqvaL6cpy41HvdOEsvnEdLQC1wegcqCSnXpOkIY8/PBcRKps
 7DwpiqK+JvLZer+86GGJmODZiAY7inkt8TlzuFFQ=
Received: by mail-wm1-f53.google.com with SMTP id 10so6535612wmp.3
 for <linux-mediatek@lists.infradead.org>; Thu, 22 Aug 2019 11:14:01 -0700 (PDT)
X-Gm-Message-State: APjAAAU5AjCpRFl/ktcVtmu9ieMbjYhVKceZVgLyowTUOwjI2+ADibCy
 HhDGoLcjgXmVzVAh6nqIrovgPhFlv8IwD5ruimw=
X-Google-Smtp-Source: APXvYqz9VKO+A36Lao8izp41Osz7VfriIA6pPPz+vN/d2kRbuSlNxEbSGedMUhbQXO1m65E/CzbYTQQNziZlZ0ZLYKk=
X-Received: by 2002:a1c:2314:: with SMTP id j20mr394213wmj.152.1566497639822; 
 Thu, 22 Aug 2019 11:13:59 -0700 (PDT)
MIME-Version: 1.0
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-8-git-send-email-mars.cheng@mediatek.com>
In-Reply-To: <1566206502-4347-8-git-send-email-mars.cheng@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Thu, 22 Aug 2019 11:13:48 -0700
X-Gmail-Original-Message-ID: <CAGp9Lzpsg2ZjP3Ydj+Fo88FXT_jrV=GnJ+vf4AsSNacwEEx=BA@mail.gmail.com>
Message-ID: <CAGp9Lzpsg2ZjP3Ydj+Fo88FXT_jrV=GnJ+vf4AsSNacwEEx=BA@mail.gmail.com>
Subject: Re: [PATCH v2 07/11] pinctrl: mediatek: add mt6779 eint support
To: Mars Cheng <mars.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_111401_847940_3A4D1FAE 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Loda Chou <loda.chou@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 2:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:
>
> add driver setting to support mt6779 eint
>
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>

Acked-by: Sean Wang <sean.wang@kernel.org>

> ---
>  drivers/pinctrl/mediatek/pinctrl-mt6779.c |    8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6779.c b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
> index 145bf22..49ff3cc 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mt6779.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
> @@ -731,11 +731,19 @@
>         "iocfg_rt", "iocfg_lt", "iocfg_tl",
>  };
>
> +static const struct mtk_eint_hw mt6779_eint_hw = {
> +       .port_mask = 7,
> +       .ports     = 6,
> +       .ap_num    = 209,
> +       .db_cnt    = 16,
> +};
> +
>  static const struct mtk_pin_soc mt6779_data = {
>         .reg_cal = mt6779_reg_cals,
>         .pins = mtk_pins_mt6779,
>         .npins = ARRAY_SIZE(mtk_pins_mt6779),
>         .ngrps = ARRAY_SIZE(mtk_pins_mt6779),
> +       .eint_hw = &mt6779_eint_hw,
>         .gpio_m = 0,
>         .ies_present = true,
>         .base_names = mt6779_pinctrl_register_base_names,
> --
> 1.7.9.5
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
