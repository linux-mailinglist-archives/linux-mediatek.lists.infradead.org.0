Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048AA99E8D
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 20:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Resent-To
	:Resent-Message-ID:Resent-Date:Resent-From:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Sender:Resent-Cc:List-Owner;
	bh=5clI0++lO5cw2ZjMUCTX9k3lnAnWnL3XXLFbpLg2RXA=; b=tch9thLACjqmSISvaXURWFP2/A
	nshQhdYaPsXKdpvsCjcZHetzIDKSWz+lvDUM3uGRNIOgWfspgfDTgEz5/i2jbhHSUTLXs+yVILBKI
	0oDn5b7wvIttzIYbgLr9EQ6QGu/CqdFdjbvgdHwB15BXOWzOGW3TAo08ldKlhumXGMRVwE8kGIeRT
	rzzzr7BUYIsCgySCQfKdH8wukFHsm+Nvg1eqnGBLkwBB08OvuMPnxgudxSzvS6phsjar2xzzSwLcq
	Gg201YEFy6a+hn7n2pYGa5A7ZuF+BCxAU/lKDwbPAgoGqVk934S779ejqsbcUVXpopGNp7362houc
	7VaWEHTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rfk-0004wm-Hl; Thu, 22 Aug 2019 18:18:56 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rfh-0004wP-7C
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 18:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Resent-To:
 Resent-Message-ID:Resent-Date:Resent-From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Sender:
 Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JgsoxlnDZ9pqIJzaaaku9cx3zI+9gdOtGPqPmCgzH10=; b=T
 dnjd9jLkYWXbA9j0qQQb9VK7p6nQz7tnuwbMjMP5F+iBMoqx2BQLos+U3tYHzoOMrEkTPws7ega8i
 BbYamUK5QBm72Bc2vuyR+inqOZguEX+HfYXsgfdp86k+6vBzOxizxGmMPW6rY1xRTcdSUH+QL/SFW
 BbFDFaldfXVzvqIk=;
Received: from 92.40.26.78.threembb.co.uk ([92.40.26.78]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i0rfc-0007c7-W6; Thu, 22 Aug 2019 18:18:49 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 183DED02CB0; Thu, 22 Aug 2019 19:18:47 +0100 (BST)
Resent-From: Mark Brown <broonie@sirena.co.uk>
Resent-Date: Thu, 22 Aug 2019 19:18:47 +0100
Resent-Message-ID: <20190822181847.GD23391@sirena.co.uk>
Resent-To: Jiaxin Yu <jiaxin.yu@mediatek.com>, lgirdwood@gmail.com,
 perex@perex.cz, tzungbi@google.com, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 ck.hu@medaitek.com
Date: Thu, 22 Aug 2019 17:13:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Re: [PATCH 2/2] ASoC: mediatek: mt8183: fix tdm out issue
Message-ID: <20190822161335.GA23391@sirena.co.uk>
References: <1566478261-13464-1-git-send-email-jiaxin.yu@mediatek.com>
 <1566478261-13464-3-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1566478261-13464-3-git-send-email-jiaxin.yu@mediatek.com>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_111853_280119_EBB4D31B 
X-CRM114-Status: UNSURE (   7.21  )
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
Cc: alsa-devel@alsa-project.org, ck.hu@medaitek.com, lgirdwood@gmail.com,
 perex@perex.cz, tzungbi@google.com, linux-mediatek@lists.infradead.org,
 eason.yen@mediatek.com
Content-Type: multipart/mixed; boundary="===============1068978944860435447=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============1068978944860435447==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 22, 2019 at 08:51:01PM +0800, Jiaxin Yu wrote:
> This patch fix two tdm out issues.
> 1. TDM out support S16_LE/S24_LE/S32_LE formats .When output S32_LE, we
>    need set hd_align so that memif can output MSB 24bits correctly.
> 2. Fix TDM out hw_params as SNDRV_PCM_FORMAT_S32_LE.
> 3. Fix TDM out data is valid on rising edge.

These should really be split up into separate patches, each
fixing a single issue.  Ideally the changelog should describe
how the issue is fixed like that for 1 does.

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1evy0ACgkQJNaLcl1U
h9CZ3gf9E5RTE4sV5sm2rd7vBY7Z3ZWn19T1laGFpztTqI44AkYc8yA/L9dnts7b
ERliT5kmt7nrnpBLnr76jxaEwHtegzBiEJwU099BRikGNHvrcL4kZLS7wkWluw++
yPgkcGzZyNW+Nqa+AA27xzVbjoWJT3ZfDTQMmaF82/VPsPn/1fQ6fS0d4W0ugDiV
GoEP+2UHDZLB9CSZP+l4KnqaEG+A4yJrDoauxX38aw8JpUrpduXEXpGd4t2TTYRN
LFh4r985iErQR1K3IOCzzSpxf9eOa0WyvPdpmId3+MoWNVdcxRcKnMzj53fmBxgZ
kD8P3Y919BFO6vCHunpaD0l+qS5Gfw==
=URP9
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--


--===============1068978944860435447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============1068978944860435447==--

