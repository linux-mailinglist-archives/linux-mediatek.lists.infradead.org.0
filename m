Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48624559D2
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 23:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8yfhGUTc0vfKEPLuL25VZQGDaXmmCb1p8aTZ8p91jw=; b=D2KuMmIjHUUQjN
	aXmUo8nerLuIalIx5KzmzZvhah7g4y70HvAVIh8fJ8q2EhPNb/3YmCe1LqKYS/ngJV4PttOLoI1Co
	U7lsUSPJiAxMRgbzQsohjXPbrdr+Nl2CwlqkZOoaYwoIszra4OriEOSiw4VQbp4U/gxA5DDUkuA/x
	ovtaylbSK7nKDNaOAnAf2G+BbjjywvDBUA0XoMTwInDCrC/n3yCiiJB9bY5ybRjPVU5g4ms/K6m7O
	kEXpyPmQ3L3yCe8D71xfP8unSiqrMOg0Id1oSzkP879yysZvmouW/rMjMNujOXXLpKepd8dOrKB1x
	frsvsGou9aRz8ErNuybQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfsse-0008IT-2G; Tue, 25 Jun 2019 21:21:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfssa-0008He-SP
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 21:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m6VFMJ052W6TcAKd0grvEKpmjJmNbi6JBUZsRjhZHGc=; b=YFBzGRIYpLWKw5tT+88LlwBlZ
 rHjBOrY51GBZScvAuV8ZDXriGPIvaik5pQr6aOpl4oDzd75qV0NjAPfshbUtFcZC37IGlpTOxSGjS
 mcdaOhiphcNBTbJHj9A+r+Z9XZGV7R/0D8VPB54XXHJ9lNfKZRzvZJhh2OC7C8f5rU5QP0xQSNuUo
 9BIqAYrKWzrS3Qv+9MH6hQ+I+LUYhzjzqpL8CsXFhXiEh/xhdLNoK/JAwpysz+tzBdgyfgsfQEcdv
 /JmbatZJ5+PSHgrfGpnWx2Pk/2idgPIdAPHfRSW9BmOQAUPOHOd620sgxvDDiPxu6WAwDQrTQVyR6
 sqMJUSnRg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59100)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfssK-0000a8-K6; Tue, 25 Jun 2019 22:21:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfssG-0007YL-Hp; Tue, 25 Jun 2019 22:21:08 +0100
Date: Tue, 25 Jun 2019 22:21:08 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190625212108.hh4g32co6s4drniw@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <20190625113158.Horde.pCaJOVUsgyhYLd5Diz5EZKI@www.vdorst.com>
 <20190625121030.m5w7wi3rpezhfgyo@shell.armlinux.org.uk>
 <1ad9f9a5-8f39-40bd-94bb-6b700f30c4ba@pobox.com>
 <20190625190246.GA27733@lunn.ch>
 <4fc51dc4-0eec-30d7-86d1-3404819cf6fe@pobox.com>
 <20190625204148.GB27733@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625204148.GB27733@lunn.ch>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_142128_922786_073ACC6F 
X-CRM114-Status: GOOD (  21.58  )
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
Cc: frank-w@public-files.de, f.fainelli@gmail.com,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 vivien.didelot@gmail.com, Daniel Santos <daniel.santos@pobox.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 10:41:48PM +0200, Andrew Lunn wrote:
> On Tue, Jun 25, 2019 at 02:27:55PM -0500, Daniel Santos wrote:
> > On 6/25/19 2:02 PM, Andrew Lunn wrote:
> > >> But will there still be a mechanism to ignore link partner's adverti=
sing
> > >> and force these parameters?
> > > >From man 1 ethtool:
> > >
> > >        -a --show-pause
> > >               Queries the specified Ethernet device for pause paramet=
er information.
> > >
> > >        -A --pause
> > >               Changes the pause parameters of the specified Ethernet =
device.
> > >
> > >            autoneg on|off
> > >                   Specifies whether pause autonegotiation should be e=
nabled.
> > >
> > >            rx on|off
> > >                   Specifies whether RX pause should be enabled.
> > >
> > >            tx on|off
> > >                   Specifies whether TX pause should be enabled.
> > >
> > > You need to check the driver to see if it actually implements this
> > > ethtool call, but that is how it should be configured.
> > >
> > > 	Andrew
> > >
> > Thank you Andrew,
> > =

> > So in this context, my question is the difference between "enabling" and
> > "forcing".=A0 Here's that register for the mt7620 (which has an mt7530 =
on
> > its die): https://imgur.com/a/pTk0668=A0 I believe this is also what Re=
n=E9
> > is seeking clarity on?
> =

> Lets start with normal operation. If the MAC supports pause or asym
> pause, it calls phy_support_sym_pause() or phy_support_asym_pause().
> phylib will then configure the PHY to advertise pause as appropriate.
> Once auto-neg has completed, the results of the negotiation are set in
> phydev. So phdev->pause and phydev->asym_pause. The MAC callback is
> then used to tell the MAC about the autoneg results. The MAC should be
> programmed using the values in phdev->pause and phydev->asym_pause.
> =

> For ethtool, the MAC driver needs to implement .get_pauseparam and
> .set_pauseparam. The set_pauseparam needs to validate the settings,
> using phy_validate_pause(). If valid, phy_set_asym_pause() is used to
> tell the PHY about the new configuration. This will trigger a new
> auto-neg if auto-neg is enabled, and the results will be passed back
> in the usual way. If auto-neg is disabled, or pause auto-neg is
> disabled, the MAC should configure pause directly based on the
> settings passed.
> =

> Looking at the data sheet page, you want FORCE_MODE_Pn set. You never
> want the MAC directly talking to the PHY. Bad things will happen.
> Then use FORCE_RX_FC_Pn and FORCE_TX_Pn to reflect phydev->pause and
> phydev->asym_pause.
> =

> The same idea applies when using phylink.

Except when using phylink, use pause & MLO_PAUSE_RX to determine whether
FORCE_RX_FC_Pn should be set, and use pause & MLO_PAUSE_TX to determine
whether FORCE_TX_Pn should be set.

phylink will take care of the results of negotiation with the link
partner and tell you what should be set if pause autoneg is enabled.
If the user has decided to force it via ethtool, and the MAC driver
passes the calls on to phylink, phylink will instead set MLO_PAUSE_RX
and MLO_PAUSE_TX according to the users settings.

So, with phylink, it's quite literally "if MLO_PAUSE_RX is set in
mac_config, enable receiption of pause frames.  if MLO_PAUSE_TX is set,
enable transmission of pause frames."

The above applies for phylink's PHY, FIXED, and SGMII in-band modes.
For 802.3z in-band modes, pause is negotiated between the two link
parters (which could be the PCS built into the MACs at either end)
and in some cases its possible to set the MAC to automatically adjust
to the results of the built-in PCS negotiation.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
