Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B081F95E3
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 14:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cEaRdGkJgpZQfjJvHMZZcr2pR/uLaNmMvdRHnhslZxc=; b=MURxRl0qKG4obnaxh9dFTQe9o
	HpuAm8YgAxBPnIenucjKjgG7iqCPhhphcBXHDSMF41ZoEPDp4W8tszs6XE6eKN6ueTUuWvQ2cVs/g
	/TEPb6Q0ZI+NuacCDLhpvlx3QL28BfnGm+579KUolUqvBAzpxdsB+EGqz8iUmTRyqWY0FPEsOdA0x
	NSme+BgJTa3j/aoZBVyW2+yIc16BroMH/8mIlKlz3D4dZBKSS8eNwqXFXUlE3nkG3uIXOM6ABkKyh
	HIy08BpeI4ifWCtUgG2Ayvc5nYXysK3ZpljNWK4/evUaHZO1rPRMTcCnb+dmzxn2MeHLJ7rXFC/Tv
	mzo3c30nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkno9-0000Ox-4G; Mon, 15 Jun 2020 12:01:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknns-0000Fd-94; Mon, 15 Jun 2020 12:01:29 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CB9B20679;
 Mon, 15 Jun 2020 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592222487;
 bh=bckLxMEKq0w5/9SzJe+n69vU2/hXF7ff/hu/a17+8+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JYy9uvJD0PYRI2p3DwIotJOPqtgow49a6afHPJvsWcuBY0yjMd4cMirM6pN9r8hnW
 bAuNvqGDTjO1PYNVybPD0JTt0QO17WOahY67f2Xbvv7ksMXm+vjQWpUNkhQeWo72XL
 h9meg4DTVT4OxdC2+kMDmPK4hWvZvLhU3rIlMDWM=
Date: Mon, 15 Jun 2020 13:01:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 13/29] dt: fix broken links due to txt->yaml renames
Message-ID: <20200615120125.GJ4447@sirena.org.uk>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
 <0e4a7f0b7efcc8109c8a41a2e13c8adde4d9c6b9.1592203542.git.mchehab+huawei@kernel.org>
 <20200615111927.GC4447@sirena.org.uk>
 <20200615135739.798f4489@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20200615135739.798f4489@coco.lan>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_050128_339855_FA940289 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Jakub Kicinski <kuba@kernel.org>, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, netdev@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-bluetooth@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8096992144637470499=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============8096992144637470499==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="va4/JQ6j8/8uipEp"
Content-Disposition: inline


--va4/JQ6j8/8uipEp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2020 at 01:57:39PM +0200, Mauro Carvalho Chehab wrote:
> Mark Brown <broonie@kernel.org> escreveu:
> > On Mon, Jun 15, 2020 at 08:46:52AM +0200, Mauro Carvalho Chehab wrote:
> > > There are some new broken doc links due to yaml renames
> > > at DT. Developers should really run: =20

> > I also previously acked this one in 20200504100822.GA5491@sirena.org.uk.
> > Has anything changed here to cause the ack to be dropped?

> Both patches are the same. I forgot to add your acks on my tree.=20

> My bad!

Ah, no worries - no wonder I couldn't spot the changes!

--va4/JQ6j8/8uipEp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nYxUACgkQJNaLcl1U
h9AlAAf8D93i17Pj7T800BmwJ3UUHzaiQeRYZFSyfjkXbmviTRnh3rTP+7Rx/Rqe
83+UeFeMR/Rn18FzLvpCjXuZ1LTbEsOj7/3vkvecKW+LQy/oHwTsTr09Im4vI0h2
9r3wxGGCXOU+EPu2c9ZT3j+Sp9yhWheTN0ym70YLHDtJuat1Bjw96kBQF8vpo1d9
AGTB8NOjhstg/4Z+dZYlx5NhdbG4f5qV9zkkVGyZJ1xcdrgs60KfolFrCfTtUG2X
qRm7RhGf/Rum0bhUG8lvkRaJGz9+Wh9eQA3JUHItfxFEvpM1scwlHJrBTxo7fP9y
ytZ9j2PBRG+rP5iCMbibBf7cKbhhMg==
=xi26
-----END PGP SIGNATURE-----

--va4/JQ6j8/8uipEp--


--===============8096992144637470499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============8096992144637470499==--

