Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEB61CF54A
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 May 2020 15:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MzTVGGozCegBvka8wFflrIUfyB4WjWnWuSYRRSofFk=; b=loIS1sMTTDzo12
	b7N+3kWcWwTRbCLmwUhuJMXa34fxvMjdn/C63Dlw45CU00UXVuK2dCeYf6jKP66SiaAOZ1gmIUPfs
	xfMgNqwhsQNnkrmjWy8E0imG0cVquuNw9oVJGy8u0Rus9FbF5uK6fUcGpXiCVUT/IEinOc07rXxkK
	YSe8bV2aSPe44O+rVm8F+svngKTL/vhQ0qlMPSdunSZrdBC3QaPt+abrzg2ZP3GCPrtqhmH5cKkZZ
	dR1bRiz2GiqIPcrdR9rbMm+tsq6WeMpl4cdyDo++rxN4CyMRwG+TCui/D9Y98dkcRp9vT3HhOtpRO
	Q4yTkhGyrGzT2oaxFifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUgs-00086p-HU; Tue, 12 May 2020 13:11:22 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUgo-00085v-Vi
 for linux-mediatek@lists.infradead.org; Tue, 12 May 2020 13:11:20 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so13540509ljj.11
 for <linux-mediatek@lists.infradead.org>; Tue, 12 May 2020 06:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fNfgxj6D87Y6aWL+yxcHi3/ZDBy+NqsDMh/WXoRdX1U=;
 b=XXYe6w33B97BoR/z6hG5JEkETOvNGNMrZV96hfo5kh1O8zhaVuGYzOPweM95vq0kjU
 57EFOdkvWl3WAQHXg6Q3o4JWFKEZSbnpmV/bqR9djJc6ms9oMHzk5NXs7kURhR8pGUq0
 RBLUP8xcQSN69u+il8uS+gDxeN99P9wC428Q4zyI+v5miNcPdGXE3x03jXF0iWESZJc/
 QP7APn9LIfbzIqgsFhVNU/CbuytCzkybv5IBz9YA7Ig9LIpwkYfGo2cnUmS5zhHj1vse
 QuhgnzamTqzY9r93jiDGKGasVJQBKPE4HMO+FM9bR/8XVlpKeaTTdLFF+hB9mmHt4OUL
 iKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fNfgxj6D87Y6aWL+yxcHi3/ZDBy+NqsDMh/WXoRdX1U=;
 b=IkcyVwPCMsYNHtBnqPTlAjqG+pl4ACccMp+ms9sCzHbNiuGVtnpKaUsp0aW389uD/z
 g8hwcTH19cS4XtIQu7Z6sNn3l/hfp7qXlP2aLRaElrOb3dkYlBF5ZBdqTMJeuJY/0AVQ
 bSjsc02sSnCfyADNYjiylCfNG0YInWtLon7cx6h33dwr9A/kktXZJ8dtL1Kasud0XqKm
 IdAWG2dTaFKJrPoYV0u3xUNx7p5UtYfm8Yf6TLBPrQKDBWt58tleDuXkIjwWU9s4f8fy
 1mH3ErShFwxWMl7a10AN/WOGUI0IFGnOZob1HTOqeuxzHs3QRKALph0MYJR9ogtQBGuI
 I3Fw==
X-Gm-Message-State: AOAM531gPhohrnRjrcNKzsAB/FzjdWXhjjGIZssL594ZE7r7T6OmyqeZ
 kvmJGVVMHw0Vyl5FfY31ogdaRrO1ZI1KIiSIEQzX9g==
X-Google-Smtp-Source: ABdhPJyseI75vZ2crF7NrcrcTQnpEY6FN7zltnf0g/qE5/ZQT6YyGMv6RCtLFh0M/N1vs0bqqMnH4EcVGx1QC2FlSGw=
X-Received: by 2002:a2e:8087:: with SMTP id i7mr12781831ljg.99.1589289076229; 
 Tue, 12 May 2020 06:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140848.554957-1-arnd@arndb.de>
In-Reply-To: <20200505140848.554957-1-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 12 May 2020 15:11:05 +0200
Message-ID: <CACRpkdZCVY6ph5WH+fUdbuc4yzEGkmDmUZ7L9HFHffB=73Cc+Q@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: mediatek: add pinctrl-mtk-common-v2 module
 license
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_061119_199595_52605669 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sean Wang <sean.wang@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Light Hsieh <light.hsieh@mediatek.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 4:08 PM Arnd Bergmann <arnd@arndb.de> wrote:

> Kbuild warns when this file is built as a loadable module:
>
> WARNING: modpost: missing MODULE_LICENSE() in drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.o
> see include/linux/module.h for more information
>
> Add the missing license/author/description tags.
>
> Fixes: 8174a8512e3e ("pinctrl: mediatek: make MediaTek pinctrl v2 driver ready for buidling loadable module")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
