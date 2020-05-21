Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDF51DD75B
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 21:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wveGcbDqDKop426Q8hP9HpXjAZ0XFN7IYbs6PuDmcc=; b=Q2epGluXNnmvWJ
	oFQShupwuY/WFkiQgsfhMzE1mVQbE+4tu9TaGVdvnCuQVD3+KgKCQo5rt4KuZ9WlqM29mUrUEQfNm
	OY62mbrHELKvFx/5mTGLd8AdBqHVUiGUjpDyrng4saZrgYm+vCDNiMIhDF8HCXJOratPMKXYZcbfH
	yjvUYMC/995bMiASryVR4aLkEU/5X8HaB473veO3h3QmwFgoqh7h7vPUCHMhSxX0WyhaoNRUOpxnu
	V20FPS4dDRtY/WLbR9SkH5jwWzMTpm+ItEEIbgrg7A5C96egIu71M9GVmG9lG0wZekpFQ1RoWWH1H
	inwGg7/OqApLVjV3gsog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqyk-0007Kd-03; Thu, 21 May 2020 19:35:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqyW-00079R-KU
 for linux-mediatek@lists.infradead.org; Thu, 21 May 2020 19:35:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id i15so7780084wrx.10
 for <linux-mediatek@lists.infradead.org>; Thu, 21 May 2020 12:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0PiSvAPliSpHmXCPHW82OGwvgeGu3nV4fisqX0ukMVE=;
 b=Mn2izAUaruoDbLEVtEGYwGj8L0xkVVzhfObauat4/vcNCP+EPMEoexK54nlo2t3NO0
 LTIUQPGxAXNwtxA3U2FY3JUp36JClziXCcHERZ6A90YjM36CtMX2opVFVkMQ4L3e/C1r
 9uUYpJi87nLJ5Do9/kd318Qkzfn2oKXsfkMJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0PiSvAPliSpHmXCPHW82OGwvgeGu3nV4fisqX0ukMVE=;
 b=PtGf96ppfyxUQZQkhASJOjKj9yJusH9qYo5OMpbtKII4xrKUrj1dDalQEEfzNHW3GX
 68Q55Yd13OSpLl/4/zzaq/xhRcMxuSeVLb8vH9tuS2oV4w2A2rEG8XwyaRb5fN7nHDDv
 BfPmV0cYAmDCT3ht2TPCq9+yymaX7YmueahkXl8exjTB5DjE1h/JI4SQjejHfTRWi1uR
 Oupk9a3gjeu3B3jcWzfJ1F6Cs9kBeVw4joJdfeohK5aouYTCoTgIUehCi+8U/35aFBWA
 DfTfSGTo1FPqogAsU93JEgfWOEET0hT6vh/qn2NRfaeGuCNOlVs+3kKnjvdp72/bUyFG
 Vy7w==
X-Gm-Message-State: AOAM530PFEyrviH5Lg/jUw9M2NGHXCSj2HRsZZawOxsrkxArJmJlbKQl
 jmG2w4rC4PLskPzBZufYUBCJBg==
X-Google-Smtp-Source: ABdhPJwRx3aYOU3qs7IEJXRm00NEpqShHLzsIlN+v+IXDKvfgZ02NPQmcQhc20kurysHzVjxZtUHQg==
X-Received: by 2002:adf:d0cb:: with SMTP id z11mr182088wrh.116.1590089727185; 
 Thu, 21 May 2020 12:35:27 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id d126sm7967920wmd.32.2020.05.21.12.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 12:35:26 -0700 (PDT)
Date: Thu, 21 May 2020 19:35:25 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [V8, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200521193525.GB14214@chromium.org>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-2-dongchun.zhu@mediatek.com>
 <20200511160207.GA32476@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511160207.GA32476@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_123528_668935_BEC36D6F 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 linus.walleij@linaro.org, shengnan.wang@mediatek.com, louis.kuo@mediatek.com,
 bgolaszewski@baylibre.com, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, May 11, 2020 at 11:02:07AM -0500, Rob Herring wrote:
> On Sat, May 09, 2020 at 04:06:26PM +0800, Dongchun Zhu wrote:
> > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 184 +++++++++++++++++++++
> >  MAINTAINERS                                        |   7 +
> >  2 files changed, 191 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > new file mode 100644
> > index 0000000..5468d1b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > @@ -0,0 +1,184 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2020 MediaTek Inc.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > +
> > +maintainers:
> > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +
> > +description: |-
> > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > +  sensor output is available via CSI-2 serial data output.
> > +
> > +properties:
> > +  compatible:
> > +    const: ovti,ov02a10
> > +
> > +  reg:
> > +    description: I2C device address
> 
> Drop this. Nothing specific to this device.
> 
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: top mux camtg clock
> > +      - description: devider clock
> 
> typo
> 
> > +
> > +  clock-names:
> > +    items:
> > +      - const: eclk
> > +      - const: freq_mux
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the eclk clock in Hertz.
> > +
> > +  dovdd-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.
> > +
> > +  avdd-supply:
> > +    description:
> > +      Definition of the regulator used as analog power supply.
> > +
> > +  dvdd-supply:
> > +    description:
> > +      Definition of the regulator used as digital power supply.
> > +
> > +  powerdown-gpios:
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    maxItems: 1

I asked a question about defining GPIO polarities some time ago, but I
guess it slipped through.

The chip documentation calls the reset pin as "RST_PAD (low level
reset)". Where should the inversion be handled, in the driver or here,
by having the DT include a necessary flag in the specifier?

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
