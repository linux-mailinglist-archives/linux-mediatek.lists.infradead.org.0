Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20291B24F4
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Sep 2019 20:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D2Nt4MI5lBpGtktWZyVIpPh/aiDi9BE+5NuLpETEeIA=; b=CG+Hb1xwHEA02fC2DV6Cf40k/
	cd1VRGBR8ulaLtP9dU0yHzD5Cxlu5aFLEteUjjCQa9OZkgBf0hUy0rSWH5GC4ViC+GNx3P7P9B8jX
	M/BNm8/F4QgKTRsGUeE0IqMyzGy67CfkFVpNkhFTv4zE8+7eO3qauAW/WSc89PGm280ojPVprhIvS
	3+N41/sPIQnIekDSegGU436R5OFE6tmGiyLs5OSMB2wmIVbt3joVAGcrt9CuaElWz64OPz4leOxmk
	4CkLZWUvyS5DJo0gQOMb7eEZz2W4bcj93N8rsHG/UJg9FFlZ694IUzQEjlobzX8cpnUUcOxNR14vG
	ekd6HXvaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8q8z-0003SV-EN; Fri, 13 Sep 2019 18:18:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8q8b-0003GY-8K; Fri, 13 Sep 2019 18:17:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id ED22D289F25
Date: Fri, 13 Sep 2019 14:17:29 -0400
From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
Message-ID: <20190913181729.GB3115@kevin>
References: <20190905081546.42716-1-drinkcat@chromium.org>
 <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
 <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_111741_431379_789032CB 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4521588497116750845=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============4521588497116750845==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2B/JsCI69OhZNC5r"
Content-Disposition: inline


--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > > The binding we use with out-of-tree Mali drivers includes more
> > > clocks, I assume this would be required eventually if we have an
> > > in-tree driver:
> >
> > We have an in-tree driver...
>=20
> Right but AFAICT it does not support Bifrost GPU (yet?).

By the time MT8183 shows up in more concrete devices, it will, certainly
in kernel-space and likely in userspace as well. At present, the DDK can
be modified to run on top of the in-tree Mali drivers, i.e. "Bifrost on
mainline linux-next (+ page table/compatible patches), with blob
userspace".

While the open userspace isn't ready here quite yet, I would definitely
encourage upstream kernel for ChromeOS, since then there's no need to
maintain the out-of-tree GPU driver.

---

More immediately, per Rob's review, it's important that the bindings
accepted upstream work with the in-tree Bifrost driver. Conceptually,
once Mesa supports Bifrost, if I install Debian on a MT8183 board,
everything should just work. I shouldn't need MT-specific changes / need
to change names for the DT. Regardless of which kernel driver you end up
using, minimally sharing the DT is good for everyone :-)

-Alyssa

--2B/JsCI69OhZNC5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQ17gm7CvANAdqvY4/v5QWgr1WA0FAl173TQACgkQ/v5QWgr1
WA2KFBAAnQIHm2aIeWt2mYq9onM7XNfSCCxZzYCsLXaE1LiylCZdcDanV4VaF+B3
f+jIbfoeoHcnqlhNYRNiI93L0dl3YdmKHBJsPkxNg+ziQu/alZQbsYFNB07LBsuk
2dxKissYufkSfdcc4UFEBDYq6LQlLF0XmXr5G7oNazC29e73h6Jpn8lrIlKrKo+v
5SE/KJs7ua1sfKkj6As8LOh2VFqCv+NZ7XPjI+qUQDoSfXgoO2DTsLu79lhInxRr
pdC8YKeypMlEGRuDgXt9Ee1zi0lk0OroJ+9uELf1G67V/JlpSOOI1go00HhC4Tll
I8LeczfwD2ujVnJ1kpENyQAmqEY/b6lNPIQJm0MvLFh59Hk9hjl8j1WlH9+yKMNH
rcZK1/SYeo97URXmKbfYFiwnRLXsX3p7wXjC6vtiw0xa7AcgdsfU+su4uUp8uq3V
6xCVdnowzNVjYBt8OZbOV5QWXTp0peb9VRIdCjHnrtgb55eYoQDV7Mh69Q5oG8MB
GZoD72p8ks3LI9BrTJ2QFjEsbWYj9XpvXI7AGL7YcR99QyF9hmgQF0h8Xnwz4nwD
8oYGMbECAYUT7gVNHCU9lbFkmvsgMCSTvLfMNO5nwarwgF5y8LsQITo9Bf2tLyQ/
nu3S6fy0qmIcLnwbiMG7urG8a81EtGUNJb8JBd4SLmKQAkA4NWo=
=H0a9
-----END PGP SIGNATURE-----

--2B/JsCI69OhZNC5r--


--===============4521588497116750845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============4521588497116750845==--

