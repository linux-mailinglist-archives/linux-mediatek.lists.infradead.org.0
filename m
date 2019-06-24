Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CCC510D4
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 17:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGem2ML8PbAEO7uOYFg09YutwM1asWAed8mL9uXpW3I=; b=cWL7UcVQJcQv3B
	uMBZc/VvalNIwoEcemZBoFWC6pk8wetKkK3wjK82dpkZ1NILMNUNtYhFSMBRBK7xtQjQzANuYWrI0
	/QOikkFQwUBLLm+KyJwD7Jk0zGZ9HLqtyylkSOjj8CCAYJxBcn1LziBaf/JYDBCHjigqWskic9avF
	xymdxYX4eYoy9HsnNSggXTDyg2LKy/Kd9KSAezJrmqL3Q4PrFPbagUQdnTTlTx8V0Ph7+4Yba5s8Z
	rPhnATRySp9x6sauKyU/oH4LV6uLnf2SSrV15rOmc2qiXKDHLotS6XwY083jMulMsrpgp7qKw/VA0
	HB/NazAbk+xM7tkULaew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfR4o-0002Np-8G; Mon, 24 Jun 2019 15:40:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfR4j-0001kX-Hj
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 15:40:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BtLJYS2pbo8gfBfK3+LW+FXb5v0L7I5asBNqbGWt/ss=; b=NbqKe19XKOrUqUMQYY6OHxVFI
 lXReB/NBf2iwMArBO9z8xRF1R2HLsIobpo6zlyBoSKDRtM2XXbHE+gFHJs1pLPOq+m4/LCgxqaU/e
 W+1HjvaPJbkedxXAI+plW4Hu63Lg1XC5iGrn40pT+ZeHbxTrPghVWs+2KYVmYu8mMVA5Ygq1cFepQ
 zYO+6FqXUCQ70SvCjKZ0Cd4HUDZcHBMHMqfeU94kNK8AoIyntrF8Lche09yfw0lJwM+OkDjGfm+q1
 nQma/qQ4AQArsvTowQXWbbB5VoRrl/FFj2fqiXZv3d+1aQ34h9MuVrNWDyaoeTUXxfTMn2nMNaXaK
 vynDdG3VA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59046)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfR4U-0000b6-Lo; Mon, 24 Jun 2019 16:39:55 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfR4Q-0006Qa-Nx; Mon, 24 Jun 2019 16:39:50 +0100
Date: Mon, 24 Jun 2019 16:39:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624145251.4849-2-opensource@vdorst.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_084010_214661_2620DCC1 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 vivien.didelot@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 24, 2019 at 04:52:47PM +0200, Ren=E9 van Dorst wrote:
> Convert mt7530 to PHYLINK API
> =

> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>
> ---
>  drivers/net/dsa/mt7530.c | 237 +++++++++++++++++++++++++++++----------
>  drivers/net/dsa/mt7530.h |   9 ++
>  2 files changed, 187 insertions(+), 59 deletions(-)
> =

> diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
> index 3181e95586d6..9c5e4dd00826 100644
> --- a/drivers/net/dsa/mt7530.c
> +++ b/drivers/net/dsa/mt7530.c
> @@ -13,7 +13,7 @@
>  #include <linux/of_mdio.h>
>  #include <linux/of_net.h>
>  #include <linux/of_platform.h>
> -#include <linux/phy.h>
> +#include <linux/phylink.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> @@ -633,63 +633,6 @@ mt7530_get_sset_count(struct dsa_switch *ds, int por=
t, int sset)
>  	return ARRAY_SIZE(mt7530_mib);
>  }
>  =

> -static void mt7530_adjust_link(struct dsa_switch *ds, int port,
> -			       struct phy_device *phydev)
> -{
> -	struct mt7530_priv *priv =3D ds->priv;
> -
> -	if (phy_is_pseudo_fixed_link(phydev)) {
> -		dev_dbg(priv->dev, "phy-mode for master device =3D %x\n",
> -			phydev->interface);
> -
> -		/* Setup TX circuit incluing relevant PAD and driving */
> -		mt7530_pad_clk_setup(ds, phydev->interface);
> -
> -		if (priv->id =3D=3D ID_MT7530) {
> -			/* Setup RX circuit, relevant PAD and driving on the
> -			 * host which must be placed after the setup on the
> -			 * device side is all finished.
> -			 */
> -			mt7623_pad_clk_setup(ds);
> -		}
> -	} else {
> -		u16 lcl_adv =3D 0, rmt_adv =3D 0;
> -		u8 flowctrl;
> -		u32 mcr =3D PMCR_USERP_LINK | PMCR_FORCE_MODE;
> -
> -		switch (phydev->speed) {
> -		case SPEED_1000:
> -			mcr |=3D PMCR_FORCE_SPEED_1000;
> -			break;
> -		case SPEED_100:
> -			mcr |=3D PMCR_FORCE_SPEED_100;
> -			break;
> -		}
> -
> -		if (phydev->link)
> -			mcr |=3D PMCR_FORCE_LNK;
> -
> -		if (phydev->duplex) {
> -			mcr |=3D PMCR_FORCE_FDX;
> -
> -			if (phydev->pause)
> -				rmt_adv =3D LPA_PAUSE_CAP;
> -			if (phydev->asym_pause)
> -				rmt_adv |=3D LPA_PAUSE_ASYM;
> -
> -			lcl_adv =3D linkmode_adv_to_lcl_adv_t(
> -				phydev->advertising);
> -			flowctrl =3D mii_resolve_flowctrl_fdx(lcl_adv, rmt_adv);
> -
> -			if (flowctrl & FLOW_CTRL_TX)
> -				mcr |=3D PMCR_TX_FC_EN;
> -			if (flowctrl & FLOW_CTRL_RX)
> -				mcr |=3D PMCR_RX_FC_EN;
> -		}
> -		mt7530_write(priv, MT7530_PMCR_P(port), mcr);
> -	}
> -}
> -
>  static int
>  mt7530_cpu_port_enable(struct mt7530_priv *priv,
>  		       int port)
> @@ -1323,6 +1266,178 @@ mt7530_setup(struct dsa_switch *ds)
>  	return 0;
>  }
>  =

> +static void mt7530_phylink_mac_config(struct dsa_switch *ds, int port,
> +				      unsigned int mode,
> +				      const struct phylink_link_state *state)
> +{
> +	struct mt7530_priv *priv =3D ds->priv;
> +	u32 mcr =3D PMCR_IFG_XMIT(1) | PMCR_MAC_MODE | PMCR_BACKOFF_EN |
> +		  PMCR_BACKPR_EN | PMCR_TX_EN | PMCR_RX_EN;
> +
> +	switch (port) {
> +	case 0: /* Internal phy */
> +	case 1:
> +	case 2:
> +	case 3:
> +	case 4:
> +		if (state->interface !=3D PHY_INTERFACE_MODE_GMII)
> +			goto unsupported;
> +		break;
> +	/* case 5: Port 5 is not supported! */
> +	case 6: /* 1st cpu port */
> +		if (state->interface !=3D PHY_INTERFACE_MODE_RGMII &&
> +		    state->interface !=3D PHY_INTERFACE_MODE_TRGMII)
> +			goto unsupported;
> +
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
> +		break;
> +	default:
> +		dev_err(ds->dev, "%s: unsupported port: %i\n", __func__, port);
> +		return;
> +	}
> +
> +	if (!state->an_enabled || mode =3D=3D MLO_AN_FIXED) {
> +		mcr |=3D PMCR_FORCE_MODE;
> +
> +		if (state->speed =3D=3D SPEED_1000)
> +			mcr |=3D PMCR_FORCE_SPEED_1000;
> +		if (state->speed =3D=3D SPEED_100)
> +			mcr |=3D PMCR_FORCE_SPEED_100;
> +		if (state->duplex =3D=3D DUPLEX_FULL)
> +			mcr |=3D PMCR_FORCE_FDX;
> +		if (state->link || mode =3D=3D MLO_AN_FIXED)
> +			mcr |=3D PMCR_FORCE_LNK;

This should be removed - state->link is not for use in mac_config.
Even in fixed mode, the link can be brought up/down by means of a
gpio, and this should be dealt with via the mac_link_* functions.

> +		if (state->pause || phylink_test(state->advertising, Pause))
> +			mcr |=3D PMCR_TX_FC_EN | PMCR_RX_FC_EN;
> +		if (state->pause & MLO_PAUSE_TX)
> +			mcr |=3D PMCR_TX_FC_EN;
> +		if (state->pause & MLO_PAUSE_RX)
> +			mcr |=3D PMCR_RX_FC_EN;

This is clearly wrong - if any bit in state->pause is set, then we
end up with both PMCR_TX_FC_EN | PMCR_RX_FC_EN set.  If we have Pause
Pause set in the advertising mask, then both are set.  This doesn't
seem right - are these bits setting the advertisement, or are they
telling the MAC to use flow control?

> +	}
> +
> +	mt7530_write(priv, MT7530_PMCR_P(port), mcr);
> +
> +	return;
> +
> +unsupported:
> +	dev_err(ds->dev, "%s: P%d: Unsupported phy_interface mode: %d (%s)\n",
> +		__func__, port, state->interface, phy_modes(state->interface));
> +}
> +
> +static void mt7530_phylink_mac_link_down(struct dsa_switch *ds, int port,
> +					 unsigned int mode,
> +					 phy_interface_t interface)
> +{
> +	/* Do nothing */
> +}
> +
> +static void mt7530_phylink_mac_link_up(struct dsa_switch *ds, int port,
> +				       unsigned int mode,
> +				       phy_interface_t interface,
> +				       struct phy_device *phydev)
> +{
> +	/* Do nothing */
> +}

These two are where you should be forcing the link up or down if
required (basically, inband modes should let the link come up/down
irrespective of these functions, otherwise it should be forced.)

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
> +		if (state->interface !=3D PHY_INTERFACE_MODE_RGMII &&
> +		    state->interface !=3D PHY_INTERFACE_MODE_TRGMII)

PHY_INTERFACE_MODE_NA ?

> +			goto unsupported;
> +		break;
> +	default:
> +		linkmode_zero(supported);
> +		dev_err(ds->dev, "%s: unsupported port: %i\n", __func__, port);
> +		return;
> +	}
> +
> +	phylink_set(mask, Autoneg);
> +	phylink_set(mask, Pause);
> +	phylink_set(mask, Asym_Pause);
> +	phylink_set(mask, MII);
> +
> +	phylink_set(mask, 10baseT_Half);
> +	phylink_set(mask, 10baseT_Full);
> +	phylink_set(mask, 100baseT_Half);
> +	phylink_set(mask, 100baseT_Full);
> +	phylink_set(mask, 1000baseT_Full);
> +	phylink_set(mask, 1000baseT_Half);

You seem to be missing phylink_set_port_modes() here.

> +
> +	linkmode_and(supported, supported, mask);
> +	linkmode_and(state->advertising, state->advertising, mask);
> +	return;
> +
> +unsupported:
> +	linkmode_zero(supported);
> +	dev_err(ds->dev, "%s: unsupported interface mode: [0x%x] %s\n",
> +		__func__, state->interface, phy_modes(state->interface));

Not a good idea to print this at error level; sometimes we just probe
for support.

Eg, think about a SFP cage, and a SFP is plugged in that uses a PHY
interface mode that the MAC can't support - we detect that by the
validation failing, and printing a more meaningful message in phylink
itself.

> +}
> +
> +static int
> +mt7530_phylink_mac_link_state(struct dsa_switch *ds, int port,
> +			      struct phylink_link_state *state)
> +{
> +	struct mt7530_priv *priv =3D ds->priv;
> +	u32 pmsr;
> +
> +	if (port < 0 || port >=3D MT7530_NUM_PORTS)
> +		return -EINVAL;
> +
> +	pmsr =3D mt7530_read(priv, MT7530_PMSR_P(port));
> +
> +	state->link =3D (pmsr & PMSR_LINK);
> +	state->an_complete =3D state->link;
> +	state->duplex =3D (pmsr & PMSR_DPX) >> 1;
> +
> +	switch (pmsr & (PMSR_SPEED_1000 | PMSR_SPEED_100)) {
> +	case 0:
> +		state->speed =3D SPEED_10;
> +		break;
> +	case PMSR_SPEED_100:
> +		state->speed =3D SPEED_100;
> +		break;
> +	case PMSR_SPEED_1000:
> +		state->speed =3D SPEED_1000;
> +		break;
> +	default:
> +		state->speed =3D SPEED_UNKNOWN;
> +		break;
> +	}
> +
> +	state->pause =3D 0;
> +	if (pmsr & PMSR_RX_FC)
> +		state->pause |=3D MLO_PAUSE_RX;
> +	if (pmsr & PMSR_TX_FC)
> +		state->pause |=3D MLO_PAUSE_TX;
> +
> +	return 1;
> +}
> +
>  static const struct dsa_switch_ops mt7530_switch_ops =3D {
>  	.get_tag_protocol	=3D mtk_get_tag_protocol,
>  	.setup			=3D mt7530_setup,
> @@ -1331,7 +1446,6 @@ static const struct dsa_switch_ops mt7530_switch_op=
s =3D {
>  	.phy_write		=3D mt7530_phy_write,
>  	.get_ethtool_stats	=3D mt7530_get_ethtool_stats,
>  	.get_sset_count		=3D mt7530_get_sset_count,
> -	.adjust_link		=3D mt7530_adjust_link,
>  	.port_enable		=3D mt7530_port_enable,
>  	.port_disable		=3D mt7530_port_disable,
>  	.port_stp_state_set	=3D mt7530_stp_state_set,
> @@ -1344,6 +1458,11 @@ static const struct dsa_switch_ops mt7530_switch_o=
ps =3D {
>  	.port_vlan_prepare	=3D mt7530_port_vlan_prepare,
>  	.port_vlan_add		=3D mt7530_port_vlan_add,
>  	.port_vlan_del		=3D mt7530_port_vlan_del,
> +	.phylink_validate	=3D mt7530_phylink_validate,
> +	.phylink_mac_link_state =3D mt7530_phylink_mac_link_state,
> +	.phylink_mac_config	=3D mt7530_phylink_mac_config,
> +	.phylink_mac_link_down	=3D mt7530_phylink_mac_link_down,
> +	.phylink_mac_link_up	=3D mt7530_phylink_mac_link_up,
>  };
>  =

>  static const struct of_device_id mt7530_of_match[] =3D {
> diff --git a/drivers/net/dsa/mt7530.h b/drivers/net/dsa/mt7530.h
> index bfac90f48102..41d9a132ac70 100644
> --- a/drivers/net/dsa/mt7530.h
> +++ b/drivers/net/dsa/mt7530.h
> @@ -198,6 +198,7 @@ enum mt7530_vlan_port_attr {
>  #define  PMCR_FORCE_SPEED_100		BIT(2)
>  #define  PMCR_FORCE_FDX			BIT(1)
>  #define  PMCR_FORCE_LNK			BIT(0)
> +#define  PMCR_FORCE_LNK_DOWN		PMCR_FORCE_MODE
>  #define  PMCR_COMMON_LINK		(PMCR_IFG_XMIT(1) | PMCR_MAC_MODE | \
>  					 PMCR_BACKOFF_EN | PMCR_BACKPR_EN | \
>  					 PMCR_TX_EN | PMCR_RX_EN | \
> @@ -218,6 +219,14 @@ enum mt7530_vlan_port_attr {
>  					 PMCR_TX_FC_EN | PMCR_RX_FC_EN)
>  =

>  #define MT7530_PMSR_P(x)		(0x3008 + (x) * 0x100)
> +#define  PMSR_EEE1G			BIT(7)
> +#define  PMSR_EEE100M			BIT(6)
> +#define  PMSR_RX_FC			BIT(5)
> +#define  PMSR_TX_FC			BIT(4)
> +#define  PMSR_SPEED_1000		BIT(3)
> +#define  PMSR_SPEED_100			BIT(2)
> +#define  PMSR_DPX			BIT(1)
> +#define  PMSR_LINK			BIT(0)
>  =

>  /* Register for MIB */
>  #define MT7530_PORT_MIB_COUNTER(x)	(0x4000 + (x) * 0x100)
> -- =

> 2.20.1
> =

> =


-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
