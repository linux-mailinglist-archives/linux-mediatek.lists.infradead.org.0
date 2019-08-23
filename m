Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E9F9AC62
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 12:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KTuwQtt21eKns/Rmk29yf95j51IMNfWGJO4h1o0NYbU=; b=Sjy2vOKgB+6jP9aNkXup3O0Xd
	Jgu9jaU6duVmbxbtLwnorbKb/YmzrZ23tfo6H/mkffs5rnZDQvoQV+7CBzarJZhggHefc4cYOb8ti
	q3pHD2akDsOeTOUqv7D7HEBI1KkhZYA2tpo2iklWDFbMhGqEeKgR50zlTeGbFgsRzp3P/i1VWrVwf
	zB4ekyp7uArYf+fD020a6vaB3EoCJAIhzVkRuFws/VcPHzJBtX67cgCezMyqlwwgJR+oIAuyPfWxw
	QY64ylwnayMlHJ9e1JiAGEWalGyz/Adv5QmOf1X50dOxhrO3M1+gI/XIAF7DHYWR6K8TGgozfKKYa
	8GNq7u6/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16Qn-0007J3-Fv; Fri, 23 Aug 2019 10:04:29 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16Qk-0007IZ-QR
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 10:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/fKlgjFGA0o3m4WiBlVTFJ5fR5eZsQoIHmC08YJKEpw=; b=R8QbTtn2kSFaM1V4mogTzuXLs
 1rOMDT3GIa3TV8+bKZehX2qooP6QO/sSeoJwlW31NtztwKne9NyZd4kO0jZa1jMY/SNvTbiMnfN3q
 2W/X+8zTLHaduPe07krQhhkZ/3YirtrpbxSv45V7F6xOsHkzmBhPXjWwn2RbWl7H4uWJQ=;
Received: from [92.54.175.117] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i16Qi-0002fV-MM; Fri, 23 Aug 2019 10:04:24 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 9784DD02CD0; Fri, 23 Aug 2019 11:04:24 +0100 (BST)
Date: Fri, 23 Aug 2019 11:04:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Aw: Re: BUG: devm_regulator_get returns EPROBE_DEFER
 (5.3-rc5..next-20190822) for bpi-r2/mt7623/mt7530
Message-ID: <20190823100424.GL23391@sirena.co.uk>
References: <trinity-584a4b1c-18c9-43ae-8c1a-5057933ad905-1566501837738@3c-app-gmx-bs43>
 <20190822193015.GK23391@sirena.co.uk>
 <trinity-5d117f0d-9f34-4a2b-8a12-1cd34152c108-1566505724458@3c-app-gmx-bs43>
MIME-Version: 1.0
In-Reply-To: <trinity-5d117f0d-9f34-4a2b-8a12-1cd34152c108-1566505724458@3c-app-gmx-bs43>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_030426_882891_0DC03253 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?iso-8859-1?Q?=22Ren=E9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0031267200089367356=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============0031267200089367356==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="N8ia4yKhAKKETby7"
Content-Disposition: inline


--N8ia4yKhAKKETby7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2019 at 10:28:44PM +0200, Frank Wunderlich wrote:

Please don't top post, reply in line with needed context.  This allows
readers to readily follow the flow of conversation and understand what
you are talking about and also helps ensure that everything in the
discussion is being addressed.

> cfba5de9b99f drivers: Introduce device lookup variants by of_node
>=20
> this looks suspicios to me since the change is in the function which fail=
s:

> struct regulator_dev *of_find_regulator_by_node(struct device_node *np)
>  {
>         struct device *dev;
> =20
> -       dev =3D class_find_device(&regulator_class, NULL, np, of_node_mat=
ch);
> +       dev =3D class_find_device_by_of_node(&regulator_class, np);
>=20
>=20
> but i cannot revert this commit so i did it manually...but this does not =
seem to be the cause...still error 517, also a change in core.c is not the =
cause...

Can you run a git bisect to try to identify the commit that
caused things to fail?

> how can i check instantiation at runtime?

Look to see if there is a device driver bound to that device, or
check if the parent regulator is visible in /sys/class/regulators. =20
You'll also see a mesage printed out for each regulator as it
instantiates in the boot logs, you can check there too.

Please fix your mail client to word wrap within paragraphs at something
substantially less than 80 columns.  Doing this makes your messages much
easier to read and reply to.

--N8ia4yKhAKKETby7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1fuiUACgkQJNaLcl1U
h9AmOwf/dossdohwbTU7gbRKWcbcwf5yhS50bvPY1dNR7W4KqmsYN4dgsqojcrYT
M05UrO0aDBneDe6vBp5Sv0RQDShfVdQZq9LChbmTkSYExNwexrXptKmMMQsVLvnt
B1vSsj4V7fhEeFzk1ra1Q7/GmXMsa8ilxKjnOgS13ygcSu7+P3BCCSIGTm8u4Bms
Owhk71a4jdDukj5+vkSdK1byT7EFmchdaBF68HN1fh390pjj6qakJBnnOygnfoOu
hj48bRiTFS0tj2rypVZKgzDexw8aAWtKmvlRGH0JL8kSOUCMblhsCT7yJ0o61im6
hTmjxgATLGRh9JZIUOPxoafwWbiclQ==
=hch8
-----END PGP SIGNATURE-----

--N8ia4yKhAKKETby7--


--===============0031267200089367356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============0031267200089367356==--

