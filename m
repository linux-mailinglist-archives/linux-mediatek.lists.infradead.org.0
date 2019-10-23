Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6323CE1EFB
	for <lists+linux-mediatek@lfdr.de>; Wed, 23 Oct 2019 17:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Y7Pq0xQ1mv+8bWVI81xtahlNYtl2MkqwGIXCcPVQLU=; b=Hnwn8xs68xxt2OXvq4E5LnBWF
	Ddod6cMjEs5DlSc6hNBzlgkcovL4UU+7GI1ehersSO+ExafA0eS635XDOMSfxtMwOK9JUbCUXIJcw
	8IK/wlz3tykKLixrnVg9wNaMdjc9lttRCZtD1WiofFP5YVX7zujcMbtu0XRKM5/O7Kyyev+xU7z2M
	72axuOs/nXMboO46tUvEc8aefTcWaO2/s5Zg7Gil+awZDPHCDJ/rZ/vNVrE787lEcQatSPMCVhJX1
	lsK+v/pTMXBG7xLSSae5vKDrRKr7QvmatCuPXA6WibChN+KLo4Fz6q39XZFQSu+4feL/b69kSd6FE
	FtvC3vBCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIIo-0008Qa-1W; Wed, 23 Oct 2019 15:11:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIIR-000825-Q0; Wed, 23 Oct 2019 15:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CFlPf+0Bqqc/DNWZaN1DVp0k7e+Yp/Tsp5TFWxhBZs8=; b=U9m0ZiHax9S1avQBBTw9dmxLA
 +2uG08eOR+JihrKXYnJtB7UMDACgBMRXUYOfFzhYtbT7NR3xhkr2+fPhiybolm/lZK+LmfCGbXj5Z
 SGcdauL4wYj87bsJV/1DTM5W9YQA5QGdnx4vcD14c7TmmVIUnu+/2vAKhDimwNAWlIHYQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNIIQ-0000pH-7I; Wed, 23 Oct 2019 15:11:34 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B561A274301E; Wed, 23 Oct 2019 16:11:33 +0100 (BST)
Date: Wed, 23 Oct 2019 16:11:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Luhua Xu <luhua.xu@mediatek.com>
Subject: Re: [PATCH 0/1] Add spi power control when set cs
Message-ID: <20191023151133.GD5723@sirena.co.uk>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_081135_933531_0D2B6585 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5556957628865895885=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5556957628865895885==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KdquIMZPjGJQvRdI"
Content-Disposition: inline


--KdquIMZPjGJQvRdI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2019 at 08:38:41AM -0400, Luhua Xu wrote:
> This patch add power control when set spi cs to fix register
> access violation.

Please don't send cover letters for single patches, if there is anything
that needs saying put it in the changelog of the patch or after the ---
if it's administrative stuff.  This reduces mail volume and ensures that=20
any important information is recorded in the changelog rather than being
lost.=20

--KdquIMZPjGJQvRdI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2wbaQACgkQJNaLcl1U
h9AZ8wf/YsPE4g2DB7vKBwqbkxq/ALWspomqahnmYRS1ybVmFae84b4Y3Xzplke5
VU7AJlcmslaIf2Js7txBb4HlATcKiqZlF0TsqOiIsw2Q4/rS0hJBFZ6DLVuLrwwz
dtvRrTurDuYVBo5Empbka7kYAgowqqZxwcqWVAPXHcx6C2wbdOO7VmQmxsMD/VvX
qWJ2DgEFIps2ZKsofdbLOK+iVaQFVcsT3mo/X/TfFz7zWB0GEglAXVUixrD8iqRZ
LRok6FnVsK+vVRasKGCp9c9Thjb3+DPfx64ONurPnRphX6RkYHSb4EgTlecjgOVj
+g+CiFeIDbyPWJaII6qEnmOs/OwejA==
=MGjC
-----END PGP SIGNATURE-----

--KdquIMZPjGJQvRdI--


--===============5556957628865895885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5556957628865895885==--

