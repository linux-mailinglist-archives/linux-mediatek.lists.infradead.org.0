Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAFFD64B6
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 16:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oUY9dX4c2cFEsYfSifci8eViesrqzktrkGtWT81+P50=; b=MSnxCL6ua/BJu1zca3lUpIj0C
	mSCkDSNhwleVYPPwzTDQFcsZ/eodowQJKlA9iXElxJryaMYdh5S+UxsUTRKHE6OcmcCgFtry95L99
	rCt+P9JvdeWJNxXYg40CO5XfpfimjmRVdEZOeBrxmj9/NVxdEIdhiHmHvQh2XR2PN9BrcPwoYrWNU
	C2YTX0YAqINocA+33JDL+c8L736rIlKKf1hWSik4b7hfR07gCqe/UYDfjdwE1kyjwKUlGjyJ1cgRH
	uP1PQ6p73uhcTdLQDLQp/erjMsnnOpOM05jCoLtoyoBtz3HmX/9ke74oAqPgYeiDhkPc0mgNR9OXk
	1erXF19Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0yE-0004yX-If; Mon, 14 Oct 2019 14:05:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0xv-0004qK-Ta; Mon, 14 Oct 2019 14:04:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83EDF337;
 Mon, 14 Oct 2019 07:04:46 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22A513F68E;
 Mon, 14 Oct 2019 07:04:43 -0700 (PDT)
Subject: Re: [PATCH v3 6/7] iommu/mediatek: Use writel for TLB range
 invalidation
To: Yong Wu <yong.wu@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
 <1571035101-4213-7-git-send-email-yong.wu@mediatek.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c87e2a9c-5ed3-e44c-3b17-067db173eae9@arm.com>
Date: Mon, 14 Oct 2019 15:04:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1571035101-4213-7-git-send-email-yong.wu@mediatek.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_070451_997351_03371D03 
X-CRM114-Status: GOOD (  19.07  )
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
> Use writel for the register F_MMU_INV_RANGE which is for triggering the
> HW work. We expect all the setting(iova_start/iova_end...) have already
> been finished before F_MMU_INV_RANGE.

For Arm CPUs, these registers should be mapped as Device memory, 
therefore the same-peripheral rule should implicitly enforce that the 
accesses are made in program order, hence you're unlikely to have seen a 
problem in reality. However, the logical reasoning for the change seems 
valid in general, so I'd argue that it's still worth making if only for 
the sake of good practice:

Acked-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Anan.Sun <anan.sun@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>   drivers/iommu/mtk_iommu.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index dbbacc3..d285457 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -187,8 +187,7 @@ static void mtk_iommu_tlb_flush_range_sync(unsigned long iova, size_t size,
>   		writel_relaxed(iova, data->base + REG_MMU_INVLD_START_A);
>   		writel_relaxed(iova + size - 1,
>   			       data->base + REG_MMU_INVLD_END_A);
> -		writel_relaxed(F_MMU_INV_RANGE,
> -			       data->base + REG_MMU_INVALIDATE);
> +		writel(F_MMU_INV_RANGE, data->base + REG_MMU_INVALIDATE);
>   
>   		/* tlb sync */
>   		ret = readl_poll_timeout_atomic(data->base + REG_MMU_CPE_DONE,
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
