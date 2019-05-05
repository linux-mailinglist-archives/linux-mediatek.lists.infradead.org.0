Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC5713C9E
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 May 2019 03:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1BAbUeii83qVHhIFGfXLdt/nftPJbfvXhBoD/ptKL6w=; b=rSQE7juFpnX6agbCfMD9XRQUe
	/MbZYJ3F5J6X2xIb6308ORS8xtwCYHyQe2Qh1K9x43Zmjj0kvsUp7pphKQotiK5o8ogossWXWsA5i
	IRzR9RQ+oFq1wT0qbd0V7Hvg/L0njPXqEAHa4rRQC9jxj2ZTlwgrfxL+gFxXzAFQ4f9UYuXo/LgTe
	TNnYi+DqBz63DKGjMHPxen2vMgqc9khIJqaSy2G0KcTM8VXzZd55kvHKOpvrnTlbIp4l57t4ch/BY
	Q2JKZbN+so1P3IJ2V8GmO+M5jVg4M1T+hXbWa6C3bUNioankq1ajroAvyFhMxZMVnIdgOjT4uftGp
	n821PyfMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN5xW-00029V-F2; Sun, 05 May 2019 01:28:54 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN5wx-0001rU-LG; Sun, 05 May 2019 01:28:21 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 May 2019 18:26:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,431,1549958400"; d="scan'208";a="146319205"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga008.fm.intel.com with ESMTP; 04 May 2019 18:26:14 -0700
Subject: Re: [RFC 2/7] iommu/vt-d: Remove iova handling code from non-dma ops
 path
To: Tom Murphy <tmurphy@arista.com>, iommu@lists.linux-foundation.org
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-3-tmurphy@arista.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <bf35694d-3ff4-0df7-0802-b0e87a9a0d47@linux.intel.com>
Date: Sun, 5 May 2019 09:19:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504132327.27041-3-tmurphy@arista.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_182819_710421_88E93406 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-msm@vger.kernel.org, Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 David Brown <david.brown@linaro.org>, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie,
 Robin Murphy <robin.murphy@arm.com>, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On 5/4/19 9:23 PM, Tom Murphy via iommu wrote:
> @@ -4181,58 +4168,37 @@ static int intel_iommu_memory_notifier(struct notifier_block *nb,
>   				       unsigned long val, void *v)
>   {
>   	struct memory_notify *mhp = v;
> -	unsigned long long start, end;
> -	unsigned long start_vpfn, last_vpfn;
> +	unsigned long start_vpfn = mm_to_dma_pfn(mhp->start_pfn);
> +	unsigned long last_vpfn = mm_to_dma_pfn(mhp->start_pfn +
> +			mhp->nr_pages - 1);
>   
>   	switch (val) {
>   	case MEM_GOING_ONLINE:
> -		start = mhp->start_pfn << PAGE_SHIFT;
> -		end = ((mhp->start_pfn + mhp->nr_pages) << PAGE_SHIFT) - 1;
> -		if (iommu_domain_identity_map(si_domain, start, end)) {
> -			pr_warn("Failed to build identity map for [%llx-%llx]\n",
> -				start, end);
> +		if (iommu_domain_identity_map(si_domain, start_vpfn,
> +					last_vpfn)) {
> +			pr_warn("Failed to build identity map for [%lx-%lx]\n",
> +				start_vpfn, last_vpfn);
>   			return NOTIFY_BAD;
>   		}
>   		break;

Actually we don't need to update the si_domain if iommu hardware
supports pass-through mode. This should be made in a separated patch
anyway.

Best regards,
Lu Baolu

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
