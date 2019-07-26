Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC8377328
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 23:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8IVOxFsE1kUAqhLDy1EBOBx534k+zeUKFsvxhxHNpA=; b=NCxDOnA9Q+TXMD
	cn6rrJhcLRdZSHu5mUG5LR6YGfVWpCrw8cHDEEaaYvlGX1TtsnDXIwaD6fdGRYREzPef7V1MD7PBp
	1WeJxg0iT81EusSLkLP+Gdog5kj1jZHIvLGJva3Fugscgw236uln8GsrgH5iM/KGYPjfdxGl3vUVj
	bzKThfktKYWWUV189ijfQ5Eu6YyZJbhOeVfCcuXGoMDqhbqn/Kff/oiSZIkH/lat4zz3iKVNXumRn
	r92NLk7VmELg/5VbDni7WK8DmzJZx4BAnvJnFGyIxLVPzaXWwn0PDa94fiVeRzG90AB//V5hRVU3j
	r4Bz6JKYjq3eL3j3C6nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr7Mg-0006YH-2a; Fri, 26 Jul 2019 21:02:58 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr7Mb-0006Xl-B3
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 21:02:54 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7EE3912665347;
 Fri, 26 Jul 2019 14:02:46 -0700 (PDT)
Date: Fri, 26 Jul 2019 14:02:45 -0700 (PDT)
Message-Id: <20190726.140245.129199617321965171.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next 1/3] net: ethernet: mediatek: Add basic
 PHYLINK support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190724192340.18978-1-opensource@vdorst.com>
References: <20190724192340.18978-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 26 Jul 2019 14:02:47 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_140253_384658_1AD40D06 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Wed, 24 Jul 2019 21:23:40 +0200

> @@ -186,165 +187,219 @@ static void mtk_gmac0_rgmii_adjust(struct mtk_eth=
 *eth, int speed)
>  	mtk_w32(eth, val, TRGMII_TCK_CTRL);
>  }
>  =

> -static void mtk_phy_link_adjust(struct net_device *dev)
> +static void mtk_mac_config(struct phylink_config *config, unsigned int m=
ode,
> +			   const struct phylink_link_state *state)
>  {
> -	struct mtk_mac *mac =3D netdev_priv(dev);
> -	u16 lcl_adv =3D 0, rmt_adv =3D 0;
> -	u8 flowctrl;
> -	u32 mcr =3D MAC_MCR_MAX_RX_1536 | MAC_MCR_IPG_CFG |
> -		  MAC_MCR_FORCE_MODE | MAC_MCR_TX_EN |
> -		  MAC_MCR_RX_EN | MAC_MCR_BACKOFF_EN |
> -		  MAC_MCR_BACKPR_EN;
> +	struct mtk_mac *mac =3D container_of(config, struct mtk_mac,
> +					   phylink_config);
> +	struct mtk_eth *eth =3D mac->hw;
>  =

> -	if (unlikely(test_bit(MTK_RESETTING, &mac->hw->state)))
> -		return;
> +	u32 ge_mode =3D 0, val, mcr_cur, mcr_new;

Please elminiate the empty line in the middle of the local variabel
declarations and adhere to reverse christmas tree ordering.
> @@ -1798,6 +1853,13 @@ static int mtk_open(struct net_device *dev)
>  {
>  	struct mtk_mac *mac =3D netdev_priv(dev);
>  	struct mtk_eth *eth =3D mac->hw;
> +	int err =3D phylink_of_phy_connect(mac->phylink, mac->of_node, 0);

Reverse christmas tree please.

> @@ -2375,9 +2407,10 @@ static const struct net_device_ops mtk_netdev_ops =
=3D {
>  =

>  static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
>  {
> +	struct phylink *phylink;
>  	struct mtk_mac *mac;
>  	const __be32 *_id =3D of_get_property(np, "reg", NULL);
> -	int id, err;
> +	int phy_mode, id, err;

While you are here please fix up the reverse christmas tree ordering, and
definitely don't make it worse :)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
