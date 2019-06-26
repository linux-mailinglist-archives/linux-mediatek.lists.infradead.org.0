Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEBB56513
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 11:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvBkRHNgr1R3LFbSW2YixpLTYuI0aqGBe0tWBQ3SChY=; b=avQUAcU/vVHAdU
	JNreHN7gesF8Lay3zB7J/roXZc8jYlFLqHTZRp/IOrCMdpaCN2RHJBZAuiSuMtBfZCSN11rO3XDSe
	fdjBc/Z3HfVFQ5Lz8LTzH0wofautSowkLqY1ZJJodEWap6wflvnwrFml4S4wd5/1a0mv7By18SXBP
	DvSNE231Z6JnSxhsDvgnWf8rpq90mrQwHYGG0DzONXol1sHxgJY24l2lyNd8OfTnqiNhtPo5z76Z4
	aUaOwRmC2hH2SIS6tmYQHRdaibm7mOReRCV71nq85FnmhKSaUhBMd9kkh7FCQFeHIr/JcLl3//NSJ
	oMHg6VoYNHSzYK2NW3bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3rZ-0001Ka-Nb; Wed, 26 Jun 2019 09:05:10 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3rN-00019o-DW
 for linux-mediatek@lists.infradead.org; Wed, 26 Jun 2019 09:05:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3fcGHGnGX2V74bhIeEY8hWorkhuv6lOMdsSjSB+ZTm4=; b=dfMMZqgQwuvbvu6f/byZxgiSw
 OKoCErik3sXO4kJTr2a/9z+zfQaBxW3OPsN42gS6UGF79jzrd36IskpLGb6ypD6xzpR1mflY75mhf
 wG17dXkFMIonU4wzzG9aNfIG8NMj15WHsR4KhiiyX62EB/B60iy/ZgJG24LWE/J0TkapiI2la4V25
 yCreoShopKkuBJCfPGS8F0IAbZ4LrcFtoKUaDCqJVj264ApGj85mg0VFYOAJI3DReifd6hVlOrbep
 BndbUOQiJuNLjEMlgBag95OIh07C62/siRFH4WfNn0hi6yZj4m0X8w+mUTANTEVnhIQsPO/+n4b9l
 73djpMzNQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60022)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hg3rC-0003t3-MO; Wed, 26 Jun 2019 10:04:46 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hg3r5-00082b-84; Wed, 26 Jun 2019 10:04:39 +0100
Date: Wed, 26 Jun 2019 10:04:39 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
Message-ID: <20190626090439.fwv6fh6thg2j4t74@shell.armlinux.org.uk>
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
 <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
 <CA+h21hqK0VMtHpZ6eka9ESuMhsFTw2mx+c0GYmxq4_G_YmiVpg@mail.gmail.com>
 <20190625225759.zztqgnwtk4v7milp@shell.armlinux.org.uk>
 <CA+h21hq_w8-96ehKYxcziSq1TjOjoKduZ+pB3umBfjODaKWd+A@mail.gmail.com>
 <20190626074158.odyrgzie7sv4ovtn@shell.armlinux.org.uk>
 <CA+h21hpkjHD07-o7W-5sUf+FqEeks17_W6VUROSDzdGokFvNWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hpkjHD07-o7W-5sUf+FqEeks17_W6VUROSDzdGokFvNWQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020457_699718_806D0A30 
X-CRM114-Status: GOOD (  27.29  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jun 26, 2019 at 11:46:15AM +0300, Vladimir Oltean wrote:
> On Wed, 26 Jun 2019 at 10:42, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Wed, Jun 26, 2019 at 02:10:27AM +0300, Vladimir Oltean wrote:
> > > On Wed, 26 Jun 2019 at 01:58, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Wed, Jun 26, 2019 at 01:14:59AM +0300, Vladimir Oltean wrote:
> > > > > On Wed, 26 Jun 2019 at 00:53, Russell King - ARM Linux admin
> > > > > <linux@armlinux.org.uk> wrote:
> > > > > >
> > > > > > On Tue, Jun 25, 2019 at 11:24:01PM +0300, Vladimir Oltean wrote:
> > > > > > > Hi Russell,
> > > > > > >
> > > > > > > On 6/24/19 6:39 PM, Russell King - ARM Linux admin wrote:
> > > > > > > > This should be removed - state->link is not for use in mac_config.
> > > > > > > > Even in fixed mode, the link can be brought up/down by means of a
> > > > > > > > gpio, and this should be dealt with via the mac_link_* functions.
> > > > > > > >
> > > > > > >
> > > > > > > What do you mean exactly that state->link is not for use, is that true in
> > > > > > > general?
> > > > > >
> > > > > > Yes.  mac_config() should not touch it; it is not always in a defined
> > > > > > state.  For example, if you set modes via ethtool (the
> > > > > > ethtool_ksettings_set API) then state->link will probably contain
> > > > > > zero irrespective of the true link state.
> > > > > >
> > > > >
> > > > > Experimentally, state->link is zero at the same time as state->speed
> > > > > is -1, so just ignoring !state->link made sense. This is not in-band
> > > > > AN. What is your suggestion? Should I proceed to try and configure the
> > > > > MAC for SPEED_UNKNOWN?
> > > >
> > > > What would you have done with a PHY when the link is down, what speed
> > > > would you have configured in the phylib adjust_link callback?  phylib
> > > > also sets SPEED_UNKNOWN/DUPLEX_UNKNOWN when the link is down.
> > > >
> > >
> > > With phylib, I'd make the driver ignore the speed and do nothing.
> > > With phylink, I'd make the core not call mac_config.
> > > But what happened is I saw phylink call mac_config anyway, said
> > > 'weird' and proceeded to ignore it as I would have for phylib.
> > > I'm just not understanding your position - it seems like you're
> > > implying there's a bug in phylink and the function call with
> > > MLO_AN_FIXED, state->link=0 and state->speed=-1 should not have taken
> > > place, which is what I wanted to confirm.
> >
> > It is not a bug.  It is a request to configure the MAC, and what it's
> > saying is "we don't know what speed and/or duplex".
> >
> > Take for instance when the network adapter is brought up initially.
> > The link is most likely down, but we should configure the initial MAC
> > operating parameters (such as the PHY interface).  Phylink makes a
> > mac_config() call with the speed and duplex set to UNKNOWN.
> >
> > Using your theory, we shouldn't be making that call.  In which case,
> > MAC drivers aren't going to initially configure their interface
> > settings.
> >
> > _That_ would be a bug.
> >
> 
> So you're saying that:
> - state->link should not be checked, because it is not guaranteed to be valid

state->link is undefined.

> - state->speed, state->duplex, state->pause *should* be checked,

These will always be valid for FIXED and PHY modes, but _may_ be
UNKNOWN, meaning phylink does not have any information about what
the speed should be.

speed and duplex are not defined for inband modes, since the purpose
of inband modes is to communicate this information through... inband
information, which the MAC driver already has access to.  pause is
a different matter because it is present in some inband modes but
not others.

Which fields may be examined are now documented in the phylink
documentation in mainline kernels.

> Is state->interface always valid?

Yes.

> I don't think I follow the pattern here. Or shouldn't I check speed,
> duplex and pause either, and try to pass the MAC UNKNOWN values,
> inevitably failing at some point? Do Marvell MACs have an UNKNOWN
> setting?

Why do you think that just because state->speed is SPEED_UNKNOWN you
have to dream up some weird "unknown" value for the MAC?  Default it
to something sensible, just like you would do if phylib reports
SPEED_UNKNOWN during link-down.  I really don't get what the problem
is here.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
