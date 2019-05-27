Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AA02BA76
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 21:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bGqNhuLtOnrOWw1p2aHr7IcwqOrT3pMykAMXu5icXH4=; b=IP8SPQAPRS2DTOZjLrB3VUDAH
	zsmS9FoUfqDXAejokLNU0QBYEsTtKqLFiXaw0II6WC2vgA7PbxBLnV4nyDLPZx3Z8r0n/9vnfTn1q
	DtZiMXMWPnIKve+O6wvzXWnAEHnTgnjj9YnKOUVoI+/fREykkKlAF94o6ktgYZ8o5wdvgmHgToUOV
	Th68qGlL0xHgd9LVA4lPQhhYcX3RU6zeN/I6oLfAEZthqDdc1y4iuxhFmXWLfviKWjxONJ3F08hiZ
	iTE5VJewO85IykLd7QClyUt93o0rsWKlU07cArZ6TubfsTUUiCjWjXazv5YhttaM8rrStjgW6z3SP
	PXQsYMIQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKrG-00031w-1Z; Mon, 27 May 2019 19:00:30 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKqp-0001L2-0v; Mon, 27 May 2019 19:00:05 +0000
Received: from localhost (p5486CF59.dip0.t-ipconnect.de [84.134.207.89])
 by pokefinder.org (Postfix) with ESMTPSA id A09DE2C04C2;
 Mon, 27 May 2019 20:59:58 +0200 (CEST)
Date: Mon, 27 May 2019 20:59:58 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: Re: [PATCH] i2c: dev: fix potential memory leak in i2cdev_ioctl_rdwr
Message-ID: <20190527185958.GB8808@kunai>
References: <1557238832-10723-1-git-send-email-yingjoe.chen@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1557238832-10723-1-git-send-email-yingjoe.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_120003_221851_D69F36BB 
X-CRM114-Status: UNSURE (   7.24  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Jean Delvare <khali@linux-fr.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3163605621050313204=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============3163605621050313204==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline


--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 07, 2019 at 10:20:32PM +0800, Yingjoe Chen wrote:
> If I2C_M_RECV_LEN check failed, msgs[i].buf allocated by memdup_user
> will not be freed. Pump index up so it will be freed.
>=20
> Fixes: 838bfa6049fb ("i2c-dev: Add support for I2C_M_RECV_LEN")
> Signed-off-by: Yingjoe Chen <yingjoe.chen@mediatek.com>

Nice catch. Applied to for-current, thanks!


--TRYliJ5NKNqkz5bu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzsM60ACgkQFA3kzBSg
KbbrPg//afgtgokT56fLVAUimGKtp43xzDIQTphV9hSrj6qPYR0k56cR1pHzIusn
2CI1BMettrTAASHv6klyeQcSJzoNDEJLwc3zWgPnMEARpTOaqc7IeptQfS0qNMkJ
a83IE5Wvhl/w8dDINSxGqXOiMOIsYQ1fVHXYxB+9iaWM2ptxsCidWl5G+6hXUTn1
wW3icZKaPALroV+TlvlyFIp1D+WhkrgWf/Dt2t5xe4kvnO4Z7dAvdBKvzMh9ns61
zR/F9g0j8044RWSPzIm/uw7yvoamv+haq2f6P6k8aEvlt/R4HnsWSB440uZinZvy
JGjn+XskfNUny0rQsWn7L8b7Avigx5bJSS5DCNeL8TUSIu4qCaBv3GSJAMd/IId4
u8Hfs2efh3xVY8szRzl3Cw2UT92Alhg5Y0+IQK2iSeEovnKiH9asyQU7FPbDLEeO
L10vkNMEKz1WsAOmDr+MTf7qjER6sYoECehEnn2doOE9Cvsy2K8OmrLXZ5lnQ4zl
w30FOYcZWdohFjMBYFOtZbL785pReQ/5dAPJlNUNPdbWU3FMfNhtylcbhCc4KJVV
Yu0NvSTfN0fKHtfEpdB6VTsecRw7tjZogVXUvoecos8SKRd+J6n18j0QXBeR2BRx
kUdKKAQWKwTi9U/bFlwHsXGW0yJRJL8w8Z6utUXJ/xPmNXnQsRI=
=VNJn
-----END PGP SIGNATURE-----

--TRYliJ5NKNqkz5bu--


--===============3163605621050313204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============3163605621050313204==--

