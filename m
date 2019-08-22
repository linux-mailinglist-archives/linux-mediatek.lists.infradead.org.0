Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C36F9A00C
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 21:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bYYv6Yo8XaEakdMg8T8aSMENLzBerUATQNB9pXrI8kE=; b=ZReObbnBcOOU9sUPOfrWhqhcM
	LiXwm6Cs8smVPCCT7eZuP8LgbYu2Yx22Q0L58jLfts1aKD9Sm5MJE5GvGvrOD2d+YE0X+0ZaMO/rH
	++I8yxOoZckHZXAbOwtHMDGbyPV5s47GmmpukBqf8a+zjmcUv25AgvRvtf/mdZPugHS2VKfxsTXlp
	SH+heFVbGWSqtdylDZE7acbZVjc4vhlMTA7ZERmry6IV0NvzJ5wMM2NXVzCfEYbEo5p6Ec3jIYb5Z
	b+MuKZbgOXhJ4/W+8VyajGs4LBarxysy9PeAGUStAk+iG6MeAC63WY56xcWvKGZcGgcgTsz8vAKCQ
	GUpW5cdxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0smv-000071-Uz; Thu, 22 Aug 2019 19:30:25 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sms-000058-5Z
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 19:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bGI25yHsJcTnsVsILHuHx70XcG/d+CFDq9ZeEujNOuQ=; b=UcoZzjb0cl/K0CzhfAY2Tywbd
 EL8YAfcqciH+e9NKwQy3pfB4HghGWKXv0VqjvWcQQ+rYqJ9lN1dYU3k+KbbfAGxmXBTyIbXIH7JSD
 4kllOWF0YjmDVj0RHiy88DBm8+qnlzhqiWO17s63VSBUYgOGry3H3glHcLolnebieoFHU=;
Received: from 92.40.26.78.threembb.co.uk ([92.40.26.78]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i0smo-00083C-1z; Thu, 22 Aug 2019 19:30:18 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 77532D02CCA; Thu, 22 Aug 2019 20:30:15 +0100 (BST)
Date: Thu, 22 Aug 2019 20:30:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: BUG: devm_regulator_get returns EPROBE_DEFER
 (5.3-rc5..next-20190822) for bpi-r2/mt7623/mt7530
Message-ID: <20190822193015.GK23391@sirena.co.uk>
References: <trinity-584a4b1c-18c9-43ae-8c1a-5057933ad905-1566501837738@3c-app-gmx-bs43>
MIME-Version: 1.0
In-Reply-To: <trinity-584a4b1c-18c9-43ae-8c1a-5057933ad905-1566501837738@3c-app-gmx-bs43>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_123022_215621_E0EEEEF7 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?iso-8859-1?Q?=22Ren=E9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2043884601574359415=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============2043884601574359415==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="reI/iBAAp9kzkmX4"
Content-Disposition: inline


--reI/iBAAp9kzkmX4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 22, 2019 at 09:23:57PM +0200, Frank Wunderlich wrote:

> seems of_find_regulator_by_node(node); is failing here, but i see the dts-node (mt6323_vpa_reg: buck_vpa) in /sys/firmware/devicetree/...

It's not looking for the node in the device tree, it's looking
for that regulator to instantiate at runtime.  Is that happening?

--reI/iBAAp9kzkmX4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1e7UYACgkQJNaLcl1U
h9DIXAf/SwrWcS3GuI3wq6WJK9mC5ILC9tOznC/HRhk/xcYaCYjZJgBRt6jJf9k9
HXrnvUX3Gr7b4jpE4PbpJM2KTFIzE5qTkQrb55slWJ6CAG6do+Pu2ZcO9tWRNou8
XuyvN0kjtW1s3eEGuYeDBTdJT2EueBbZ13qDt00uRJExurcbxWOuQbJNQT2Jcdj5
mYPyrrpIUJ1/3oZPV9WdrofTWx3YRpFrwiJ22kKnUA2NV90OIInFtfi3K6IXezWv
Ko6w3yRH+Koz1nDvCvAYd6rkPzJATa9n5sLToX5yxNWfYY4C7lpCov3NM3IEbjEY
7dtsFgvTH5X7V8Z4O2kcfDDmfaY71Q==
=zy6Z
-----END PGP SIGNATURE-----

--reI/iBAAp9kzkmX4--


--===============2043884601574359415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============2043884601574359415==--

