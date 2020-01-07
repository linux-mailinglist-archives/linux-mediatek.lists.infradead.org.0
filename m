Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740D113278A
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Jan 2020 14:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TavuGbL7jNmvst92i1/Dekl4IY6A6JnNethTDCGTmvY=; b=b0ItQk5PmzStMh
	ZKf8zX91p4mxoLYTS4xrNcB2r/ZhPxf4EIBxNLArQF3zrqI2saAzzp7BE8QRbTU4rzkIbrla/YVjO
	xTcdIY3HEHNP9rky9lj+GUSfY4A4lChYmXQSfN5mdoDWI0aAIVShIYMCZBQBBnQGMsUYIc1FZpj6g
	0IM0X+dWywr7qWhz6u36OrbXocy8W/QqM1Q6ahgmx7AyFsdxSc8lCIttTtx/FNUIWRY7Q+3gGnOgd
	oeRuXOVQVlnqMIFeKgJnKM2lToWb4TLd2LQS4gEJij8R9ba9V62UKjvXTpxoKF38h7+J3rMcmHi3t
	ksFnILLVxnlWjklma+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioosJ-0001Ss-96; Tue, 07 Jan 2020 13:26:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioosG-0001SW-00
 for linux-mediatek@lists.infradead.org; Tue, 07 Jan 2020 13:26:22 +0000
Received: by mail-lf1-x142.google.com with SMTP id n25so38882543lfl.0
 for <linux-mediatek@lists.infradead.org>; Tue, 07 Jan 2020 05:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9djqwGIJf2I22OzfnRj3IuEtZ6zVvwdwNk4Hj6ZFA70=;
 b=qehfjqnlIKGhemdvcDzaHIWgPnMIKeEq9JYcoVJcdsSy8Wat4sbe4iABBcAk+56lCq
 n/niykJ5zW3gXIkUyKPDN2QY7xguV1vGofNnIaCmEItNPGFPAFKzl6aFKSLFUfGlhEBc
 h83Je2A3rbiMS+3FWD3mF39kdkdMn9H0hF4C91J4sYY3P9vSbioZkYKUH/HwI8hRXNdg
 dUWKMOcIYgJ6ExKWgP4K1ESqWNneUFp7hc00BfWmQzYO9XUdON/YZbPX4w2Ecr6ckL1J
 j+Q4ONZ5p8qiSABW176nzeVQOcpfF9kkhO5Kr12axgHB4S9HbTwYXs7drtn3eD4Heeu/
 UmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9djqwGIJf2I22OzfnRj3IuEtZ6zVvwdwNk4Hj6ZFA70=;
 b=gH/HXhbUZxhUxKUFnIbFc/fIgYas0YlzbwSr3lvo8m3hqBYdvPmGnbEcItqhDFNtny
 vZkNmUabO3lqKQKiGcqOgyh0qYuMBBLwx/8ghKPxD8DhGD+pn3amcGpE21zv5nSDs1vH
 +PtTvY0T43nadU4GC5Qnj7kfJXJCcy7b/cF1zDMUcRFilIxisHwPrOtzsl91YjcH2rHf
 bh1wBDyzkEzG8sAGyGgPQmTCe5QhI9Dk05Bvq8SUEtqRlKBFPYo3qla6r+2teoicAI9y
 pT5S1k1HInUexgRp5RIR6HmRUFMxTMg5PqVWy2iPJiHggmaJROQGGYnSoNElIeOzDB9R
 4T/A==
X-Gm-Message-State: APjAAAXcSHhqPwKMebrpWdzF8mzlfUk0Rmhun6UZDsvSronm9gePWQ3X
 yk7NHfbLVfr20riOaimTJ/d5WQFpSGpXb7rT57bXcoV+H5Y=
X-Google-Smtp-Source: APXvYqzkfn0LApP777P/NTsWuXQs9WqemFpwgDX6Y8xe92X1MAhfleO+4i8GW0Pi/uidnD4K7AZauJF4tdGd9SZmZZc=
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr58785651lfp.133.1578403577691; 
 Tue, 07 Jan 2020 05:26:17 -0800 (PST)
MIME-Version: 1.0
References: <1577799707-11855-1-git-send-email-light.hsieh@mediatek.com>
 <1577799707-11855-5-git-send-email-light.hsieh@mediatek.com>
 <CACRpkdbto2goahTjzozi_LXXo1QNUTV1wm_rwoFOTcb36w0jkw@mail.gmail.com>
 <1578399400.16092.14.camel@mtkswgap22>
In-Reply-To: <1578399400.16092.14.camel@mtkswgap22>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 14:26:06 +0100
Message-ID: <CACRpkdYEq4FR07LyUSXRzPuQ=HXox7FJm+ABww0hvCYbHmQGkA@mail.gmail.com>
Subject: Re: [PATCH v7 5/6] Backward compatible to previous Mediatek's
 bias-pull usage
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_052620_038119_6F5A6D89 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 kuohong.wang@mediatek.com,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 1:16 PM Light Hsieh <light.hsieh@mediatek.com> wrote:

> Use of "bias-pull-down = <MTK_PUPD_SET_R1R0_XX>" had already been
> described in
> Documentation/devicetree/binding/pinctrl/pinctrl-mt65xx.txt.
> Previous MediaTek chips using pinctrl-mtk-common.c had already use such
> binding. This is so-called backward compatibility.
>
> Besides, according to
> Documentation/devicetree/binding/pinctrl/pincfg-node.yaml, bias-pull-up
> and bias-pull-down can have an optional argument to select pull strength
> when supported by hardware.

That's right, I was wrong about this. This should be fine to use.

> So, I think the propose of using "mediatek,pull-up-adv" and
> "mediatek,pull-down-adv" is not necessary. However, I fail to stop
> upstream of using "mediatek,pull-up-adv" and "mediatek,pull-down-adv" in
> pinctrl-mtk-common-v2.c.

Let's see what Sean says, I am fine with the patch set in general.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
