Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880B154E99
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 14:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyT9Ge3Gs72iZn8NpWxeOb6gMFSR5vSN4VOmIvWFPyQ=; b=qjXDF3ajrKd5Q2
	exrPzNv93hLK5TtCN2Ii1TVeMyVGwdv/zHNWQGO9vtsCKIXSvkFezGFsXx2pkhHCdUA8Xx83Sa46c
	8dnjLWxemjwfiEWxG46e58hXc0B7BdYuT5csLmIsUOktzVhYw2Lk+3uDepQPqFPdXGAQPF0x2i1UH
	B44tLVfh3vnTcRznh6UON37K9zqQBcukvBERCFvPQW2lzTeRXqnUoj3BhqxSwQ5kCgliT8H28KgQY
	7YkA4sUz1jYm1Z5uQcZ0W2hP1zf+3F4dj6MiVYGxnA7sMamFvLXk21vNxcNDZJf1ADuHQWAHmwHcl
	kPs+tR20a5FCQ6g5l8ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkMa-0003iR-Db; Tue, 25 Jun 2019 12:15:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkHq-0005bq-V7
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 12:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W62WhF17xmzfUuk1lOQSfwqt29Nh9k8JJUw3HEv31xE=; b=Vs5WDFzosl7UHr4YqGyzaMEHb
 2IffrAQPIXpvqPjY5gSh5XxB5yGZEZ+e9NySGWM4wnMO1W9Dhkm5CAqMpaQMvYZOutUqQiG2naGMy
 KhJSvJZPwMl32ZPbRcy7NcGXfiaXt66O1Rp1HlTId2cYWEzSVU2djphYPS1kx8JUl8uaPsXFjx0Mq
 3Z9yDU0PBqJVQL6QWnssO/bdi8ktsjtcl7gF74F1XvHaVHUx1Arh4pdEH9FE347ay175xrY2uoOza
 c9V6TwAMKG96YNouqg8fcMSMpXOwXX4Z3bnf2FTff4EAULM3sniNy1K3d0q8zKG7WbtzVWmWV2Ocx
 L2s9nI80A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59984)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfkHV-0006J7-H9; Tue, 25 Jun 2019 13:10:37 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfkHO-0007Dd-9r; Tue, 25 Jun 2019 13:10:30 +0100
Date: Tue, 25 Jun 2019 13:10:30 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_051059_020732_9B7C84D9 
X-CRM114-Status: GOOD (  26.79  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 vivien.didelot@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:31:58AM +0000, Ren=E9 van Dorst wrote:
> > > +            if (state->link || mode =3D=3D MLO_AN_FIXED)
> > > +                    mcr |=3D PMCR_FORCE_LNK;
> > =

> > This should be removed - state->link is not for use in mac_config.
> > Even in fixed mode, the link can be brought up/down by means of a
> > gpio, and this should be dealt with via the mac_link_* functions.
> =

> Maybe I understand it wrong, but is it the intention that in
> phylink_mac_config with modes MLO_AN_FIXED and MLO_AN_PHY the MAC is alwa=
ys
> forces into a certain speed/mode/interface. So it never auto-negotiate be=
cause
> phylink select the best configuration for you?

You are not the only one who has recently tried to make use of
state->link in mac_config(), so I'm now preparing a set of patches
to split the current mac_config() method into two separate methods:

        void (*mac_config_fixed)(struct net_device *ndev,
                                 phy_interface_t iface, int speed, int dupl=
ex,
                                 int pause);
        void (*mac_config_inband)(struct net_device *ndev,
                                  phy_interface_t iface, bool an_enabled,
                                  unsigned long *advertising, int pause);

so that it's not possible to use members that should not be accessed
in various modes.

> Also the PMCR_FORCE_LNK is only set in phylink_link_up() or can I do it h=
ere
> and do nothing phylink_link_up()?

When the link comes up/down, mac_link_up() and mac_link_down() will be
called appropriately.  In PHY mode, this is equivalent to phylink doing
this:

	if (link_changed) {
		if (phydev->link)
			mac_link_up();
		else
			mac_link_down();
	}

So the actions you would've done depending on phydev->link should be in
the mac_link_*() methods.

> Other question:
> Where does the MAC enable/disable TX and RX fits best? port_{enable,disab=
le}?
> Or only mac_config() and port_disable?

mac_link_*().

> > > +            if (state->pause || phylink_test(state->advertising, Pau=
se))
> > > +                    mcr |=3D PMCR_TX_FC_EN | PMCR_RX_FC_EN;
> > > +            if (state->pause & MLO_PAUSE_TX)
> > > +                    mcr |=3D PMCR_TX_FC_EN;
> > > +            if (state->pause & MLO_PAUSE_RX)
> > > +                    mcr |=3D PMCR_RX_FC_EN;
> > =

> > This is clearly wrong - if any bit in state->pause is set, then we
> > end up with both PMCR_TX_FC_EN | PMCR_RX_FC_EN set.  If we have Pause
> > Pause set in the advertising mask, then both are set.  This doesn't
> > seem right - are these bits setting the advertisement, or are they
> > telling the MAC to use flow control?
> =

> Last one, tell the MAC to use flow control.

So the first if() statement is incorrect, and should be removed
entirely.  You only want to enable the MAC to use flow control as a
result of the negotiation results.

> On the current driver both bits are set in a forced-link situation.
> =

> If we always forces the MAC mode I think I always set these bits and don't
> anything with the Pause modes? Is that the right way to do it?

So what happens if your link partner (e.g. switch) does not support
flow control?  What if your link partner floods such frames to all
ports?  You end up transmitting flow control frames, which could be
sent to all stations on the network... seems not a good idea.

Implementing stuff properly and not taking short-cuts is always a
good idea for inter-operability.

> > > +
> > > +static void mt7530_phylink_validate(struct dsa_switch *ds, int port,
> > > +                                unsigned long *supported,
> > > +                                struct phylink_link_state *state)
> > > +{
> > > +    __ETHTOOL_DECLARE_LINK_MODE_MASK(mask) =3D { 0, };
> > > +
> > > +    switch (port) {
> > > +    case 0: /* Internal phy */
> > > +    case 1:
> > > +    case 2:
> > > +    case 3:
> > > +    case 4:
> > > +            if (state->interface !=3D PHY_INTERFACE_MODE_NA &&
> > > +                state->interface !=3D PHY_INTERFACE_MODE_GMII)
> > > +                    goto unsupported;
> > > +            break;
> > > +    /* case 5: Port 5 not supported! */
> > > +    case 6: /* 1st cpu port */
> > > +            if (state->interface !=3D PHY_INTERFACE_MODE_RGMII &&
> > > +                state->interface !=3D PHY_INTERFACE_MODE_TRGMII)
> > =

> > PHY_INTERFACE_MODE_NA ?
> =

> You mean PHY_INTERFACE_MODE_NA is missing?

Yes.  Please see the updated documentation in the patch I sent this
morning "net: phylink: further documentation clarifications".

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
