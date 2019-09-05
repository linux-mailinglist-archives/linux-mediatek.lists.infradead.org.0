Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FE8A98E1
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 05:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfKE85ZJsKRS8QZ5fdHrSQeRJbXdCnYaaWd0D2xBcFo=; b=hxgExFC9qAavHn
	4Q5WmxQtxd0yQrt+h4KJTt2Bk9R5iOB2/ceZBoqMKYyIT27iONAL+FocmUBetiMW6kGp3SmJITe10
	N5poh7lVdz+8MparwGRrzYexyMCWiqqnx2df+62DJ0D1FLVJk8jP+ewfQtAnEe/zMTJXP03TxgCm/
	TwSvHwd8hN/Wb5mRLt/wUxxyv2XkzjUJvWXkxEVdl64wDjvELALBRevaDi2oL+bnbDYASIPlssLVO
	zXsQVjiH++/DT4GCBAVaOuPuqLIChtkV5eYzHLKbX03gkBLr3lBpetE0eNr7hIJt0dpG44rc62ZnS
	+McxiYBtKd+5+N3dBHOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5iQy-0000xp-QE; Thu, 05 Sep 2019 03:27:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5iQu-0000wd-Vc
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 03:27:42 +0000
X-UUID: cf5434c5a9824a5d9ad489e67c975221-20190904
X-UUID: cf5434c5a9824a5d9ad489e67c975221-20190904
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1706084242; Wed, 04 Sep 2019 19:27:32 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 20:27:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 11:27:30 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 11:27:28 +0800
Message-ID: <1567654050.23074.38.camel@mtksdccf07>
Subject: Re: [PATCH v5 07/13] dt-bindings: pwm: add a property "num-pwms"
From: Sam Shih <sam.shih@mediatek.com>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, "Rob
 Herring" <robh@kernel.org>
Date: Thu, 5 Sep 2019 11:27:30 +0800
In-Reply-To: <20190902160445.fitoa65t4ndzjq6v@pengutronix.de>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
 <1566457123-20791-8-git-send-email-sam.shih@mediatek.com>
 <20190827183924.GA24178@bogus>
 <20190902160445.fitoa65t4ndzjq6v@pengutronix.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F4EEF144BCC51E8C6B7272CD2260074CD95FDFA362855DF08FFFF6DA4DBF7AF12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_202741_025703_80CC8528 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-09-02 at 18:04 +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, Aug 27, 2019 at 01:39:24PM -0500, Rob Herring wrote:
> > On Thu, Aug 22, 2019 at 02:58:37PM +0800, Sam Shih wrote:
> > > From: Ryder Lee <ryder.lee@mediatek.com>
> > =

> > The subject should indicate this is for Mediatek.
> > =

> > > =

> > > This adds a property "num-pwms" in example so that we could
> > > specify the number of PWM channels via device tree.
> > > =

> > > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > > Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > ---
> > > Changes since v5:
> > > - Add an Acked-by tag
> > > - This file is original v4 patch 5/10
> > > (https://patchwork.kernel.org/patch/11102577/)
> > > =

> > > Change-Id: I429048afeffa96f3f14533910efe242f88776043
> > > ---
> > >  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b=
/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > > index 991728cb46cb..ea95b490a913 100644
> > > --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > > +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > > @@ -14,12 +14,12 @@ Required properties:
> > >                  has no clocks
> > >     - "top": the top clock generator
> > >     - "main": clock used by the PWM core
> > > -   - "pwm1-8": the eight per PWM clocks for mt2712
> > > -   - "pwm1-6": the six per PWM clocks for mt7622
> > > -   - "pwm1-5": the five per PWM clocks for mt7623
> > > +   - "pwm1-N": the PWM clocks for each channel
> > > +   where N starting from 1 to the maximum number of PWM channels
> > =

> > Once converted to schema, you are going to be back to listing them out.
> > =

> > >   - pinctrl-names: Must contain a "default" entry.
> > >   - pinctrl-0: One property must exist for each entry in pinctrl-name=
s.
> > >     See pinctrl/pinctrl-bindings.txt for details of the property valu=
es.
> > > + - num-pwms: the number of PWM channels.
> > =

> > You can't add new required properties without breaking compatibility. =

> > =

> > You already have to imply the number of channels from the compatible (o=
r =

> > number of clocks) and you have to keep doing so to maintain =

> > compatibility, so why not just keep doing that for new chips?
> =

> This was a suggestion by me. The driver still handles compatibility
> (i.e. falls back to the number of PWMs that was implied by the
> compatible before). Given that there are various drivers that all solve
> the same problem (i.e. different variants with different number of PWMs)
> I thought it would be a good idea to introduce a property in the device
> tree that specifies this number.
> Only for newly introduced compatibles the num-pwms property is really
> required. Differentiating the ones that need it and the ones that don't
> seems over-engineered to me.

I'm fine with both.

num-pwms and pwm1-N is required properties for new chip, but it still
have backward compatibility for old dt without num-pwms properties.


> (BTW, using the number of clks doesn't really work because there are
> also some variants without clocks. It is still under discussion if in
> this case dummy-clocks should be provided IIRC.)

Yes, the dummy-clocks of "top", "main" is needed in old MIPS dt.
We also need fixed-clock for period calculation.



Best Regards,
Sam


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
