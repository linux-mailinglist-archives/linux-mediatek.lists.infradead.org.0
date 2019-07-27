Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A2577B3E
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 20:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Os+RJcaXOoe2PHVxbJ9iqQFkeOt0y+ayL2HUYAyrSLg=; b=b+lLQd+OLtg9T5
	7zX91nWC1tzSwsRegYJY053llEb4YPBy+fTI+nNizSjfG1HpBblQ4tLFAmlFknqaiqbN7od2z+dk+
	QE+HVRcOTJy9hfc1gw44t++pTY9CQSOb3ujlVJkU9EvfYjz04MLl79U/NuHymDScOvhg5Rdeieznp
	BaFynHe35nb9FQ73xILnGTS00XJNFqvHY6rrnP3TmD/3lNR6t/fMI9xh0K6Xn7wbHshdZDqScs3bT
	pvcYm7DtuNywBUI7NWbGhVtPbXlvWCvmv9bV6egyYwAjs1DmUevEuUnMBNZ3IXMXSzrVTQn+3qCfS
	JvZnCwRg0luTEZ2PsQXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRp0-00073d-TW; Sat, 27 Jul 2019 18:53:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRox-00073D-HY
 for linux-mediatek@lists.infradead.org; Sat, 27 Jul 2019 18:53:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tCU2ppKHV6sA2b7cO6l34hZqRuLxFTojKt0dzqeRKK0=; b=tV1gOAWv1SEkStkKbvulKt7jI
 rdboBQTjlfEHmeo1vGK+skFfl1GllI/iMJgCI/f/k9P7s4X33OY2KFqy3DKQZTA+q6rM4WkpPIWg+
 8x9eYFlaEsZ91rD3a2OM/E9gMp/ZbP/+qCgk7Rnm9mIXUoGnYeIrwgvYllIm9jD+sG6gdO9d3ndJr
 Conp61ZyA3lwhimiTTa60elRQF3fYqOCTODqWjM4Dorsb9lELM+A1ekXiKSN1payuam9SksJyKqaK
 OZ+gTfnips+j4UB4pA3q8yVn1VDzmiDXwEfUlYkG7IcncbxCGIxNz2E4e7VYQptcMQ5GlFWFxQ+1D
 FbPZslpUw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49416)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hrRok-000565-CC; Sat, 27 Jul 2019 19:53:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hrRoh-0007yD-S7; Sat, 27 Jul 2019 19:53:15 +0100
Date: Sat, 27 Jul 2019 19:53:15 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next 3/3] net: dsa: mt7530: Add support for port 5
Message-ID: <20190727185315.GU1330@shell.armlinux.org.uk>
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-4-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724192549.24615-4-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_115331_746457_FEEC4519 
X-CRM114-Status: GOOD (  10.82  )
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

On Wed, Jul 24, 2019 at 09:25:49PM +0200, Ren=E9 van Dorst wrote:
> Adding support for port 5.
> =

> Port 5 can muxed/interface to:
> - internal 5th GMAC of the switch; can be used as 2nd CPU port or as
>   extra port with an external phy for a 6th ethernet port.
> - internal PHY of port 0 or 4; Used in most applications so that port 0
>   or 4 is the WAN port and interfaces with the 2nd GMAC of the SOC.

...

> @@ -1381,15 +1506,19 @@ static void mt7530_phylink_validate(struct dsa_sw=
itch *ds, int port,
>  	phylink_set_port_modes(mask);
>  	phylink_set(mask, Autoneg);
>  =

> -	if (state->interface !=3D PHY_INTERFACE_MODE_TRGMII) {
> +	if (state->interface =3D=3D PHY_INTERFACE_MODE_TRGMII) {
> +		phylink_set(mask, 1000baseT_Full);
> +	} else {
>  		phylink_set(mask, 10baseT_Half);
>  		phylink_set(mask, 10baseT_Full);
>  		phylink_set(mask, 100baseT_Half);
>  		phylink_set(mask, 100baseT_Full);
> -		phylink_set(mask, 1000baseT_Half);
> -	}
>  =

> -	phylink_set(mask, 1000baseT_Full);
> +		if (state->interface !=3D PHY_INTERFACE_MODE_MII) {
> +			phylink_set(mask, 1000baseT_Half);
> +			phylink_set(mask, 1000baseT_Full);
> +		}
> +	}

As port 5 could use an external PHY, and it supports gigabit speeds,
consider that the PHY may provide not only copper but also fiber
connectivity, so port 5 should probably also have 1000baseX modes
too, which would allow such a PHY to bridge the switch to fiber.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
