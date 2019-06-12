Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105E741F07
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 10:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jQMJg1mTZ6I1t4u4nQLDc7XUU4DemdAZAlrxq1RVNTo=; b=OdvtDLhXhZdxcu6Q9pJxZy7Fl
	2rCuEp6osiogJC1Dwxy9fvD7wNmJzwWTnT8EBKJLN24hQh4eAeNiZqloO6onx27Xkq4swwOHKaTp8
	+BHyaE8omDGT0K/ECYskrvb5fwAcwLBPKzcrGy+qJA4fftCKgT+aQEjMCSQicGbFyCUe0L1asMchE
	Uq8sL13eEi0VqxPow2b/bHyFbXVqQxcz7BZhvN52x2I/0h8kMm1ntMwXfsf6thJU8ntosSyV1OHfh
	saqLQCRNRVbw4tlQO21oALp41J57DabiG3pOzjXBvzJ5dqj8/eyIJa0D7YqAor1HAj9JzB68MRA6i
	RNa+5rYaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayal-0003EY-9z; Wed, 12 Jun 2019 08:26:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayaQ-0002yi-E2
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 08:26:27 +0000
Received: from localhost.localdomain (nat-pool-mxp-t.redhat.com
 [149.6.153.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F9DB2063F;
 Wed, 12 Jun 2019 08:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560327985;
 bh=SeltQsCC2wy87yYogYLFuJgW6iFbwpA137PBXuDvuw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z60Xj9On58T+P2b+vKcLPGEtZ42GiW/RfLcgtgOOTH4zidvls+lPgCT3rk1Pi9e+d
 lB+dwJbXAeUovwForh+dh589bmRPglSuNBQJtAYx0l/eNwcWHmK4VoRKns3DwuVjCi
 J+xowcZtQoU7GNWi7jHRk0YTgGNbSLN6c4g+jUHk=
Date: Wed, 12 Jun 2019 10:26:19 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 2/2] mt76: mt7615: update peer's bssid when state
 transition changes
Message-ID: <20190612082618.GA8107@localhost.localdomain>
References: <3065a01998dfa04a5d2d680e820a17cb5c110d0f.1560221172.git.ryder.lee@mediatek.com>
 <449fee28c558b6f02b62275f9beefaab02b47efc.1560221172.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <449fee28c558b6f02b62275f9beefaab02b47efc.1560221172.git.ryder.lee@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_012626_517757_7B6DFD3D 
X-CRM114-Status: GOOD (  13.96  )
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
Content-Type: multipart/mixed; boundary="===============6339707103599414782=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============6339707103599414782==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Driver should update peer's bssid and bss information when
> state transition changes.
>=20
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
>  .../net/wireless/mediatek/mt76/mt7615/main.c  |  5 +-
>  .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 49 ++++++++++---------
>  2 files changed, 27 insertions(+), 27 deletions(-)
>=20

[...]

> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/mcu.c
> index e82086eb8aa4..8fc12cd37906 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> @@ -741,17 +741,6 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
>  	u8 *buf, *data, tx_wlan_idx =3D 0;
>  	struct req_hdr *hdr;
> =20
> -	if (en) {
> -		len +=3D sizeof(struct bss_info_omac);
> -		features |=3D BIT(BSS_INFO_OMAC);
> -		if (mvif->omac_idx > EXT_BSSID_START) {
> -			len +=3D sizeof(struct bss_info_ext_bss);
> -			features |=3D BIT(BSS_INFO_EXT_BSS);
> -			ntlv++;
> -		}
> -		ntlv++;
> -	}
> -
>  	switch (vif->type) {
>  	case NL80211_IFTYPE_AP:
>  	case NL80211_IFTYPE_MESH_POINT:
> @@ -759,22 +748,23 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
>  		conn_type =3D CONNECTION_INFRA_AP;
>  		break;
>  	case NL80211_IFTYPE_STATION: {
> -		struct ieee80211_sta *sta;
> -		struct mt7615_sta *msta;
> -
> -		rcu_read_lock();
> -
> -		sta =3D ieee80211_find_sta(vif, vif->bss_conf.bssid);
> -		if (!sta) {
> +		/* TODO: enable BSS_INFO_UAPSD & BSS_INFO_PM */
> +		if (en) {
> +			struct ieee80211_sta *sta;
> +			struct mt7615_sta *msta;
> +
> +			rcu_read_lock();
> +			sta =3D ieee80211_find_sta(vif, vif->bss_conf.bssid);
> +			if (!sta) {
> +				rcu_read_unlock();
> +				return -EINVAL;
> +			}
> +
> +			msta =3D (struct mt7615_sta *)sta->drv_priv;
> +			tx_wlan_idx =3D msta->wcid.idx;
>  			rcu_read_unlock();
> -			return -EINVAL;
>  		}
> -
> -		msta =3D (struct mt7615_sta *)sta->drv_priv;
> -		tx_wlan_idx =3D msta->wcid.idx;
>  		conn_type =3D CONNECTION_INFRA_STA;
> -
> -		rcu_read_unlock();
>  		break;
>  	}
>  	default:
> @@ -782,6 +772,17 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
>  		break;
>  	}
> =20
> +	if (en) {
> +		len +=3D sizeof(struct bss_info_omac);
> +		features |=3D BIT(BSS_INFO_OMAC);
> +		if (mvif->omac_idx > EXT_BSSID_START) {
> +			len +=3D sizeof(struct bss_info_ext_bss);
> +			features |=3D BIT(BSS_INFO_EXT_BSS);
> +			ntlv++;
> +		}
> +		ntlv++;
> +	}

What did you move this chunk down?

Regards,
Lorenzo

> +
>  	buf =3D kzalloc(len, GFP_KERNEL);
>  	if (!buf)
>  		return -ENOMEM;
> --=20
> 2.18.0
>=20

--dDRMvlgZJXvWKvBx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXQC3JwAKCRA6cBh0uS2t
rFJyAQCPhUzOHTO9oIBENFN5792OnafbeU2m65jRccNwracrZQD/WD/HqK3FoDS4
EeDnEIgj1yzcCgdAU7vhN8a9VE9gtA4=
=rUIW
-----END PGP SIGNATURE-----

--dDRMvlgZJXvWKvBx--


--===============6339707103599414782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============6339707103599414782==--

