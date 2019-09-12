Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B20EB112F
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 16:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ZYxCWRoba+foyzH5M3gfcNtdK1t8AtdWTuei2ppWJ8=; b=T+UAeliu3qrHsq9P4rXD9jMdt
	2tsJL3s6eTVaFZ0kdeWMiorblyjCpgfsnCWkf9RPgCyE6CiG6NvPsTML14x41Zmerk5oyzkP0OR6X
	VDD9m/I8TBhRw1qj1j07Wk9b9xqydSynJ8C1M+cLV7RtJXD100vCCIculuEHEuk68CPv5MUK2oY2u
	UXlbmWKFHdCs3ccLdaYyozTWyeley3bXqi4i4iVhLdFXRrC45LGJtjzBlGfrjAmFDutkzFyQ5++dr
	dY/lGg4gnjtjOG5pUj6730Q3ZURhZ0t/7ZrguVGc7mx7V6sQCsV6K+HRduNegFGU+MJJ97y5I+4vz
	qvo35U61w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Q8e-0002fy-Ri; Thu, 12 Sep 2019 14:32:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Q8O-0002Va-Gz; Thu, 12 Sep 2019 14:31:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F35A4AFFE;
 Thu, 12 Sep 2019 14:31:42 +0000 (UTC)
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
To: Walter Wu <walter-zh.wu@mediatek.com>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
 <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
 <1568297308.19040.5.camel@mtksdccf07>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
Date: Thu, 12 Sep 2019 16:31:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568297308.19040.5.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_073144_713249_47F64288 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 9/12/19 4:08 PM, Walter Wu wrote:
> 
>>   extern void __reset_page_owner(struct page *page, unsigned int order);
>> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
>> index 6c9682ce0254..dc560c7562e8 100644
>> --- a/lib/Kconfig.kasan
>> +++ b/lib/Kconfig.kasan
>> @@ -41,6 +41,8 @@ config KASAN_GENERIC
>>   	select SLUB_DEBUG if SLUB
>>   	select CONSTRUCTORS
>>   	select STACKDEPOT
>> +	select PAGE_OWNER
>> +	select PAGE_OWNER_FREE_STACK
>>   	help
>>   	  Enables generic KASAN mode.
>>   	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
>> @@ -63,6 +65,8 @@ config KASAN_SW_TAGS
>>   	select SLUB_DEBUG if SLUB
>>   	select CONSTRUCTORS
>>   	select STACKDEPOT
>> +	select PAGE_OWNER
>> +	select PAGE_OWNER_FREE_STACK
>>   	help
> 
> What is the difference between PAGE_OWNER+PAGE_OWNER_FREE_STACK and
> DEBUG_PAGEALLOC?

Same memory usage, but debug_pagealloc means also extra checks and 
restricting memory access to freed pages to catch UAF.

> If you directly enable PAGE_OWNER+PAGE_OWNER_FREE_STACK
> PAGE_OWNER_FREE_STACK,don't you think low-memory device to want to use
> KASAN?

OK, so it should be optional? But I think it's enough to distinguish no 
PAGE_OWNER at all, and PAGE_OWNER+PAGE_OWNER_FREE_STACK together - I 
don't see much point in PAGE_OWNER only for this kind of debugging.

So how about this? KASAN wouldn't select PAGE_OWNER* but it would be 
recommended in the help+docs. When PAGE_OWNER and KASAN are selected by 
user, PAGE_OWNER_FREE_STACK gets also selected, and both will be also 
runtime enabled without explicit page_owner=on.
I mostly want to avoid another boot-time option for enabling 
PAGE_OWNER_FREE_STACK.
Would that be enough flexibility for low-memory devices vs full-fledged 
debugging?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
