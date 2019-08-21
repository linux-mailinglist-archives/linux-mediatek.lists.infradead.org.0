Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EBD97EC2
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 17:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tnEhbj5nGA2+m+IZz1LeuiRRLuV7LFpvto3lXzRN9hs=; b=vBFKE/p9eJzhRq4RGQKgfYsds
	ToFS1z+YEWJ2YljZVEe4YbdE8pZ5AI6LR9bsxS4KXzWHZ7Gdz+kPGHKajSmgPPtddX2k6oGk53zHM
	DJb8hVa+5uqmRk/hu5TI+YwdU0HgH9uJ6hVTN2K8CLvZmnHl+fy0pxV0c/Nhz/8W0yOoPiZCl5tjg
	A3DX7etkvikBxYjWfybYKzPRYD0YTGXACNQASx1qWmdgORLdr1dwzvPA4CimwjfP5LDUif25UwLVa
	4iNphcJQuejbYNuKsTTQFAfigrEE3OV2Wx7zfsWQhM/3ltd1W4kWT+xPZiuJtgBoveofZrCMQLmK/
	vkTwYgelg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SdK-0005tQ-LA; Wed, 21 Aug 2019 15:34:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Sd9-0005jj-Mb; Wed, 21 Aug 2019 15:34:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB655337;
 Wed, 21 Aug 2019 08:34:31 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E11F53F718;
 Wed, 21 Aug 2019 08:34:28 -0700 (PDT)
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
To: Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <22a79977-5074-7af1-97b8-8a3e549b23c1@arm.com>
Date: Wed, 21 Aug 2019 16:34:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_083435_783429_3385A0E0 
X-CRM114-Status: GOOD (  20.85  )
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
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 21/08/2019 16:24, Will Deacon wrote:
> On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
>> MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
>> the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
>> respectively. Meanwhile the iova still is 32bits.
>>
>> Regarding whether the pagetable address could be over 4GB, the mt8183
>> support it while the previous mt8173 don't, thus keep it as is.
>>
>> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
>> ---
>>   drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
>>   include/linux/io-pgtable.h         |  7 +++----
>>   2 files changed, 28 insertions(+), 11 deletions(-)
> 
> [...]
> 
>> @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
>>   {
>>   	struct arm_v7s_io_pgtable *data;
>>   
>> -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
>> +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
>> +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
>> +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> 
> Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
> ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?

You mean oas, right? I believe the hardware *does* actually support a 
32-bit ias as well, but we shouldn't pretend to support that while 
__arm_v7s_alloc_table() still only knows how to allocate normal-sized 
tables.

Robin.

> 
> With that change:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Will
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
