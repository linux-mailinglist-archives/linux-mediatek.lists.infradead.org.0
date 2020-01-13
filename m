Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD66A138A78
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 Jan 2020 05:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmfdRME9LHeaV460pNuF7okEWE4nLwAFEUJirFFtEkc=; b=O2YFiDTEmxQzPE
	OZjRvxl02GwNFjCwGlRS8qgXqt1amaGe7j5oWD1xzlG1MKBGpxBkMEavWKUKknGV+9sdpqriDvLJ/
	trJ0qxsEShsUKckZTljt2KJxoccfrSbqzNuCwZcPCesJ1Lobp39pa+O9giU9XH6KYADu6BMm7lIM9
	GWfkLLO+NOHbl5iliuyFs/M6ut9bsY1B2b7CbK3OVdXi0A1brDKQHsqIZfrjlw0YM9KHSLsx+ByUW
	F/MujnSKx30iQA9jwMJ84aM8IV4uPlT4PQ6SKCKexddt5yFHjeEtHEBaJrptGp8lD6+SgwE6j3vKt
	EW6Xu8YOUtMcHymz5BLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrij-0004FI-Dp; Mon, 13 Jan 2020 04:52:57 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqri6-0003b4-16
 for linux-mediatek@lists.infradead.org; Mon, 13 Jan 2020 04:52:20 +0000
Received: by mail-qk1-x742.google.com with SMTP id c16so7411192qko.6
 for <linux-mediatek@lists.infradead.org>; Sun, 12 Jan 2020 20:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e91pGy24VVvYbYr4rZmi8ICedLezu/8qcs1+qti5PJ0=;
 b=nJa1RC4Is4dH0rAe9i+D5MWd8LXDimOk6ZHr02eCBlWBA8xjfA1YwLeH281ThOQo26
 3n0FogtRyfXpjYPLqCmbEwWd6PleQsb+MViHIIAEWMv1TouAMJ/z0HNp/N2WOxWDQey8
 01RkACdWQwDmWqyqttBUE7JWHXXbHLKWKmir0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e91pGy24VVvYbYr4rZmi8ICedLezu/8qcs1+qti5PJ0=;
 b=DrFJ/15WHNuMxGLzLVklGQhQ0xVqR6jtrI9ZdpaZSQH0N4VATlEgqQGQkccwNPNaae
 4toO5uLoKbFOzvPq0l70nU9yR3HkEyt3QlInjliHUbdlu0znAerW5Iq6fMxERlmIkHXz
 V7iIez7FGXRefTfOs15XaD3cIfQn4ovUufvLL+a9VxuhN9IdX/FARrhjrWCWWjVYdkx2
 yeZg8AjJLjNSGBrmj58If/ekpecJ8yqmdfVDWUhZYT2QAbNRw0bKlvhUJBv3LtFhTTlP
 wq+2Vqygi9gQB1H0yvCZtVsCQfAc4UX7CtYFLPXhzgQI2ixV7TEEkn52zgshw51N7DGG
 1Pkw==
X-Gm-Message-State: APjAAAX7Y2ObM3GRAWBcbyNOT11GyHNVicECUOrVxIoOYB2YNgVsuUeN
 vBHLzGl2tckDbtxh8/9HB/Sb4BNVw3XRVsMc7p3Rtg==
X-Google-Smtp-Source: APXvYqxQiKAiE5eUtsTQf70lo04q3M2951zkP4HBkJ3NdNMiSbRwCRCDOu23qOqzzIb3z7Vd3CR6g4sfwUCYbV478kw=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr9903798qkg.457.1578891136362; 
 Sun, 12 Jan 2020 20:52:16 -0800 (PST)
MIME-Version: 1.0
References: <20191226093930.22413-1-yong.liang@mediatek.com>
 <20191226093930.22413-2-yong.liang@mediatek.com>
 <675aa211-eba5-e44c-0931-32c1b6d5ca8b@gmail.com>
In-Reply-To: <675aa211-eba5-e44c-0931-32c1b6d5ca8b@gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 12:52:05 +0800
Message-ID: <CANMq1KDAsgxaxU+GTuDMLbQ-MSQHsk+iQCNDSRJ+SPRODyebDw@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] amr64: dts: modify mt8183.dtsi
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_205218_513209_72431920 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Yong Liang <yong.liang@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 10:05 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 26/12/2019 10:39, Yong Liang wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> >
> > Include mt8183-reset.h and add reset-cells in infracfg
> > in dtsi file
> >
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
>
> applied with fixed subject line to v5.5-next/dts64

Well the subject line here still says amr64 ,-P

https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/commit/?h=v5.5-next/dts64&id=42f8e5356122feb2003d7696c83cfec46daa8d44

I guess you can still fix this up as the branch has nothing else on it
and we shoudn't care about stability.

>
> Thanks
>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 10b32471bc7b..76bfcbdf097a 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -8,6 +8,7 @@
> >  #include <dt-bindings/clock/mt8183-clk.h>
> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> >  #include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/reset-controller/mt8183-resets.h>
> >  #include "mt8183-pinfunc.h"
> >
> >  / {
> > @@ -227,6 +228,7 @@
> >                       compatible = "mediatek,mt8183-infracfg", "syscon";
> >                       reg = <0 0x10001000 0 0x1000>;
> >                       #clock-cells = <1>;
> > +                     #reset-cells = <1>;
> >               };
> >
> >               pio: pinctrl@10005000 {
> >
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
