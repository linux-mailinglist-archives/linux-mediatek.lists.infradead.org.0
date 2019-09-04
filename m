Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515E0A86F4
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Sep 2019 19:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bJrzJ1deL6elaiBuWNYnELXPZXwSgJgkXS//XL+Inw0=; b=A70E7GvpVs4BmBnJ9JIDlFjXQ
	3MnESM6ro8zsR7FuDNQllUvzxQG8vkQc+ZzZLBbIEvfpKC05EmUmUOfrp8C2HHwZKkZRUf/2x+g/M
	OL2svIRNeNVkX3VtQcYTGmQpJjFmJPCkKhrL5ZIAKYD8hXU9eQJ7b30mLm5e72s74CFLvCXd31dUg
	mo2Gp6QClS2GXQdZFNkdYXQGD73hL4Kr+DhrQRkX6Lqe3JVKAjKmFJjGhKtMkdMVxVNn3btuO/ihN
	D0G5lygqLKcKa604fDJ+cT5wBuPRGc0tCo8sF4HTO2WnH4M2tIwCnnWH4MivRfd57FovhKwC153+e
	X/D2jqeCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Z2A-00074J-ED; Wed, 04 Sep 2019 17:25:30 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Z1w-0006uy-HS; Wed, 04 Sep 2019 17:25:18 +0000
Received: from localhost (p54B337F1.dip0.t-ipconnect.de [84.179.55.241])
 by pokefinder.org (Postfix) with ESMTPSA id E42F02C08C3;
 Wed,  4 Sep 2019 19:25:14 +0200 (CEST)
Date: Wed, 4 Sep 2019 19:25:14 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 15/15] thermal: rcar: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904172514.GA2602@kunai>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-16-yuehaibing@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20190904122939.23780-16-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_102516_729951_CDCEFDB4 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mans@mansr.com, mmayer@broadcom.com, eric@anholt.net,
 miquel.raynal@bootlin.com, linux-stm32@st-md-mailman.stormreply.com,
 heiko@sntech.de, amit.kucheria@verdurent.com, f.fainelli@gmail.com,
 daniel.lezcano@linaro.org, phil@raspberrypi.org,
 linux-rockchip@lists.infradead.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rui.zhang@intel.com, david.hernandezsanchez@st.com, alexandre.torgue@st.com,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, edubezval@gmail.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 gregory.0xf0@gmail.com, matthias.bgg@gmail.com, horms+renesas@verge.net.au,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, jun.nie@linaro.org, computersforpeace@gmail.com,
 shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============4303247204089911071=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============4303247204089911071==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 04, 2019 at 08:29:39PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>=20
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

I think for such straightforward (and manifold) conversions, one patch
per subsystem is better than one patch per driver. But this is not my
subsystem, so I'll leave it to the thermal maintainers.


--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1v83EACgkQFA3kzBSg
KbZOUg/+Jw+mcZ79x8rHt2nPfBEtW1lYrickXXODhze40rPG/rARNtQxdyBIRKOj
cl3g5q/PL2U0k4nrUuD3osCpUNceFye3A7o5eE81j8hSOBvwADNtAIPaIXenudHD
P8krbODpUIy3ifIf24cUnCMr6teo0CduolmrCpDlmd1LWJmRpbdY+sejDVi8qAzs
xJDN67R6O8lEDJSS0o63xXu4+ZSizqcfVQqlWdkTxc3wqHhdUXFLeCWH5Ow1RsbP
ArXyH7xGG9xQxkiKavZSxYciob3PqcvRdfDv4dNRgNpJFir+mxbJVpQ2IyKr/hyn
jYzzcz9sd02cXsxAOURY1OS7AhPUiRl5XZIhWR+0VRXwJhBTkpHh/Ro4RRgzMHCC
UnRZgonQvO50HpmC3IHKPjq2rvKYYAYF2kr+rTjAiXsT2ZgECU5nQRypkMPy3CX2
YdP9JnaDd7OpDw3+tvPRmbEpAkjcXK5QQp4vHnqaTrnaqyxbMVA6uRt68uSbNHIY
gkTny6PNBTAr/0scsb7xo481yPA0MOCeShSAj6Dvk0pagXrfE4AgWf1vLPbUieUZ
PrZ+0B6jIYMKswq8FVvwSvn+Jrk/RFvFOLFpiuCnWZx0kDz8BDVrkQrwz5NsNm7D
NNOQUh/6TBD6/1TLapgeH4dtXhje3qlv8OzuEYhnkwS4UX3HvAI=
=XQ0z
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--


--===============4303247204089911071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============4303247204089911071==--

