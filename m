Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6638330C45
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 12:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ugkUAceQy0hz1FQyUUcAiU5k6LspQeDv1vySoz8dxB8=; b=U7qu65QUcJBG9nJZ86Do2lqEn
	usZc/h2VBk1WZC5caZkNtgVOUfuvYlqedI1BXAtTPRPQVQ+ihcTm8r4+hLh4XUMcuXnq2B3e5MrYJ
	r8nfaeFFHwFOL4sF5Z5NMFB8QhEWJ/UHe34Mv8FlkklwgQjMqCtjzjC2MAfWhFHv9m5dYVXw+1WXj
	Rw4cvtnPVaWFKKQCLz8zRtgzO0o777EJOncVaU8LGMb6A25AQnbedEww7EfB3/3n9pTXIXcuUsWGR
	neiagFAYgPw5Pxz1Ua+XyNjh3riWySXrN1zZTgP2VCEuqYONmNo/glU0RU5vvHKHIEDjeMyGazRpN
	RH7lrxEgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeMX-00042q-6g; Fri, 31 May 2019 10:02:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeMT-000428-TQ
 for linux-mediatek@lists.infradead.org; Fri, 31 May 2019 10:02:11 +0000
Received: from localhost.localdomain (nat-pool-mxp-t.redhat.com
 [149.6.153.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A714726748;
 Fri, 31 May 2019 10:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559296929;
 bh=ZfRv0Yrgp+Zd8xGJN40ArXNdaxOgATDzT4hykN3QQJs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ACH+Tw7vIyV0rlXKYRfqQ1cbiCIGHPIqfXHltfSFrCgExnxiBmQBCWIbU2kbUmEUg
 MjwxNpGjZeHzza3xx3EfCsClyJACURIDexq5rzy2wXNxyBaxhsN1coZJc1AEMD3fm7
 sMRYh5T79vi47/5gymd7Dxol6fYQUUIOlEuCvD40=
Date: Fri, 31 May 2019 12:02:03 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 1/2] mt76: mt7615: enable support for mesh
Message-ID: <20190531100201.GA3527@localhost.localdomain>
References: <7f167d09736652f81383991c971506630bbedacc.1559287432.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <7f167d09736652f81383991c971506630bbedacc.1559287432.git.ryder.lee@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_030209_983310_8CF4D786 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 YF Luo <yf.luo@mediatek.com>, Chih-Min Chen <chih-min.Chen@mediatek.com>,
 linux-kernel@vger.kernel.org, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============6015495136585471968=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============6015495136585471968==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Enable NL80211_IFTYPE_MESH_POINT and add its path.
>=20
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7615/init.c | 6 ++++++
>  drivers/net/wireless/mediatek/mt76/mt7615/main.c | 1 +
>  drivers/net/wireless/mediatek/mt76/mt7615/mcu.c  | 5 ++++-
>  3 files changed, 11 insertions(+), 1 deletion(-)
>=20

[...]

> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/n=
et/wireless/mediatek/mt76/mt7615/main.c
> index b0bb7cc12385..585e67fa2728 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> @@ -37,6 +37,7 @@ static int get_omac_idx(enum nl80211_iftype type, u32 m=
ask)
> =20
>  	switch (type) {
>  	case NL80211_IFTYPE_AP:
> +	case NL80211_IFTYPE_MESH_POINT:
>  		/* ap use hw bssid 0 and ext bssid */
>  		if (~mask & BIT(HW_BSSID_0))
>  			return HW_BSSID_0;
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/mcu.c
> index 43f70195244c..8b8db526cb16 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> @@ -754,6 +754,7 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
> =20
>  	switch (vif->type) {
>  	case NL80211_IFTYPE_AP:
> +	case NL80211_IFTYPE_MESH_POINT:
>  		tx_wlan_idx =3D mvif->sta.wcid.idx;
>  		conn_type =3D CONNECTION_INFRA_AP;

Just out of curiosity, why not using CONNECTION_MESH_{AP,STA} here?
why not NETWORK_MESH?

>  		break;
> @@ -968,7 +969,8 @@ int mt7615_mcu_add_wtbl(struct mt7615_dev *dev, struc=
t ieee80211_vif *vif,
>  		.rx_wtbl =3D {
>  			.tag =3D cpu_to_le16(WTBL_RX),
>  			.len =3D cpu_to_le16(sizeof(struct wtbl_rx)),
> -			.rca1 =3D vif->type !=3D NL80211_IFTYPE_AP,
> +			.rca1 =3D vif->type !=3D (NL80211_IFTYPE_AP ||
> +					      NL80211_IFTYPE_MESH_POINT),
>  			.rca2 =3D 1,
>  			.rv =3D 1,
>  		},
> @@ -1042,6 +1044,7 @@ static void sta_rec_convert_vif_type(enum nl80211_i=
ftype type, u32 *conn_type)
>  {
>  	switch (type) {
>  	case NL80211_IFTYPE_AP:
> +	case NL80211_IFTYPE_MESH_POINT:
>  		if (conn_type)
>  			*conn_type =3D CONNECTION_INFRA_STA;
>  		break;

same here.

Regards,
Lorenzo

> --=20
> 2.18.0
>=20

--envbJBWh7q8WU6mo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXPD7lgAKCRA6cBh0uS2t
rFA6AP9xl4wUemuHlJ2lNcCI2smmKaZNi4KmXW4gSR0kGjaB3wEAsww6TO6o9pAq
PI3sKVdjK8j31EW9B+ekCKNxFmSPBgA=
=w7DQ
-----END PGP SIGNATURE-----

--envbJBWh7q8WU6mo--


--===============6015495136585471968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============6015495136585471968==--

