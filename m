Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5345956382
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 09:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5HhVWu3jfUr86iyflgRCbGXjpKHMSd+OUzYSFjmjsg=; b=MrU4AWdGMODMYR
	HuuM8Uot60WT8yRd6jk8NKem960m9xf0wWkgYJD4O2eH7SRNyA1K5QQmS9Rnf+O/6hiG2ZcrGcQYK
	L6jsSieNBV4OMG4dchm8ZRHVZPgdEWnJH9nNAloRjo/kXOTn38nkPLa3CKq42xMJFr38G791PXzzh
	TLBOqI7VzjeQ14vp1rAYNfHApaQLjtUpSnb2Kp6RqLeucesQQcd30chNnDfKUUjOGBUpcNmC2gYEr
	bewr7Q49TmEfONXDwgBZexSv2Wvwr4C2OXOGZAruMsQMCO9myu9lMIwKs1yM8MxKAtZeMPqEyjTcF
	UCZcvWz25gfNbfDbvPVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2ZW-0000rT-DT; Wed, 26 Jun 2019 07:42:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2ZR-0000qP-Ii
 for linux-mediatek@lists.infradead.org; Wed, 26 Jun 2019 07:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kFF7/zlYhqfuF1vNeDVWQNpwdjqMkmPcLrpqF+56XEs=; b=KqfH6praydlaiMsjpxMIPrXvP
 JdYwlkMWNn8lAKa3AAsBe9Nddmne1dJ7PxjLbd0h8QzG6gOT3wB8+iA79B16A7cRhTQNbVve2Na3c
 zA/CxIuG0ZEein7OnKZ4aLo/OtVNIzeERw5oy5kdAmt6UNTYDVW+VDsU5Lk1OQ0mpJXPK8xhfLEDr
 yI3DQTE/UOUGcam14qQwofYUjmr0dZTTFhs3lj2AY3L30Cqz+y4XeMf1z9wq5CeJ+EiQ91AKJ+9m9
 QdXziXps5kRHXBoJcQrReAHbRAjuA2YmGDhpGzSCOslUgzeVtgBxJwRbRijfCUiyeGFxxVq/h8Zzz
 l84qEprWA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59112)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hg2Z9-0003Un-N9; Wed, 26 Jun 2019 08:42:03 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hg2Z5-0007wu-6Q; Wed, 26 Jun 2019 08:41:59 +0100
Date: Wed, 26 Jun 2019 08:41:59 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190626074158.odyrgzie7sv4ovtn@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
 <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
 <CA+h21hqK0VMtHpZ6eka9ESuMhsFTw2mx+c0GYmxq4_G_YmiVpg@mail.gmail.com>
 <20190625225759.zztqgnwtk4v7milp@shell.armlinux.org.uk>
 <CA+h21hq_w8-96ehKYxcziSq1TjOjoKduZ+pB3umBfjODaKWd+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hq_w8-96ehKYxcziSq1TjOjoKduZ+pB3umBfjODaKWd+A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_004222_564971_94431480 
X-CRM114-Status: GOOD (  25.19  )
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

On Wed, Jun 26, 2019 at 02:10:27AM +0300, Vladimir Oltean wrote:
> On Wed, 26 Jun 2019 at 01:58, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Wed, Jun 26, 2019 at 01:14:59AM +0300, Vladimir Oltean wrote:
> > > On Wed, 26 Jun 2019 at 00:53, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Tue, Jun 25, 2019 at 11:24:01PM +0300, Vladimir Oltean wrote:
> > > > > Hi Russell,
> > > > >
> > > > > On 6/24/19 6:39 PM, Russell King - ARM Linux admin wrote:
> > > > > > This should be removed - state->link is not for use in mac_config.
> > > > > > Even in fixed mode, the link can be brought up/down by means of a
> > > > > > gpio, and this should be dealt with via the mac_link_* functions.
> > > > > >
> > > > >
> > > > > What do you mean exactly that state->link is not for use, is that true in
> > > > > general?
> > > >
> > > > Yes.  mac_config() should not touch it; it is not always in a defined
> > > > state.  For example, if you set modes via ethtool (the
> > > > ethtool_ksettings_set API) then state->link will probably contain
> > > > zero irrespective of the true link state.
> > > >
> > >
> > > Experimentally, state->link is zero at the same time as state->speed
> > > is -1, so just ignoring !state->link made sense. This is not in-band
> > > AN. What is your suggestion? Should I proceed to try and configure the
> > > MAC for SPEED_UNKNOWN?
> >
> > What would you have done with a PHY when the link is down, what speed
> > would you have configured in the phylib adjust_link callback?  phylib
> > also sets SPEED_UNKNOWN/DUPLEX_UNKNOWN when the link is down.
> >
> 
> With phylib, I'd make the driver ignore the speed and do nothing.
> With phylink, I'd make the core not call mac_config.
> But what happened is I saw phylink call mac_config anyway, said
> 'weird' and proceeded to ignore it as I would have for phylib.
> I'm just not understanding your position - it seems like you're
> implying there's a bug in phylink and the function call with
> MLO_AN_FIXED, state->link=0 and state->speed=-1 should not have taken
> place, which is what I wanted to confirm.

It is not a bug.  It is a request to configure the MAC, and what it's
saying is "we don't know what speed and/or duplex".

Take for instance when the network adapter is brought up initially.
The link is most likely down, but we should configure the initial MAC
operating parameters (such as the PHY interface).  Phylink makes a
mac_config() call with the speed and duplex set to UNKNOWN.

Using your theory, we shouldn't be making that call.  In which case,
MAC drivers aren't going to initially configure their interface
settings.

_That_ would be a bug.

> > It's unlikely that it would switch between SGMII and USXGMII
> > dynamically, as USXGMII supports speeds from 10G down to 10M.
> >
> > Where interface mode switching tends to be used is with modes such
> > as 10GBASE-R, which doesn't support anything except 10G.  In order
> > for the PHY to operate at slower speeds, it has a few options:
> >
> > 1) perform rate adaption.
> > 2) dynamically switch interface type to an interface type that
> >    supports the desired speed.
> > 3) just not support slower speeds.
> >
> 
> So am I reading this correctly - it kind of makes sense for gigabit
> MAC drivers to not check for the MII interface changing protocol?

Again, that's incorrect in the general case.  Gigabit includes SGMII
and 802.3z PHY protocols which need to be switched between for SFPs.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
