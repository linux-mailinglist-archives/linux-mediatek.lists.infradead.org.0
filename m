Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8185F5E7F6
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 17:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zl9qHTqkN1f/QP3035o+qH6rm4bLikjoKi7paNa7Z28=; b=YjE0Hn7w91fXZ+
	/bg8k3lc8S9Rjy0Qtv6nzByCytLr9Cs+TNk9JMGhGkd5iGxS4RuC6lJ2HKZg2tYGzqeqD4WEZkzSy
	U70nTNrThfEKxx9no6FiVdSYqiFgVh/fK4aaFV/5eSOxQnjR/6Dp2HClVuXs4v6pc0wNzqdBMiLbq
	uj4heHe+igP2YOEGPwbNFzx6BlmuxhtFjP/izfBV6RNa9BeqK7t+7hvRbVY8DTdEBbCvETy1cpIBI
	r/zKnMZx3yx2YfI6RDKXut7h0nyITS2n5Dyx/KryyQGu02JWjnwLUYtpnNqVsuHr8m5YJixi0fYY6
	kazJwEJUg/74HNDkVuYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hihKk-0005Uy-8B; Wed, 03 Jul 2019 15:38:10 +0000
Received: from smtprelay0124.hostedemail.com ([216.40.44.124]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hihKh-0005UT-4X
 for linux-mediatek@lists.infradead.org; Wed, 03 Jul 2019 15:38:08 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 5BD2518224946;
 Wed,  3 Jul 2019 15:37:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:41:355:379:599:800:960:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2525:2560:2565:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4184:4321:4470:4605:5007:7903:7904:8957:8985:9025:10004:10226:10400:10450:10455:10848:11232:11473:11658:11914:12043:12296:12297:12438:12555:12700:12737:12740:12760:12895:12986:13071:13439:14180:14181:14659:14721:19904:19999:21060:21080:21451:21627:21788:30054:30070:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: party68_285374932a22c
X-Filterd-Recvd-Size: 3405
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Wed,  3 Jul 2019 15:37:56 +0000 (UTC)
Message-ID: <c8d5cc6171d2cff131e8600ac57e2eb441812617.camel@perches.com>
Subject: Re: [PATCH] checkpatch: avoid default n
From: Joe Perches <joe@perches.com>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
Date: Wed, 03 Jul 2019 08:37:55 -0700
In-Reply-To: <1562144624.3550.1.camel@mtksdaap41>
References: <20190703083031.2950-1-miles.chen@mediatek.com>
 <be8a97c15249ff8a613910db5792c5bcdc75333c.camel@perches.com>
 <1562144624.3550.1.camel@mtksdaap41>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_083807_318674_3655D112 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andy Whitcroft <apw@canonical.com>, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-03 at 17:03 +0800, Yingjoe Chen wrote:
> On Wed, 2019-07-03 at 01:42 -0700, Joe Perches wrote:
> > On Wed, 2019-07-03 at 16:30 +0800, Miles Chen wrote:
> > > This change reports a warning when "default n" is used.
> > > 
> > > I have seen several "remove default n" patches, so I think
> > > it might be helpful to add this test in checkpatch.
> > > 
> > > tested:
> > > WARNING: 'default n' is the default value, no need to write it explicitly.
> > > +       default n
> > 
> > I don't think this is reasonable as there are
> > several uses like:
> > 
> > 		default y
> > 		default n if <foo>
> > 
> > For instance:
> > 
> > arch/alpha/Kconfig-config ALPHA_WTINT
> > arch/alpha/Kconfig-     bool "Use WTINT" if ALPHA_SRM || ALPHA_GENERIC
> > arch/alpha/Kconfig-     default y if ALPHA_QEMU
> > arch/alpha/Kconfig:     default n if ALPHA_EV5 || ALPHA_EV56 || (ALPHA_EV4 && !ALPHA_LCA)
> > arch/alpha/Kconfig:     default n if !ALPHA_SRM && !ALPHA_GENERIC
> 
> Hi,
> 
> 
> I've sent similar patch in 2016, my version won't complain about these.
> 
> https://lkml.org/lkml/2016/4/22/580

Hi again.

https://lore.kernel.org/lkml/1461259011.1918.23.camel@perches.com/

I would prefer a generic solution that also handles the
quoted use.

$ git grep -P 'default\s*\"[ynm]"' -- '*/Kconfig*'
arch/mips/Kconfig:      default "y"
arch/mips/Kconfig:      default "y"
arch/mips/Kconfig:      default "y"
arch/mips/Kconfig:      default "y"
arch/mips/cavium-octeon/Kconfig:        default "n"
arch/mips/cavium-octeon/Kconfig:        default "y"
arch/mips/cavium-octeon/Kconfig:        default "y"
arch/mips/cavium-octeon/Kconfig:        default "y"
arch/mips/cavium-octeon/Kconfig:        default "y"
arch/mips/cavium-octeon/Kconfig:        default "y"
arch/mips/cavium-octeon/Kconfig:        default "y"
arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
arch/powerpc/Kconfig:   default "n"
drivers/auxdisplay/Kconfig:     default "n"
drivers/crypto/Kconfig: default "m"
drivers/rapidio/devices/Kconfig:        default "n"

or maybe 2 separate patches.

And the "default y" case and probably the
"default \!?EXPERT" is or should be generally
discouraged.  Especially for drivers.

https://lore.kernel.org/lkml/CAHk-=wiZ24JuVehJ5sEC0UG1Gk2nvB363wO02RRsR1oEht6R9Q@mail.gmail.com/



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
