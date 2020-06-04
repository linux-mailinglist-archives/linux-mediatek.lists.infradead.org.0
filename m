Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B22A1EE40F
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jun 2020 14:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EU3bmb/fj+z+jZNfG5uTZCoVhvXTBsCLiX+SESUlY+U=; b=ciGVs54657v6Hla1y1NPPXc77
	hUygDxcsOd/2Kx5BWTK2a3Cy2NmKLIe4CAx/4M10aztzacAxEsCIlLn6PyxaU5EqKPJ9MJ+rR7F5a
	dQ4a8Vri8nxQThKafwexkVdggRJLM9GOX7MN1/5jDuKDsBugZsgg8zRkq5iRCkxxGgGkA4jYr+QFd
	+K/7ZtzvzPyaHdIWcqv8Srdm8PgfC3rfyV2vmc727Za0Bb3kHPnFNIhkmXNkALmIhVU+idckOr+rD
	kSM2g4vPKukp4QFUTvh2ImkjvN4sENDCifAGrYeDoAZgfonHdQFbfvGbXWc1CveLYnbZsdBlou1C2
	YZNuc6QQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgodw-00055d-9Z; Thu, 04 Jun 2020 12:06:44 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgodm-0004wg-8S; Thu, 04 Jun 2020 12:06:36 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 7EB4D1C0BD2; Thu,  4 Jun 2020 14:06:21 +0200 (CEST)
Date: Thu, 4 Jun 2020 14:06:21 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] leds: mt6360: Add LED driver for MT6360
Message-ID: <20200604120621.GA3560@duo.ucw.cz>
References: <1591252004-12681-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1591252004-12681-1-git-send-email-gene.chen.richtek@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_050634_450233_CB20160F 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 benjamin.chao@mediatek.com, linux-mediatek@lists.infradead.org,
 jacek.anaszewski@gmail.com, linux-leds@vger.kernel.org, matthias.bgg@gmail.com,
 shufan_lee@richtek.com, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: multipart/mixed; boundary="===============5849122929523095271=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5849122929523095271==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Add MT6360 LED driver include 2-channel Flash LED with torch/strobe mode,
> and 3-channel RGB LED support Register/Flash/Breath Mode
>=20
> Signed-off-by: Gene Chen <gene_chen@richtek.com>
> base-commit: 098c4adf249c198519a4abebe482b1e6b8c50e47

Does this need device tree binding, too?

> +++ b/drivers/leds/leds-mt6360.c
> @@ -0,0 +1,1061 @@
> +// SPDX-License-Identifier: GPL-2.0

Could we get GPL 2.0 or later?

Thanks,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--uAKRQypu60I7Lcqm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXtjjvQAKCRAw5/Bqldv6
8uu2AJ94mDQBXm5GCB+DGTjiC5seurSDSgCaA35bqtIrtU4tkebxxxG9yKvSs5E=
=/E8n
-----END PGP SIGNATURE-----

--uAKRQypu60I7Lcqm--


--===============5849122929523095271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5849122929523095271==--

