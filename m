Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A07441F57
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 10:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LX7SS62vDb9J+VR0bmTcyaOHPZxaAfduwDDSm4euJW0=; b=alPdPaKZBT1hu1r2REUNt0bGD
	AQP66rR1n85ZH5Mw2uaWA+2NZRiieq5wH4WktlzvOSsMQJwUMShIve3AP0FFjQ8jwfZOP0eEaF921
	dWEWSN5kXrxgD6B5YqNm6J1s+9R3HjVUOkj2Ng/af/bUl3V81ubmIh/h29NJDkI6tV8PDzyNAPskt
	WAeW4vnsBmkOr8gIMRe/RUXKIXCR/8w7p/YLFAbkaHVefYxKhLCTHjZyRDAwEHbRqg55xmW5PZrOC
	gj0rXmPcmj/ubSggq3ZWx1Ox4aMdtSfU5TRWmYwqLdbwzQR0Y6VD6djgks255HjQS4Ax1bfCG+jZB
	ga7Xe9KqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haylS-0007XE-78; Wed, 12 Jun 2019 08:37:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haylO-0007Wf-Sd
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 08:37:48 +0000
Received: from localhost.localdomain (nat-pool-mxp-t.redhat.com
 [149.6.153.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4858D206E0;
 Wed, 12 Jun 2019 08:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560328666;
 bh=QfcH+GmJd1oDP1Fb6wQ/0cPqLTDuAsgxIHYxQTMx+qM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D6nuiLQs2fgx3D5vhiy2mrTQVmuJsCV9oPBQiT+szo3kUNPAflzfmJxF3ocK9uyUl
 9EkMtTI3Qq/1xt7U+GtILKOQEIQLnKCqUSQCVID5FvDOjSmp75DJ7z4OQ2wEdyh093
 OlNq4k6kLg4xfWk6+A20GnVNP4vIql88aErwoAh0=
Date: Wed, 12 Jun 2019 10:37:40 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH v2] mt76: mt7615: add support for per-chain signal
 strength reporting
Message-ID: <20190612083739.GB8107@localhost.localdomain>
References: <22e5caff3581dc92fd6fec2f25966d86b7276bba.1560220443.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <22e5caff3581dc92fd6fec2f25966d86b7276bba.1560220443.git.ryder.lee@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_013746_961069_603A9761 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============7323064874957759353=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============7323064874957759353==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yEPQxsgoJgBvi8ip"
Content-Disposition: inline


--yEPQxsgoJgBvi8ip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Fill in RX status->chain_signal to avoid empty value.
>=20
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
> Changes since v2 - correct calculation sequence
> ---
>  .../net/wireless/mediatek/mt76/mt7615/mac.c   | 30 ++++++++++++++++++-
>  .../net/wireless/mediatek/mt76/mt7615/mac.h   |  5 ++++
>  2 files changed, 34 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/mac.c
> index b60d42b5923d..2f49a99e77b1 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> @@ -13,6 +13,11 @@
>  #include "../dma.h"
>  #include "mac.h"
> =20

[...]

> @@ -169,7 +175,29 @@ int mt7615_mac_fill_rx(struct mt7615_dev *dev, struc=
t sk_buff *skb)
> =20
>  		status->enc_flags |=3D RX_ENC_FLAG_STBC_MASK * stbc;
> =20
> -		/* TODO: RSSI */
> +		status->chains =3D dev->mt76.antenna_mask;
> +		status->chain_signal[0] =3D to_rssi(MT_RXV4_RCPI0, rxdg3);
> +		status->chain_signal[1] =3D to_rssi(MT_RXV4_RCPI1, rxdg3);
> +		status->chain_signal[2] =3D to_rssi(MT_RXV4_RCPI2, rxdg3);
> +		status->chain_signal[3] =3D to_rssi(MT_RXV4_RCPI3, rxdg3);
> +		status->signal =3D status->chain_signal[0];
> +
> +		switch (status->chains) {
> +		case 0xf:
> +			status->signal =3D max(status->signal,
> +					     status->chain_signal[3]);
> +			/* fall through */
> +		case 0x7:
> +			status->signal =3D max(status->signal,
> +					     status->chain_signal[2]);
> +			/* fall through */
> +		case 0x3:
> +			status->signal =3D max(status->signal,
> +					     status->chain_signal[1]);
> +			break;
> +		default:
> +			break;
> +		}

is it possible to enable rx chains selectively (e.g. chain 0 and 2)?
If so we can do something like:

for (i =3D 1; i < hweight8(dev->mt76.antenna_mask); i++) {
	if (!(status->chains & BIT(i)))
		continue;

	status->signal =3D max(status->signal,
			     status->chain_signal[i]);
}

Regards,
Lorenzo

>  		rxd +=3D 6;
>  		if ((u8 *)rxd - skb->data >=3D skb->len)
>  			return -EINVAL;
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/mac.h
> index 18ad4b8a3807..b00ce8db58e9 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> @@ -98,6 +98,11 @@ enum rx_pkt_type {
>  #define MT_RXV2_GROUP_ID		GENMASK(26, 21)
>  #define MT_RXV2_LENGTH			GENMASK(20, 0)
> =20
> +#define MT_RXV4_RCPI3			GENMASK(31, 24)
> +#define MT_RXV4_RCPI2			GENMASK(23, 16)
> +#define MT_RXV4_RCPI1			GENMASK(15, 8)
> +#define MT_RXV4_RCPI0			GENMASK(7, 0)
> +
>  enum tx_header_format {
>  	MT_HDR_FORMAT_802_3,
>  	MT_HDR_FORMAT_CMD,
> --=20
> 2.18.0
>=20

--yEPQxsgoJgBvi8ip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXQC50QAKCRA6cBh0uS2t
rI6hAP9Warx35hWYlrpmqbAqHAOcATtC3HRS5Vgg2y5PiTNWDwD8C/oyAz5+UBIJ
0DP/Sqd38fAYdghH3zy/ZhxyNT/VRgU=
=1Un8
-----END PGP SIGNATURE-----

--yEPQxsgoJgBvi8ip--


--===============7323064874957759353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============7323064874957759353==--

