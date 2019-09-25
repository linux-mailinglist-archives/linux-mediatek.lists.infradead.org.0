Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3400BDB46
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 11:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJTTDaMfin9tqLUtKP5i2KVH+rCGPBlBkaKPsXhyrbs=; b=WERyyVym3p7xqQ
	lahzL2cuo5KQRPqs+orbBwt1sTi+Ln+l5nSathU0svuyIdVL7kcn6pup4poYuoJHDcPKymK0s0/Vk
	EfXcD0b53KybMFvjABWrb7qkX1SC93XmG3HFNgMoLP4sT6mbOmZkawfK/SczzGXmUJSK+SODib9JM
	is7o3oQ25eA5arCiVH/TlVYjf581udYPA1DVgk3j1FPRoz3HbJldaBHGlRTs13doDBUixYv/JcOyS
	wepT+09lQvPptqIkArDJaLnEfZz4D7nUcGrTKfj1pzveyy8d+F48iGA4Vm7bsJ880iNEMZx9Mxfvc
	jWgCPvbv13K3dFFJuFpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3nv-0004PY-A4; Wed, 25 Sep 2019 09:41:47 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3np-0004P5-6U; Wed, 25 Sep 2019 09:41:43 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92.2)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iD3ne-0004yL-1n; Wed, 25 Sep 2019 12:41:30 +0300
Subject: Re: [PATCH] mm, debug, kasan: save and dump freeing stack trace for
 kasan
To: Vlastimil Babka <vbabka@suse.cz>, Walter Wu <walter-zh.wu@mediatek.com>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
 <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
 <1568297308.19040.5.camel@mtksdccf07>
 <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
 <79fede05-735b-8477-c273-f34db93fd72b@virtuozzo.com>
 <6d58ce86-b2a4-40af-bf40-c604b457d086@suse.cz>
 <4e76e7ce-1d61-524a-622b-663c01d19707@virtuozzo.com>
 <d98bf550-367d-0744-025a-52307248ec82@suse.cz>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <28e076ed-d4c2-c29d-f0cb-b976e8c0725a@virtuozzo.com>
Date: Wed, 25 Sep 2019 12:41:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d98bf550-367d-0744-025a-52307248ec82@suse.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_024141_235974_96A2DB25 
X-CRM114-Status: GOOD (  11.92  )
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, Andrey Konovalov <andreyknvl@google.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 9/23/19 11:20 AM, Vlastimil Babka wrote:
> On 9/16/19 5:57 PM, Andrey Ryabinin wrote:
>> I'd rather keep all logic in one place, i.e. "if (!page_owner_disabled && (IS_ENABLED(CONFIG_KASAN) || debug_pagealloc_enabled())"
>> With this no changes in early_debug_pagealloc() required and CONFIG_DEBUG_PAGEALLOC_ENABLE_DEFAULT=y should also work correctly.
> 
> OK.
> 
> ----8<----
> 
> From 7437c43f02682fdde5680fa83e87029f7529e222 Mon Sep 17 00:00:00 2001
> From: Vlastimil Babka <vbabka@suse.cz>
> Date: Mon, 16 Sep 2019 11:28:19 +0200
> Subject: [PATCH] mm, debug, kasan: save and dump freeing stack trace for kasan
> 
> The commit "mm, page_owner, debug_pagealloc: save and dump freeing stack trace"
> enhanced page_owner to also store freeing stack trace, when debug_pagealloc is
> also enabled. KASAN would also like to do this [1] to improve error reports to
> debug e.g. UAF issues. This patch therefore introduces a helper config option
> PAGE_OWNER_FREE_STACK, which is enabled when PAGE_OWNER and either of
> DEBUG_PAGEALLOC or KASAN is enabled. Boot-time, the free stack saving is
> enabled when booting a KASAN kernel with page_owner=on, or non-KASAN kernel
> with debug_pagealloc=on and page_owner=on.
> 
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=203967
> 
> Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> Suggested-by: Walter Wu <walter-zh.wu@mediatek.com>
> Suggested-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Signed-off-by: Vlastimil Babka <vbabka@suse.cz>
> ---

Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
