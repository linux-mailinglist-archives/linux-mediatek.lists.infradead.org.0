Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6361655BC5
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 00:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mUQxOG37q/SYo4YXHjEcGqiG/dBJbAAN2ciQjrZQiE=; b=HBJbA70BOpgIct
	Udgm+LPWmmOX7xCAmfp8uS8fN6GVS+A/tJbQighm13BpRYbUQhArmMU7cX9fmaUFUhfWiZLVxyMxf
	vyCgieYMCU3f2ljB5pUm1inP2FeVEWiNJuvDbEIDS9RPiuh2pN1jex4CoMUNrT7jwJwoxafCWIf6H
	rhxVlxvY3V9PuQVteuClrQ6MryJAZGguX4+jSsRsrOWwXRAWht3BKT0EBpfM811dwtuGcmgnii/2t
	pmxN6Oi9/Z2nk2+xo663WEVOwyZm7tdax1dCNYM8qaQsjEJHtUhGMq54GOJ+e3iIUf286MqFFUgC8
	EWqR66wpbxDlqFlyrNRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuON-0001yy-HL; Tue, 25 Jun 2019 22:58:23 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuOJ-0001x0-DE
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 22:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pg9IVgNwLl4tz4wfLPgScqnihh+uJOVWrJ8P3K+8lzE=; b=xFWVrJakND6h6O1JmHts5CoZJ
 5syu+rWsq3AlEY5AuAvQ0XfkAqorgw5yCHq5edf0gHYHhFgSQnT79Chlq7i91bS+f7QIWKmleBP1q
 47Sx6HxM61TBk7wezfmruYlmKYrGT5oTDYZEuDmCpcoBLP63jTKrWdtkbmTzCglvKyRmJevjYAjhz
 cD4kWmmwGoM9yzKG4SSygorIdtCaxr4P4ZZXP7mypOL5AdoX9wcoNeO93KoaLvvFs3qiFP8m31cVQ
 y4dslSdymncnZ/9ZaKZQFhteDeJL5NTiPVMHDnwvglKBMguJ+PqLDVWBvG2d37Fqz6bbUnfx84/Xq
 wOXxWVbjQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59020)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfuO3-00011Y-Ps; Tue, 25 Jun 2019 23:58:04 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfuNz-0007bd-GK; Tue, 25 Jun 2019 23:57:59 +0100
Date: Tue, 25 Jun 2019 23:57:59 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190625225759.zztqgnwtk4v7milp@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
 <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
 <CA+h21hqK0VMtHpZ6eka9ESuMhsFTw2mx+c0GYmxq4_G_YmiVpg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hqK0VMtHpZ6eka9ESuMhsFTw2mx+c0GYmxq4_G_YmiVpg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_155819_704230_462C323C 
X-CRM114-Status: GOOD (  35.23  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 frank-w@public-files.de, netdev <netdev@vger.kernel.org>,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 01:14:59AM +0300, Vladimir Oltean wrote:
> On Wed, 26 Jun 2019 at 00:53, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, Jun 25, 2019 at 11:24:01PM +0300, Vladimir Oltean wrote:
> > > Hi Russell,
> > >
> > > On 6/24/19 6:39 PM, Russell King - ARM Linux admin wrote:
> > > > This should be removed - state->link is not for use in mac_config.
> > > > Even in fixed mode, the link can be brought up/down by means of a
> > > > gpio, and this should be dealt with via the mac_link_* functions.
> > > >
> > >
> > > What do you mean exactly that state->link is not for use, is that true in
> > > general?
> >
> > Yes.  mac_config() should not touch it; it is not always in a defined
> > state.  For example, if you set modes via ethtool (the
> > ethtool_ksettings_set API) then state->link will probably contain
> > zero irrespective of the true link state.
> >
> 
> Experimentally, state->link is zero at the same time as state->speed
> is -1, so just ignoring !state->link made sense. This is not in-band
> AN. What is your suggestion? Should I proceed to try and configure the
> MAC for SPEED_UNKNOWN?

What would you have done with a PHY when the link is down, what speed
would you have configured in the phylib adjust_link callback?  phylib
also sets SPEED_UNKNOWN/DUPLEX_UNKNOWN when the link is down.

What we do in Marvell drivers is set to the lowest speed (10M) in such
cases, which is fine as the MAC supports 10M.

It wouldn't be appropriate for phylink to force something on MAC
drivers, it's easier if the MAC just defaults SPEED_UNKNOWN to something
itself.

> 
> > It exists in this structure because it was convenient to just use one
> > structure to store all the link information in various parts of the
> > code, and when requesting the negotiated in-band MAC configuration.
> >
> > I've come to the conclusion that that decision was a mistake, based
> > on patches such as the above mistakenly thinking that everything in
> > the state structure is fair game.  I've since updated the docs to
> > explicitly spell it out, but I'm also looking at the feasibility of
> > changing the mac_config() interface entirely - splitting it into two
> > (mac_config_fixed() and mac_config_inband()) and passing only the
> > appropriate parameters to each.
> >
> > However, having looked at that, I think such a change will make some
> > MAC drivers quite a bit more complicated - having all the config
> > steps in one method appears to make the configuration of MAC drivers
> > easier (eg, mvneta, mvpp2.)
> >
> > > In drivers/net/dsa/sja1105/sja1105_main.c, if I remove the "if
> > > (!state->link)" guard, I see PHYLINK calls with a SPEED_UNKNOWN argument for
> > > ports that are BR_STATE_DISABLED. Is that normal?
> >
> > This looks like another driver which has been converted to phylink
> > without my review; I certainly wasn't aware of it.  It gets a few
> > things wrong, such as:
> >
> > 1) not checking state->interface in the validate callback - so it
> >    is basically saying that it can support any PHY interface mode
> >    that the kernel happens to support.
> >
> 
> Partially true. It does check the DT bindings for supported MII modes
> in sja1105_init_mii_settings (for fundamental reasons... the switch
> expects an 'all-in-one' configuration buffer with the operating modes
> of all MACs - don't ask me to delay the uploading of this static
> config until all ports collected their interface_mode from phylink via
> the mac_config callback - it's a deadlock).

Ok, so you need to reject interface modes that are not compatible
with the currently configured mode in the validate() callback, but
please keep PHY_INTERFACE_MODE_NA reporting back the capabilities.
(this is now documented.)

> It is a gigabit switch with MII/RMII/RGMII MACs - I have never seen
> any PHY wired for these modes that can change system interface type.

It is unlikely that MII/RMII/RGMII will switch modes, but in terms of
correct implementation, sticking to the way the function is expected
to behave means that I don't get surprises when changing phylink layer
in the future.

> 
> > 2) if phylink is configured to use in-band, then state->speed is
> >    undefined; this driver will fail.  (If folk don't want to support
> >    that, we ought to have a way to tell phylink to reject anything
> >    that attempts to set it to in-band mode!)
> >
> 
> Ok.
> 
> > 3) it doesn't implement phylink_mac_link_state DSA ops, so it doesn't
> >    support SGMII or 802.3z phy interface modes (see 1).
> >
> 
> No, it doesn't.
> Some odd switch in this device family supports SGMII on 1 of its
> ports, however I haven't put my hands on it.
> When I do I'll add checks for strange scenarios, like connecting it to
> an Aquantia PHY that can switch between SGMII and USXGMII (although
> why would anyone pair a 10G capable PHY to a 1G capable MAC...)

It's unlikely that it would switch between SGMII and USXGMII
dynamically, as USXGMII supports speeds from 10G down to 10M.

Where interface mode switching tends to be used is with modes such
as 10GBASE-R, which doesn't support anything except 10G.  In order
for the PHY to operate at slower speeds, it has a few options:

1) perform rate adaption.
2) dynamically switch interface type to an interface type that
   supports the desired speed.
3) just not support slower speeds.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
