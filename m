Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943964A64
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 18:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rH5rc4tn+S8eym9Ig4ct7/HQZDhbrjCIttApRR+inEQ=; b=e/C/CJwPdsMC7Z
	jT7igi2r574al1V1nQKZlObdiTzOfEMlgJEVNM1tZGmGXDvC//hwj8J6fHJPVZUiY5TkEtPu5FsJn
	EjFZNa7/Xh019i2W/Pw8O81yqN3mufRNauAsiwctQxyu6SN8jkBTxZ/YnE0CQozdVl2oxJCAJ2RSD
	aOng3BBmeMAUvvKLpGrX5iYCyRWwZpmN2jphw2iQuZ+sIhy12EEcpK5YvYk6mY027JKJKArPqdFup
	uUKfWV/KHoIr2G9hOC2XGaNMvGWkF3+46IzQx42YM/i2qD7qR4Y3nZ3bICva1rvXgGghwcXpjqTQs
	TgwiTt6NSzUqlt4q131g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlF33-0002bP-Ml; Wed, 10 Jul 2019 16:02:26 +0000
Received: from smtprelay0218.hostedemail.com ([216.40.44.218]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlF2H-0002Jj-Mp; Wed, 10 Jul 2019 16:01:39 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id A05E28368EF4;
 Wed, 10 Jul 2019 16:01:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: balls52_46dfd74d6cd5c
X-Filterd-Recvd-Size: 2713
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Wed, 10 Jul 2019 16:01:26 +0000 (UTC)
Message-ID: <c94a0a50c41c7530354b4a662ee945212424c8c7.camel@perches.com>
Subject: Re: [PATCH 00/12] treewide: Fix GENMASK misuses
From: Joe Perches <joe@perches.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Johannes Berg
 <johannes@sipsolutions.net>
Date: Wed, 10 Jul 2019 09:01:25 -0700
In-Reply-To: <b9c3b83c9be50286062ae8cefd5d38e2baa0fb22.camel@perches.com>
References: <cover.1562734889.git.joe@perches.com>
 <5fa1fa6998332642c49e2d5209193ffe2713f333.camel@sipsolutions.net>
 <20190710094337.wf2lftxzfjq2etro@shell.armlinux.org.uk>
 <b9c3b83c9be50286062ae8cefd5d38e2baa0fb22.camel@perches.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_090137_818444_F39CF14E 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.218 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-mmc@vger.kernel.org,
 alsa-devel@alsa-project.org, Benjamin Fair <benjaminfair@google.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, Nancy Yuen <yuenn@google.com>,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 netdev@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-10 at 08:45 -0700, Joe Perches wrote:
> On Wed, 2019-07-10 at 10:43 +0100, Russell King - ARM Linux admin wrote:
> > On Wed, Jul 10, 2019 at 11:17:31AM +0200, Johannes Berg wrote:
> > > On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> > > > These GENMASK uses are inverted argument order and the
> > > > actual masks produced are incorrect.  Fix them.
> > > > 
> > > > Add checkpatch tests to help avoid more misuses too.
> > > > 
> > > > Joe Perches (12):
> > > >   checkpatch: Add GENMASK tests
> > > 
> > > IMHO this doesn't make a lot of sense as a checkpatch test - just throw
> > > in a BUILD_BUG_ON()?
> 
> I tried that.
> 
> It'd can't be done as it's used in declarations
> and included in asm files and it uses the UL()
> macro.
> 
> I also tried just making it do the right thing
> whatever the argument order.

I forgot.

I also made all those arguments when it was
introduced in 2013.

https://lore.kernel.org/patchwork/patch/414248/

> Oh well.

yeah.



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
