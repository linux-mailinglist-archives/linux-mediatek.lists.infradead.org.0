Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A319AAE6
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 10:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znZZS0Kd8/4K4Qn8TnNRywkhsJxYHa5muIJZHjBOiKg=; b=TddeRHeczJUvIB
	fLzkmad8l86GbPBa4eymHnyx4JwyIAtSudFf9H61CA+XqirhOzHD5JYlSid6cXhsFY4FTXFBvYbQv
	BWHFEuobwHRX6VDuORF5rU3V5GzPzijR0rHw5K4qcLU/Tj2qnoU3bgQqKNnALFRpu62c8D4krMgrM
	6NQmv3jM1rNiP9Vtkt1UwnPL5CQbzhftSoI8EEasCVHHExDKqNctDtHJbDxq9eAk+iFTMLhJ7WSmH
	P7eZWdI611d7BCFq06ZR5SIAWxKAbgWh3kBPc/l7qYvW2u+vuYm9zHxtkSyoLWCH4vaKNnmrmAi4f
	tgL9CBYDNxC1rL/SZkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Nt-0006xs-Ac; Fri, 23 Aug 2019 08:57:25 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Nk-0006xP-Tb
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 08:57:18 +0000
Received: by mail-lf1-x143.google.com with SMTP id r5so1086842lfc.3
 for <linux-mediatek@lists.infradead.org>; Fri, 23 Aug 2019 01:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a/R2J79LKOKlLeZ/xIkFf9uifEgRMGT7tAE/FX+J+fk=;
 b=h8cIzFHRwV5mKvh20JVoTWYAVSCIkWyjSzPx/vFSHkOSlO5Q4g9CCbm+693s4TXchd
 FgS3UGD0guDUAw5xUViOFwLDP+ix8kP+F+oK5Shgc5An7QkANVSs7IZOKKfE0WiEXnef
 kPY2tdrxMXtW0xoIni2RPvEfgFvOX+gRUf2nclzTLsMc0FJCRgdhGKlGBy3IVnZWfltC
 LqxGoZo26oS2KvwARlRA8I8eNM6EWNRO4SaOtPtGfw1U39DRvi2A98cs++ugvTCGYM7d
 2Ge1VMDoj2+9Xy/800qepwswucADX+MTC27muULbqLYD+3WVK9Ym9l1yrBdICpClSvpX
 HflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a/R2J79LKOKlLeZ/xIkFf9uifEgRMGT7tAE/FX+J+fk=;
 b=KG10wVvuQ67WQBauXg2lFnLl2W4OV1LW76QDI7ZRRFE7VR+wH4ELWNnSS18ewSrA6u
 ivXrmOwXDz7b/Lm1D9ETSoGCFWuLIuujHBcZf+EoEo3X3sSEYNoorW6COpsLd1xzGUMo
 zycUAYqwiqSD3Zu1UKPQxMTDVL3fCaLI+/20UoKFeKHcgJE9Klj0ntIvVkuBi9uhgd5y
 bKTzkdYv7j0GpheYNyQv0qESNdvwyIhjfEj0Fhnp3ZL3ZKBnRKdFxOpjyjUKex+sOUTe
 xKlvvQ/JLECI++uDRVq5HiZgxL51fbUDChs3DhVvWGN9e7Zu9RxoiCZPNOJRnbs44+Oe
 bIlw==
X-Gm-Message-State: APjAAAXS+6mgNecZt6+JGA9JxuLaeH0ZkxmPxrPQrOgpY6voTkTiR0yP
 RMemiw6QLDWTIWIy+MF+Mshw7DkDkTrXeQpR1I2j6Q==
X-Google-Smtp-Source: APXvYqyiIRQnPqOMRMnznsHxW2APqKA5JW/FUTpLK9hj/I1LedUm+QCEFmX2UPpcBK5I9whssuW2AmLbJBfUVKBqcLU=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr2135109lfi.115.1566550635185; 
 Fri, 23 Aug 2019 01:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-6-git-send-email-mars.cheng@mediatek.com>
In-Reply-To: <1566206502-4347-6-git-send-email-mars.cheng@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 10:57:03 +0200
Message-ID: <CACRpkdZa_sQgvWC3ic0NxrVi9gS1cNTsV-wa-SDpA0e5kutBRw@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] pinctrl: mediatek: avoid virtual gpio trying to
 set reg
To: Mars Cheng <mars.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_015716_966598_6CB32930 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 wsd_upstream@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sean Wang <sean.wang@kernel.org>, Loda Chou <loda.chou@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:

> for virtual gpios, they should not do reg setting and
> should behave as expected for eint function.
>
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>

This does not explain what a "virtual GPIO" is in this
context, so please elaborate. What is this? Why does
it exist? What is it used for?

GPIO is "general purpose input/output" and it is a
pretty rubbery category already as it is, so we need
to define our terms pretty strictly.

> +bool mtk_is_virt_gpio(struct mtk_pinctrl *hw, unsigned int gpio_n)
> +{
> +       const struct mtk_pin_desc *desc;
> +       bool virt_gpio = false;
> +
> +       if (gpio_n >= hw->soc->npins)
> +               return virt_gpio;
> +
> +       desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio_n];
> +
> +       if (desc->funcs &&
> +           desc->funcs[desc->eint.eint_m].name == 0)

NULL check is done like this:

if (desc->funcs && !desc->funcs[desc->eint.eint_m].name)

> +               virt_gpio = true;

So why is this GPIO "virtual" because it does not have
a name in the funcs table?

> @@ -278,6 +295,9 @@ static int mtk_xt_set_gpio_as_eint(void *data, unsigned long eint_n)
>         if (err)
>                 return err;
>
> +       if (mtk_is_virt_gpio(hw, gpio_n))
> +               return 0;

So does this mean we always succeed in setting a GPIO as eint
if it is virtual? Why? Explanatory comment is needed.

> @@ -693,6 +693,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
>         const struct mtk_pin_desc *desc;
>         int value, err;
>
> +       if (mtk_is_virt_gpio(hw, gpio))
> +               return 1;

Why are "virtual GPIOs" always inputs?

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
