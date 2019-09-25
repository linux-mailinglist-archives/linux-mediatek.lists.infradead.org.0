Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D26BE2D0
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 18:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DyG79YFJvQAdQcUXDsfMfr9g+GnYDNlT2Srv7D4A2kg=; b=cka4Qmec5FFdTfM61s8vzrZVN
	EznBgf/KeCyNBwgb2/Qjmm11QGcNiMpmwBzanvY6slkHP2076w/6LFZG+046+zd9cIjLk3k4SMg/F
	8PUWesH2tnEePIEDBxlJBPmFWUvQ65le1DnfjEHfz684k5HpV0YAirYQfrZAXASwkUqg1NV8p0s/K
	MykWfsbkm8slIHgERVgV/WV5o7r5L2bQje6kWcxSQMNX7N8jyBukkl/vhBr8aXhSW6di54JO9sZ6Q
	rjs84nUp+BG+VEsZFwbIcaED3v9nqIXe+l6Q8JKItaWUcVXT+5kRwCe9qhffWuIngFHhNearHXE3+
	y99tTOfag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAVE-0005Eg-Ts; Wed, 25 Sep 2019 16:50:57 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAUp-00052M-MG; Wed, 25 Sep 2019 16:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=naZYuWITcaswjPtwwbtHxt7UXmfEBcDn8wWuUVMvZ0E=; b=ZFKIHEtEGwRsj+oveJPSkwZ6E
 Bo0OeIxRfEr4ejlG2bw7+jJBq3M+qUDaRP3zNMX7fVEFkrcH7kxPDk7gEOFCYmW2MgQb5H/Zrypxr
 Y52OmdJA0DZiUNYkF0WxF1TWaWZzxWqbBzxnOPfK75gUgxNQ146HbFwvFRp6vyY4dnacM=;
Received: from [12.157.10.118] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iDAUj-0007w3-V4; Wed, 25 Sep 2019 16:50:26 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id F0CE4D01BD1; Wed, 25 Sep 2019 17:50:23 +0100 (BST)
Date: Wed, 25 Sep 2019 09:50:23 -0700
From: Mark Brown <broonie@kernel.org>
To: Richtek Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [PATCH] [MT6660] Mediatek Smart Amplifier Driver
Message-ID: <20190925165023.GJ2036@sirena.org.uk>
References: <1567494501-3427-1-git-send-email-richtek.jeff.chang@gmail.com>
 <20190903163829.GB7916@sirena.co.uk>
 <1a776762-ee65-7344-4bca-c82e16badffa@gmail.com>
 <20190904115630.GA4348@sirena.co.uk>
 <3a9f66b3-bdb7-9bec-a9c4-ac58d3efa543@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3a9f66b3-bdb7-9bec-a9c4-ac58d3efa543@gmail.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_095031_737732_9F96BFE1 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5757491933008013157=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5757491933008013157==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FO0yZLwVDWUwTKck"
Content-Disposition: inline


--FO0yZLwVDWUwTKck
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 25, 2019 at 06:04:23PM +0800, Richtek Jeff Chang wrote:
> Mark Brown =E6=96=BC 2019/9/4 =E4=B8=8B=E5=8D=887:56 =E5=AF=AB=E9=81=93:
> > On Wed, Sep 04, 2019 at 03:07:06PM +0800, Richtek Jeff Chang wrote:

> > > > It would be good to implement a regmap rather than open coding
> > > > *everything* - it'd give you things like this without needing to op=
en
> > > > code them.  Providing you don't use the cache code it should cope f=
ine
> > > > with variable register sizes.

> > > Due to our hardware design, it is hard to implement regmap for MT6660.
> > You definitely can't use all the functionality due to the variable
> > register sizes but using reg_write() and reg_read() should get you most
> > of it.

> =C2=A0=C2=A0=C2=A0 How can I fill the val_bits for variable register size?

> =C2=A0=C2=A0=C2=A0 I try to use all 32 bits val_bits, but our chip some r=
egisters are
> overlap...

> =C2=A0=C2=A0=C2=A0 Do you have any suggestion for this issue?=C2=A0 Thank=
 you very much!

If you use reg_read() and reg_write() operations you can hide the
register size within them - the rest of the code thinks the
registers are all the 32 bits but when doing I/O it can use the
appropriate size for a given register.

> > > > > +	for (i =3D 0; i < len; i++) {
> > > > > +		ret =3D mt6660_i2c_update_bits(chip, init_table[i].addr,
> > > > > +				init_table[i].mask, init_table[i].data);
> > > > > +		if (ret < 0)
> > > > > +			return ret;

> > > > Why are we not using the chip defaults here?

> > > Because MT6660 needs this initial setting for working well.
> > What are these settings?  Are you sure they are generic settings and
> > not board specific?

> Yes, they are generic setting. It comes from our hardware designers.

You should probably be using the regmap register patch feature,
it's for things like this where the chip should always be used
with a different set of defaults to the silicon.

> Should I send new patch file to you in this mail loop, or I should send n=
ew
> patch via new Email Loop?

A new one please.

--FO0yZLwVDWUwTKck
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2Lms8ACgkQJNaLcl1U
h9DWyAf9GJg6rx9ZA0HyG5Q6KMBXqXHcD5FiF/ew+TDWG91wurQF0lIa3JOuBM6P
5MIzrRqWv0j0DFyUD+E0TLtruxSh5zWNV8De2kE84wswFX1f6QA7FYOKqs9iTQ/I
RdCU8CfdrVviYD7cphFaaaF2Aq/dlSGA/kRINOiWswGyYaHLB78Z/TYLD9L5tPTk
yo5ju5eLjrAL4PPOso49/VhONhU6BOcIjmOBiix3NkL45BzNS1gPVGsggRcFC3Rc
aaBv1Fd3lPfExjOG9p5H6PGzGLjtPh5DwK7AuXs0RaW8cUWdrIsvRARD6R6+OTCr
5g84bg+BvEfqAeb1XolhPuf7EpZ/Ow==
=C2/G
-----END PGP SIGNATURE-----

--FO0yZLwVDWUwTKck--


--===============5757491933008013157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5757491933008013157==--

