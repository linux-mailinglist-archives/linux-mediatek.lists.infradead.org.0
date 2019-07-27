Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA0D77B36
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 20:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6qCYztkvLY8BNq2IWfFGYk879G1AWYedwf1j0lhpe8=; b=doA9r91BkYR9IS
	Z/hcUjvsTytc5TRPe6BtudieaSSpqputQXGPMZgugs5xp/pnpgqXwqgI+ftjZ/FmjyE2939MWhaH+
	uq3LywOaxr4IsUZcxHOs4JdXzw+2k8/Npe7IfkmTc1OzhscM2a+VJC0lYLBvLB6ftOq9m5Q64XMai
	gmJnMC8p7PkcOYTgLBt80op2xXTLC9iuCfHjPfP4GHa5VujXY/qtndoRY23yq75azNdGmYPGZjw27
	N9ex0aqS9nXWuEOseja7w1mRZNR5oRC8zRD3KNCAL+EKQ8kZ2Um/KSnkJI/OttcqLwP1s7mUgjgXE
	1F4ZEHTrz6Ssgz8j4wCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRkY-0005kQ-GC; Sat, 27 Jul 2019 18:48:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRkU-0005jx-SF
 for linux-mediatek@lists.infradead.org; Sat, 27 Jul 2019 18:48:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XTWB5lmNAEHdNXdoWpMPkyVyIp3PeJcYGNJ3n/ewkHM=; b=Bca+HGDajbI/xthAcF9CBere9
 mtHaBGZu8ffJ3th3O7f3whu4UxJVdJO9Yejpvjb7zKdG7NQylAeS9ybE7GVJqovsuO/gebGmOmL75
 N0FhxmTtn8NqdaPjDee7U/DE182ixB3dLWZ5TY//IPnzFyr+YGLTLGBouxNXdiHIyO3IutpN+FwWJ
 GVbmyF/OnRDDdnO/EsIGBAnB+FUkg6S5tFgY8WUJ/M+eHFO0OarPS2xxTGdQX2ZHzvNBhbq5dXpH2
 xuQiXIOZebz4lD76hWQIBQ6PC7ltkqzU2OY+5WTOoi+iFHL1gdwX0sEK0tD65L7vP9axtj901bMbR
 SVKB2jbmg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49414)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hrRk9-00054j-G1; Sat, 27 Jul 2019 19:48:33 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hrRk4-0007y5-QD; Sat, 27 Jul 2019 19:48:28 +0100
Date: Sat, 27 Jul 2019 19:48:28 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next 1/3] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190727184828.GT1330@shell.armlinux.org.uk>
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-2-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724192549.24615-2-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_114854_920698_72E277B8 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 vivien.didelot@gmail.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

Just a couple of minor points.

On Wed, Jul 24, 2019 at 09:25:47PM +0200, Ren=E9 van Dorst wrote:
> +static void mt7530_phylink_mac_config(struct dsa_switch *ds, int port,
> +				      unsigned int mode,
> +				      const struct phylink_link_state *state)
> +{
> +	struct mt7530_priv *priv =3D ds->priv;
> +	u32 mcr_cur, mcr_new;
> +
> +	switch (port) {
> +	case 0: /* Internal phy */
> +	case 1:
> +	case 2:
> +	case 3:
> +	case 4:
> +		if (state->interface !=3D PHY_INTERFACE_MODE_GMII)
> +			return;
> +		break;
> +	/* case 5: Port 5 is not supported! */
> +	case 6: /* 1st cpu port */
> +		if (state->interface !=3D PHY_INTERFACE_MODE_RGMII &&
> +		    state->interface !=3D PHY_INTERFACE_MODE_TRGMII)
> +			return;
> +
> +		if (priv->p6_interface =3D=3D state->interface)
> +			break;
> +		/* Setup TX circuit incluing relevant PAD and driving */
> +		mt7530_pad_clk_setup(ds, state->interface);
> +
> +		if (priv->id =3D=3D ID_MT7530) {
> +			/* Setup RX circuit, relevant PAD and driving on the
> +			 * host which must be placed after the setup on the
> +			 * device side is all finished.
> +			 */
> +			mt7623_pad_clk_setup(ds);
> +		}
> +		priv->p6_interface =3D state->interface;
> +		break;
> +	default:
> +		dev_err(ds->dev, "%s: unsupported port: %i\n", __func__, port);
> +		return;
> +	}

	if (phylink_autoneg_inband(mode)) {
		dev_err(ds->dev, "%s: in-band negotiation unsupported\n",
			__func__);
		return;
	}

or similar, since you don't support inband AN in this code path.

> +
> +	mcr_cur =3D mt7530_read(priv, MT7530_PMCR_P(port));
> +	mcr_new =3D mcr_cur;
> +	mcr_new &=3D ~(PMCR_FORCE_SPEED_1000 | PMCR_FORCE_SPEED_100 |
> +		     PMCR_FORCE_FDX | PMCR_TX_FC_EN | PMCR_RX_FC_EN);
> +	mcr_new |=3D PMCR_IFG_XMIT(1) | PMCR_MAC_MODE | PMCR_BACKOFF_EN |
> +		   PMCR_BACKPR_EN | PMCR_FORCE_MODE | PMCR_FORCE_LNK;
> +
> +	switch (state->speed) {
> +	case SPEED_1000:
> +		mcr_new |=3D PMCR_FORCE_SPEED_1000;
> +		break;
> +	case SPEED_100:
> +		mcr_new |=3D PMCR_FORCE_SPEED_100;
> +		break;
> +	}
> +	if (state->duplex =3D=3D DUPLEX_FULL) {
> +		mcr_new |=3D PMCR_FORCE_FDX;
> +		if (state->pause & MLO_PAUSE_TX)
> +			mcr_new |=3D PMCR_TX_FC_EN;
> +		if (state->pause & MLO_PAUSE_RX)
> +			mcr_new |=3D PMCR_RX_FC_EN;
> +	}
> +
> +	if (mcr_new !=3D mcr_cur)
> +		mt7530_write(priv, MT7530_PMCR_P(port), mcr_new);
> +}
> +
> +static void mt7530_phylink_mac_link_down(struct dsa_switch *ds, int port,
> +					 unsigned int mode,
> +					 phy_interface_t interface)
> +{
> +	struct mt7530_priv *priv =3D ds->priv;
> +
> +	mt7530_port_set_status(priv, port, 0);
> +}
> +
> +static void mt7530_phylink_mac_link_up(struct dsa_switch *ds, int port,
> +				       unsigned int mode,
> +				       phy_interface_t interface,
> +				       struct phy_device *phydev)
> +{
> +	struct mt7530_priv *priv =3D ds->priv;
> +
> +	mt7530_port_set_status(priv, port, 1);
> +}
> +
> +static void mt7530_phylink_validate(struct dsa_switch *ds, int port,
> +				    unsigned long *supported,
> +				    struct phylink_link_state *state)
> +{
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(mask) =3D { 0, };
> +
> +	switch (port) {
> +	case 0: /* Internal phy */
> +	case 1:
> +	case 2:
> +	case 3:
> +	case 4:
> +		if (state->interface !=3D PHY_INTERFACE_MODE_NA &&
> +		    state->interface !=3D PHY_INTERFACE_MODE_GMII)
> +			goto unsupported;
> +		break;
> +	/* case 5: Port 5 not supported! */
> +	case 6: /* 1st cpu port */
> +		if (state->interface !=3D PHY_INTERFACE_MODE_NA &&
> +		    state->interface !=3D PHY_INTERFACE_MODE_RGMII &&
> +		    state->interface !=3D PHY_INTERFACE_MODE_TRGMII)
> +			goto unsupported;
> +		break;
> +	default:
> +		linkmode_zero(supported);
> +		dev_err(ds->dev, "%s: unsupported port: %i\n", __func__, port);

You could reorder this as:

	default:
		dev_err(ds->dev, "%s: unsupported port: %i\n", __func__, port);
	unsupported:
		linkmode_zero(supported);

and save having the "unsupported" at the end of the function.  Not sure
what DaveM would think of it though.


-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
