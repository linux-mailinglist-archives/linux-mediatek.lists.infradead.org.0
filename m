Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A2949485
	for <lists+linux-mediatek@lfdr.de>; Mon, 17 Jun 2019 23:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6JjB1gXKZ1rDRNG0LR4jEATIWzcy4JINGIz86S6E9A=; b=kKuqOPKobL+OZx
	sTQQ2+XR9fnW//6f9/x4ArMMvQ9QB61L0OmEv9mIlmrSxzvJgCA56Dns8cJ5Ac8OmVr3vjKTuM3EL
	W9fxJTdHiW/l40CiplYbyrDjgaHCmcG4s2dfIBwRQSy5WykwY+KneMagfARHCbcrtAPrt6JzoevjW
	epm7/D4VAbIbubV3jpVqlwRBpjJfzLY16hyHc6cBgWlci613gk8C2hmlrGmsG25uxsjupRaerAuft
	MLmK0XoET3cwdHPmT6UMMITd49PudfXF/O9VxhPOAAQ15VTqTEuoAyhoV4uWOs/hjwWuou2h94/Cs
	WRAUSp0dd8jRRQSktnxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczQe-0006AJ-KF; Mon, 17 Jun 2019 21:44:40 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczQb-00069x-Jm
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 21:44:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8hWxnlgCDerBlIvj+w63UCSLHnF0C+AVIm4FEITlEIE=; b=CD+JLJVLfj9MvebafqYPRCUL0e
 NRBW3VdKFZZwUmfVsLLrE1NtmlpLEZqIRYSq/tSuVvsGifvEkubpdhniN/Rkzpvmw3xbQFs7lCudL
 511xtxJO1FTF5q4F0dGMnHaMaMat/Su2q66OuBojyAY9c9Q8l/ZcrwO8VJRk27uWJOuU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hczQS-0003z7-Lo; Mon, 17 Jun 2019 23:44:28 +0200
Date: Mon, 17 Jun 2019 23:44:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
Message-ID: <20190617214428.GO17551@lunn.ch>
References: <20190616182010.18778-1-opensource@vdorst.com>
 <20190617140223.GC25211@lunn.ch>
 <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_144437_807796_D9C419AB 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, linux-mediatek@lists.infradead.org,
 john@phrozen.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 09:33:12PM +0000, Ren=E9 van Dorst wrote:
> Quoting Andrew Lunn <andrew@lunn.ch>:
> =

> >On Sun, Jun 16, 2019 at 08:20:08PM +0200, Ren=E9 van Dorst wrote:
> >>Like many other mediatek SOCs, the MT7621 SOC and the internal MT7530
> >>switch both
> >>supports TRGMII mode. MT7621 TRGMII speed is 1200MBit.
> >
> >Hi Ren=E9
> >
> =

> Hi Andrew,
> =

> >Is TRGMII used only between the SoC and the Switch? Or does external
> >ports of the switch also support 1200Mbit/s? If external ports support
> >this, what does ethtool show for Speed?
> =

> Only the first GMAC of the SOC and port 6 of the switch supports this mod=
e.
> The switch can be internal in the SOC but also a separate chip.
> =

> PHYLINK and ethertool reports the link as 1Gbit.
> The link is fixed-link with speed =3D 1000.
> =

> dmesg output with unposted PHYLINK patches:
> [    5.236763] mt7530 mdio-bus:1f: configuring for fixed/trgmii link mode
> [    5.249813] mt7530 mdio-bus:1f: phylink_mac_config:
> mode=3Dfixed/trgmii/1Gbps/Full adv=3D00,00000000,00000220 pause=3D12 link=
=3D1 an=3D1
> [    6.389435] mtk_soc_eth 1e100000.ethernet eth0: phylink_mac_config:
> mode=3Dfixed/trgmii/1Gbps/Full adv=3D00,00000000,00000220 pause=3D12 link=
=3D1 an=3D1

With PHYLINK, you can probably set the fixed link to the true 1.2Gbps.

> # ethtool eth0
> Settings for eth0:
>          Supported ports: [ MII ]
>          Supported link modes:   1000baseT/Full
>          Supported pause frame use: No
>          Supports auto-negotiation: No
>          Supported FEC modes: Not reported
>          Advertised link modes:  1000baseT/Full
>          Advertised pause frame use: No
>          Advertised auto-negotiation: No
>          Advertised FEC modes: Not reported
>          Speed: 1000Mb/s

We could consider adding 1200BaseT/Full?

   Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
