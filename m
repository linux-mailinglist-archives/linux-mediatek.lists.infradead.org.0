Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4168C16A591
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Feb 2020 12:54:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jBvF1A/0lOZ2bbYuzbMbfPEdNSx9vgKqXIi7pcMHnj8=; b=pHwSgEcswc2mzP/7dewhyDZz5
	/RyrtRrjoegKG8FvY9R22QnqhbMtApb59gv1YWW9bsx2M9bmcqLYm8CiaoBnPD6Ff85X+jDI/KmVM
	JW4BBMspeESvyn9WR8h3DpwlonF6W5qburuHyHUthmzILkkeU8IWzq45zmq+d5wzHsqYiURdM3X1P
	lFp0YaAjjrqYRZ9kuRRW2Vm/Z6cODwTUzFsi1Q5XvcW8BHAGeqcGZrb03iAFqkxk5x8cvjs3wVH9U
	hE+gVWR/Td1zvycwOdH229oYQpciMhxvzNA7IornOi4UoK2IPwOe1iEApWzrkTOTmGRv9fCGAat+m
	e4LIpOYXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CJI-0004pc-0c; Mon, 24 Feb 2020 11:54:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CJ5-0004fW-Pa; Mon, 24 Feb 2020 11:53:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8F1930E;
 Mon, 24 Feb 2020 03:53:50 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7524E3F534;
 Mon, 24 Feb 2020 03:53:50 -0800 (PST)
Date: Mon, 24 Feb 2020 11:53:49 +0000
From: Mark Brown <broonie@kernel.org>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [RFC PATCH v3 4/8] regulator: rename regulator_linear_range to
 linear_range
Message-ID: <20200224115349.GD6215@sirena.org.uk>
References: <cover.1582182989.git.matti.vaittinen@fi.rohmeurope.com>
 <f66749295e07448012c80c2054b1f14506d17d76.1582182989.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <f66749295e07448012c80c2054b1f14506d17d76.1582182989.git.matti.vaittinen@fi.rohmeurope.com>
X-Cookie: How you look depends on where you go.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_035351_878532_92B6A886 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Milo Kim <milo.kim@ti.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-omap@vger.kernel.org, mazziesaccount@gmail.com,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, Markus Laine <markus.laine@fi.rohmeurope.com>,
 devicetree@vger.kernel.org, Charles Keepax <ckeepax@opensource.cirrus.com>,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 patches@opensource.cirrus.com
Content-Type: multipart/mixed; boundary="===============2239819951608715571=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============2239819951608715571==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jL2BoiuKMElzg3CS"
Content-Disposition: inline


--jL2BoiuKMElzg3CS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 20, 2020 at 09:36:10AM +0200, Matti Vaittinen wrote:
> Rename the "regulator_linear_range" to more generic linear_range
> as a first step towards converting the "regulator_linear_range"
> to common helpers.

Doesn't this introduce a build break when applied by itself?  Patches
should be bisectable, if you want to split things up you should
introduce the new API then use it.

--jL2BoiuKMElzg3CS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5TuUwACgkQJNaLcl1U
h9Bobgf/bBfZFX2V9zrXf7uOqfAy58lDJsCapCQsq1yXEzID+pwtN5eG6vVcW+fc
sioaL8h3UtAeapwgAE0tJQgk1aRc88CsScuLJr0bmfSWQUvnq/UbL/NyyDnthYhd
vPKEno1MAOH0pBRBqG8IZG9eLEc7aaOvaI4a4pl0Dis3FNPwEDaumpVvJYK1V7U8
+0vvTWzZsX0yc0N+tdfOvP35v0NIqP3kZL6ztNEvuKx7RvTnyDyN4p/65O1dHZLd
bhat1RJll7ITXDizfyEzi0zuPWeJuYOuvWgSyl2Ow4AzRz7zXNYnehsbS2yofZy1
wDRxpH/9ARG4e9guroKxyuWFVFWgBg==
=XevB
-----END PGP SIGNATURE-----

--jL2BoiuKMElzg3CS--


--===============2239819951608715571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============2239819951608715571==--

