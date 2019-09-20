Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C17BB9146
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 15:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tPSKHXVUrUITvDpkkUYn8by6ksoPZVMW1/LDU3x2R+o=; b=B8/bHCnYBDg+yYnSWLu4EdfRe
	YVoPcFdBqYfF4bBXuflghRXldP7T+KAsHGGJ9+2yljKwR7aHaJr9Ybx5D3IgwGKpsiO6jV9AzXKFa
	L24EgGuesHW35SJ2YPSinPhXtEYrjAluilXKuFQzXyEnf/irSt31L5xEBoQjzIaHaYNSloYypWPZo
	V8sKVXZ2ajGa3+NxM5XcibzPQBR1wzNS9/wpRBSs3KEI5uHuy+NN5XQYncMA3jesN2wofL4xo+IRc
	q5XKE1glnM5uMzpev8GgwMEcPaYWmDBPoqYFLKJ/h3WwIBivybEdvTME3mdRIjNs9EG89YY/i+Drp
	v7OR8Hdew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJQe-0002Hn-N7; Fri, 20 Sep 2019 13:58:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJQV-00028Z-TD
 for linux-mediatek@lists.infradead.org; Fri, 20 Sep 2019 13:58:25 +0000
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CA9C0C0546FC
 for <linux-mediatek@lists.infradead.org>; Fri, 20 Sep 2019 13:58:22 +0000 (UTC)
Received: by mail-wm1-f69.google.com with SMTP id z205so1258032wmb.7
 for <linux-mediatek@lists.infradead.org>; Fri, 20 Sep 2019 06:58:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=spCZuDFD0EPU5ozujvfnvvEa34kbUMxIApAez+Dggu8=;
 b=Gs3ch7JkpJ3sXIf+fODybjMO9X+xu9fqknc+kUhXPIDVnrdM1trbZBzz2gZ00144RK
 LqldZKfUzGfasxr2TvYut3ulyjYFRuMT5Gu9svl3fvcYXV4EyTJlX+3DlCDPUr6kNo9c
 YOCaMTvmqgNHtVSAkBUQaWRrlj0Gxb2vDAhWiwHidn0QQuPnbi9Nf+CoGhSOqWcgcyPG
 ZDh3H8+4pgtXZXUXmNQXrIpii6d2sfF+D5XQIXuJuU9EpvQlycQJ0LfoUAqVkOpzOgdx
 6zVqK2dvaIn8QpNxPfuWwVXhOn8zF5iK/0gyk58mBKXjmmpk6juPiqaZUlGnd7zYRf9X
 fARg==
X-Gm-Message-State: APjAAAWF6gW+kfsA6kIWpZIHMklv2R1aRZ9lFT+AJUuKnJT+cdaF/Z8e
 AwOCDoKWSsTbC5lyHMd1YXeaNo62arbQGDp4WuF1bU3hhv064U7L8HHMWRI8R4dyZNdizrUo4lV
 geLMV+fP9LGGmuOESBRtHjydMRJ68Ssgk
X-Received: by 2002:a05:600c:241:: with SMTP id
 1mr3641698wmj.162.1568987901451; 
 Fri, 20 Sep 2019 06:58:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaL42VK6Hbg90QmZTlVy0wuDzSPLddZwEiO+ZOepAYrKU0ro0hZ5/EONlchkImHxvmp3T81A==
X-Received: by 2002:a05:600c:241:: with SMTP id
 1mr3641679wmj.162.1568987901220; 
 Fri, 20 Sep 2019 06:58:21 -0700 (PDT)
Received: from localhost.localdomain (nat-pool-mxp-t.redhat.com.
 [149.6.153.186])
 by smtp.gmail.com with ESMTPSA id r6sm1834884wmh.38.2019.09.20.06.58.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 06:58:20 -0700 (PDT)
Date: Fri, 20 Sep 2019 15:58:17 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] mt7601u: phy: simplify zero check on val
Message-ID: <20190920135817.GC6456@localhost.localdomain>
References: <20190920125414.15507-1-colin.king@canonical.com>
MIME-Version: 1.0
In-Reply-To: <20190920125414.15507-1-colin.king@canonical.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_065823_982952_F5D2432F 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, Jakub Kicinski <kubakici@wp.pl>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============5755596594350601126=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5755596594350601126==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i7F3eY7HS/tUJxUd"
Content-Disposition: inline


--i7F3eY7HS/tUJxUd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> From: Colin Ian King <colin.king@canonical.com>
>=20
> Currently the zero check on val to break out of a loop
> is a little obscure.  Replace the val is zero and break check
> with a loop while value is non-zero.
>=20
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/net/wireless/mediatek/mt7601u/phy.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/wireless/mediatek/mt7601u/phy.c b/drivers/net/wi=
reless/mediatek/mt7601u/phy.c
> index 06f5702ab4bd..4e0e473caae1 100644
> --- a/drivers/net/wireless/mediatek/mt7601u/phy.c
> +++ b/drivers/net/wireless/mediatek/mt7601u/phy.c
> @@ -213,9 +213,7 @@ int mt7601u_wait_bbp_ready(struct mt7601u_dev *dev)
> =20
>  	do {
>  		val =3D mt7601u_bbp_rr(dev, MT_BBP_REG_VERSION);
> -		if (val && ~val)
> -			break;

I think this is not correct since (not considering the cast) we should break
=66rom the loop if val !=3D 0 and val !=3D 0xff, so the right approach I gu=
ess is:

diff --git a/drivers/net/wireless/mediatek/mt7601u/phy.c b/drivers/net/wire=
less/mediatek/mt7601u/phy.c
index 06f5702ab4bd..d863ab4a66c9 100644
--- a/drivers/net/wireless/mediatek/mt7601u/phy.c
+++ b/drivers/net/wireless/mediatek/mt7601u/phy.c
@@ -213,7 +213,7 @@ int mt7601u_wait_bbp_ready(struct mt7601u_dev *dev)
=20
 	do {
 		val =3D mt7601u_bbp_rr(dev, MT_BBP_REG_VERSION);
-		if (val && ~val)
+		if (val && val !=3D 0xff)
 			break;
 	} while (--i);

> -	} while (--i);
> +	} while (val && --i);
> =20
>  	if (!i) {
>  		dev_err(dev->dev, "Error: BBP is not ready\n");
> --=20
> 2.20.1
>=20

--i7F3eY7HS/tUJxUd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXYTa9wAKCRA6cBh0uS2t
rETyAP42WJmgG0YWFN4dtvNtHUZL2FS46W+Tt/OXQTdrQfEfYQEA6DLVOjMTQzuG
hmE5irsv5UEh9sDb73OcIUNJYu7aPAg=
=LFi7
-----END PGP SIGNATURE-----

--i7F3eY7HS/tUJxUd--


--===============5755596594350601126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5755596594350601126==--

