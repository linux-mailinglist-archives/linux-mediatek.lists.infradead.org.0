Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780656AE7
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 15:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AtzpXRXEnL99SO6C+CQTvKettMSL0D1un+xQLACYNvU=; b=bCBgs1iW3yTs34L3lWMx/Alrx
	SbUMg7Qt5BvcjzyjLTgSLhghEW5GE0+gs1TBzeQIRazK9wtCM159Jy3XamvOVc1O8ETQFCgRvfLY4
	WTvQAADOIddiWCKtT/m24Eynz5AkrYrFOueG0Ec+QZkrLeMuVjVUGCapT7mioFe7QbTdepxc37+UL
	so3PkmcNS8LOqzez9zqiE3rH54iIopHtNdK7vUGKxbj9CXeqBUf5p9UJcfEXN9e20HCsBGFW5jQs+
	digMca70+rYb418yW9HS909cg9ZoQ5FJeV2/+0cKBJPNgqUatLN8dI2+bwzUOogERxZK7gwtM9DTC
	xiTe+nJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg89n-0007Gb-4T; Wed, 26 Jun 2019 13:40:15 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg89G-0006En-Rw; Wed, 26 Jun 2019 13:39:45 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id 1C93B2C0114;
 Wed, 26 Jun 2019 15:39:42 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:39:41 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH 1/2] dt-bindings: i2c: Add MediaTek i2c AC timing binding
Message-ID: <20190626133941.GL801@ninjato>
References: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
 <1560240715-22595-2-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1560240715-22595-2-git-send-email-qii.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063943_090853_5459B88C 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 leilk.liu@mediatek.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8754012623985003775=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============8754012623985003775==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VBq/nvTu32OVLBUP"
Content-Disposition: inline


--VBq/nvTu32OVLBUP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 11, 2019 at 04:11:54PM +0800, Qii Wang wrote:
> Add i2c AC timing binding to binding file. It can give the AC
> timing parameters to meet I2C specification at different speed.
>=20
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>

I think this is a too specific 1:1 mapping of your register set into DT
world. We already have these generic parameters:

- clock-frequency
        frequency of bus clock in Hz.

- i2c-scl-falling-time-ns
        Number of nanoseconds the SCL signal takes to fall; t(f) in the I2C
        specification.

- i2c-scl-internal-delay-ns
        Number of nanoseconds the IP core additionally needs to setup SCL.

- i2c-scl-rising-time-ns
        Number of nanoseconds the SCL signal takes to rise; t(r) in the I2C
        specification.

- i2c-sda-falling-time-ns
        Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
        specification.

(check Documentation/devicetree/bindings/i2c/i2c.txt)

Can't you use those to derive your values from that? Which ones are you mis=
sing
if not?

Regards,

   Wolfram

--VBq/nvTu32OVLBUP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0TdZ0ACgkQFA3kzBSg
KbYdwg//dQgqHhmthL0M3JNNdA09iWqGwQ9bMoPtMtoM/+hklFt9CRstWC+xJM/Z
R0urToI6NYfU6uUHLyk/Rm+qLRpxjdm49flzF/e0MbEEwW1xXifpbQJOK5Dcwb1w
qRI46Nb8IjHa3+P6az+WgHlKg/1xURj5oPnVgbl/vNsxXbdubtpYUlOm10WROnNE
vx+ge9+OzERZ2KhNkOWbvx3szlBE5KF183VZVfXYvYnR4X0Uz8LJt1H90o9ointF
5dXC/UzCOBOkyp5lL4KqbDTcoSeaTEWkAnt3tKnyXig+vgK1O/aeOdAENd4m2xsh
1kfdlwXrACKg5zUN5jUPF4KF9r0+YI2GJZHgyxqmzuWabRd9F1o+rXvKwintgJ0L
Ffb9SOLW7fqDVJKBCOkFOglJZUOWxeU6TfsQWYwNhYorI0HcJ+EcQR4195ZyhtD3
zEEpeh6Qpxk+maQyvO9NzBd7+HLLEUqHQZWTsOctYucIyLbpolJ2Iq6V9LasLiwO
U5N29cEdhN/YLXC+aAzBu9iJlPc2C+blG99j80l3D/uDY42G0cHXkThzgDSSTEmx
lIz41aICZKF/3RHgbSz7yEKH5ulFOvd8qFz5Yn2nQQEHKzm/sN1XU0o3VgWIEnbN
byFUoWjaiu3xM0xFmKf5WtZ0qpRM0y5VIUO27JwSkBREDVJ7QV4=
=h1Pk
-----END PGP SIGNATURE-----

--VBq/nvTu32OVLBUP--


--===============8754012623985003775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============8754012623985003775==--

