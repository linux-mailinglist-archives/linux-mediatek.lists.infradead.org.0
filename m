Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2796BD95D
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 09:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CLMir7FnAprbqD8Ldh7N+XInB1xrytDjmN5G3abVFlw=; b=JB7SSy86jMBc0GgAfVftyO4QI
	7Iwdo9jVg3Zf3FqCkB95Nd/imBkKxqDDnmMtD6fIhVCdozCiIfU97UsL+r5tPP0Q551MduRI1ZX+c
	M6u6LCw/0Q01agwLvhZ7H+WvuGiT8LS8sQ1RfX8dYDNSja+49G8TY0ogkoTwq+b/V2fWL/kwiYnFT
	2FwvQ91YvOPn1lgFf1Ad4a7rt1tc+RbRvlRAsRDgvmfq7AZuTvZGJGFFRnHt10PAqolS9HTBqJuSg
	W0yUN/ntxGBYUfdA4Wm7PrD5DsPIY2OEKs/GNztwPWerSiUJAx6+BPKZD3iihA3QPIuCWQk+EFres
	lLN0Xb+8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD25U-0008HT-Bn; Wed, 25 Sep 2019 07:51:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD25N-0008GY-IE
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 07:51:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id r5so5294076wrm.12
 for <linux-mediatek@lists.infradead.org>; Wed, 25 Sep 2019 00:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KK67yuIkFsaQkINB9Eu+BWBSTsnh/Qbi0YgbzgTn/rM=;
 b=c9LsvzkC2UahQM7UsxwHEYILC+sW+LJN8PKvTE5AcffKIdC9teJ6yeqDt3GLKHE0Kk
 i6g+ixT+t5Fl9YYIghKagH0I+5cmWOoBj4ey2NqFGqyqRQ2eYNDA6iPFw8tBs6LojIsc
 gsEttSgoKUyl3ayfybejZlf+X6Urk6ZXpHC0NEFodz61tM4MNHxr25pKQUMunNlPIIPo
 W+CVt67+/WrZbj/DkAzIT3lFJT1qvqKfXRqLW7vkfGLxl8QKsJJ3ZZg1Z5OnWEvI02r+
 pY9tYrVAk5xhUS6mHsC8X8l0y4jLR9jmWrwJT/89ak2X7wAf7dj4S/AkTavUx1WFTx4z
 BCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KK67yuIkFsaQkINB9Eu+BWBSTsnh/Qbi0YgbzgTn/rM=;
 b=Ap6qL5aZ1eokWZZiH/zTf3L76WLT0ihclutiYCTKafPx/qW23BGPuQmC/0wja9bg/+
 Lu1yt82ts9QCqxDClqDb7UkCtWTjmFoAzjIbgchymPgya8q2SaO3i1XWLCHxaSq0RUO6
 Wobf/jv4q7J0QTdnzsS+R3rdq808TAT24FN88mZyPtbfmW+x995wD5y9jDbbduXuCXMy
 25CbICgrKTWg48fibOB15Uru4ZZ9zNVHkf960P3IwDpMX+i5ibeYc0zOUwCVZ+czPP/R
 xd+Fz1M+4+rL+mnS1aHL1qu6cgCPFz6PP12RtbW1JSJfbT1iH74Qrc1cd8bGPKpD9D4t
 3a2g==
X-Gm-Message-State: APjAAAVXaQMc0GzTGVhNPYlpnOg8Z/xi/MpwSVCBx1fPUNAieBb6TGzF
 h13UNNFc8uAgjm8peZ9yCRQ=
X-Google-Smtp-Source: APXvYqwrOufVxF7BKJQix5uJfUddnzmRjLWMMYR6+d0GX5jXoiNnqDqhkvogXpYBFn1Befjg5UfCbg==
X-Received: by 2002:a5d:4307:: with SMTP id h7mr7547801wrq.393.1569397897860; 
 Wed, 25 Sep 2019 00:51:37 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id t14sm2798946wrs.6.2019.09.25.00.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 00:51:36 -0700 (PDT)
Date: Wed, 25 Sep 2019 09:51:35 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v9 03/11] pwm: mediatek: remove a property "has-clks"
Message-ID: <20190925075135.GA29006@ulmo>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
 <1568933351-8584-4-git-send-email-sam.shih@mediatek.com>
 <20190925063003.aht4platmfalcqru@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190925063003.aht4platmfalcqru@pengutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_005141_825637_086056B7 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 Sam Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: multipart/mixed; boundary="===============6853811277400973896=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============6853811277400973896==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 25, 2019 at 08:30:03AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> On Fri, Sep 20, 2019 at 06:49:03AM +0800, Sam Shih wrote:
> > We can use fixed-clock to repair mt7628 pwm during configure from
> > userspace. The SoC is legacy MIPS and has no complex clock tree.
> > Due to we can get clock frequency for period calculation from DT
> > fixed-clock, so we can remove has-clock property, and directly
> > use devm_clk_get and clk_get_rate.
> >=20
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > Acked-by: Uwe Kleine-K=C3=B6 <u.kleine-koenig@pengutronix.de>
> > ---
> > Changes since v9:
> > Added an Acked-by tag
>=20
> Argh, my name was croped and ended up in this state in
> 5c50982af47ffe36df3e31bc9e11be5a067ddd18. Thierry, any chance to repair
> that? Something
> like
>=20
> 	git filter-branch --msg-filter 'sed "s/Kleine-K=C3=B6 /Kleine-K=C3=B6nig=
 /"' linus/master..

Done, though I ended up doing it manually. I don't trust my git
filter-branch skills. =3D)

Thierry

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2LHIMACgkQ3SOs138+
s6FVWQ//ZCxxPqTJAJi0DQFkIwCq4Zezubiab3AKelA5for80UXfZRc4Mt04Nw6A
Kz9cafImwG+n6i2Lr1bkHmsiPjnweUMMqWHQz42B1veoQXas3iGrDgWjqjq0mCx0
/oELIxnCXP2gnkjkXzSzhtUz3lUWjxsZpVyMw5Lrrwp2zgp+FVGc4qFsCzSpZ1C2
Ns2kDIt6eqgEQnP8HC0JtX7f1BfAqY1iqh5jX/8Ex6yhkskmdhjLriPaFvMzwOE+
wnky4KAn0ehpwpMlTM+X+67QYinD2HF5ACm+KxiKNxDh8YnLzKc3mWlavYUUcgOV
KxZGtJCtcPg2FTz2BsJHIokllFDVYmcSApnkhFxHH7MeANNixbAo9rTe3ZY+eZ/S
bSemBr86T3ypkFKPddRyiVuw2NehYilTML9IjuTha8DzU0YatCm+ZoNrKXUCw21C
ybE2luElYxK8VI6R6M5T7u3eEy98T5gbw49Dtr324cIuF2blJjtqCTnuaNNSvare
TJ4fzjYPfIh0//q4lRWed6QLQkHXpciu+IgSuNtNhbLCPvqI6yju3uIOb/PwGLrH
AJvQgRpRX9ikbZPSD6vCnYad/JZhnGgOJWiKoviSnWbnWWWIvhk5JYMYh/stfTbi
Zk1m7BTKK6vyuyo3Hz9CxnIBpvht0e2ua62KjYCrAUKZaEVuOrI=
=o/DM
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--


--===============6853811277400973896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============6853811277400973896==--

