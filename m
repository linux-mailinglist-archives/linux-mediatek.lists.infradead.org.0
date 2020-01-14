Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65E13AD53
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Jan 2020 16:17:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7LTa7DMpezFcTK/mFLiMcOSmHhxvXPaqCnP5wigjCG0=; b=aST57CSk+YTGw3NNHSQOvzdGQ
	P2+0DHKMacPs5IdaVj90aZxmlCvjXIn47Kr7mCN6CW04PR6t/fM8yDH5DUBH4slm9DElAOVdxzXU1
	mIh6UmKweEO+Fv409pJG9WCyV+uBuu7eccGYZUMZLXHq4SemEnsLDaq6GG/uFb9hl6/vD20lCf20d
	teAhWHGOswYlNut+fojqDofX9gJWx1jMSNHfUC0qMB3ZwiCea4kYBtapCApwrYhMLext7mjkHe8hX
	4CQF1iizlRdK3/TlAuk8QgQw1vBGIwpiEx+sxplvleLiynUMmR7LnqOe7IyRaLtGqh4q98i4PPoZC
	fjnFLePjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNwE-0001rp-8H; Tue, 14 Jan 2020 15:17:02 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNw1-0001kn-Vy; Tue, 14 Jan 2020 15:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K15TeIKz2iH2yNBaQfbFQ/2HZ43ycaI2mrMgjoB89W8=; b=eqqWHZPhE1xW0gJlR8rUqsdv+
 14x7EIh3mp7KCevqvc2W/P5xWtIynG2LI174Hi1s+Cl5gRYWHvrPZXBPtnxUpvTNSMeUEAtZCYsrU
 RXg2EFs3MZ+EQLZGh170vi1j1eAEhv9Ac9eR8jghkcbjKtQ4zgx89uVywSYcPvGB1uMW0=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irNvv-00004y-E7; Tue, 14 Jan 2020 15:16:43 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 22C3ED04DF5; Tue, 14 Jan 2020 15:16:43 +0000 (GMT)
Date: Tue, 14 Jan 2020 15:16:43 +0000
From: Mark Brown <broonie@kernel.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v3 4/7] drm/panfrost: Add support for multiple regulators
Message-ID: <20200114151643.GW3897@sirena.org.uk>
References: <20200114071602.47627-1-drinkcat@chromium.org>
 <20200114071602.47627-5-drinkcat@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20200114071602.47627-5-drinkcat@chromium.org>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_071650_029548_3B61F524 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5299108658750466394=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5299108658750466394==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="buDNgeHiu+HCsDEc"
Content-Disposition: inline


--buDNgeHiu+HCsDEc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 14, 2020 at 03:15:59PM +0800, Nicolas Boichat wrote:

>  - I couldn't find a way to detect the number of regulators in the
>    device tree, if we wanted to refuse to probe the device if there
>    are too many regulators, which might be required for safety, see
>    the thread on v2 [1].

You'd need to enumerate all the properties of the device and look
for things matching *-supply.

Reviewed-by: Mark Brown <broonie@kernel.org>

--buDNgeHiu+HCsDEc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4d21oACgkQJNaLcl1U
h9CCOwf+K6UJ3dhSHND3Fpdx/IUgRmsJiK2V3jATceFWHdf8/BMeiNDYwD2U7i1q
3086jl6AsX+YoSVr7Y1z7U+i8sHs2E/x/bP9LjOzRAXLya+5rdefN2ngQZq1Deex
AUlEQpjAk186CwzKC1OWLLmbBYRbo/avge9LcYp3eAFfUbv2kjv2QRPII2EspHzi
Zs3Y57WJlZ7STEyx7rHHXWYqEv7IqhlIo1f2xZobE7MFBmsYCjYy9GMMexe6H2z4
zMbp8clRBhJ/+CeT06cbMK5/gPb1biOaPeFndjeQOSbO3hmvfi2F2w32lJZsad4x
qAImcHOYwKX7KXoR1RoiFJO5kVdyaw==
=l7/J
-----END PGP SIGNATURE-----

--buDNgeHiu+HCsDEc--


--===============5299108658750466394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5299108658750466394==--

