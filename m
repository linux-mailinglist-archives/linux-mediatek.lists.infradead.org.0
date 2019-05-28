Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F472CA93
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 17:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qogzxoSLnV1FQQgmJAenpXjYCJaJV/OLvIZEjZ7ziAE=; b=c/5rgyV435jE5G
	aoBbfSOHDtE9p2p5Gg9GcxQaOE3GkGeWG8Kmzk0IVdOM37YIqJbMVewCLkdWCkoZ0ialkGqDKo0uj
	Xq8cYTeIhP54s3jkgHMln20gOmTftVQ3lrvbFOZM55q5EpQwyIWDcuzdAocnw7e0+j0gDJo73Pn4x
	9ha823siQ4D+6ZbH05k0YgYMAOtbNryjfPZB6dRaF3tcNX6cAAMsPSo0o4jOhjgipzr0ZzooRGO6R
	Zmz12ACjMwlE6ti8qbZRva2S+eBr+BEfAmRsLPEafCU92pA7IPWUnaDa7FJgPLKjo0EYhpDZm0QVN
	QDLKREPSJEMP3fSjRWkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeJi-0006dQ-Cf; Tue, 28 May 2019 15:47:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeJW-0006UL-FT; Tue, 28 May 2019 15:47:03 +0000
X-UUID: deb7c255ae734f81abead77dacf636e3-20190528
X-UUID: deb7c255ae734f81abead77dacf636e3-20190528
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1967243365; Tue, 28 May 2019 07:46:48 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 08:46:46 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 23:46:45 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 23:46:45 +0800
Message-ID: <1559058405.26151.6.camel@mtkswgap22>
Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA32 configurable
From: Miles Chen <miles.chen@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Tue, 28 May 2019 23:46:45 +0800
In-Reply-To: <814b9bd0-38de-4b8d-92b3-d663931d90bf@arm.com>
References: <1558973315-19655-1-git-send-email-miles.chen@mediatek.com>
 <814b9bd0-38de-4b8d-92b3-d663931d90bf@arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_084658_517928_301D839E 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-05-28 at 11:43 +0100, Robin Murphy wrote:
> On 27/05/2019 17:08, Miles Chen wrote:
> > This change makes CONFIG_ZONE_DMA32 defuly y and allows users
> > to overwrite it.
> > 
> > For the SoCs that do not need CONFIG_ZONE_DMA32, this is the
> > first step to manage all available memory by a single
> > zone(normal zone) to reduce the overhead of multiple zones.
> > 
> > The change also fixes a build error when CONFIG_NUMA=y and
> > CONFIG_ZONE_DMA32=n.
> > 
> > arch/arm64/mm/init.c:195:17: error: use of undeclared identifier 'ZONE_DMA32'
> >                  max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> > 
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > ---
> >   arch/arm64/Kconfig   | 3 ++-
> >   arch/arm64/mm/init.c | 2 ++
> >   2 files changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 76f6e4765f49..9d20a736d1d1 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -260,7 +260,8 @@ config GENERIC_CALIBRATE_DELAY
> >   	def_bool y
> >   
> >   config ZONE_DMA32
> > -	def_bool y
> > +	bool "Support DMA32 zone"
> 
> This probably warrants an "if EMBEDDED" or "if EXPERT", since turning it 
> off produces a kernel which won't work at all on certain systems (I've 
> played around with this before...)

Thanks for your comment. 
I'll put a "if EXPERT"  here to avoid this case.

> 
> > +	default y
> >   
> >   config HAVE_GENERIC_GUP
> >   	def_bool y
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index d2adffb81b5d..96829ce21f99 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -191,8 +191,10 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> >   {
> >   	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
> >   
> > +#ifdef CONFIG_ZONE_DMA32
> >   	if (IS_ENABLED(CONFIG_ZONE_DMA32))
> 
> There's no point keeping the IS_ENABLED() check when it's entirely 
> redundant with the #ifdefs.

I'll remove the IS_ENABLE() code in next patch.

-Miles
> 
> Robin.
> 
> >   		max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> > +#endif
> >   	max_zone_pfns[ZONE_NORMAL] = max;
> >   
> >   	free_area_init_nodes(max_zone_pfns);
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
