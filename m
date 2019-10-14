Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB7CD6508
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 16:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dFXnER/cp0LN89X7XkZ/JOQ8BEjq5+7mjt7Zi7iS3R8=; b=majXWN3T9Q/OD9bXj/o7L227K
	zuJsp//1AHOIaFyaS/POBKF8VYI5oU4UofXYAbw0nKw8FH5aJaETtiCtIMO64D1+DiShMiLhljupd
	sxw/470jFGZoa5IfNP7AquWtKY2JHWZPBQwZ+daPXpvTaI1QFThDMFicAs+Sflj9t0secDwtEliqV
	J36byeHLkRntJ2xLC4ZlzWVj7oUmljd7SiAizmKwiDUgITZjR8gRkRiS2c/HF+E3Xn90qzTZXJm3a
	qDYamxU3iH+NOsSBBPC7DNctt4OV+2MYm08h9/cJsaWM7vam/PTa4artSsSSZSZArmeVZmRWSNA2r
	rVJ1DMAOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1Fe-000696-BH; Mon, 14 Oct 2019 14:23:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1FN-00060R-B5; Mon, 14 Oct 2019 14:22:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6A90337;
 Mon, 14 Oct 2019 07:22:52 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7DAA23F68E;
 Mon, 14 Oct 2019 07:22:50 -0700 (PDT)
Subject: Re: [PATCH v3 4/7] iommu/mediatek: Delete the leaf in the tlb flush
To: Yong Wu <yong.wu@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
 <1571035101-4213-5-git-send-email-yong.wu@mediatek.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20c74c20-864e-88af-3c58-ad3bb7600bcc@arm.com>
Date: Mon, 14 Oct 2019 15:22:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1571035101-4213-5-git-send-email-yong.wu@mediatek.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_072253_427665_11FB3136 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com, edison.hsieh@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 14/10/2019 07:38, Yong Wu wrote:
> In our tlb range flush, we don't care the "leaf". Remove it to simplify
> the code. no functional change.

Presumably you don't care about the granule either?

Robin.

> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>   drivers/iommu/mtk_iommu.c | 16 ++++------------
>   1 file changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 8712afc..19f936c 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -174,8 +174,7 @@ static void mtk_iommu_tlb_flush_all(void *cookie)
>   }
>   
>   static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
> -					   size_t granule, bool leaf,
> -					   void *cookie)
> +					   size_t granule, void *cookie)
>   {
>   	struct mtk_iommu_data *data = cookie;
>   
> @@ -219,14 +218,7 @@ static void mtk_iommu_tlb_sync(void *cookie)
>   static void mtk_iommu_tlb_flush_walk(unsigned long iova, size_t size,
>   				     size_t granule, void *cookie)
>   {
> -	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, false, cookie);
> -	mtk_iommu_tlb_sync(cookie);
> -}
> -
> -static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
> -				     size_t granule, void *cookie)
> -{
> -	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, true, cookie);
> +	mtk_iommu_tlb_add_flush_nosync(iova, size, granule, cookie);
>   	mtk_iommu_tlb_sync(cookie);
>   }
>   
> @@ -245,7 +237,7 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
>   static const struct iommu_flush_ops mtk_iommu_flush_ops = {
>   	.tlb_flush_all = mtk_iommu_tlb_flush_all,
>   	.tlb_flush_walk = mtk_iommu_tlb_flush_walk,
> -	.tlb_flush_leaf = mtk_iommu_tlb_flush_leaf,
> +	.tlb_flush_leaf = mtk_iommu_tlb_flush_walk,
>   	.tlb_add_page = mtk_iommu_tlb_flush_page_nosync,
>   };
>   
> @@ -475,7 +467,7 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
>   		spin_lock_irqsave(&dom->pgtlock, flags);
>   
>   	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
> -				       false, data);
> +				       data);
>   	mtk_iommu_tlb_sync(data);
>   
>   	if (!is_in_gather)
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
