Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB37BE87A
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Sep 2019 00:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s96v0pcegN4OAX8R5hFMMayjilN/0MS6llwMlh4ar98=; b=Qcq0wq/6Fy/50YvZZoGsRE6X+
	cKtY+lY46Tr7WTdlrGV+V+sCm70DSHL0bxq7RadDelf7eEndcEkGd2J29ZWQzKRkA0y5XuA68C/15
	/df9iHaqdRFoc/Riga7qmvYluznoI2rvNRFLHq+d+h+z+YFYSyrag+CdlKG/71GLDE2BdLZVp2yc1
	tnWHOdHg8um91BDdo+RSlLZ0XjyuulTbBrdX8kENws8zQzmSpPBsluM2r06TGoG25aBjvSzLH2B0j
	QNmAxxn6oDSntmZ4pfUHTkC8aF46MHXmZCmtOHUAf3sakt+UwsyD8DFYvG7PvnVK5QRBZRjqDqF69
	ZZDz/aaMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDG6w-0000Dm-Jt; Wed, 25 Sep 2019 22:50:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDG6r-0000D2-K5
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 22:50:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id l3so467820wru.7
 for <linux-mediatek@lists.infradead.org>; Wed, 25 Sep 2019 15:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fs2mUK+2SrnaDGqHEbHBhhO8ASliMTqMkt3FxwYhzMM=;
 b=E/wqCKzMUINn3pXJ68SvL15btqfissC4d4pkTe0Q8lTcEjR1cETLNEXy1QYbFRyjuO
 PFzZ8aL7Ab30A6d0IFYcguJB8xSyyKw7lw9y9sd6tqrsZM2iy7SqvRNgvX2gPjrVUPVt
 COIaZumF6HWCV55vuCqyfDMRQejB9VTm0/5VdxpydAN0185DFvIqf3Z3azqun/GS0Lr+
 LJcBrxZVsh+1dc4pE+7yv1G6sKunkhl57eRC7cyWi2vQ7iR8cyQC/aOHt8CPD/xsk4+q
 YP8HAa75SIxoQHO+1UJLl8OtIFLj9L80WSxEYpVrArvv7m1Op67pY0fjROoE8EpDMsM/
 /LmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fs2mUK+2SrnaDGqHEbHBhhO8ASliMTqMkt3FxwYhzMM=;
 b=tCzTjRuHU9JS9tsjB70pOiy9C/aDX0AEEGzOLw4XS75/2AECBaYmBGOiA34T6JxehD
 cPfEFz0W2nkmYtBDz0oL2yQBadLsRQ1d/Xf2jRxg1+wCM0sUeAklyhDKj0k1H6axgfmw
 A/vp7T67/FM5wWxMbE2Saeg/p/5yK+ok6yTZsOYo3oyI43W7AX1iJbx1qyBp8VN8IWjA
 cOdN3Dgh+RrZEQz6Z8d6LpjOUeO87rzUB8ielcZmMsQ6mUV/a1xPvw8MFLCREXDxy+jh
 3xpptcTM+2xkLlK2BqoTC2lOvwlQOy1FrNC+RD1ldN4X1yIJ+OD7VhX6PSJwgICDVsjq
 rEPA==
X-Gm-Message-State: APjAAAVW/FmDXqYoya9UncUDBZuyhcYg85dyPX9rOn8tFzBs5FQiO7lj
 an0y/eCIep+6RxRv0GFdCfk=
X-Google-Smtp-Source: APXvYqwforAtGJdFg61VD7jXa2EmiEueft4/tswPr0fsD/8XC2L+O0qahphA4KCActPT7LHQ1JsYIw==
X-Received: by 2002:adf:db47:: with SMTP id f7mr442320wrj.1.1569451807649;
 Wed, 25 Sep 2019 15:50:07 -0700 (PDT)
Received: from localhost
 (p200300E41F0FEE00021F3CFFFE37B91B.dip0.t-ipconnect.de.
 [2003:e4:1f0f:ee00:21f:3cff:fe37:b91b])
 by smtp.gmail.com with ESMTPSA id g13sm1041612wrm.42.2019.09.25.15.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:50:05 -0700 (PDT)
Date: Thu, 26 Sep 2019 00:50:05 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v10 07/12] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Message-ID: <20190925225005.GB8115@mithrandir>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
 <1569421957-20765-8-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1569421957-20765-8-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155009_665679_3BD8B018 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: multipart/mixed; boundary="===============2439972543610918344=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============2439972543610918344==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oLBj+sq0vYjzfsbl"
Content-Disposition: inline


--oLBj+sq0vYjzfsbl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 25, 2019 at 10:32:32PM +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
>=20
> This adds a property "num-pwms" in example so that we could
> specify the number of PWM channels via device tree.
>=20
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Acked-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v10:
> 1. Follow reviewers's comments:
> - derive the number of PWMs from the specific compatible string
[...]
> + - num-pwms: the number of PWM channels.
[...]

Why is num-pwms still there if you derive it from the compatible string?
I guess I must not have made myself clear. Please drop this.

Also, as I mentioned earlier, I've already applied the patches from v9
that were suitable. Please take a look.

Thierry

--oLBj+sq0vYjzfsbl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2L7xwACgkQ3SOs138+
s6EKQBAAkjKF3mGlNiF2VtYjBYbi8012ySVpqf2IVmJEdG1xulyW6cUqSPW50ZRu
biZJTXPgRLuLLIt9/vt5h/XKjvXevhTlhgv3FCWTl+tgqpgo9xhDpFANSZksadH9
EsVp5NE1/jgTvdPa/0iYJiDHzF6pg/+zNRweveinqkVcM5mfICWwK42vZVOHx23b
O+Nzhgr/D1ExmA4W6BUQ8BdCnCyVr8OAL7eYiRWRDwC9esDg34fuq9/irwcMo+mc
MZE5ieoQmMvs4GOYjOdNy4G5OrBlfadzfpU95xtshQTUyv+w+TX5bj9mWpkZWlgX
ah5DydkbX7fgR0BMnD8K0UqFr8GOgiJOmQ3VU1Q/orjaw/k0byjAQ3DoEjzGUoS+
hAy+zt5H+IwVmMO+U9giO66xOWZLKBLa1loJJpSJ0ly0mYCO5KsJx1digyBAc1l5
DELrYLXnLaXvxQfibweSxiKbCpOeJrsY5REaU5cmbasIFGSYRtvvI6/emTe+YUgW
IPQ6s3CgvLVw/F+IvZle7CAfuhvltywTksUsYLsJYDjszGhuhYQiM26yjSzE62eM
ykgQxzfDn/SN1H/cqEQgoTgMmUSxBJNa6SKYrRSlTuyWkj/74pWQdzP9hzUwi7c7
moqU0o8poSC29OA665w+DJ4AMeQ8QSGNm+ZOO9SpmGBY8752amg=
=QjmR
-----END PGP SIGNATURE-----

--oLBj+sq0vYjzfsbl--


--===============2439972543610918344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============2439972543610918344==--

