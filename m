Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EAB1226D0
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Dec 2019 09:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fCbnwNngnOrxMnILi8gHT20HnHqMDAPV5CB/BOBZ6yc=; b=pYIhL0I+Gtj+aX0HVNhE3zGf6
	9Nr5Mc0z8FVS6iaOsEr5kt1/2/3zKju4saBwoSof3+ku+9+y1gPkckYoQs9LzSqpyIlFDHKOsBV7x
	CSgeWiYZXoutZPBmZ+kKQl20Y2xsQUAwB+M9oMIkEzexrt5+5yDzy15PA6grvbejSbffzgQry7oV6
	bVkKtHBwCGr9WseuqiFEkJxwIXyPujmgVhlzcDXLTvVzzyTJv7NDLBfIv7Pbc2HsM0xHbO/hiFidQ
	/9YtbzpfwAptPfaKlratGSR9eaWb7Ij6eZ83PYlTbUJOIJVjXJLBkKFOTiGOXTUPbUaghPTshJ1cq
	ocTXsA6YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8MU-0007pG-Dw; Tue, 17 Dec 2019 08:37:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8MC-0007d5-9T; Tue, 17 Dec 2019 08:37:29 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C1B9207FF;
 Tue, 17 Dec 2019 08:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576571847;
 bh=r3ptfJb3sD1f3kPMFSXcZSbpqwaMLKgnCG8vqFdH40I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pGyVvcxgw7K4EJ86MNOFfl3Ex9Igjw7KGmh1LxAHAbTbTaxVbXG5Qw8K+Yt+lPds3
 XLyoU5w7PGseGXlJY2v0UYls0xCgqSo6mKX7ZhD0CmpicsHHIFUpVcuL+QSPRbZJtd
 cHvxz35MmDoDvcdUWdEE/33HQKBmH424Y90Pk66c=
Date: Tue, 17 Dec 2019 09:37:24 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2 3/4] ARM: dts: sun8i: a83t: Correct USB3503 GPIOs
 polarity
Message-ID: <20191217083724.6hva5rzvblrsrvlr@gilmour.lan>
References: <20191211145054.24835-1-m.szyprowski@samsung.com>
 <CGME20191211145222eucas1p1d761af59e04017ddadbdbd1cceb59b1f@eucas1p1.samsung.com>
 <20191211145217.25025-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20191211145217.25025-1-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_003728_363875_9E91316C 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, linux-mediatek@lists.infradead.org,
 Stefan Agner <stefan@agner.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5070740521173102726=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5070740521173102726==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="37sxn2mbr4dhx5yw"
Content-Disposition: inline


--37sxn2mbr4dhx5yw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 11, 2019 at 03:52:17PM +0100, Marek Szyprowski wrote:
> Current USB3503 driver ignores GPIO polarity and always operates as if the
> GPIO lines were flagged as ACTIVE_HIGH. Fix the polarity for the existing
> USB3503 chip applications to match the chip specification and common
> convention for naming the pins. The only pin, which has to be ACTIVE_LOW
> is the reset pin. The remaining are ACTIVE_HIGH. This change allows later
> to fix the USB3503 driver to properly use generic GPIO bindings and read
> polarity from DT.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Applied, thanks

Maxime

--37sxn2mbr4dhx5yw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfiTxAAKCRDj7w1vZxhR
xcWTAQDDHYrUUmf3Bv5q4dBtplu5iG6rQLy1lGxBQ+bI4Rg//AEAya5NBPixtgql
ctYP1dwe0l9O3OcFDTjIvoQcg6KsuQI=
=i22t
-----END PGP SIGNATURE-----

--37sxn2mbr4dhx5yw--


--===============5070740521173102726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5070740521173102726==--

