Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B898FBB7A2
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Sep 2019 17:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKXlkZNC+vnlLCFaxIytvRK6FaEzhQ48QDYaTtqZ9Us=; b=AQEzWGybEAN3F0
	PmL7j+/QmiPWKJZ5hFoxOb2ojUUWHIY4UBPOK6RMpHs+w/TESbLEjzBNyUeUr2AdbdqnAmARonsAP
	Ln0dg5wetTSEwMnOfZ99qi55Hdmu6W7QPvEXI/4J/Pkf02uGcbrMdiI9kZb++WgMd2nMczJkUNnmJ
	DppmoI3MKPeTKNELklsUv5qGwB/tLaAw3nj/wey7Lm7jiVm7kNNKQ/TIzANSspughCIvwfNv2L2cV
	pEbSFfi5BjINJLnhkutPB4evpNul0nzslananAKsG6aBKqZTpStv9UOLjqGUyJsJoTvCYDg5JSAtH
	TdWClPN46cXqefQ2iesQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQ19-0001yN-BQ; Mon, 23 Sep 2019 15:12:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQ0d-0001mB-MF
 for linux-mediatek@lists.infradead.org; Mon, 23 Sep 2019 15:12:18 +0000
X-UUID: 117883ee13ef4c6e8c92a93301892360-20190923
X-UUID: 117883ee13ef4c6e8c92a93301892360-20190923
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1632472160; Mon, 23 Sep 2019 07:12:06 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Sep 2019 08:12:04 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Sep 2019 23:11:54 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 23 Sep 2019 23:11:52 +0800
Message-ID: <1569251515.4102.31.camel@mtksdccf07>
Subject: Re: [PATCH v9 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
From: Sam Shih <sam.shih@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>
Date: Mon, 23 Sep 2019 23:11:55 +0800
In-Reply-To: <20190923133626.GA4671@ulmo>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
 <1568933351-8584-8-git-send-email-sam.shih@mediatek.com>
 <20190921002149.GB86019@mithrandir> <1569208857.4102.9.camel@mtksdccf07>
 <20190923133626.GA4671@ulmo>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_081216_666775_F7B2BC06 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org, Ryder
 Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-09-23 at 15:36 +0200, Thierry Reding wrote:
> On Mon, Sep 23, 2019 at 11:20:57AM +0800, Sam Shih wrote:
> > On Sat, 2019-09-21 at 02:21 +0200, Thierry Reding wrote:
> > > On Fri, Sep 20, 2019 at 06:49:07AM +0800, Sam Shih wrote:
> > > > From: Ryder Lee <ryder.lee@mediatek.com>
> > > > =

> > > > This adds a property "num-pwms" in example so that we could
> > > > specify the number of PWM channels via device tree.
> > > > =

> > > > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > > > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > > > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > > > Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > > ---
> > > > Changes since v6:
> > > > Follow reviewers's comments:
> > > > - The subject should indicate this is for Mediatek
> > > > =

> > > > Changes since v5:
> > > > - Add an Acked-by tag
> > > > - This file is original v4 patch 5/10
> > > > (https://patchwork.kernel.org/patch/11102577/)
> > > > =

> > > > ---
> > > >  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++---
> > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > =

> > > You failed to address Rob's questions repeatedly and I agree with him
> > > that you can just as easily derive the number of PWMs from the specif=
ic
> > > compatible string. I won't be applying this and none of the patches t=
hat
> > > depend on it.
> > > =

> > =

> > Hi, =

> > =

> > Thanks for getting back to me.
> > =

> > New pwm driver (patch 04/11 : "pwm: mediatek: allocate the clks array
> > dynamically") can support different variants with different number of
> > PWMs by the new property <num-pwms>
> > =

> > For example:
> > 1. Use "num-pwms" =3D <2> and assign clocks pwm1, pwm2 for mt7622
> > 2. Use "num-pwms" =3D <6> and assign clocks pwm1, pwm2, pwm3, pwm4, pwm=
5,
> > pwm6 for mt7622.
> > =

> > If we just as easily derive the number of PWMs from the specific
> > compatible string in this document:
> > =

> >    - "pwm1-6": the six per PWM clocks for mt7622
> >    =

> > This looks like all "pwm1", "pwm2", "pwm3", "pwm4", "pwm5", "pwm6" is
> > required property in DT, It doesn't make sense.
> =

> I don't understand. Why doesn't that make sense? If your hardware block
> has 6 PWMs and each can be driven by its own clock, then you need to
> provide references for each of those clocks, otherwise you won't be able
> to use them.

Thank you for your instruction,
I will add all clock-names and clocks according to
hardware blocks instead of value of <num-pwms> in DT.

> >    =

> > So we removed those descriptions and added  =

> > =

> >    - "pwm1-N": the PWM clocks for each channel =

> >    =

> >    =

> > But the max number of clocks from the compatible string are still
> > important information that should be provide in this document.
> > =

> > =

> > What do you think of this?
> > =

> >    - "pwm1-N": per PWM clocks for mt2712, the max number of PWM channels
> > is 8
> > =

> >    - "pwm1-N": per PWM clocks for mt7622, the max number of PWM channels
> > is 6
> > =

> >    - "pwm1-N": per PWM clocks for mt7623, the max number of PWM channels
> > is 5
> =

> That's what's in the bindings already, isn't it?
> =

> 	 - clocks: phandle and clock specifier of the PWM reference clock.
> 	 - clock-names: must contain the following, except for MT7628 which
> 			has no clocks
> 	   - "top": the top clock generator
> 	   - "main": clock used by the PWM core
> 	   - "pwm1-8": the eight per PWM clocks for mt2712
> 	   - "pwm1-6": the six per PWM clocks for mt7622
> 	   - "pwm1-5": the five per PWM clocks for mt7623

Yes, You are right, =

I will keep original description and remove "pwm1-N" from this patch.
	   - "top": the top clock generator
	   - "main": clock used by the PWM core
	   - "pwm1-8": the eight per PWM clocks for mt2712
	   - "pwm1-6": the six per PWM clocks for mt7622
	   - "pwm1-5": the five per PWM clocks for mt7623       =


Actually, MT7629 also use "mediatek,mt7622-pwm" as compatible string,
but it's hardware only support one pwm, so I was wrongly stick by
expecting "pwm1-N" in clock-names based on "num-pwms" in DT.
(that we can assign num-pwms to 1 and only provide pwm1 as clock-names)

Maybe added mt7629 description to this document can solve this simply.
	   - "pwm1": the PWM1 clock for mt7629    =


> Note that the description of the "clocks" property isn't quite accurate.
> It should be something like:
> =

> 	- clocks: One phandle and clock specifier for each entry in the
> 	          "clock-names" property.
> =

> In the above you clearly describe which PWMs you have to specify for
> each generation of the hardware block.

Thanks for your advise, I will update this description
	- clocks: One phandle and clock specifier for each entry in the
	          "clock-names" property.

> > =

> >    where N starting from 1 to the maximum number of PWM channels
> >    - num-pwms: the number of PWM channels.
> =

> That's redundant information. The specific number of PWMs in already
> implied by the compatible string, so you don't need to duplicate that
> information here.

Okay, I will remove it.



Thanks,
Best Regards,
Sam =




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
