Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D534A5B17
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 18:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHAHeoPm/1iPeY5c6AzkbloTntnYWWSURqLqetZJWaI=; b=lj8KjoX0X/pDnN
	5c9ytajKQsk7SXiV9l20zAx7/ZebbxQFLhjxAq94uivbXZF+2/9PlzrFGf8p129wc+g3dZ8V/r5lg
	a/O7994SwV3Z0x2YERjQp99HDej7jgZzvy9dANWk1S4p9kpazHILhRiwVTOPOauAy9p8ds/nBuFpZ
	G9UPeV8hI+Kjv0pszZ4+A3irRYat4dmP23rZ9qm6SYRNDP6vmrOJSgHdIhu9mTabZBV0pv/ooeZSH
	xTTqByWzFa6XIw4p77M1CfHTG88662ECW0IDIzSE7+WAEQPZima7eGGdfvUBwQe5t2UfcNBRGkmcY
	RlAkCnSI5B+8UNkafa5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4opD-0005Vc-3B; Mon, 02 Sep 2019 16:05:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4op8-0005R6-TL
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 16:05:00 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4oow-0001oT-VY; Mon, 02 Sep 2019 18:04:46 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4oov-0002kp-AO; Mon, 02 Sep 2019 18:04:45 +0200
Date: Mon, 2 Sep 2019 18:04:45 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v5 07/13] dt-bindings: pwm: add a property "num-pwms"
Message-ID: <20190902160445.fitoa65t4ndzjq6v@pengutronix.de>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
 <1566457123-20791-8-git-send-email-sam.shih@mediatek.com>
 <20190827183924.GA24178@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827183924.GA24178@bogus>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090458_946305_2589F245 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 Sam Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 01:39:24PM -0500, Rob Herring wrote:
> On Thu, Aug 22, 2019 at 02:58:37PM +0800, Sam Shih wrote:
> > From: Ryder Lee <ryder.lee@mediatek.com>
> =

> The subject should indicate this is for Mediatek.
> =

> > =

> > This adds a property "num-pwms" in example so that we could
> > specify the number of PWM channels via device tree.
> > =

> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> > Changes since v5:
> > - Add an Acked-by tag
> > - This file is original v4 patch 5/10
> > (https://patchwork.kernel.org/patch/11102577/)
> > =

> > Change-Id: I429048afeffa96f3f14533910efe242f88776043
> > ---
> >  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> > =

> > diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/D=
ocumentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > index 991728cb46cb..ea95b490a913 100644
> > --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > @@ -14,12 +14,12 @@ Required properties:
> >                  has no clocks
> >     - "top": the top clock generator
> >     - "main": clock used by the PWM core
> > -   - "pwm1-8": the eight per PWM clocks for mt2712
> > -   - "pwm1-6": the six per PWM clocks for mt7622
> > -   - "pwm1-5": the five per PWM clocks for mt7623
> > +   - "pwm1-N": the PWM clocks for each channel
> > +   where N starting from 1 to the maximum number of PWM channels
> =

> Once converted to schema, you are going to be back to listing them out.
> =

> >   - pinctrl-names: Must contain a "default" entry.
> >   - pinctrl-0: One property must exist for each entry in pinctrl-names.
> >     See pinctrl/pinctrl-bindings.txt for details of the property values.
> > + - num-pwms: the number of PWM channels.
> =

> You can't add new required properties without breaking compatibility. =

> =

> You already have to imply the number of channels from the compatible (or =

> number of clocks) and you have to keep doing so to maintain =

> compatibility, so why not just keep doing that for new chips?

This was a suggestion by me. The driver still handles compatibility
(i.e. falls back to the number of PWMs that was implied by the
compatible before). Given that there are various drivers that all solve
the same problem (i.e. different variants with different number of PWMs)
I thought it would be a good idea to introduce a property in the device
tree that specifies this number.

Only for newly introduced compatibles the num-pwms property is really
required. Differentiating the ones that need it and the ones that don't
seems over-engineered to me.

(BTW, using the number of clks doesn't really work because there are
also some variants without clocks. It is still under discussion if in
this case dummy-clocks should be provided IIRC.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
