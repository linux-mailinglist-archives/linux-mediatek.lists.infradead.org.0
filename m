Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEF9564E0
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 10:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G56Gc82d4N9fZ0ooCIuC7VBvfyevFEm55QevWpscJak=; b=FmsUi06wQIktuX
	0XOaN004gpfJ1SS0JOrSue7Y82NxoS87ZwpxUU/6OBdXeZ1zyREhS52AnzdK3mzf5SBPfd8U/XDAp
	U8XBNNI64YCvKxfkj5YsoO3F92spzTIdPRPv9d3ENU4GxaTk8H0M12C+2nW3rUv/t06+1WDpzHOmg
	yR8PwkryIN2CaxWfDhdclvaIYk+suzrbZpT8+VYTkIm0m8CFzYgYKPSIbEAWCktcdcOXLp9wJ1Pfv
	jXg+oZZpwt8TTTdD8C1Uq9sY++MzpuydgAxYox+CvX454vjEJ6vDki618KTtbcefsRtMc6ZarzDF4
	+vRfDE5KSz1iwMeQ8MJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3Zb-0002ro-Bo; Wed, 26 Jun 2019 08:46:35 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3ZU-0002rJ-K9
 for linux-mediatek@lists.infradead.org; Wed, 26 Jun 2019 08:46:30 +0000
Received: by mail-ed1-x542.google.com with SMTP id a14so2066148edv.12
 for <linux-mediatek@lists.infradead.org>; Wed, 26 Jun 2019 01:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fjn2sDLr8BaQ4nlJ6Hyg2HDDv8IG3PYh78Ty/uhvVI8=;
 b=TxhVURRE2rYNtb5fcwF8krv3gy3AQKBMhIJHdf+I8lbjNQOgbRrnxQK8yGZN4qQ0fh
 k0U6nP1AAtQQVQMr8UGJw3MzOZ1gt5Yan3yO533X6ixp4lgXvWS8F3AoLBUxc4GtXnuy
 01UGpkc8qLP1duJAzBCwQVMxqm9QWucrCBg6550GwS6a7Sbc6TRGwI3MdqF7jP2izLtS
 Uw3B2j+lRQX75CLBBIGGYFFsur69Xh7Y1u6IKJKF4JfLe2CRLlI7mX3yC5Fhb0uXSydD
 cux5I8e0yURsDtXBIA0XHqy05BEaZS3wS1AB8oLxV3y2T/7/ce+3xmXfts6sb7HwPDWV
 Obdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fjn2sDLr8BaQ4nlJ6Hyg2HDDv8IG3PYh78Ty/uhvVI8=;
 b=jUUjhJmqsuBZ68BXuMpsoOQAMx3hQDLWxJ0u99nHg4Bih1FD9JEzBxQRbQKChKk1B0
 zELaefd30kGSKIonyWye4otr/W/3wGPfkuDvF05MQUes+bmhh4z4q7I4rUj3uL4X/LAk
 andWcLXgK9SbQCiP3sNoHQfT/ZidqhsoGVbGborROK3Ui6+hHb/dVBjiqnmdo0pm2PNG
 uVh+3Aac8/jlq/GfgFUuglUpeWjwimSlP4qGZc/xZHbBv3Rs9iTp2EkBAT5+YZfZJUXK
 3PBf8e+weXuuKzLOD7PIyIELuCN9VeakMpRhoRPJRWwg87sabZFvX5n01REbAZ0mt+0+
 iNlA==
X-Gm-Message-State: APjAAAVREUpDO2zBMMaZJf53NWPUdzDNtxYYWp4WfuWzCN26m33U9+MA
 CgD0RRJm/RVbNh/2mK4htsN6wXto/DcKCHzYRjI=
X-Google-Smtp-Source: APXvYqwf/K/knu0+iM5ES1LSY1PHHZBXEARQ9LCTaNB7G/VOVZVTEpQT69QXOkO4laDn74nJUyTT2IhwG2Hk+djRisA=
X-Received: by 2002:a17:906:19d3:: with SMTP id
 h19mr2938281ejd.300.1561538786751; 
 Wed, 26 Jun 2019 01:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
 <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
 <CA+h21hqK0VMtHpZ6eka9ESuMhsFTw2mx+c0GYmxq4_G_YmiVpg@mail.gmail.com>
 <20190625225759.zztqgnwtk4v7milp@shell.armlinux.org.uk>
 <CA+h21hq_w8-96ehKYxcziSq1TjOjoKduZ+pB3umBfjODaKWd+A@mail.gmail.com>
 <20190626074158.odyrgzie7sv4ovtn@shell.armlinux.org.uk>
In-Reply-To: <20190626074158.odyrgzie7sv4ovtn@shell.armlinux.org.uk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 26 Jun 2019 11:46:15 +0300
Message-ID: <CA+h21hpkjHD07-o7W-5sUf+FqEeks17_W6VUROSDzdGokFvNWQ@mail.gmail.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_014628_697132_6DC73403 
X-CRM114-Status: GOOD (  27.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 10:42, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Jun 26, 2019 at 02:10:27AM +0300, Vladimir Oltean wrote:
> > On Wed, 26 Jun 2019 at 01:58, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Wed, Jun 26, 2019 at 01:14:59AM +0300, Vladimir Oltean wrote:
> > > > On Wed, 26 Jun 2019 at 00:53, Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > On Tue, Jun 25, 2019 at 11:24:01PM +0300, Vladimir Oltean wrote:
> > > > > > Hi Russell,
> > > > > >
> > > > > > On 6/24/19 6:39 PM, Russell King - ARM Linux admin wrote:
> > > > > > > This should be removed - state->link is not for use in mac_config.
> > > > > > > Even in fixed mode, the link can be brought up/down by means of a
> > > > > > > gpio, and this should be dealt with via the mac_link_* functions.
> > > > > > >
> > > > > >
> > > > > > What do you mean exactly that state->link is not for use, is that true in
> > > > > > general?
> > > > >
> > > > > Yes.  mac_config() should not touch it; it is not always in a defined
> > > > > state.  For example, if you set modes via ethtool (the
> > > > > ethtool_ksettings_set API) then state->link will probably contain
> > > > > zero irrespective of the true link state.
> > > > >
> > > >
> > > > Experimentally, state->link is zero at the same time as state->speed
> > > > is -1, so just ignoring !state->link made sense. This is not in-band
> > > > AN. What is your suggestion? Should I proceed to try and configure the
> > > > MAC for SPEED_UNKNOWN?
> > >
> > > What would you have done with a PHY when the link is down, what speed
> > > would you have configured in the phylib adjust_link callback?  phylib
> > > also sets SPEED_UNKNOWN/DUPLEX_UNKNOWN when the link is down.
> > >
> >
> > With phylib, I'd make the driver ignore the speed and do nothing.
> > With phylink, I'd make the core not call mac_config.
> > But what happened is I saw phylink call mac_config anyway, said
> > 'weird' and proceeded to ignore it as I would have for phylib.
> > I'm just not understanding your position - it seems like you're
> > implying there's a bug in phylink and the function call with
> > MLO_AN_FIXED, state->link=0 and state->speed=-1 should not have taken
> > place, which is what I wanted to confirm.
>
> It is not a bug.  It is a request to configure the MAC, and what it's
> saying is "we don't know what speed and/or duplex".
>
> Take for instance when the network adapter is brought up initially.
> The link is most likely down, but we should configure the initial MAC
> operating parameters (such as the PHY interface).  Phylink makes a
> mac_config() call with the speed and duplex set to UNKNOWN.
>
> Using your theory, we shouldn't be making that call.  In which case,
> MAC drivers aren't going to initially configure their interface
> settings.
>
> _That_ would be a bug.
>

So you're saying that:
- state->link should not be checked, because it is not guaranteed to be valid
- state->speed, state->duplex, state->pause *should* be checked,
because it is not guaranteed to be valid
Is state->interface always valid?
I don't think I follow the pattern here. Or shouldn't I check speed,
duplex and pause either, and try to pass the MAC UNKNOWN values,
inevitably failing at some point? Do Marvell MACs have an UNKNOWN
setting?


> > It's unlikely that it would switch between SGMII and USXGMII
> > > dynamically, as USXGMII supports speeds from 10G down to 10M.
> > >
> > > Where interface mode switching tends to be used is with modes such
> > > as 10GBASE-R, which doesn't support anything except 10G.  In order
> > > for the PHY to operate at slower speeds, it has a few options:
> > >
> > > 1) perform rate adaption.
> > > 2) dynamically switch interface type to an interface type that
> > >    supports the desired speed.
> > > 3) just not support slower speeds.
> > >
> >
> > So am I reading this correctly - it kind of makes sense for gigabit
> > MAC drivers to not check for the MII interface changing protocol?
>
> Again, that's incorrect in the general case.  Gigabit includes SGMII
> and 802.3z PHY protocols which need to be switched between for SFPs.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

Thanks,
-Vladimir

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
