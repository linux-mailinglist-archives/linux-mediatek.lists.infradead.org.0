Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A2EDEBBA
	for <lists+linux-mediatek@lfdr.de>; Mon, 21 Oct 2019 14:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2fuNQzfl9rfFjHqcSp+lq7/TD0/X+yrOPosimQRFTOs=; b=BnLf3vETTT0h1ewbJoVyc0riY
	1MLvldN1VgFEUlElNizOz4cvUxcZJtotGT9uz85qzDo0yrx1pjXJ2rP4yEKLOmz8I4iOMFwTgwW9y
	uQY4St4t9IL73E0T/T2b7QuoEzRL+jL2y9ekPmvHd9zrecvByMNzl2fc9tPl2Fl3C6k1VI6/vt9r1
	6MPHp8H9YyAA3NFBojB4hUBFYdNIeH6/W99/P1jkh/uXvxcxSXBpY+d9hOjaGNl476HIvKUVN+o5v
	tOLGXgCoHji/dllXtavWeipycGEXVSHpaiysNzTwW8Kj/54Nlvt9sP/QrecGiQZ8uNlXec/lSRqNS
	S1/9oAoGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWYP-0003f8-PX; Mon, 21 Oct 2019 12:12:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWYB-0003VT-Hh; Mon, 21 Oct 2019 12:12:40 +0000
Received: from localhost (p54B33572.dip0.t-ipconnect.de [84.179.53.114])
 by pokefinder.org (Postfix) with ESMTPSA id C6FD72C0076;
 Mon, 21 Oct 2019 14:12:38 +0200 (CEST)
Date: Mon, 21 Oct 2019 14:12:38 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH RESEND v2] i2c: i2c-mt65xx: fix NULL ptr dereference
Message-ID: <20191021121238.GD1145@ninjato>
References: <20191018173213.13282-1-fparent@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20191018173213.13282-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_051239_727883_AA54C2C5 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ulrich Hecht <uli@fpond.eu>, drinkcat@chromium.org, qii.wang@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, hsinyi@chromium.org, matthias.bgg@gmail.com,
 Cengiz Can <cengiz@kernel.wtf>, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2558333800911148766=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============2558333800911148766==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ycz6tD7Th1CMF4v7"
Content-Disposition: inline


--Ycz6tD7Th1CMF4v7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2019 at 07:32:13PM +0200, Fabien Parent wrote:
> Since commit abf4923e97c3 ("i2c: mediatek: disable zero-length transfers
> for mt8183"), there is a NULL pointer dereference for all the SoCs
> that don't have any quirk. mtk_i2c_functionality is not checking that
> the quirks pointer is not NULL before starting to use it.
>=20
> This commit add a call to i2c_check_quirks which will check whether
> the quirks pointer is set, and if so will check if the IP has the
> NO_ZERO_LEN quirk.
>=20
> Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for mt=
8183")
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Reviewed-by: Cengiz Can <cengiz@kernel.wtf>
> Reviewed-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Tested-by: Ulrich Hecht <uli@fpond.eu>
>=20

Applied to for-current, thanks!


--Ycz6tD7Th1CMF4v7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2toLYACgkQFA3kzBSg
KbZHYhAAl8PJLRm3n1nm+VexzkwL5Vr5flPI4eZvMIG+4oHfei8QC90cd7qAMaid
FLmD34xBk+wvW4QUp4VH/UoKm058/2xXE8xPEvVAZdxSVfhpU9tqkOsL4exxvv9A
ERB4uZvYNbirHWOEv4XgxMSKucnFU+HwcDKqR0JjVWcYfl7jRKoq8lWgiQ0lPSc2
y87dyYhM6Kp5XU3lGd8WqJbArlxT0h+4IzshXhg7Jh/nbqPIeu+R5jX1ilt1bj/A
Sk7UCssar8LQ9Xj8kYXWhm7YJZ4mD3DaQ5yvl086mI2QOuAd65MYsU8IiW1/Bq1f
JzBNSL0nms9CSZwnGL84qa4BC/3PT+MWMTDQYlsKAJAmhz4zkw8JMp2F4uI3KaZd
p4uX+T5ecjdljvDga5HEsJ9zumJl/U+Hy3jxY+rxLDF+3ZiTVrQa68Hft8S97OI/
83Q2LikqYYsbUJBXl/6asEdcpitFQwP545w/sSa5wa1kXBwCeCoAbFCxC+s4Sp7H
aXZQDALTnUeYSLi12K2LYzZ3JZcjr9rPBg5EDNssm3U+SZBC+YESlNIEhGM6HMzX
ZqHdhYmKM4FRI8F5fQ5ck7NQjq6GKckVIdUQM9q9eb/HdTw2ChgvetaVFO4JcdD+
WhaIBzgT2gL6ESoLO5gvFya2cV8faV+zrg+SzykofwM99hR4DtU=
=hHgJ
-----END PGP SIGNATURE-----

--Ycz6tD7Th1CMF4v7--


--===============2558333800911148766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============2558333800911148766==--

