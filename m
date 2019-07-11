Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3B6654AA
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 12:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsqGBBv0FVSYufcng8KKfMdtCFWQdxPGEf1xxku7GQI=; b=q7JJtU4ya8ASI/
	A/svMWOLiped4Gox6UwUhldQjeeVvxzQEqR9QBcnd/TAkC9Ogmo/kHqMi/qeHFC1sYxglDnyEE49+
	P12xYO2ZMy98LohiCGkvyJq879UIFKBN/mLXkh3CzGyiGVgPzM8nuTQbRIYCXp94HuSw+sojBa8pv
	b5B6N2RBmRHbOuWgjOUB6H1rMcuJ3lqBNPRpGjeueDoYO7reyEdriKdPQPPA18MlPc9jzqnisy4E4
	dYVga3BeFWxD42w3wsfvATns6PjFs+uKBiB8eiEzZIgQEj5rS/E7K5Tlmk5fmURI4c6TTmpzcjjz4
	Z4ot0k6k0zB0PN7zi6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWZ4-000846-C6; Thu, 11 Jul 2019 10:44:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWZ0-00083I-97
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 10:44:36 +0000
X-UUID: fb824b7a287f4c0b92239b61e56618d7-20190711
X-UUID: fb824b7a287f4c0b92239b61e56618d7-20190711
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1087281368; Thu, 11 Jul 2019 02:44:24 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 03:44:23 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 18:44:21 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 11 Jul 2019 18:44:21 +0800
Message-ID: <1562841861.9534.2.camel@mtkswgap22>
Subject: Re: [PATCH] kernel/dma: export dma_alloc_from_contiguous to modules
From: Miles Chen <miles.chen@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Thu, 11 Jul 2019 18:44:21 +0800
In-Reply-To: <7d14b94f-454f-d512-bc8f-589f71bc07ea@arm.com>
References: <20190711053343.28873-1-miles.chen@mediatek.com>
 <7d14b94f-454f-d512-bc8f-589f71bc07ea@arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_034434_324405_42755944 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-07-11 at 09:50 +0100, Robin Murphy wrote:
> On 11/07/2019 06:33, miles.chen@mediatek.com wrote:
> > From: Miles Chen <miles.chen@mediatek.com>
> > 
> > This change exports dma_alloc_from_contiguous and
> > dma_release_from_contiguous to modules.
> > 
> > Currently, we can add a reserve a memory node in dts files, make
> > it a CMA memory by setting compatible = "shared-dma-pool",
> > and setup the dev->cma_area by using of_reserved_mem_device_init_by_idx().
> > 
> > Export dma_alloc_from_contiguous and dma_release_from_contiguous, so we
> > can allocate/free from/to dev->cma_area in kernel modules.
> 
> As far as I understand, this was never intended for drivers to call 
> directly. If a device has its own private CMA area, then regular 
> dma_alloc_attrs() should allocate from that automatically; if that's not 
> happening already, then there's a bug somewhere.
> 
> Robin.

Thanks for your comment. 
After using dma_direct_ops, dma_alloc_attrs() works fine now.

Miles

> 
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > ---
> >   kernel/dma/contiguous.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> > index b2a87905846d..d5920bdedc77 100644
> > --- a/kernel/dma/contiguous.c
> > +++ b/kernel/dma/contiguous.c
> > @@ -197,6 +197,7 @@ struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
> >   
> >   	return cma_alloc(dev_get_cma_area(dev), count, align, no_warn);
> >   }
> > +EXPORT_SYMBOL_GPL(dma_alloc_from_contiguous);
> >   
> >   /**
> >    * dma_release_from_contiguous() - release allocated pages
> > @@ -213,6 +214,7 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
> >   {
> >   	return cma_release(dev_get_cma_area(dev), pages, count);
> >   }
> > +EXPORT_SYMBOL_GPL(dma_release_from_contiguous);
> >   
> >   /*
> >    * Support for reserved memory regions defined in device tree
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
