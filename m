Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ED360B67
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 20:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tu4zcgJm1FqObGyZzt8Gg7wkX1MOliHqnsAps1OR1ew=; b=tWWHe64Hs1IQpIaKb+32YPqrH
	g91L0/FaM53dBWiHC1+BVeyI+vIQj1inUp9Sxfk9lsxzHeHN+g4EOI2QOAvFk3AZtmQh1w9E8kdla
	epvxS6SIbMonsItBGx9fRpeRXXlLy5Xm8sq4EIgioVjGUSlyBX4zzDqG++PXiQTEcCVWk1NWKYlw8
	rs2cTbnsD+W1sHVsbTGrNmh6hH92QQYTRhqy1xa5alc+7/2ImJoQvegUZuyxQ9D0VcezkyZdaaY/e
	DFdSFoodqUlWElT/X7ROTi9eNfABe/lAOdInjUz7XRdTTggR3oxmC18WnNtuPha8ofYq9jYPWL+EY
	9R1/7jPkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjSwz-000555-Cv; Fri, 05 Jul 2019 18:28:49 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjSwi-0004v8-3g; Fri, 05 Jul 2019 18:28:33 +0000
Received: from localhost (p54B334DF.dip0.t-ipconnect.de [84.179.52.223])
 by pokefinder.org (Postfix) with ESMTPSA id 7B41A2C0398;
 Fri,  5 Jul 2019 20:28:27 +0200 (CEST)
Date: Fri, 5 Jul 2019 20:28:27 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] i2c: mt7621: Fix platform_no_drv_owner.cocci
 warnings
Message-ID: <20190705182826.GA4717@kunai>
References: <20190629024421.177153-1-yuehaibing@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20190629024421.177153-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_112832_303330_BDCA0EA0 
X-CRM114-Status: UNSURE (   4.93  )
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
Cc: kernel-janitors@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Stefan Roese <sr@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1855008702295377547=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============1855008702295377547==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 29, 2019 at 02:44:21AM +0000, YueHaibing wrote:
> Remove .owner field if calls are used which set it automatically
> Generated by: scripts/coccinelle/api/platform_no_drv_owner.cocci
>=20
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Stefan?


--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0flr8ACgkQFA3kzBSg
KbbmGQ/8DtsJ1Pi75zlktzq6cz/ZsmCZgkI5B/ChnJzExHCwj+tVQfFwd3j1euEa
vlzXpx26dy5Cxf4Mxa2gq90aA0I+ZDPAKG+RdxX83EycyzLBakuapYZVisSCMEYr
RgB+Fe/TKnhKIeRNz5sFjk99CcLjC0cFXDdjed+v5CdY+ieUuJgEbR1g+o+umwA3
zbq5i2u4qKv0Ih7HCzF8Pq5//7JOdQkq0KFkUbjweGR0Xu/ChzvmCWg87ksdLHwe
sff8QM48E1e5NhFPPKk/T6WTu13Td4nxsaYorxtc5HHrjf5DoWv9VxS4MiMWuElh
tjF/1D7ZHP+dKtKM15jq6pJWLNLyvgrFoMg+BCmfxTiv+wIJSmOQe0fd5jHGfwxj
0askgPzwL4ouq33pRiEUHmp0GzBpwr8b9EwO/5Rha5WaO22fil9RL+UhoSHJpC7P
58DWeus73nA9UULf9ONo/V/qaVeDWeQ3iF9S0oJaBzNv4UUuEW37yui7xjH5Haaa
01izcn5sZyZRzhVzW9FQ4HexpqM8njSBIe5EI5g76LdUH/bBvYvHsS4o4v8N88bj
SCalJMhr5+1FahooeCvhCjlu7mK+KPFl3w0xbyYifIk5UxRUhh+cvyshpsHF0yT7
jPr++EfMGPF2hV6XrSbtrbrb1V4meWPe9UQmoi3r2zb/5kJYJz4=
=rson
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--


--===============1855008702295377547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============1855008702295377547==--

