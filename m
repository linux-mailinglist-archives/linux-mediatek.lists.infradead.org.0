Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D8ABB7BF
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Sep 2019 17:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P9mds8YIfV8+w3luHtodW6JMinpSEfeEXlbzmyjsqCA=; b=soch7idJqqx92AJRf2cDhkNaX
	nBIBO98S4a9qIutadsFxEw5ID1o3cxZkgKBtIDmGuvODBCd5z6ptSwZPMG6EGoleN7V+KTgKM/LBA
	nnGaYOAJLGl53GHO6sRSt5dVoHDZRianhrhpoeLJsB3cMRjH7rlQjvM6iwlpSQpp+dc+znjZutf6H
	JIivbLDD8jLZcYjEznrzDQ5wU4AFLnmqjpAlvHLS/M9J22BScqEbHS9H2kpz3UwzFgcErAaAfNqvg
	TSVtexXpJu2RSvqrVp2p5HIn3269JeNLsvSn1wk7FRBa6qS7+yDz7twKHa0tmkETrl8qa9lFpNG68
	0q4hOMuGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQ9G-0005Ct-9h; Mon, 23 Sep 2019 15:21:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQ98-00058k-BY
 for linux-mediatek@lists.infradead.org; Mon, 23 Sep 2019 15:21:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so10436692wma.5
 for <linux-mediatek@lists.infradead.org>; Mon, 23 Sep 2019 08:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=brsvz/rH/l0iuVy/KKjxn5pihaXPh2FmuzxzRBgra3M=;
 b=cUBoXuQkLMLUptz8U4OfiJWCLnY4AmrhYgBKUWeGEYXAE4yF/yW3UHT4opNjqileV2
 gqafZZkdB1IQTQHn9SAcWnYHlqJy92BdD775ILOwH1kDxv3S6kLAN18TX4Ylh6RAhw2h
 YTq1WUEIghzmZGEZ54tpJU8W4HPkVVIlSTFwUW0Li+IyEYxTtrazzrNs8CpWx0yyCrUh
 eyIJEDBpXcakFzccpRMepoVkhNydMT1kz59pFsfr2AHuV4ZGrxva2h72QFb30P9ehPBh
 +ZegkMn9TxEhhW6R6rN2jUasAZvh0UJymC9L6qkgMayVewWKBBUVVW/sArJ5Ownz3ZXw
 09mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=brsvz/rH/l0iuVy/KKjxn5pihaXPh2FmuzxzRBgra3M=;
 b=fAIks9gRoYyLE9NogkSdL4f89rsD+vGPZalAoUn1jyP6SbXY/cazB+lpGJR6dpwFo8
 x3/ZGeaFlnQc6zYgn4vdIMJRZAo0i2BfiBrTFJehnPdhxoLP+i32Hkm6uWnhb3ONYb8/
 m/8YUzS1mr7fCXoKo9u2vw69MZ3dwo5fPyXbIb2yI3/bVLRW2r+8hKweB125YMtThR09
 4Opw9mWtZ8P+4aAED5XGGoNunJc8GKLE29RtARf6wSzF5mm5/evgFeZO84aZxp+fN3Pm
 ExpEHe8qVN2b+0owO8hSX/GketPwuqa8ilFCDZK0Lm+hTj/fVqpzUkiAUGg+c59iqIgU
 SQ/w==
X-Gm-Message-State: APjAAAWDwttL6QMEx8WU0F++pbYlXBThx/KIMvKcWYG8mCQlFFP3WfJW
 NRZOYJ1ymPrLFwFEv4umH38=
X-Google-Smtp-Source: APXvYqya/2MexYGkI++mWd3gYFe3Thgt0DUKr+QWCNbE+n0FjqxPPEKaEtwg0BbaZD9yKd5MtDMbZw==
X-Received: by 2002:a05:600c:2052:: with SMTP id
 p18mr155473wmg.13.1569252057854; 
 Mon, 23 Sep 2019 08:20:57 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id f8sm12698261wmb.37.2019.09.23.08.20.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 08:20:56 -0700 (PDT)
Date: Mon, 23 Sep 2019 17:20:54 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v9 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Message-ID: <20190923152054.GA17178@ulmo>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
 <1568933351-8584-8-git-send-email-sam.shih@mediatek.com>
 <20190921002149.GB86019@mithrandir>
 <1569208857.4102.9.camel@mtksdccf07> <20190923133626.GA4671@ulmo>
 <1569251515.4102.31.camel@mtksdccf07>
MIME-Version: 1.0
In-Reply-To: <1569251515.4102.31.camel@mtksdccf07>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_082102_404375_BDE9B7F0 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: multipart/mixed; boundary="===============3553587051500626893=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============3553587051500626893==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 23, 2019 at 11:11:55PM +0800, Sam Shih wrote:
> On Mon, 2019-09-23 at 15:36 +0200, Thierry Reding wrote:
> > On Mon, Sep 23, 2019 at 11:20:57AM +0800, Sam Shih wrote:
> > > On Sat, 2019-09-21 at 02:21 +0200, Thierry Reding wrote:
> > > > On Fri, Sep 20, 2019 at 06:49:07AM +0800, Sam Shih wrote:
> > > > > From: Ryder Lee <ryder.lee@mediatek.com>
> > > > >=20
> > > > > This adds a property "num-pwms" in example so that we could
> > > > > specify the number of PWM channels via device tree.
> > > > >=20
> > > > > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > > > > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > > > > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > > > > Acked-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > > > ---
> > > > > Changes since v6:
> > > > > Follow reviewers's comments:
> > > > > - The subject should indicate this is for Mediatek
> > > > >=20
> > > > > Changes since v5:
> > > > > - Add an Acked-by tag
> > > > > - This file is original v4 patch 5/10
> > > > > (https://patchwork.kernel.org/patch/11102577/)
> > > > >=20
> > > > > ---
> > > > >  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++-=
--
> > > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > >=20
> > > > You failed to address Rob's questions repeatedly and I agree with h=
im
> > > > that you can just as easily derive the number of PWMs from the spec=
ific
> > > > compatible string. I won't be applying this and none of the patches=
 that
> > > > depend on it.
> > > >=20
> > >=20
> > > Hi,=20
> > >=20
> > > Thanks for getting back to me.
> > >=20
> > > New pwm driver (patch 04/11 : "pwm: mediatek: allocate the clks array
> > > dynamically") can support different variants with different number of
> > > PWMs by the new property <num-pwms>
> > >=20
> > > For example:
> > > 1. Use "num-pwms" =3D <2> and assign clocks pwm1, pwm2 for mt7622
> > > 2. Use "num-pwms" =3D <6> and assign clocks pwm1, pwm2, pwm3, pwm4, p=
wm5,
> > > pwm6 for mt7622.
> > >=20
> > > If we just as easily derive the number of PWMs from the specific
> > > compatible string in this document:
> > >=20
> > >    - "pwm1-6": the six per PWM clocks for mt7622
> > >   =20
> > > This looks like all "pwm1", "pwm2", "pwm3", "pwm4", "pwm5", "pwm6" is
> > > required property in DT, It doesn't make sense.
> >=20
> > I don't understand. Why doesn't that make sense? If your hardware block
> > has 6 PWMs and each can be driven by its own clock, then you need to
> > provide references for each of those clocks, otherwise you won't be able
> > to use them.
>=20
> Thank you for your instruction,
> I will add all clock-names and clocks according to
> hardware blocks instead of value of <num-pwms> in DT.
>=20
> > >   =20
> > > So we removed those descriptions and added =20
> > >=20
> > >    - "pwm1-N": the PWM clocks for each channel=20
> > >   =20
> > >   =20
> > > But the max number of clocks from the compatible string are still
> > > important information that should be provide in this document.
> > >=20
> > >=20
> > > What do you think of this?
> > >=20
> > >    - "pwm1-N": per PWM clocks for mt2712, the max number of PWM chann=
els
> > > is 8
> > >=20
> > >    - "pwm1-N": per PWM clocks for mt7622, the max number of PWM chann=
els
> > > is 6
> > >=20
> > >    - "pwm1-N": per PWM clocks for mt7623, the max number of PWM chann=
els
> > > is 5
> >=20
> > That's what's in the bindings already, isn't it?
> >=20
> > 	 - clocks: phandle and clock specifier of the PWM reference clock.
> > 	 - clock-names: must contain the following, except for MT7628 which
> > 			has no clocks
> > 	   - "top": the top clock generator
> > 	   - "main": clock used by the PWM core
> > 	   - "pwm1-8": the eight per PWM clocks for mt2712
> > 	   - "pwm1-6": the six per PWM clocks for mt7622
> > 	   - "pwm1-5": the five per PWM clocks for mt7623
>=20
> Yes, You are right,=20
> I will keep original description and remove "pwm1-N" from this patch.
> 	   - "top": the top clock generator
> 	   - "main": clock used by the PWM core
> 	   - "pwm1-8": the eight per PWM clocks for mt2712
> 	   - "pwm1-6": the six per PWM clocks for mt7622
> 	   - "pwm1-5": the five per PWM clocks for mt7623      =20
>=20
> Actually, MT7629 also use "mediatek,mt7622-pwm" as compatible string,
> but it's hardware only support one pwm, so I was wrongly stick by
> expecting "pwm1-N" in clock-names based on "num-pwms" in DT.
> (that we can assign num-pwms to 1 and only provide pwm1 as clock-names)
>=20
> Maybe added mt7629 description to this document can solve this simply.
> 	   - "pwm1": the PWM1 clock for mt7629   =20

Yeah, if mt7629 support only one PWM channel, you should list it's
compatible string separately and also update the driver to reflect the
number of channels associated with the hardware.

Thierry

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2I4tQACgkQ3SOs138+
s6GbFBAAm+k7tV+3Xh1QL6SPZABvtkVY3oUEY61Cxq5OkODBJ5woXtGKlfmiaBZT
tbj0lYgNMF2G3ZYu43uVxcFDlhkL2sFjHlphN8Y7i+5yQC4Im86JoDf1MEYa0QJm
bVovqvHV0s16V3xpxxYPN1yhERfWXfanTcqVHGiKXyK2eoEPytH6tlNtJr026KhI
sXcMCkZNC/d7orXLoKEh9SWVxaK+G2EGyTW3HxdUyyWDc/aGI5/OfxGmrYCDvSKX
Y+150lc+8CA0pHqklRnUHm5QLX2gUWJC8Mpw4DyvoRW1WQuOyO55Q6et5O251HA7
y/dK85FiLLIfLMU4TaZ0xaF4wtei2+VoZKCJCPEdE8agDLSrXvpe5IlQTQWeC+wm
I/AOv8S0TifOgI54lSwqWiz78JUDMX+RwV04Dh8AC6nBjGL5Jdj7JrOUL6Gh5Jiu
5lsZk5O8xZLBZSiVHKAhK+0ZBQK+rQkhlIE2pa8XeImqwycevxEzv6dACfM3XjvH
KgVFFHCpZBJLteqmlvwif48gjcUkuptJdMFyb7VetH5rmt5ZQsRkw7PeGW1t+TaU
qSUxF3yBpAaL/ZHpywN6F5rQRv+wZ+vQULlChpHijyRfVos3OBF3QzO3mKiGHxhe
XiaTvGqK4KkOvmG7A1i3q99lUOllZZdFqvOGizk2mQbpio/mZeU=
=F38s
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--


--===============3553587051500626893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============3553587051500626893==--

