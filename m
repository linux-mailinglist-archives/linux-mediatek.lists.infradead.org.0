Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7185455A4D
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 23:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+w/TPqE+XDkr9MosTxkReWepuTWRJV13XhnAAYppws=; b=hC1f7SLFpsY0k5
	ksP5aKd82dfpbyXBSUc3f3VMzuJFs7vlLNMQGbAkBKGkeArhtLemA3ldRXEvd0HqmBxWpfa7XZ/ox
	pzDzh2lwkGpUON6LDl6ytZCq8ffIP+/6ArnjFQu4fJQi8oT/acfLXhO1tcuoxksr0FWEXtPHRzZhD
	Mmg/3RzoGUcUTmrpmmcd5cYHUsaCXulkVCFdvKRc9cSGeAqbYAY6wUa5iTR42hoca4GDzb1bVOWdD
	TrVK7ngRCDCbk3dPgmWyK9CugkdK3AJft1duW9nZ0L+OkkjBI96/oj1B1eBuIS0j9ePcDb3PgfRRO
	FTO4/VyCkNXqetYhQ0tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftNu-0000uf-PU; Tue, 25 Jun 2019 21:53:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftNr-0000u2-2Z
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 21:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=deOVYdFFYkcHu9wZG5qa/qLbz0oqLBMHZXk/udGRPFs=; b=Mptb2CI+u4aX2PweVUjMKHnxn
 IazRltUCx73c5lY8KG8H8Qt15Kyw9vaCKMaxUWp4b/CRN5GaDswnZizCdlQh9PhwARzY/PVmSvb6P
 p9B4sFczvUXDxRfTfgNCY8XYnxA+uPcCJCmon96RZvOxaL+NzjDCQgo8oskF3wWWloM3U1rQngEjG
 OOsSJMRJRfiZOqPqsp0fbkHY6cPS2lU5XehpsqmsrpQmaSoYA1KWSzQZqktiBXs1+k8EoSXjzkNib
 3Db8EoDreYq55rvxo23X7JodVR/D29B/54aiUVvUO91C1nxrA3rIcqIJPgcpTrxYNDv/4XCJxdz0e
 /BwA9Lklg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59016)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hftNd-0000iZ-Ck; Tue, 25 Jun 2019 22:53:33 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hftNZ-0007ZT-G1; Tue, 25 Jun 2019 22:53:29 +0100
Date: Tue, 25 Jun 2019 22:53:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_145347_121407_B8E965F3 
X-CRM114-Status: GOOD (  20.12  )
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
 vivien.didelot@gmail.com,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:24:01PM +0300, Vladimir Oltean wrote:
> Hi Russell,
> 
> On 6/24/19 6:39 PM, Russell King - ARM Linux admin wrote:
> > This should be removed - state->link is not for use in mac_config.
> > Even in fixed mode, the link can be brought up/down by means of a
> > gpio, and this should be dealt with via the mac_link_* functions.
> > 
> 
> What do you mean exactly that state->link is not for use, is that true in
> general?

Yes.  mac_config() should not touch it; it is not always in a defined
state.  For example, if you set modes via ethtool (the
ethtool_ksettings_set API) then state->link will probably contain
zero irrespective of the true link state.

It exists in this structure because it was convenient to just use one
structure to store all the link information in various parts of the
code, and when requesting the negotiated in-band MAC configuration.

I've come to the conclusion that that decision was a mistake, based
on patches such as the above mistakenly thinking that everything in
the state structure is fair game.  I've since updated the docs to
explicitly spell it out, but I'm also looking at the feasibility of
changing the mac_config() interface entirely - splitting it into two
(mac_config_fixed() and mac_config_inband()) and passing only the
appropriate parameters to each.

However, having looked at that, I think such a change will make some
MAC drivers quite a bit more complicated - having all the config
steps in one method appears to make the configuration of MAC drivers
easier (eg, mvneta, mvpp2.)

> In drivers/net/dsa/sja1105/sja1105_main.c, if I remove the "if
> (!state->link)" guard, I see PHYLINK calls with a SPEED_UNKNOWN argument for
> ports that are BR_STATE_DISABLED. Is that normal?

This looks like another driver which has been converted to phylink
without my review; I certainly wasn't aware of it.  It gets a few
things wrong, such as:

1) not checking state->interface in the validate callback - so it
   is basically saying that it can support any PHY interface mode
   that the kernel happens to support.

2) if phylink is configured to use in-band, then state->speed is
   undefined; this driver will fail.  (If folk don't want to support
   that, we ought to have a way to tell phylink to reject anything
   that attempts to set it to in-band mode!)

3) it doesn't implement phylink_mac_link_state DSA ops, so it doesn't
   support SGMII or 802.3z phy interface modes (see 1).

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
