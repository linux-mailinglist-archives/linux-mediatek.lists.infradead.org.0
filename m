Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0B8B9BA8
	for <lists+linux-mediatek@lfdr.de>; Sat, 21 Sep 2019 02:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CyB39B+23smx8zszYADNm4Y0N27CN3/EzGrAluMUCbk=; b=MT2n7dG471BEMX3F+U9o7m4d9
	UhdIVmG1dlOSR5SqwgnlMKFEIhq/t1lluAzjoEsA18okCXS/pWKVa1y2NfcbMYW9ZHwi1JfNuJoXL
	tRhcxc83l4kgyM5Mn62vhKG8IlJtcvoeS7F1CefN+8uioQzgZNdSQ/c4Rsw4PsGJsYa8xeZq6lVy7
	vmfn20+pHrQW2Pcbk5ERkfm7JlZ87/gDJHSsWTqkAUCcuX13FCnseJcLI1lCBYiPzGXIiuVd/jHEE
	/7glpTPBrs4XUa4PqZyYZK4dtbzjwONzEFD9dZOxooJLj5ymkcMl3cQCUEntEEXAngqw0VE2mReaB
	hZtLOn/kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBT9x-0007Pd-SW; Sat, 21 Sep 2019 00:21:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBT9u-0007Oy-0q
 for linux-mediatek@lists.infradead.org; Sat, 21 Sep 2019 00:21:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id y21so3768852wmi.0
 for <linux-mediatek@lists.infradead.org>; Fri, 20 Sep 2019 17:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XHJ9lYvrLBjSA+5OXjXI5pOAx2G8npxwl7Z/2aD5dU8=;
 b=NpDCwV+UW6oee+XRpK2UVCLWIUwO0Md7+DetDUVgS0jvJOYbdf9r6S8Vzeh4X/ABeQ
 00qRmzToJRkwAtsLqVfIepuDnET0dWcmpukSMeV80zMMRh2uwiidYlDkedYknQhPUNkK
 QAqUTzatjeJFR/xDw0oBWHCqVwrSKUCStA2s2mhWylSw1gyaFHqAb7yLhOHa/fSWpYF2
 bhytNBYw8WElHOG/DbAcHK6WR8BABa+diF+xLwpTMPGbnE0W20ou83Hi37+IrfljJN5r
 l9QAE2Aw/y8tO0PEa16BKvV4qk3Ykq75/dwx/959lCVpghQz3HLf6Jq9nsNK10eB3xcz
 kYHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XHJ9lYvrLBjSA+5OXjXI5pOAx2G8npxwl7Z/2aD5dU8=;
 b=k7Mj+7zPphTdR6Y9FHzTGWy9EnvAvQ8SxO3o+VWk4DBKCECLiZho381x+3+bjB+ltB
 X5UiLx1mLK2MOpaK3Bvu+pLlpgiEAKDPz4FSyA2BuLPd3JJU7DHJc7lNdeC1i/RMT6CL
 ceKOB3xW9oKd947sgijGspLjot9COtz8DJ74WhVaFOu7dnUFlPRzkeObfjvoJFiXoeRE
 arbqK+pnHOiDYQzL1JLRsrIfa4p1KFXq8yn74rxdxuCFZTnyel3xpW0ZnCy+pCeIsRtU
 VHOzSv56fnvhSbLkz5yQ14cqZQHgXg0oWYN+Wr6qOI2ryd6LSrEd0sn9+DYEnJ3ElQUt
 nadA==
X-Gm-Message-State: APjAAAUBvJZ7xFihay5POv8vRH4lz16uAegIYtd58RupgYLFW07RkkHM
 XXNyjPbKwVfpojsAv9exl7E=
X-Google-Smtp-Source: APXvYqwMxYtoqKooBGyy0pH7gq5YdtL2O70ocG4lE/5916002wFSan/ESxh7Vbq8DsLpyTLO9bWXow==
X-Received: by 2002:a1c:66c2:: with SMTP id a185mr5163969wmc.2.1569025312507; 
 Fri, 20 Sep 2019 17:21:52 -0700 (PDT)
Received: from localhost
 (p200300E41F0FEE00021F3CFFFE37B91B.dip0.t-ipconnect.de.
 [2003:e4:1f0f:ee00:21f:3cff:fe37:b91b])
 by smtp.gmail.com with ESMTPSA id t13sm6667421wra.70.2019.09.20.17.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 17:21:50 -0700 (PDT)
Date: Sat, 21 Sep 2019 02:21:49 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v9 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Message-ID: <20190921002149.GB86019@mithrandir>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
 <1568933351-8584-8-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1568933351-8584-8-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_172154_084519_51309F96 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============4769676458926860531=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============4769676458926860531==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xgyAXRrhYN0wYx8y"
Content-Disposition: inline


--xgyAXRrhYN0wYx8y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2019 at 06:49:07AM +0800, Sam Shih wrote:
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
> Changes since v6:
> Follow reviewers's comments:
> - The subject should indicate this is for Mediatek
>=20
> Changes since v5:
> - Add an Acked-by tag
> - This file is original v4 patch 5/10
> (https://patchwork.kernel.org/patch/11102577/)
>=20
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

You failed to address Rob's questions repeatedly and I agree with him
that you can just as easily derive the number of PWMs from the specific
compatible string. I won't be applying this and none of the patches that
depend on it.

Thierry

--xgyAXRrhYN0wYx8y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2FbRoACgkQ3SOs138+
s6Gohw/+NufS4BYOFKibVi7zlUVi/rDMwlkt6F4pkhnyohrqgpTCBy9F9h2ogtxO
QywrdiuhNuV49zxKHNgpXVQFmYpaUVuCsNaGHGZegyF182jcYtTraRfGm50PJf/F
x/ppM52eCnkM8gMIq+/ZQ3WYmpjhoFw5746ToZyy4m8mhXmQZqAwVFBOfce70jI6
Q8g6TNP93ayNLFVf4Hd2UNTN6d17l7sa8LKwWJqRulbH/PwnD/8seCkdBmEwcbdy
0qPYAkxAkGLfdN9mn+vf3sk+1N+qaLS0ich28ev/y/Ece8ey+RIHy894iZUko0is
j68nY8DRsf9S5YeZ6RfMQQbAiEaA+LWOLckX44XgQTQRrgAGBOsmfLgZVGQVrKCq
oQVl9Fg7FX30ZsIkNTAkpEX8bERLjj7XkpUvJLo+SYKA0xzrA34RM+RGTXGxA82O
7mb8nuqyPXdiVtWkcrne+IiggZoix3DBBsv9ujKNo2rYsSP3yEJiZpki/4GNsdhR
kKv17KdvVoP51ls+wUvxzI6Kr/DZeYIkrcWWNjNdig/XTzlyUeXdUsq9jYWz4UA3
MS9/0ZQSYdkuhIpcQPDduLx562SN6sykZi9cgcclULK7RqUv+rtlAg2zZty2WXtZ
TpxE5tnTnXlMHiaC7YnKbleL6K4l9qmoALx/oUvq9CZTJxEEHJY=
=P6kM
-----END PGP SIGNATURE-----

--xgyAXRrhYN0wYx8y--


--===============4769676458926860531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============4769676458926860531==--

