Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871DD17DF90
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Mar 2020 13:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X55oxvtVGl3Ym1RIcFZnqO2O8is/zFN7+NJzC/LsrQA=; b=Rm1DHYqpALwSWzdJDdAmgxoss
	+aBhw+7oIvkBaru0qfhawGtyGC/RJeaAfwnmm9Ut14fRWO6E7s9h0WgWiwMmavTsihHwKy/crUQg4
	gSGpLxfi6jPMviBA0JPUAG1Ed4mwnf1ZNCH0imgGPO+YcGEVC5VHHLneenUAog96UZuEjV4pCWOX/
	WnalYJ9Lww8uYwquUSsQHWf/FdNnKP1zWwLnd7Hhps1b/XkCmqX8zrdLAjw/cdlUrhrqyZzFR+zr9
	BGNGc/E0S59GaE63AuzAtR+bIx/VfnDXjzSZCvLm3wBt3Jd3Wx0d5H/hrykMbJ3BzTkf5+v7GRgBR
	gd/XJN4Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHEy-0006Pt-Bq; Mon, 09 Mar 2020 12:10:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHEo-0006Im-La; Mon, 09 Mar 2020 12:10:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 116B530E;
 Mon,  9 Mar 2020 05:10:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 888603F6CF;
 Mon,  9 Mar 2020 05:10:21 -0700 (PDT)
Date: Mon, 9 Mar 2020 12:10:20 +0000
From: Mark Brown <broonie@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH v3 4/4] mtd: spi-nor: remove mtk-quadspi driver
Message-ID: <20200309121020.GD4101@sirena.org.uk>
References: <20200306085052.28258-1-gch981213@gmail.com>
 <20200306085052.28258-5-gch981213@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200306085052.28258-5-gch981213@gmail.com>
X-Cookie: Above all things, reverence yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_051026_751653_D3FBD6FC 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4046488053672634689=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============4046488053672634689==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mSxgbZZZvrAyzONB"
Content-Disposition: inline


--mSxgbZZZvrAyzONB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 06, 2020 at 04:50:52PM +0800, Chuanhong Guo wrote:
> This driver is superseded by the new spi-mtk-nor driver.
>=20
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

Is this move OK from a MTD point of view - should I apply this when the
rest goes in?  The patch was in prior versions too and is obviously
straightforward.

--mSxgbZZZvrAyzONB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5mMisACgkQJNaLcl1U
h9AW8wf/ZiBUrxNc95s6m0g5fMy2/cs3/LsPrWZSb3N2E1e27ymrx83CSPad45sg
mGRE8ZNrAjJejZVzFdgOiQZQtKXKFVjY6HjAAatKDSNqcX+8k/VR6yCE/xQB36h/
V+fLMlrzLx1nNEF3umZAmtdkQIQN8OuSTUbLAgAVe3bZVXWMQAZfcJrCy/FuidfY
ZjU3+caJ3jC8rwDB6+1xVujEe3+eCz63rkOHoSGzqXBYI0OpQfOLd9M8fu77WW4U
6RV5Z5lUl26EOpzOO2+FJKEdguXeXDguoAjKlqcc+CzhGBVdnRetzqf+LEujpAOd
xU3eqFZzEBmUHpNr4i2GACoDY/MBSw==
=H8Zm
-----END PGP SIGNATURE-----

--mSxgbZZZvrAyzONB--


--===============4046488053672634689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============4046488053672634689==--

