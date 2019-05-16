Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D1320342
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 12:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3o6Vay9WySdahbe4dJbHzc0QveghTYSB/2vobfhAgao=; b=owoZ6ZDfs4FDReX2cbqyiKVCF
	ldCLaGbeGL0HAP776SRJTuXXicAkYiJ03n5w+0rR/YGQ8f0Fiib0ePSRudU9iwHg697kspYXrd/g/
	fIGYKXhTfD4BF83rBAiayA1Xjx1uy8GjN9Ogq/XoqbjxENL3iTvrfHJDt9RXD+VvgvHCG2tEaE8go
	2LDGCZTUOxObvEeq1epJFonmA7SipJVYcBI+Yq9xHxz+4uJChWXy8EbhWLvwHXk8AqKMBGEi5iodZ
	tC7XVkAl1vcCZ6hjseJIObsNOziyfi20gONAK5Jn+CGaMP0RxAyWVcxIyf3YlkeoVRZY4hw96LoNS
	uDx7oS9TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDRi-0006NS-PF; Thu, 16 May 2019 10:17:06 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDRf-0006N2-Ip
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 10:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K6ArTVaZ3sb3Flcixm/mI6XBWANQIeL2DTuJraDTiXg=; b=L3FKw62VJI7hDp2XBhBIF5vkk
 4Qcw/AAQhHAs+KB+mdy7cUXsnzgbqqXrQjI67+Z+/GXFBba1mWzbB4gB/G5tjrhdqYM0/hEoQCeZM
 tV908oVIHYm/6XTP57aPocOUSW7axPGL1YvcRwVdqNES1lQqONdA8LWdU+z8CNCPvMEWk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hRDRV-00061w-L8; Thu, 16 May 2019 10:16:53 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id D92C41126D45; Thu, 16 May 2019 11:16:52 +0100 (BST)
Date: Thu, 16 May 2019 11:16:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Shunli Wang <shunli.wang@mediatek.com>
Subject: Re: [PATCH] ASoC: Mediatek: MT8183: enable IIR filter
Message-ID: <20190516101652.GD5598@sirena.org.uk>
References: <20190516101515.4127-1-shunli.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20190516101515.4127-1-shunli.wang@mediatek.com>
X-Cookie: <ahzz_> i figured 17G oughta be enough.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_031703_765883_1785BE9E 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, srv_heupstream@mediatek.com,
 garlic.tseng@mediatek.com, jiaxin.yu@mediatek.com, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, kaichieh.chuang@mediatek.com
Content-Type: multipart/mixed; boundary="===============0890292539973156861=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============0890292539973156861==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YToU2i3Vx8H2dn7O"
Content-Disposition: inline


--YToU2i3Vx8H2dn7O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 06:15:15PM +0800, Shunli Wang wrote:
> This patch is to enable IIR filter when DMIC of PMIC
> is enabled.

Should this not have a user control in case the user wants to avoid the
filter for some reason?

--YToU2i3Vx8H2dn7O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzdOJQACgkQJNaLcl1U
h9DQXwf/Q23Lgt4di48QYQEqFll73b2HKiTnqbNLzIJALr+aNJuawGT8eTPovS0m
t4g0WY7gHRWxfKYmBSDBsEmwhNsJG5Ns592Yzki1sSsHpoi//rerbgF48q4n56nH
6o6NfuwmS5YQjPHyd996bmb1VH3fi203Ah42ZxowYptPKjuQN1+INUvj2cneGC5j
7SLu/d/PYWIRs1sMpCrvPhDIlfryIWBmCFfLXnP3ncvT93UhjyEqLX0bRCLephGE
m/GNvqIhr8mPZAQV/wfLqcvj8EKRwz9z88eQkEaPftYTlxqrr2XE97HQPHYqEDSQ
Wae+Ct0I7PgfzFIvav+/NLiKBSOajQ==
=LsWt
-----END PGP SIGNATURE-----

--YToU2i3Vx8H2dn7O--


--===============0890292539973156861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============0890292539973156861==--

