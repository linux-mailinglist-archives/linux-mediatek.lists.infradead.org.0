Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D9C9B9CB
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 02:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2emK7ntyER6im3nfHmKbUZrC01buBT+r96DY24nPqA=; b=tpQ4ywKxcQU2rq
	I/xhI8qeP4hJDadoT/EbTpfduWgzN8av8kcSdtv4a/189GdKmpiq4wDOpmLwf/MkrtanqMfKpO52b
	V26i8kWOTDe9bIdMIJvBhbLQW1nBTpL/TfBlp3WghjWD32zIY40Vc/i9H8VVmq5Ny9cXzlhu3TYiQ
	3Qd945eK58268Q5fFGXEpOxsgxkDxo80a9UFDfGJw9flK7w7CigNgrev20nQ4etLK8Yw1lWeAVbXS
	FTvBkN5FV1Oa8xuwhrEDwKdlj0vsbp+pCdg4Yk/mEx8aUFrgJt5CjmwZVVRXL+ZWM5RaLfzFCxxtw
	ZjIKVES3lDhy0UjhZ0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1K3O-0004rB-LS; Sat, 24 Aug 2019 00:37:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1K3K-0004q3-Tj
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 00:37:12 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1K38-00066C-KH; Sat, 24 Aug 2019 02:36:58 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1K38-0000SH-4s; Sat, 24 Aug 2019 02:36:58 +0200
Date: Sat, 24 Aug 2019 02:36:58 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: Re: [PATCH v5 08/13] dt-bindings: pwm: update bindings for MT7628 SoC
Message-ID: <20190824003658.66hisfvhkbkc3pub@pengutronix.de>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
 <1566457123-20791-9-git-send-email-sam.shih@mediatek.com>
 <1566461540.16302.4.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566461540.16302.4.camel@mtksdaap41>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_173710_962864_0F32E0DE 
X-CRM114-Status: GOOD (  17.19  )
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
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 04:12:20PM +0800, Yingjoe Chen wrote:
> On Thu, 2019-08-22 at 14:58 +0800, Sam Shih wrote:
> > This updates bindings for MT7628 pwm controller.
> > =

> > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 4 ++++
> >  1 file changed, 4 insertions(+)
> > =

> > diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/D=
ocumentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > index ea95b490a913..93980e3da261 100644
> > --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> > @@ -21,6 +21,10 @@ Required properties:
> >     See pinctrl/pinctrl-bindings.txt for details of the property values.
> >   - num-pwms: the number of PWM channels.
> > +
> > + Optional properties:
> > + - clock-frequency: fix clock frequency, this is only used in MT7628 S=
oC
> > +                    for period calculation. This SoC has no complex cl=
ock tree.
> =

> I'm sorry if this has been discussed before. =

> =

> Would it be simpler if you just provide a fixed-clock as clock in device
> tree? This way you don't need this optional properties and don't need to
> special handle it in driver code. =

> =

> After all, the hw is still connected to a simple clock tree.

This is what I just wrote in reply to patch 3 (which implements handling
the clock-frequency property) even before reading your feedback. So I
fully agree.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
