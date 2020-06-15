Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FFD1F96F7
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 14:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qqFTDkgdwY3szTDc+FDO0ccIcvFQJn7Q9/c6iiig6CY=; b=XiZEXqPutInuKqjxOa/XFidKV
	nIGCPm1YSrGundbFdEN4h/1c2evyFhZLNkU2iPFGAg6qVSJGmdiSzBUmHbevEtggsi6x8bHrixJ/j
	GNXEEZsidim50Ko9hTtDZ0DJFxU4ntLEoz2n7KwX1ZZeU0jaI7QnSHKodtv8FOTlsWHhDftExDQl5
	ghAUd40SBGTXNGGwTZS1ZIyLb1pa1cWLmGAYASMHeNqgGSBGY1U3B/axDA5odzvyy1Ef/LexhzFXd
	BvnacrqYe8eI4Ffp2tQfWUdW3fzMBUTlTisWgSKxTER2pi+f2SsLzZs9J0QS/hpEcSbHCkkfrH55K
	Dj6/Z8GKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoVj-0004r7-0q; Mon, 15 Jun 2020 12:46:47 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoVZ-0004iu-0i; Mon, 15 Jun 2020 12:46:39 +0000
Received: from localhost (p54b333b6.dip0.t-ipconnect.de [84.179.51.182])
 by pokefinder.org (Postfix) with ESMTPSA id 787C62C204E;
 Mon, 15 Jun 2020 14:46:32 +0200 (CEST)
Date: Mon, 15 Jun 2020 14:46:28 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: "qiangming.xia" <qiangming.xia@mediatek.com>
Subject: Re: [PATCH] i2c: mediatek: Add i2c support for continuous mode
Message-ID: <20200615124628.GA4423@kunai>
References: <20200508071809.10187-1-qiangming.xia@mediatek.com>
 <1592217629.22302.4.camel@mbjsdccf07>
MIME-Version: 1.0
In-Reply-To: <1592217629.22302.4.camel@mbjsdccf07>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_054637_205567_9829667A 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4810616582615034230=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============4810616582615034230==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 06:40:29PM +0800, qiangming.xia wrote:
> Hi, Wolfram
> 	Do you have time to take a look at this? Thanks.

Please resend and CC Qii Wang who is now the maintainer of this driver.


--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7nbaAACgkQFA3kzBSg
KbYpPA/+Pw8TxeQKArxUAcaWTX/EPixqO5I46dmHVtb8dLEURvVjQSN7sZ2WuELD
8LoBIuzYwvGXEFQvZzIgVy4iPB+91icdaz9TpugxSPQD9EOLfIabqUxJXKZz8H+D
y/gw0Zng3NVWO0L0b4qscEBaeEa+uoTtSh5xuxZ2rTqYErBTUnrPbvioaFrUV7/2
uCynxVcXd5u7VRyFGZAkzNyOn/kaWOBY5IRU1dxTIUajrvHH2B4qOPzTpEvjatnG
8968n1FRfIXucBtn1nK3uhbiCA1DAjNb1bvuhDm2gy7sBkDWk0Viz0+1REn5KaCJ
xvoW1UQONvRvR3AYGM2ws9ywhcKlfU/mdFlXbDPDYl2rqgQ11vTE+zIAGztFtw5l
kOPbDyV+svGqYPaRwzu7pPNQ6q/XZkFMdYhc8kW7Pwk/gcfxbE9af2fvSPik0RcO
75++PPLviGvmyO8H+rgeZiGbILKBwMjgdLZL2rbGZ+X24oyP7MskhikWbgoe+KiO
BznRPjs6ZU6Kx7WJp/V/IakiW2YxzRhZD282VHmlTiLGFGLTgTPz67t9SX7iVkSk
iysMA5DaY4t86G0IJVnAqzLCNiWTb+7iSbfywEF4PtebRvsvg1KkrkLNDSuyJ5sM
0PLQWDl+ORX3Fk7+3CZ917VMR7jbe2XdJ7Ja9rQ0uhhr6npJkuw=
=AqiD
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--


--===============4810616582615034230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============4810616582615034230==--

