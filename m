Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A8365446
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 12:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LidqJ+GPMqQkyjDEGYkB1j0g5yt23va/lAoDoFSEfg=; b=uZD3uB3SyAv8uS
	HNPmcqhIjxOCgFQ3i2ZS4WMGDSp+wuqdS6urWo2NiLgtNesFoAJeX1TLukddnnaQ9R7JZrEh8K9O7
	QXqfRKwl7LoAwn03OUldRHdiTpZJ+5GuaMrp5RimzC71blHSPzLyl38WrTdlNYvaLIOTAf1nt3wdf
	ihSY4tJR2y5gg2Y+2wp0/iYDblKsoihB31O2SScMQBGDgb/yl/YXwP9L6udkMCR0CtLzXks1L0LTC
	L3XF0kA9QhE6nazi2XrN66cJcJ5mRT7JjG27YzPKlFd1QVojPHgb6n3BghrwT4OthHuhfZMErp7ia
	FJjW8ucKkE9gCQdS8xmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVvT-00026Q-5G; Thu, 11 Jul 2019 10:03:43 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVvO-0001ya-LC
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 10:03:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3471C68B05; Thu, 11 Jul 2019 12:03:33 +0200 (CEST)
Date: Thu, 11 Jul 2019 12:03:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] kernel/dma: export dma_alloc_from_contiguous to modules
Message-ID: <20190711100332.GA5853@lst.de>
References: <20190711053343.28873-1-miles.chen@mediatek.com>
 <7d14b94f-454f-d512-bc8f-589f71bc07ea@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d14b94f-454f-d512-bc8f-589f71bc07ea@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_030338_840548_1FD1C8DC 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, miles.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 09:50:58AM +0100, Robin Murphy wrote:
> On 11/07/2019 06:33, miles.chen@mediatek.com wrote:
>> From: Miles Chen <miles.chen@mediatek.com>
>>
>> This change exports dma_alloc_from_contiguous and
>> dma_release_from_contiguous to modules.
>>
>> Currently, we can add a reserve a memory node in dts files, make
>> it a CMA memory by setting compatible = "shared-dma-pool",
>> and setup the dev->cma_area by using of_reserved_mem_device_init_by_idx().
>>
>> Export dma_alloc_from_contiguous and dma_release_from_contiguous, so we
>> can allocate/free from/to dev->cma_area in kernel modules.
>
> As far as I understand, this was never intended for drivers to call 
> directly. If a device has its own private CMA area, then regular 
> dma_alloc_attrs() should allocate from that automatically; if that's not 
> happening already, then there's a bug somewhere.

Agreed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
