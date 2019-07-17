Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCB66BD07
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 15:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WFpR+kEs/JlsQMy3kjWRjLd8Ujgu6nOld4wGxHjTh7U=; b=mUuRNL1C7iejahr3c3HEiRg94
	9r3JwRKLgJCsLjMiXkmvLtLohvGEs4mWT2C2vvbg8krDaB18JZNOD8L1IcxpbfWAjHcwJmEzZDdZd
	p1XbnIVPt2JpjO+T9YxnT4feXWcHzYt1l+WUu457Gd5fMc4YV2Jn5CWNBtFYHvCxquY9vBEJQU10v
	vW70dpdxy0cUG6zPruiggtBxm//GhfeI4O2tJ36vQhb0Kf28FQXHr5fC95uVTmzihcgO817Wae28S
	o2LMAGqi67aZ4wXCg1jwNy+dy/ZhPFf24Wan5hi9VONP8hycjWfTsgTdoSzAz9XYqmn1oTjVqYzR6
	3id45Uh3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjzy-0008QG-PA; Wed, 17 Jul 2019 13:29:34 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjzo-0008HG-FJ; Wed, 17 Jul 2019 13:29:25 +0000
Received: from localhost (p54B3309B.dip0.t-ipconnect.de [84.179.48.155])
 by pokefinder.org (Postfix) with ESMTPSA id BAEC23E4757;
 Wed, 17 Jul 2019 15:29:23 +0200 (CEST)
Date: Wed, 17 Jul 2019 15:29:23 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH 1/2] dt-bindings: i2c: Add MediaTek i2c AC timing binding
Message-ID: <20190717132923.GC1458@kunai>
References: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
 <1560240715-22595-2-git-send-email-qii.wang@mediatek.com>
 <20190626133941.GL801@ninjato>
 <1563368121.16970.7.camel@mhfsdcap03>
MIME-Version: 1.0
In-Reply-To: <1563368121.16970.7.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_062924_660365_1D535CEE 
X-CRM114-Status: UNSURE (   8.36  )
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 leilk.liu@mediatek.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6103466214273817831=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============6103466214273817831==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GZVR6ND4mMseVXL/"
Content-Disposition: inline


--GZVR6ND4mMseVXL/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Can't you use those to derive your values from that? Which ones are you=
 missing
> > if not?
>=20
> I have take a little time to develop a new patch which based on your
> suggestions, and it tested OK. Thanks for your suggestions, I will
> update the patch after I test it fully.

Great news, thanks!


--GZVR6ND4mMseVXL/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0vIrMACgkQFA3kzBSg
KbZc3A/+MaKqaXoxfLhF7cf/4W3pivQuZ1XwN1uUj0ywybWz2dxrakkTsTS5kCSF
D2GRUcGvTLGKod/BaV/wIfdFVeyYPGoh38C2LSEcc2zTWl3CO+CyiJ35rAUvVhKe
DoxAxfkR4LSUpzTJUi26asAWZggVjEBZkWQQxhyJma8txPhAtuOg2Dp9J6w8oZtO
Ufj5c1FbF8r3q82ah5dmHqs924Q6WHUhBQXQf3eGNRJgqY/np4XHB5TZkOVj1uCW
qQhUIx4xBooJa1cSXGr7kA6nSay+zIX++F5R9hbxkGSCFcGZXei0owslreNQsyDf
rHMEc9JoZ5wXIMVjzPoxRwWrxDVIGdqfkqrmSDBjmYq4CDOAWvBZUIjgsy1E9d9R
YPX5zj3Fvinui4/dxqADBLuAoinkw3NAYg14KCAzIzXbOLwetnGXxoIaiLE2v8PT
qaTbtnIIhG9n/gaSQIQ3lDwTsa6dxv7FS3++6h+RFhAQ8XsaNKvYTgvmVrV4jKvs
Rr3Kg+m/MdEiWHceoa6tPM96kiWlQAQLq1yN1B06DMoFBkr4S7pjOe6LCYFG7AfP
Cu8nEykpDz6DT6KVwjefQpH14gTGH4TSjvpuXQLfjKB5k5sfi+NIif3+v3tJUBoE
8KH9/iRcWMwVKm36gyugDLIa4xfsb5fj0v2Lk1ZL4dvw75Z2JiU=
=K/nF
-----END PGP SIGNATURE-----

--GZVR6ND4mMseVXL/--


--===============6103466214273817831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============6103466214273817831==--

