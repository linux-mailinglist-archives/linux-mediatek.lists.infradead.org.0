Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C509D13236E
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Jan 2020 11:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3jyUtcrTeCR1t0E67U/6GwaukDpvT/71cavgDKPjv4=; b=Cv2iVoB7/iEOZO
	rd3fANlqIuQuPc1icN2Mi/JPHT/Dqxs/yqWcfJ7Yi5m8k0UrmxuKmUMgmXED4urqTazEwL5eb3M6q
	/AeruwbaEwjRCZaVbv2NEttqFsC4lgeIhD4aYCpsDkvffs1hZsVQl85XDlgwrqy5RWQv446eAxQES
	af6M9tP8zcLWoOsphaVJ1pbEwLgSH3zU1p4CPTcWdYe0i+wVMyQaWV4hf8pZMDnUdwwQBPs8DK/4b
	26uy4UF4gXQUWBk43WisDWYf+oZi7K4iKIXjCM2D4JENM32gQVZD3SA6cer0jv9vmJAkFy3foLPC+
	QW2YFR6DpjLV1kq4Q5Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolyN-0006OJ-2C; Tue, 07 Jan 2020 10:20:27 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolyJ-0006NQ-Qt
 for linux-mediatek@lists.infradead.org; Tue, 07 Jan 2020 10:20:25 +0000
Received: by mail-lf1-x144.google.com with SMTP id n12so38483389lfe.3
 for <linux-mediatek@lists.infradead.org>; Tue, 07 Jan 2020 02:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eMXkNg8gjjjP4/UPSl/T3BVhY6m7trOu4dhjFlvWIdM=;
 b=xCw2aOcDbDhAosRUZpI6S8jMUrGPkDQqWqFwb5KY/DgItDqPB6ptgX5V8gs2yDC82+
 TQSjZ5E2cLNKjaz6JtEmt4T7mFfIrrPYNyrT3jiAN6/2Iyc2srA526cttuVeaA9GgZy7
 RsjrRB4c79+Wti1TvIpqtZa5J1rHZihfl2JV8GWrftEngwr59RFHWw/BAxyZc22OAW9/
 mAqEQpKUAtdMyffk8S0eL1YYz/+fwuQPZL+9BCsW8/zdkEbMRl8S/rExnFRhho40HLDS
 VkvUCyyWA7t7vhznmbNtN4ENfD3DyIk0oCQtLNU+auQQZHfpdNT541zidQxXe0Qz4M0T
 FgfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eMXkNg8gjjjP4/UPSl/T3BVhY6m7trOu4dhjFlvWIdM=;
 b=gfLAns3GvdQba6bhMq7A7pp53wlb+0NnrLLOH1XPVGXrxdmvMNBpRPOodIw2WwZZV9
 IRTrF0tTCIgsOE/KpxGffjUpLNp24exyohhzyLjyvqBXnLUVhcXGmLoEmEBtYHM4x1nX
 XfycnLebMbzmcgYV2tj3MhX0BxDZ8o2/1MjVSQYfvBsJw58npnENkGW6kEGDrUP7hjQH
 hiJtDyUiqR9MBFB84SEah3rO2GUOxhPmNBztRngCYdGjH3X8FU+aMOyW6iJlCHtnYyMo
 sVKg+0NuNn7JNr3XuLAAeq+shYnXttlU/cpHkC/5/gmIzoqjnrdyXdaX6u+UwSxBjh+R
 yv/Q==
X-Gm-Message-State: APjAAAU2H/TIyhC6sJzHROfM53Sltm86+AUaxVFr1SQl9MgiQ/XoYwlR
 AYOJh2QjfmyLhyVC9Y6UT6H8fxZ88uKQbZWlc+1N3Q==
X-Google-Smtp-Source: APXvYqx+1HVleR9t6Yuyooq8t8xa7rjXdvZgR0S/2R2tmpjcPZ3EC1OYv8foVlifSxaWiiQHWGnQCar3duKMNpwhtnc=
X-Received: by 2002:ac2:55a8:: with SMTP id y8mr58557682lfg.117.1578392421291; 
 Tue, 07 Jan 2020 02:20:21 -0800 (PST)
MIME-Version: 1.0
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-6-git-send-email-mars.cheng@mediatek.com>
 <CACRpkdZa_sQgvWC3ic0NxrVi9gS1cNTsV-wa-SDpA0e5kutBRw@mail.gmail.com>
 <1577022724.7468.20.camel@mtkswgap22>
In-Reply-To: <1577022724.7468.20.camel@mtkswgap22>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 11:20:10 +0100
Message-ID: <CACRpkdZUxpQ1tS9mKG9tc_U==M2BL9HwXt3DS1t413GGSEaVTA@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] pinctrl: mediatek: avoid virtual gpio trying to
 set reg
To: Hanks Chen <hanks.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_022023_920336_0F356201 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sean Wang <sean.wang@kernel.org>, Loda Chou <loda.chou@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Mars Cheng <mars.cheng@mediatek.com>,
 mtk01761 <wendell.lin@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 4:11 AM Hanks Chen <hanks.chen@mediatek.com> wrote:
> On Fri, 2019-08-23 at 10:57 +0200, Linus Walleij wrote:
> > On Mon, Aug 19, 2019 at 11:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:

> > This does not explain what a "virtual GPIO" is in this
> > context, so please elaborate. What is this? Why does
> > it exist? What is it used for?
> >
> > GPIO is "general purpose input/output" and it is a
> > pretty rubbery category already as it is, so we need
> > to define our terms pretty strictly.
> >
> Virtual GPIO only used inside SOC and not being exported to outside SOC
> in MTK platform. Some modules use virtual GPIO as eint (e.g. pmic or
> usb).

I would call that internal GPIOs, those are very real rails inside
the chip made with polysilicone so there is nothing "virtual"
about them. If the documentation for the chip calls them virtual
then explain in the driver that these are SoC-internal
lines so that everyone will get it.

Is the PMIC inside the SoC? I thought that was usually outside of it
in its own chip.

But I suppose there could be some interface to it in the SoC and
then that interface has this EINT?

> In MTK platform, external interrupt (EINT) and GPIO is 1-1 mapping and
> we can set GPIO as eint.
> But some modules use specific eint which doesn't have real GPIO pin.
> So we use virtual GPIO to map it.

OK I get it I think... just put these comments into the code as well
so we understand when reading the code what is going on.

> > > +       if (mtk_is_virt_gpio(hw, gpio))
> > > +               return 1;
> >
> > Why are "virtual GPIOs" always inputs?
>
> We set virtual GPIO as eint.
> It mean virtual GPIO only used inside SOC and not being exported to
> outside SOC.

Are you saying that:
- "Virtual" GPIOs are always and only used for interrupts
- Since they are only used for interrupts, they are always inputs

Then write that in a comment to the above change so we know
this context.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
