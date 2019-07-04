Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9786F5F25F
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 07:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGgUcQl4WPnYzH514SescFjj+7+HmnAJ5rG1f1COflA=; b=CvJDDGd6e7MaQb
	X6EHAnOaNrqBjwMM9SaeAxplxvYFTO2UvibzeHuTJhUvOLSX347939ecaZz4stU0+kIRxxYxlMRCA
	cPfWNhXjy6+0dSvJHnga9aCwiDrHnQt+leVkEsiZnlmq9x3bZGOQl1GINueEb9urLh6MpjdFE9WHm
	fdYEtJXPjnefXlc0c0713ZCv3w5U3/sjiq202G9NdlP5acoYAXTuNk5oCrFRDJm/BHAyr6ZEMYuhu
	c6aY8vbHoft850718/ctmr7NlW9v8vpr2eRgubsa7IAvUzMabLdPOXzr+oTSdxevUvO7DyI4oE1/G
	oAzB4Rt6c6yMkTWJ5Q5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiubn-0007MI-NH; Thu, 04 Jul 2019 05:48:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiubj-0007LY-U6
 for linux-mediatek@lists.infradead.org; Thu, 04 Jul 2019 05:48:37 +0000
X-UUID: d48da1bd8ea046149718351e1ffd82f4-20190703
X-UUID: d48da1bd8ea046149718351e1ffd82f4-20190703
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1143743572; Wed, 03 Jul 2019 21:48:06 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 3 Jul 2019 22:48:04 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 4 Jul 2019 13:48:03 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 4 Jul 2019 13:48:03 +0800
Message-ID: <1562219283.6549.2.camel@mtkswgap22>
Subject: Re: [PATCH] checkpatch: avoid default n
From: Miles Chen <miles.chen@mediatek.com>
To: Joe Perches <joe@perches.com>
Date: Thu, 4 Jul 2019 13:48:03 +0800
In-Reply-To: <c8d5cc6171d2cff131e8600ac57e2eb441812617.camel@perches.com>
References: <20190703083031.2950-1-miles.chen@mediatek.com>
 <be8a97c15249ff8a613910db5792c5bcdc75333c.camel@perches.com>
 <1562144624.3550.1.camel@mtksdaap41>
 <c8d5cc6171d2cff131e8600ac57e2eb441812617.camel@perches.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_224835_985218_0FE5CD33 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Andy Whitcroft <apw@canonical.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-03 at 08:37 -0700, Joe Perches wrote:
> On Wed, 2019-07-03 at 17:03 +0800, Yingjoe Chen wrote:
> > On Wed, 2019-07-03 at 01:42 -0700, Joe Perches wrote:
> > > On Wed, 2019-07-03 at 16:30 +0800, Miles Chen wrote:
> > > > This change reports a warning when "default n" is used.
> > > > 
> > > > I have seen several "remove default n" patches, so I think
> > > > it might be helpful to add this test in checkpatch.
> > > > DEFAULT_VALUE_STYLE
> > > > tested:
> > > > WARNING: 'default n' is the default value, no need to write it explicitly.
> > > > +       default n
> > > 
> > > I don't think this is reasonable as there are
> > > several uses like:
> > > 
> > > 		default y
> > > 		default n if <foo>
> > > 
> > > For instance:
> > > 
> > > arch/alpha/Kconfig-config ALPHA_WTINT
> > > arch/alpha/Kconfig-     bool "Use WTINT" if ALPHA_SRM || ALPHA_GENERIC
> > > arch/alpha/Kconfig-     default y if ALPHA_QEMU
> > > arch/alpha/Kconfig:     default n if ALPHA_EV5 || ALPHA_EV56 || (ALPHA_EV4 && !ALPHA_LCA)
> > > arch/alpha/Kconfig:     default n if !ALPHA_SRM && !ALPHA_GENERIC
> > 
> > Hi,
> > 
> > 
> > I've sent similar patch in 2016, my version won't complain about these.
> > 
> > https://lkml.org/lkml/2016/4/22/580
> 
> Hi again.
> 
> https://lore.kernel.org/lkml/1461259011.1918.23.camel@perches.com/
> 
> I would prefer a generic solution that also handles the
> quoted use.
> 
> $ git grep -P 'default\s*\"[ynm]"' -- '*/Kconfig*'
> arch/mips/Kconfig:      default "y"
> arch/mips/Kconfig:      default "y"
> arch/mips/Kconfig:      default "y"
> arch/mips/Kconfig:      default "y"
> arch/mips/cavium-octeon/Kconfig:        default "n"
> arch/mips/cavium-octeon/Kconfig:        default "y"
> arch/mips/cavium-octeon/Kconfig:        default "y"
> arch/mips/cavium-octeon/Kconfig:        default "y"
> arch/mips/cavium-octeon/Kconfig:        default "y"
> arch/mips/cavium-octeon/Kconfig:        default "y"
> arch/mips/cavium-octeon/Kconfig:        default "y"
> arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
> arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
> arch/powerpc/Kconfig:   default "n"
> drivers/auxdisplay/Kconfig:     default "n"
> drivers/crypto/Kconfig: default "m"
> drivers/rapidio/devices/Kconfig:        default "n"
> 
> or maybe 2 separate patches.
> 
> And the "default y" case and probably the
> "default \!?EXPERT" is or should be generally
> discouraged.  Especially for drivers.
> 
> https://lore.kernel.org/lkml/CAHk-=wiZ24JuVehJ5sEC0UG1Gk2nvB363wO02RRsR1oEht6R9Q@mail.gmail.com/
> 
> 
Thanks for your comment, I'll send another patch for these cases:
1. default "[ynm]"
2. default \!?EXPERT
3. default n$



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
