Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E60C13885
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 May 2019 11:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qsSqkSkOIwJFBPvKE/kZ8PFGz0eW5a8Pj9We8eBO5cw=; b=aDHFwetKxxfIJSn0RFhgKdnUu
	+CxZdZeXzkTVmBjGG9C7hy3nzg8nmTZlfFxre+dD+I3179rVcIKVQGxUYPjnNszPGGPiXeDmgAX52
	03Vpe0QOVTENvAc1hNQ1nvQC4mrV8F4QMeFIYDMDU8hdRUGUm4fYuAavztKnXjO5yZdB4KzVhfkk9
	r+RYYStgeeWTMjqR53qzxTSYKEgHxkW4dx5N1OU3HaxCnEsGugr3fBkQlPxonhLsyaTGvXpzgzIU7
	RApc5neZZa3eIMz0gWuQj+d2wVyjt1/wxCP1x1tngI5EMf8CukEDMj2f7WfAKG0/mUVgh0AEPSHzW
	NBL3QyqNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMrLG-0007JN-AS; Sat, 04 May 2019 09:52:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMrLD-0007It-DU
 for linux-mediatek@lists.infradead.org; Sat, 04 May 2019 09:52:24 +0000
Received: from localhost.localdomain (unknown [151.66.59.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EE44206DF;
 Sat,  4 May 2019 09:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556963542;
 bh=BqZ5JiWkvHkc3lAZvNDNmOQq2YEoCS6tHKgUvGvJXVQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pxvM9teiIZbYOqhRHkz2n/HXkEHEr4dOOGdVnkTliw4EMLPRagrs4iAh++HUHlOpK
 cJk4GPEwdkgtD0S8XWXjlNjpZb7jAGSUbczUa/Gk/aXYSN67UibOXq97ultTeAQt7o
 /cawM5/Np/2FRGObAEQAXhNgHi2W3t7xdTjaQURY=
Date: Sat, 4 May 2019 11:52:16 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] mt76: mt7615: Use after free in mt7615_mcu_set_bcn()
Message-ID: <20190504095215.GA23263@localhost.localdomain>
References: <20190503130909.GI29695@mwanda>
MIME-Version: 1.0
In-Reply-To: <20190503130909.GI29695@mwanda>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_025223_479727_3EEB281D 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============8905132942060108972=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============8905132942060108972==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>

> We dereference "skb" when we assign:
>=20
> 	req.pkt_len =3D cpu_to_le16(MT_TXD_SIZE + skb->len);
>                                                 ^^^^^^^^
> So this patch just moves the dev_kfree_skb() down a bit to avoid the
> use after free.
>=20
> Fixes: 04b8e65922f6 ("mt76: add mac80211 driver for MT7615 PCIe-based chi=
psets")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7615/mcu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/mcu.c
> index ea67c6022fe6..dc1301effa24 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> @@ -1270,7 +1270,6 @@ int mt7615_mcu_set_bcn(struct mt7615_dev *dev, stru=
ct ieee80211_vif *vif,
>  	mt7615_mac_write_txwi(dev, (__le32 *)(req.pkt), skb, wcid, NULL,
>  			      0, NULL);
>  	memcpy(req.pkt + MT_TXD_SIZE, skb->data, skb->len);
> -	dev_kfree_skb(skb);
> =20
>  	req.omac_idx =3D mvif->omac_idx;
>  	req.enable =3D en;
> @@ -1281,6 +1280,7 @@ int mt7615_mcu_set_bcn(struct mt7615_dev *dev, stru=
ct ieee80211_vif *vif,
>  	req.pkt_len =3D cpu_to_le16(MT_TXD_SIZE + skb->len);
>  	req.tim_ie_pos =3D cpu_to_le16(MT_TXD_SIZE + tim_off);
> =20
> +	dev_kfree_skb(skb);
>  	skb =3D mt7615_mcu_msg_alloc(&req, sizeof(req));
> =20
>  	return mt7615_mcu_msg_send(dev, skb, MCU_EXT_CMD_BCN_OFFLOAD,
> --=20
> 2.18.0
>=20

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXM1gzAAKCRA6cBh0uS2t
rDeKAQDGjECddgKPoW1n3Dnye8aHew95bCQqgsIeRCLiVSH00QD/VWP4FLjdbVHM
+9OT95BeBDbj0eG7VaB6OROPr+8wLwg=
=UKNW
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--


--===============8905132942060108972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============8905132942060108972==--

