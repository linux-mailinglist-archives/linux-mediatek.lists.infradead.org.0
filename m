Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6B2AD9B6
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Sep 2019 15:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eBusNGewXt6J0UZN2n82U5S/JY8YEoaxwuKLYflLklc=; b=rfuqPGJUcPSMgp0JLox71olfP
	Ar2Y4yMwcs9o+qf3oWN4INrXmDNEv6S6Tkdh3nFRex5E0cnj7cSyl96swXa4x9RMVfgR2LXGiu+Uc
	0ciBeeTpv8NnnQx9XB09FTE1Kob4/U8i+sBt65+MsjIw6IOhYsYfxEeJHxPn6lp7oPZ+EF1Niv5xq
	gZIEZpy03wy/jbOsGL0OsBBapizn1ibyMov30uNc9G65aaLm44kmy4GFyGkyGqvCgiIASxoBJqCHK
	ye5dcx/6YLAbDsvmhkQW+KB9/oFyd5HPwUn7oequzne/CzoSifqjVEAUyh9Cx4zja0yptx1dwgVOW
	cbIUwlobA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JP7-0001uj-Nk; Mon, 09 Sep 2019 13:08:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JOV-0001fM-Sv; Mon, 09 Sep 2019 13:07:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 737C5ADDD;
 Mon,  9 Sep 2019 13:07:46 +0000 (UTC)
Subject: Re: [PATCH v2 0/2] mm/kasan: dump alloc/free stack for page allocator
To: walter-zh.wu@mediatek.com, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Will Deacon <will@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Qian Cai <cai@lca.pw>
References: <20190909082412.24356-1-walter-zh.wu@mediatek.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <d53d88df-d9a4-c126-32a8-4baeb0645a2c@suse.cz>
Date: Mon, 9 Sep 2019 15:07:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909082412.24356-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_060748_344034_867D298D 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 9/9/19 10:24 AM, walter-zh.wu@mediatek.com wrote:
> From: Walter Wu <walter-zh.wu@mediatek.com>
> 
> This patch is KASAN report adds the alloc/free stacks for page allocator
> in order to help programmer to see memory corruption caused by page.
> 
> By default, KASAN doesn't record alloc and free stack for page allocator.
> It is difficult to fix up page use-after-free or dobule-free issue.
> 
> Our patchsets will record the last stack of pages.
> It is very helpful for solving the page use-after-free or double-free.
> 
> KASAN report will show the last stack of page, it may be:
> a) If page is in-use state, then it prints alloc stack.
>     It is useful to fix up page out-of-bound issue.

I still disagree with duplicating most of page_owner functionality for 
the sake of using a single stack handle for both alloc and free (while 
page_owner + debug_pagealloc with patches in mmotm uses two handles). It 
reduces the amount of potentially important debugging information, and I 
really doubt the u32-per-page savings are significant, given the rest of 
KASAN overhead.

> BUG: KASAN: slab-out-of-bounds in kmalloc_pagealloc_oob_right+0x88/0x90
> Write of size 1 at addr ffffffc0d64ea00a by task cat/115
> ...
> Allocation stack of page:
>   set_page_stack.constprop.1+0x30/0xc8
>   kasan_alloc_pages+0x18/0x38
>   prep_new_page+0x5c/0x150
>   get_page_from_freelist+0xb8c/0x17c8
>   __alloc_pages_nodemask+0x1a0/0x11b0
>   kmalloc_order+0x28/0x58
>   kmalloc_order_trace+0x28/0xe0
>   kmalloc_pagealloc_oob_right+0x2c/0x68
> 
> b) If page is freed state, then it prints free stack.
>     It is useful to fix up page use-after-free or double-free issue.
> 
> BUG: KASAN: use-after-free in kmalloc_pagealloc_uaf+0x70/0x80
> Write of size 1 at addr ffffffc0d651c000 by task cat/115
> ...
> Free stack of page:
>   kasan_free_pages+0x68/0x70
>   __free_pages_ok+0x3c0/0x1328
>   __free_pages+0x50/0x78
>   kfree+0x1c4/0x250
>   kmalloc_pagealloc_uaf+0x38/0x80
> 
> This has been discussed, please refer below link.
> https://bugzilla.kernel.org/show_bug.cgi?id=203967

That's not a discussion, but a single comment from Dmitry, which btw 
contains "provide alloc *and* free stacks for it" ("it" refers to page, 
emphasis mine). It would be nice if he or other KASAN guys could clarify.

> Changes since v1:
> - slim page_owner and move it into kasan
> - enable the feature by default
> 
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> ---
>   include/linux/kasan.h |  1 +
>   lib/Kconfig.kasan     |  2 ++
>   mm/kasan/common.c     | 32 ++++++++++++++++++++++++++++++++
>   mm/kasan/kasan.h      |  5 +++++
>   mm/kasan/report.c     | 27 +++++++++++++++++++++++++++
>   5 files changed, 67 insertions(+)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
