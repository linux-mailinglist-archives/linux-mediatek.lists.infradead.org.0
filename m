Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0520C1558CA
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 14:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c6U2kJg9lt3pIHCOLeOdrr5YXw4N4WFCF/4pi6W8oWc=; b=NaUsFS+BkqHC/9X+X6Z4lrAiD
	nwlgoNp6NOvs3zRu+LexxkzUS2DreCz73fokNKJkmVCuxXmz4fq0W8SLQd+CplObrZ9+nzRqiD6wh
	jUMEyah4lhiGtOYej7YFtDEv+4A7nWZl6LNsIPo6PmJCFjPKI6M+h9zs4hxun75tce+ENAQmRW1mv
	qnGpX7W4X08XOh9bRh+lIP5+UU+1IFE1upIrNuW+fgvm7oHxiT1ID2o4m/8iz7PIgr/rp+nKFXTFf
	U7PXMJPFcfhkJOAwOkekMsWlYatexD10Yja2JFfEYowp1PE+kvVyHXsYRSmCjMckeW17UM744LHgk
	5manPzLtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j044C-000139-KY; Fri, 07 Feb 2020 13:53:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0444-0000wI-2Y; Fri, 07 Feb 2020 13:53:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id 0478629567D
Date: Fri, 7 Feb 2020 08:52:51 -0500
From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
Message-ID: <20200207135251.GA2952@kevin>
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20200207052627.130118-6-drinkcat@chromium.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_055300_248437_46FFA728 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5668893989507023910=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5668893989507023910==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> +	for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> +		if (!pfdev->pm_domain_devs[i])
> +			break;

I'm not totally familiar with this code, but should this be a break or
just a continue?


--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQ17gm7CvANAdqvY4/v5QWgr1WA0FAl49a6kACgkQ/v5QWgr1
WA1bjxAAnLaxUD3zjRv8cz282ucvOS+zEVrsYCEtVHJXAXsVa6qH9W4rTswmRCnU
0xfwIFqVmUch1QzZgxsqX42RrVZPNU20eN1qspQgEfXnIttVsTSzvgnEwHw22TCn
nr/f+tKDnIRFzz4PZ9ywTyzLBJNYJwR00QoMKTg//184tvoAWDrm0k0h7iVx7X96
mymCuf6jWpfB24TlTTvcXTCDUcoPVWZqJ1rppHtVV10E0a6VRKRURli75q6d4uBU
T4yqc02JSUvyaOm8KF5LNce0FOGeEMiQFfEG4jRP1y5FYVuPOoJciB3Gtv7JSeaa
Tg0PCBs7BYNbIlkLcxYyPjnwD60L5l1IxD5lKzF0DJJucuqoRQP1gpz5kZaLmEOj
kvXi8P0Bx87ZaF2ghgX+l/IKFLiwHpLfE4BzG6VMLUSE/Nher4Tcvz7+3AbsTBhD
pJ5tcommgF4KYUkEZ7rfNDD1G5f6h+c7yNMpeUOIadPyMY47NIpr3TBCpZJGiJ02
nSwt3k/7Y5Hig0OZxypHVgqyBD3FycMPoQpelBC4/gZH4w59DKlE42VBqc8977m/
dv1vv3QPS0w0RNKO4FnH+N63RnHovNNsUbNAsQkS7GldSGnbCQymGHXRniSdO7XT
cbs14xJbzZ09gdyTGmybAsL1RKMT1YqGG1/3RSeS7bSOwyFX8Wg=
=dMt0
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--


--===============5668893989507023910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5668893989507023910==--

