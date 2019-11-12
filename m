Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F036F9733
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 18:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gmUtP8Nbeidk+516nFE6Q0/KU3GSGzCogbegTJ9sRoM=; b=d1C5oeLyCvhdTxByD2Cl8vX/+
	y+q+rWQUAM4LsfN4lfGrSkZzb8FI9g7ZytqPAX1uyHS2FtJcxG6KYfTRZb0wGARDVCIpyeimxZmzD
	g+1MCQ9fWDosM3X95A8nH187FmdObe/aZYPoH35m0N6dH2qzS8sXH047YrmSWbJebt8D599CzrCE5
	SWWib5LaQx8aE631nN0W1A29x/g2O/BDfk5mvhIYRiNGRMHmFA5C9q03arJ15kPpc8lbhiaS4lqD+
	CuLYpShVV42Ob26YuJhOnx8eHQoOdUo4TMwoUISop4Si8QLZgJ2J8KmJH8lEDshboZRlfOvnU6hkT
	sAWQwlU1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUa3V-0000Em-N0; Tue, 12 Nov 2019 17:34:17 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUa3S-0000Dy-SL
 for linux-mediatek@lists.infradead.org; Tue, 12 Nov 2019 17:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=04vAy7mLQ2lEwpnO2BErnDX5znyn19+arzcSdIbWoBo=; b=gWj6gCs2y/sbPH64gK83cyF+j
 twPmn0uewUHATjtmGGGuxW/S1EDcyzS6a0C7bLngl7BobdmS6PU4zn4/sNrmFiHgzNGRiN2UDD01T
 0VluTqPtaKXO1y1RkufxgzB13IyczE8CX3gxWeAhQGK02cqDMUTDlIfEdSpRY9H66Dvnc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iUa3O-0008Ly-Cm; Tue, 12 Nov 2019 17:34:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 98232274299F; Tue, 12 Nov 2019 17:34:09 +0000 (GMT)
Date: Tue, 12 Nov 2019 17:34:09 +0000
From: Mark Brown <broonie@kernel.org>
To: Eason Yen <eason.yen@mediatek.com>
Subject: Re: [PATCH] ASoC: mediatek: common: refine mtk_afe_fe_hw_params
Message-ID: <20191112173409.GI5195@sirena.co.uk>
References: <1573532538-30602-1-git-send-email-eason.yen@mediatek.com>
 <1573532538-30602-2-git-send-email-eason.yen@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1573532538-30602-2-git-send-email-eason.yen@mediatek.com>
X-Cookie: As famous as the unknown soldier.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_093414_923186_3F554F39 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: matthias.bgg@gmail.com, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, jiaxin.yu@mediatek.com,
 chipeng.chang@mediatek.com
Content-Type: multipart/mixed; boundary="===============0406950859897551611=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============0406950859897551611==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Encpt1P6Mxii2VuT"
Content-Disposition: inline


--Encpt1P6Mxii2VuT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 12, 2019 at 12:22:18PM +0800, Eason Yen wrote:

> 1. Add the following function to refine mtk_afe_fe_hw_params
> - mtk_memif_set_enable
> - mtk_memif_set_disable
> - mtk_memif_set_addr
> - mtk_memif_set_channel
> - mtk_memif_set_rate
> - mtk_memif_set_rate_substream
> - mtk_memif_set_format
> - mtk_memif_set_pbuf_size
> 2. extend mtk_base_memif_data struct for new platform(mt6779)

It'd be better to split these two into separate patches, they're two
separate things.  Ideally the refactoring should just be simple code
motion.  Right now the patch is a bit difficult to follow.

>  static int mtk_regmap_update_bits(struct regmap *map, int reg,
> -			   unsigned int mask,
> -			   unsigned int val, int shift)
> +				  unsigned int mask,
> +				  unsigned int val, int shift)
>  {
>  	if (reg < 0 || WARN_ON_ONCE(shift < 0))
>  		return 0;

This is an unrelated indentation change?

> +	dev_info(afe->dev, "%s(), %s, ch %d, rate %d, fmt %d, dma_addr %pad, dma_area %p, dma_bytes 0x%zx\n",
> +		 __func__, memif->data->name,
> +		 channels, rate, format,
> +		 &substream->runtime->dma_addr,
> +		 substream->runtime->dma_area,
> +		 substream->runtime->dma_bytes);

This is going to get noisy, dev_dbg at most please.

--Encpt1P6Mxii2VuT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3K7RAACgkQJNaLcl1U
h9BVOgf/RJ9QQbtlE/1cjYex/YS7artXYBg7EcJLvABZQcJLc1IH6iK2Ov8CQRNe
ozdn/rmpProjd28/8Pc3Dc8fU9rY7CzshEAPX7sT8QplUOmHyWD+aoJs7Hw7ACCJ
QrNZ3be5yh6Xng2LzZM9N+Hr5yJyjnELcFvwj7r4EijioTLPTaR1cce3LoNjBmyV
428s26enFSmBs/vXkHYxYyhMapI6e5+knDEXJ6gNDuaM1Vz1y+EuuvLRCMVOsYo7
iQF9/Y5Ka700ptA4XDAJSNwreI3r9CVnfKtmmOFrC6iQl3E0BJMeJfbS48/TA08D
y4mnwJ0np18D3+h73Nrnby7juf03pQ==
=6ikF
-----END PGP SIGNATURE-----

--Encpt1P6Mxii2VuT--


--===============0406950859897551611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============0406950859897551611==--

