Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB41D7535
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 13:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dAqP29lJA57mzVJRO19TQCyfNltzqOF2Hrx1RHvmZ50=; b=cTgMutcJQoNV0KKCNJiFpwBgI
	lwZ0EUqF8ZUUX2FN50MND/uYdxAZ74T1yokL3Rv+cYWpkr431IynOjfbpr4ZFlIXdWAXaQoDaZmpz
	e3jbi1BPiu/9Vd3zu7yADxmHCrgNtGwcdQz1LB2WTii6GKtlgh+8xJpf7Who9nmi9Hi7slr7fdEs/
	N60Ap8ZyTBLJMQ4UKEWwH+xJjxM/wQhwRHrWijWO/kK84w/ThyT+a4+yAvZlDMpZBL1XbC5LgdBhT
	Opqb3hB/ov2pE2lgQWUCTiS7L1Jr3LD4rXiqKwogDPVtXeBALxRYfwveSsHTNA6M90QExjlteqY6P
	TgOzm59Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKLAB-0006qt-39; Tue, 15 Oct 2019 11:38:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKLA0-0006hk-Ep; Tue, 15 Oct 2019 11:38:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28B18337;
 Tue, 15 Oct 2019 04:38:39 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0F553F68E;
 Tue, 15 Oct 2019 04:38:36 -0700 (PDT)
Subject: Re: [PATCH v3 3/7] iommu/mediatek: Use gather to achieve the tlb
 range flush
To: Yong Wu <yong.wu@mediatek.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
 <1571035101-4213-4-git-send-email-yong.wu@mediatek.com>
 <f35c8a3a-0693-facf-2050-65d3f7628929@arm.com>
 <1571117166.19130.83.camel@mhfsdcap03>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5d03ebcb-0cd1-a9ad-0f4e-c219e351396c@arm.com>
Date: Tue, 15 Oct 2019 12:38:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1571117166.19130.83.camel@mhfsdcap03>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_043840_588691_85A95221 
X-CRM114-Status: GOOD (  24.12  )
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
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, edison.hsieh@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 15/10/2019 06:26, Yong Wu wrote:
> On Mon, 2019-10-14 at 15:21 +0100, Robin Murphy wrote:
>> On 14/10/2019 07:38, Yong Wu wrote:
>>> Use the iommu_gather mechanism to achieve the tlb range flush.
>>> Gather the iova range in the "tlb_add_page", then flush the merged iova
>>> range in iotlb_sync.
>>>
>>> Note: If iotlb_sync comes from iommu_iotlb_gather_add_page, we have to
>>> avoid retry the lock since the spinlock have already been acquired.
>>
>> I think this could probably be even simpler - once the actual
>> register-poking is all confined to mtk_iommu_tlb_sync(), you should be
>> able get rid of the per-domain locking in map/unmap and just have a
>> single per-IOMMU lock to serialise syncs. The io-pgtable code itself
>> hasn't needed external locking for a while now.
> 
> This is more simpler! Thanks very much. I will try this.
> 
> The only concern is there is no lock in the iova_to_phys then, maybe use
> the new lock instead.

iova_to_phys isn't issuing any syncs, so you don't need any locking 
there - if anyone calls that in a way which races against the given 
address being unmapped and remapped they can't expect a meaningful 
result anyway.

Robin.

>>> Suggested-by: Tomasz Figa <tfiga@chromium.org>
>>> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
>>> ---
>>> 1) This is the special case backtrace:
>>>
>>>    mtk_iommu_iotlb_sync+0x50/0xa0
>>>    mtk_iommu_tlb_flush_page_nosync+0x5c/0xd0
>>>    __arm_v7s_unmap+0x174/0x598
>>>    arm_v7s_unmap+0x30/0x48
>>>    mtk_iommu_unmap+0x50/0x78
>>>    __iommu_unmap+0xa4/0xf8
>>>
>>> 2) The checking "if (gather->start == ULONG_MAX) return;" also is
>>> necessary. It will happened when unmap only go to _flush_walk, then
>>> enter this tlb_sync.
>>> ---
>>>    drivers/iommu/mtk_iommu.c | 29 +++++++++++++++++++++++++----
>>>    drivers/iommu/mtk_iommu.h |  1 +
>>>    2 files changed, 26 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
>>> index 5f594d6..8712afc 100644
>>> --- a/drivers/iommu/mtk_iommu.c
>>> +++ b/drivers/iommu/mtk_iommu.c
>>> @@ -234,7 +234,12 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
>>>    					    unsigned long iova, size_t granule,
>>>    					    void *cookie)
>>>    {
>>> -	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
>>> +	struct mtk_iommu_data *data = cookie;
>>> +	struct iommu_domain *domain = &data->m4u_dom->domain;
>>> +
>>> +	data->is_in_tlb_gather_add_page = true;
>>> +	iommu_iotlb_gather_add_page(domain, gather, iova, granule);
>>> +	data->is_in_tlb_gather_add_page = false;
>>>    }
>>>    
>>>    static const struct iommu_flush_ops mtk_iommu_flush_ops = {
>>> @@ -453,12 +458,28 @@ static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
>>>    static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
>>>    				 struct iommu_iotlb_gather *gather)
>>>    {
>>> +	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
>>>    	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
>>> +	bool is_in_gather = data->is_in_tlb_gather_add_page;
>>> +	size_t length = gather->end - gather->start;
>>>    	unsigned long flags;
>>>    
>>> -	spin_lock_irqsave(&dom->pgtlock, flags);
>>> -	mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
>>> -	spin_unlock_irqrestore(&dom->pgtlock, flags);
>>> +	if (gather->start == ULONG_MAX)
>>> +		return;
>>> +
>>> +	/*
>>> +	 * Avoid acquire the lock when it's in gather_add_page since the lock
>>> +	 * has already been held.
>>> +	 */
>>> +	if (!is_in_gather)
>>> +		spin_lock_irqsave(&dom->pgtlock, flags);
>>> +
>>> +	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
>>> +				       false, data);
>>> +	mtk_iommu_tlb_sync(data);
>>> +
>>> +	if (!is_in_gather)
>>> +		spin_unlock_irqrestore(&dom->pgtlock, flags);
>>>    }
>>>    
>>>    static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
>>> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
>>> index fc0f16e..d29af1d 100644
>>> --- a/drivers/iommu/mtk_iommu.h
>>> +++ b/drivers/iommu/mtk_iommu.h
>>> @@ -58,6 +58,7 @@ struct mtk_iommu_data {
>>>    	struct iommu_group		*m4u_group;
>>>    	bool                            enable_4GB;
>>>    	bool				tlb_flush_active;
>>> +	bool				is_in_tlb_gather_add_page;
>>>    
>>>    	struct iommu_device		iommu;
>>>    	const struct mtk_iommu_plat_data *plat_data;
>>>
> 
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
