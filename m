Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22B9BB589
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Sep 2019 15:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bNwe319l8M0d+Y3VGNLBdhLhFIFInl75eUoNWvV7UL4=; b=pHOc9Pk/q+7LkveAutKm3mdN1
	IrElz3bvIC2L1Mi8YlSxGIyblpX2YaRhnnHIkhVykYOzxM6vF9n3lhuLN1TVDRdNL9mr04ft75n8O
	FD6tzXUbGSURHkn7TNelDCs9OVU5Fc70RseeQKteE49dWNY4VfRmIidFgbjD4/Bf1IFhA8pd0vq1b
	M5S0uWkYifD07gCzpFrOGcxE88FNU4EhEI3XVmShWecoBZjT16m6temshDYOOh5uzRv0/EO8ZWvJt
	c5z8WcJexDHFdF+kQCbOzWSmFQnf6Y4dRhKN+I2iH/ZaRPLZAZ2vOQVena4l5QE+wUV44cF1jOy6F
	oRLkr0yyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOWQ-0007Zb-NM; Mon, 23 Sep 2019 13:36:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOWN-0007Yo-66
 for linux-mediatek@lists.infradead.org; Mon, 23 Sep 2019 13:36:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id y21so9367777wmi.0
 for <linux-mediatek@lists.infradead.org>; Mon, 23 Sep 2019 06:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yH2Z3eB11JStYll32sor1zY2h8/0gzevYqkhkFZ31BY=;
 b=YMaiVB/O5nOQIawf2+AD07JImIMw9lFdKXicFGJvicXXLOGZEVzXAJ9PSYsvu/6F9h
 vfHwQuMzxtvizf+AjralsFCB4FS8RzqrZqoFduivuO+MSrC6VTPXYozIKl3Zcdvbu6E3
 PRL9NV3aYRtXAikXdssBNwNc6yEiuYCcnVwspYu0wOLe6imQ8dX/UkDE2rQU8CaVHchX
 V8pO2lpVH8FV4EEaqWps4aYuqCM0JMmKw9w1/W2Q4PkmmdjETVwniVQViADb9ZMhJvvN
 BaBloaGPPT9T+NSsgv521PJR+pt9o9PA0zPN66au7+SlizhDQyIzmpTFJBfbMVdjSq0y
 7DLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yH2Z3eB11JStYll32sor1zY2h8/0gzevYqkhkFZ31BY=;
 b=fvGZc+JtusbDTQ+roDCRqihdKLj1Bc4dKNoxPrNwqGJTsgeelDa+E+GIPhQVXcWKuU
 UmYOsmSSbsFcBTDWsRUP/K0dFs9t9RgOgWBoDFVXYRFd9/e9dMSYzhL7ryGzqEivOV6P
 yfg/xFSJqUCzVyQnUKpgIt+fJrJuxarwGKQVkwlXRg96aKhnVuyX4wjsfh6RKQTd33XC
 H8dZ5N/z0VFeW3jN3NBYI8M8Ldej7Fj31c6CLzzQrlEx8NcvP/i1RQlmzw+hW90qXXiV
 gZY9R6GlSX01+ccSF3OjclqGnxY94iNkg7hjIMD79qr2XYCN02xIPiX+I9c0bubD2etF
 0+qw==
X-Gm-Message-State: APjAAAXF7/QCN77TYwMNFZhYbKWdzDXdsJv2Xkh0zYJsYNqvT+AjS0NC
 3iiveln3BDFVEAsixvn0mRY=
X-Google-Smtp-Source: APXvYqxy5t8sZwmSDR/SPwoi0/r03PWhLWTaJCtRRizFjCbQ7/MwEf6Q2E/Wvdj5pSaDoRvFvlSNFg==
X-Received: by 2002:a1c:cc0e:: with SMTP id h14mr14026505wmb.117.1569245812548; 
 Mon, 23 Sep 2019 06:36:52 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id 26sm9807939wmf.20.2019.09.23.06.36.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 06:36:31 -0700 (PDT)
Date: Mon, 23 Sep 2019 15:36:26 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v9 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Message-ID: <20190923133626.GA4671@ulmo>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
 <1568933351-8584-8-git-send-email-sam.shih@mediatek.com>
 <20190921002149.GB86019@mithrandir>
 <1569208857.4102.9.camel@mtksdccf07>
MIME-Version: 1.0
In-Reply-To: <1569208857.4102.9.camel@mtksdccf07>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_063655_248330_12C5BB5E 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Content-Type: multipart/mixed; boundary="===============2508432350113178530=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============2508432350113178530==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 23, 2019 at 11:20:57AM +0800, Sam Shih wrote:
> On Sat, 2019-09-21 at 02:21 +0200, Thierry Reding wrote:
> > On Fri, Sep 20, 2019 at 06:49:07AM +0800, Sam Shih wrote:
> > > From: Ryder Lee <ryder.lee@mediatek.com>
> > >=20
> > > This adds a property "num-pwms" in example so that we could
> > > specify the number of PWM channels via device tree.
> > >=20
> > > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > > Acked-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > ---
> > > Changes since v6:
> > > Follow reviewers's comments:
> > > - The subject should indicate this is for Mediatek
> > >=20
> > > Changes since v5:
> > > - Add an Acked-by tag
> > > - This file is original v4 patch 5/10
> > > (https://patchwork.kernel.org/patch/11102577/)
> > >=20
> > > ---
> > >  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> >=20
> > You failed to address Rob's questions repeatedly and I agree with him
> > that you can just as easily derive the number of PWMs from the specific
> > compatible string. I won't be applying this and none of the patches that
> > depend on it.
> >=20
>=20
> Hi,=20
>=20
> Thanks for getting back to me.
>=20
> New pwm driver (patch 04/11 : "pwm: mediatek: allocate the clks array
> dynamically") can support different variants with different number of
> PWMs by the new property <num-pwms>
>=20
> For example:
> 1. Use "num-pwms" =3D <2> and assign clocks pwm1, pwm2 for mt7622
> 2. Use "num-pwms" =3D <6> and assign clocks pwm1, pwm2, pwm3, pwm4, pwm5,
> pwm6 for mt7622.
>=20
> If we just as easily derive the number of PWMs from the specific
> compatible string in this document:
>=20
>    - "pwm1-6": the six per PWM clocks for mt7622
>   =20
> This looks like all "pwm1", "pwm2", "pwm3", "pwm4", "pwm5", "pwm6" is
> required property in DT, It doesn't make sense.

I don't understand. Why doesn't that make sense? If your hardware block
has 6 PWMs and each can be driven by its own clock, then you need to
provide references for each of those clocks, otherwise you won't be able
to use them.

>   =20
> So we removed those descriptions and added =20
>=20
>    - "pwm1-N": the PWM clocks for each channel=20
>   =20
>   =20
> But the max number of clocks from the compatible string are still
> important information that should be provide in this document.
>=20
>=20
> What do you think of this?
>=20
>    - "pwm1-N": per PWM clocks for mt2712, the max number of PWM channels
> is 8
>=20
>    - "pwm1-N": per PWM clocks for mt7622, the max number of PWM channels
> is 6
>=20
>    - "pwm1-N": per PWM clocks for mt7623, the max number of PWM channels
> is 5

That's what's in the bindings already, isn't it?

	 - clocks: phandle and clock specifier of the PWM reference clock.
	 - clock-names: must contain the following, except for MT7628 which
			has no clocks
	   - "top": the top clock generator
	   - "main": clock used by the PWM core
	   - "pwm1-8": the eight per PWM clocks for mt2712
	   - "pwm1-6": the six per PWM clocks for mt7622
	   - "pwm1-5": the five per PWM clocks for mt7623

Note that the description of the "clocks" property isn't quite accurate.
It should be something like:

	- clocks: One phandle and clock specifier for each entry in the
	          "clock-names" property.

In the above you clearly describe which PWMs you have to specify for
each generation of the hardware block.

>=20
>    where N starting from 1 to the maximum number of PWM channels
>    - num-pwms: the number of PWM channels.

That's redundant information. The specific number of PWMs in already
implied by the compatible string, so you don't need to duplicate that
information here.

Thierry

--YZ5djTAD1cGYuMQK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2IylEACgkQ3SOs138+
s6EpJg//QC3ldqkwsoa+KY+dhrpZlAxv2zdjRAxF8rCag6XtDLtIlvV66zVQeowZ
5+NMRQqJHAdqFzNPZO8wxH7Dkiexw50Wpa64Xb1JEyVAmotqvfiyJr59MG9CGZ+T
EW7o+U8WHGdVT6xtkUZ17QQHK6OqvitX8GmXU746FXuza5zYkp3quVFtjQ1V2GNR
N2s3dvvfhIcqjm0GhN310Pp2vHCyczDmpCbppC+QNfkArUCW25oDFck69ceBdXXG
1UjtIasUcEoTC8qrK31Yk2GctIxkF0KiPKX24Kuk3oDTqCb3Acp/eNQmE3j0zs+1
+3a2Xgs5jADOprnJLpszBvlO+PKCybVAAhW65QgcH67spbgNVxuhXCjmSpplelfI
F7FJEbz+nI2Az36ogFtewhvVPFa5SqPKUEygCjE5eRd62HooiUiEK/zXbBfE5eNm
72viYDW0wwkmqjLIuahyji2HMlu3ImG3moqiQH1OaZkaivONUzWqn2fsEVdQaI4I
o41UMHnZNWs7znhcs2SeGZNrLSvC4mdetpXDOuVr9WWqunzIckHDabA/hm5yMvFD
l/Oiyyv9AcIICgAFBXq1+4bfbztgS7wAek6JDYRUHBj4jBI+3J0zEvK7ah246wlg
pp+mPQhPxMx+VbEpB5BVx0/KB1eQ6+8E9+zyB227JdD4oLR3G9Y=
=Za9m
-----END PGP SIGNATURE-----

--YZ5djTAD1cGYuMQK--


--===============2508432350113178530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============2508432350113178530==--

