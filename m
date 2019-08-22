Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5C49906A
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 12:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c4wG+6uX7G2sk6ed6i3gXzwUaPv1yBxo61uitcsBUUI=; b=cTd15OstbwQbmnjHnRpISWLbP
	yy+qLC0gG6ge5E+srhhrWjMgUTxFKHVInEK0S0oMZjhMaFk4bR1nW6t4RKtty1PwZXuoIMOiJHS0f
	hFe0xl0Ff1Nl9/mPhkiIm8IJcyanX7hA0dO6eQvxIIO+/7o+bYmn2IWRQd+yRRGihSe3X3q50SBao
	MXR9Bz5eTfVrD5MKs54+zasHBXRPfy4drCtgiBqkaXHiXIQVg9bmV2hFNBHcFk8Ia4F7vssAqYXR4
	zQGt5B+4Da/L+LX2AEHdCpi5Jh5McUMAXZgVzXzQjkYDwpqIxRLAEQvrty0yzH9/eXJQk/5+Rktu9
	3Hm6SupRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0k21-0000jp-Jz; Thu, 22 Aug 2019 10:09:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0k1k-0000Y8-37; Thu, 22 Aug 2019 10:09:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3587F15A2;
 Thu, 22 Aug 2019 03:09:07 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E13E43F246;
 Thu, 22 Aug 2019 03:09:02 -0700 (PDT)
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
To: Yong Wu <yong.wu@mediatek.com>, Will Deacon <will@kernel.org>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
 <1566464186.11621.7.camel@mhfsdcap03>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <10d5122d-3375-161b-9356-2ddfc1c835bd@arm.com>
Date: Thu, 22 Aug 2019 11:08:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566464186.11621.7.camel@mhfsdcap03>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_030908_223261_56CB337E 
X-CRM114-Status: GOOD (  20.29  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2019-08-22 9:56 am, Yong Wu wrote:
> On Wed, 2019-08-21 at 16:24 +0100, Will Deacon wrote:
>> On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
>>> MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
>>> the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
>>> respectively. Meanwhile the iova still is 32bits.
>>>
>>> Regarding whether the pagetable address could be over 4GB, the mt8183
>>> support it while the previous mt8173 don't, thus keep it as is.
>>>
>>> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
>>> ---
>>>   drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
>>>   include/linux/io-pgtable.h         |  7 +++----
>>>   2 files changed, 28 insertions(+), 11 deletions(-)
>>
>> [...]
>>
>>> @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
>>>   {
>>>   	struct arm_v7s_io_pgtable *data;
>>>   
>>> -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
>>> +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
>>> +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
>>> +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
>>
>> Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
>> ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?
> 
> Here I only simply skip the oas checking for our case. then which way do
> your prefer?  something like you commented before:?
> 
> 
> 	if (cfg->ias > ARM_V7S_ADDR_BITS)
> 		return NULL;
> 
> 	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
> 		if (!IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT))
> 			cfg->oas = min(cfg->oas, ARM_V7S_ADDR_BITS);
> 		else if (cfg->oas > 34)
> 			return NULL;
> 	} else if (cfg->oas > ARM_V7S_ADDR_BITS) {
> 		return NULL;
> 	}

All it should take is something like:

	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)
		max_oas = 34;
	else
		max_oas = 32;
	if (cfg->oas > max_oas)
		return NULL;

or even just:

	if (cfg->oas > 32 ||
	    (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT && cfg->oas > 34))
		return NULL;

(and if we prefer the latter style, perhaps we could introduce some kind 
of "is_mtk_4gb()" helper to save on verbosity)

We shouldn't need to care about the size of phys_addr_t either way - the 
fact is that the MTK format can still encode up to 34 bits of PA 
regardless of whether callers can actually pass addresses that large.

Robin.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
