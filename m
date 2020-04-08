Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81D21A24A3
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Apr 2020 17:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Eels7QtFHiHmmVmbxCP3TqVZ/o84Asmh3jSjcU9pDg=; b=QiqdFYtFBdWqGMvIy9jIKGRq3
	1cMHMOqoEdeS5WcsLqmcT7JrS5K1kwsMMgyzB0NXjcT5IXske5Y3PiJYFKBfot9AaA93DU/+d0INR
	zs5UBIPLPxVPjZzyn1LCDyIpF1weEmshSci2OMbkdGRgzasdqWIJ0UHYnh5lPAdckT67RZ3Aa+RqD
	vdmxjICG0Qyn1myF0mFvqtF96VtAERPB3M3M5D/W1Q55N/8lwPV8ihNgHAorSHrpNS8YvkPURalvp
	01LzYq9E/H08FQXFgMyIOQPv//RlL5I6Cmtj5asbO9FqP0/R9K+AmhO4Hgio3q/xWQ3rG3FKCS2Nz
	758ti4liQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCIt-0001Oo-60; Wed, 08 Apr 2020 15:07:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCIp-0001Nl-0R; Wed, 08 Apr 2020 15:07:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23D331063;
 Wed,  8 Apr 2020 08:07:40 -0700 (PDT)
Received: from [10.57.55.221] (unknown [10.57.55.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6D903F68F;
 Wed,  8 Apr 2020 08:07:35 -0700 (PDT)
Subject: Re: [RFC PATCH 17/34] iommu/arm-smmu: Store device instead of group
 in arm_smmu_s2cr
To: Joerg Roedel <joro@8bytes.org>
References: <20200407183742.4344-1-joro@8bytes.org>
 <20200407183742.4344-18-joro@8bytes.org>
 <98c10a41-d223-e375-9742-b6471c3dc33c@arm.com>
 <20200408143707.GK3103@8bytes.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f8b541c2-9271-fc48-dde6-166a2ed6679f@arm.com>
Date: Wed, 8 Apr 2020 16:07:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200408143707.GK3103@8bytes.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_080743_097341_A35C2383 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Kukjin Kim <kgene@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2020-04-08 3:37 pm, Joerg Roedel wrote:
> Hi Robin,
> 
> thanks for looking into this.
> 
> On Wed, Apr 08, 2020 at 01:09:40PM +0100, Robin Murphy wrote:
>> For a hot-pluggable bus where logical devices may share Stream IDs (like
>> fsl-mc), this could happen:
>>
>>    create device A
>>    iommu_probe_device(A)
>>      iommu_device_group(A) -> alloc group X
>>    create device B
>>    iommu_probe_device(B)
>>      iommu_device_group(A) -> lookup returns group X
>>    ...
>>    iommu_remove_device(A)
>>    delete device A
>>    create device C
>>    iommu_probe_device(C)
>>      iommu_device_group(C) -> use-after-free of A
>>
>> Preserving the logical behaviour here would probably look *something* like
>> the mangled diff below, but I haven't thought it through 100%.
> 
> Yeah, I think you are right. How about just moving the loop which sets
> s2crs[idx].group to arm_smmu_device_group()? In that case I can drop
> this patch and leave the group pointer in place.

Isn't that exactly what I suggested? :)

I don't recall for sure, but knowing me, that bit of group bookkeeping 
is only where it currently is because it cheekily saves iterating the 
IDs a second time. I don't think there's any technical reason.

Robin.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
