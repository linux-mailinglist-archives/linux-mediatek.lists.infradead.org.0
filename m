Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E3A65358
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 10:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hcWvhlxtxJiP7IZrUXOlhyofAR+wXer9916IdO82lFw=; b=bmgB/oGo5gSn1aHLHvSyCqBef
	mVCxn12g0Z6qskG/Ggl1ST/Al3iEX6MRywnI/5+Ax0R7EgO3fkOke0HSx7kFcu1tGvEH0nhofap3C
	W6/M0Y14aOFyhpd5aQJrzGMTqEvp/cc3EH9+zPeu2yVAuJ/CN4NDQOxQCIvLsQg6IJ9YfJ6sMpyuj
	SsTbDTmU18kiNd5RK4taEmT1CG0WqiLFKTlDo2E0AJLThouRcFlU3qNFMBx2oA43j9lqCyTZRpJwn
	LkwxvTgXwRkhzWS1LSLgSnG6Edl3azdd8QwZx8bQtmEEYHV4O20ik/aXdTWi6eE+OlFczkclXUZEw
	DjdXMmo9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlUnB-0001ix-HS; Thu, 11 Jul 2019 08:51:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlUn8-0001hz-Ua
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 08:51:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3EDE2B;
 Thu, 11 Jul 2019 01:51:00 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12F223F59C;
 Thu, 11 Jul 2019 01:50:59 -0700 (PDT)
Subject: Re: [PATCH] kernel/dma: export dma_alloc_from_contiguous to modules
To: miles.chen@mediatek.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
References: <20190711053343.28873-1-miles.chen@mediatek.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7d14b94f-454f-d512-bc8f-589f71bc07ea@arm.com>
Date: Thu, 11 Jul 2019 09:50:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190711053343.28873-1-miles.chen@mediatek.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_015103_033378_F9BEDE56 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 11/07/2019 06:33, miles.chen@mediatek.com wrote:
> From: Miles Chen <miles.chen@mediatek.com>
> 
> This change exports dma_alloc_from_contiguous and
> dma_release_from_contiguous to modules.
> 
> Currently, we can add a reserve a memory node in dts files, make
> it a CMA memory by setting compatible = "shared-dma-pool",
> and setup the dev->cma_area by using of_reserved_mem_device_init_by_idx().
> 
> Export dma_alloc_from_contiguous and dma_release_from_contiguous, so we
> can allocate/free from/to dev->cma_area in kernel modules.

As far as I understand, this was never intended for drivers to call 
directly. If a device has its own private CMA area, then regular 
dma_alloc_attrs() should allocate from that automatically; if that's not 
happening already, then there's a bug somewhere.

Robin.

> Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> ---
>   kernel/dma/contiguous.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index b2a87905846d..d5920bdedc77 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -197,6 +197,7 @@ struct page *dma_alloc_from_contiguous(struct device *dev, size_t count,
>   
>   	return cma_alloc(dev_get_cma_area(dev), count, align, no_warn);
>   }
> +EXPORT_SYMBOL_GPL(dma_alloc_from_contiguous);
>   
>   /**
>    * dma_release_from_contiguous() - release allocated pages
> @@ -213,6 +214,7 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
>   {
>   	return cma_release(dev_get_cma_area(dev), pages, count);
>   }
> +EXPORT_SYMBOL_GPL(dma_release_from_contiguous);
>   
>   /*
>    * Support for reserved memory regions defined in device tree
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
