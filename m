Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0CBB10C3
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 16:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wl7ba84kYCY3jxUxkiyarg4jilXhFzhy2sZAPe8aYZw=; b=txKdWkCROGmdOt
	rcOe07K+y4D66YSEtnVR2e+oEkhm0PSt5c7owkuaCqVRDKuYDLaoEctdEr86i6br5T8VO0wosI8uy
	Vsi/4OCFA/xvDDYF9D1kHunW0nmZZiEZadUppxZrArF2bmuBxYaR1TS8jxsLfplzEzFMY8kGyH4Kr
	zAn1RJqu9Wocwu97p4N4Bt7kSjdulUJeHdGojVyNTue8DOq4U8/lo+kK1Ud5sDiFrmoOZpzHrjYUM
	KYz6KpcYTP5IHMeXDJ80Tk2CYHQbcIgvVhV6k3A4Zq/t7ttWZgw0wSXzvd0kzfXDOkAcmn2hgkDB2
	UG3iNZ5B6P/s6ttPzV1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Pny-0004SQ-Mx; Thu, 12 Sep 2019 14:10:38 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Pni-0004H0-5z
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 14:10:23 +0000
Received: by mail-qk1-x741.google.com with SMTP id f13so24566820qkm.9
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Sep 2019 07:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GCjjLgVtFgvLpF7hk0kQsXY9fbLxlC94ZIxVciM5Jrc=;
 b=IPApOKeTDA0Q9+airIUTSKgoI5W/B0vmtx4ONsYipmEFXipYHSjxhseubVsD78TdxU
 dYPV78ZTBxTrnu/tMf4HVQMXSw8U6dt1SmhrJ5a19zxDaakP7L+QesLii21nf2FzPHxN
 Zjs6ekynBLAGjgTMoM4zHhBJSE+7E0uuU9piEVI+bjaJelgfjRJ2H5j39IXm4yv9xI6E
 esqYGbyoNBcgomaPf9V0h7s54HaVzL3i3U6i1O2S3WrEAdaJPEAP5jG8h8sM1lHIIYlF
 XUKbgoOWnroOIHvP3QjURsVtfoTrXmohsNBtw/UBWrHLW5ESORYaXQpvpiIG0kHvSIx9
 2XdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GCjjLgVtFgvLpF7hk0kQsXY9fbLxlC94ZIxVciM5Jrc=;
 b=rD7515EWBRDT8hbPlAN/Hh6VvAg6T1hnKNdaiIxFc+idsoXxjasyWOdt9+EPJC6xRl
 52f9TNb8Vjuk6r9ng9ALFlXxGkuLN+++sDWP1TnRnbwPfHjBrCTwggZXmV5CFoobNrgU
 Ssx7YMPRmTKjzb+WCzu7yp5TcPCXsZpTrtG6TwvEWu8ExDe6BhzeeFRNRdDpSklFRnXD
 X8EfJ7Bep/mGgJ2C+gP7mC4ai76vq9ik/TQndu55QNtpWGF2L8E+D1FMswAcfkH1bspP
 DJxAPg8SnMO6D3iPGVaVxJSMHgNp0jat4wIYRriFwwqoiCpMvPndWiK46pmOIAZxPtg+
 nByA==
X-Gm-Message-State: APjAAAX/jH5CCwIHUy/SSYEhOL1qT6ki/am3TAWBJV6HXRtI5dS3SP2y
 Py4MiKaAt1F8Z6L7T9RFdvhAAA==
X-Google-Smtp-Source: APXvYqxQUvfIMWnP584+jxyb55PV/oXt+R5gYyiqrvmNhItO9b00LDpKMRkbSIi9+vN3Gj5tiYCd3w==
X-Received: by 2002:a37:aa96:: with SMTP id
 t144mr29539420qke.275.1568297418177; 
 Thu, 12 Sep 2019 07:10:18 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id i4sm6615004qke.93.2019.09.12.07.10.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 07:10:17 -0700 (PDT)
Message-ID: <1568297415.5576.143.camel@lca.pw>
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
From: Qian Cai <cai@lca.pw>
To: Vlastimil Babka <vbabka@suse.cz>, Walter Wu <walter-zh.wu@mediatek.com>
Date: Thu, 12 Sep 2019 10:10:15 -0400
In-Reply-To: <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
 <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_071022_223850_18C845BB 
X-CRM114-Status: GOOD (  27.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-09-12 at 15:53 +0200, Vlastimil Babka wrote:
> On 9/11/19 5:19 PM, Qian Cai wrote:
> > 
> > The new config looks redundant and confusing. It looks to me more of a document update
> > in Documentation/dev-tools/kasan.txt to educate developers to select PAGE_OWNER and
> > DEBUG_PAGEALLOC if needed.
> 
>  
> Agreed. But if you want it fully automatic, how about something
> like this (on top of mmotm/next)? If you agree I'll add changelog
> and send properly.
> 
> ----8<----
> 
> From a528d14c71d7fdf5872ca8ab3bd1b5bad26670c9 Mon Sep 17 00:00:00 2001
> From: Vlastimil Babka <vbabka@suse.cz>
> Date: Thu, 12 Sep 2019 15:51:23 +0200
> Subject: [PATCH] make KASAN enable page_owner with free stack capture
> 
> ---
>  include/linux/page_owner.h |  1 +
>  lib/Kconfig.kasan          |  4 ++++
>  mm/Kconfig.debug           |  5 +++++
>  mm/page_alloc.c            |  6 +++++-
>  mm/page_owner.c            | 37 ++++++++++++++++++++++++-------------
>  5 files changed, 39 insertions(+), 14 deletions(-)
> 
> diff --git a/include/linux/page_owner.h b/include/linux/page_owner.h
> index 8679ccd722e8..6ffe8b81ba85 100644
> --- a/include/linux/page_owner.h
> +++ b/include/linux/page_owner.h
> @@ -6,6 +6,7 @@
>  
>  #ifdef CONFIG_PAGE_OWNER
>  extern struct static_key_false page_owner_inited;
> +extern bool page_owner_free_stack_disabled;
>  extern struct page_ext_operations page_owner_ops;
>  
>  extern void __reset_page_owner(struct page *page, unsigned int order);
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 6c9682ce0254..dc560c7562e8 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -41,6 +41,8 @@ config KASAN_GENERIC
>  	select SLUB_DEBUG if SLUB
>  	select CONSTRUCTORS
>  	select STACKDEPOT
> +	select PAGE_OWNER
> +	select PAGE_OWNER_FREE_STACK
>  	help
>  	  Enables generic KASAN mode.
>  	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
> @@ -63,6 +65,8 @@ config KASAN_SW_TAGS
>  	select SLUB_DEBUG if SLUB
>  	select CONSTRUCTORS
>  	select STACKDEPOT
> +	select PAGE_OWNER
> +	select PAGE_OWNER_FREE_STACK
>  	help
>  	  Enables software tag-based KASAN mode.
>  	  This mode requires Top Byte Ignore support by the CPU and therefore

I don't know how KASAN people will feel about this. Especially, KASAN_SW_TAGS
was designed for people who complain about memory footprint of KASAN_GENERIC is
too high as far as I can tell.

I guess it depends on them to test the new memory footprint of KASAN to see if
they are happy with it.

> diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
> index 327b3ebf23bf..a71d52636687 100644
> --- a/mm/Kconfig.debug
> +++ b/mm/Kconfig.debug
> @@ -13,6 +13,7 @@ config DEBUG_PAGEALLOC
>  	depends on DEBUG_KERNEL
>  	depends on !HIBERNATION || ARCH_SUPPORTS_DEBUG_PAGEALLOC && !PPC && !SPARC
>  	select PAGE_POISONING if !ARCH_SUPPORTS_DEBUG_PAGEALLOC
> +	select PAGE_OWNER_FREE_STACK if PAGE_OWNER
>  	---help---
>  	  Unmap pages from the kernel linear mapping after free_pages().
>  	  Depending on runtime enablement, this results in a small or large
> @@ -62,6 +63,10 @@ config PAGE_OWNER
>  
>  	  If unsure, say N.
>  
> +config PAGE_OWNER_FREE_STACK
> +	def_bool n
> +	depends on PAGE_OWNER
> +
>  config PAGE_POISONING
>  	bool "Poison pages after freeing"
>  	select PAGE_POISONING_NO_SANITY if HIBERNATION
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index c5d62f1c2851..d9e44671af3f 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -710,8 +710,12 @@ static int __init early_debug_pagealloc(char *buf)
>  	if (kstrtobool(buf, &enable))
>  		return -EINVAL;
>  
> -	if (enable)
> +	if (enable) {
>  		static_branch_enable(&_debug_pagealloc_enabled);
> +#ifdef CONFIG_PAGE_OWNER
> +		page_owner_free_stack_disabled = false;
> +#endif
> +	}
>  
>  	return 0;
>  }
> diff --git a/mm/page_owner.c b/mm/page_owner.c
> index dee931184788..d4551d7012d0 100644
> --- a/mm/page_owner.c
> +++ b/mm/page_owner.c
> @@ -24,13 +24,15 @@ struct page_owner {
>  	short last_migrate_reason;
>  	gfp_t gfp_mask;
>  	depot_stack_handle_t handle;
> -#ifdef CONFIG_DEBUG_PAGEALLOC
> +#ifdef CONFIG_PAGE_OWNER_FREE_STACK
>  	depot_stack_handle_t free_handle;
>  #endif
>  };
>  
>  static bool page_owner_disabled = true;
> +bool page_owner_free_stack_disabled = true;
>  DEFINE_STATIC_KEY_FALSE(page_owner_inited);
> +static DEFINE_STATIC_KEY_FALSE(page_owner_free_stack);
>  
>  static depot_stack_handle_t dummy_handle;
>  static depot_stack_handle_t failure_handle;
> @@ -46,6 +48,11 @@ static int __init early_page_owner_param(char *buf)
>  	if (strcmp(buf, "on") == 0)
>  		page_owner_disabled = false;
>  
> +	if (IS_ENABLED(CONFIG_KASAN)) {
> +		page_owner_disabled = false;
> +		page_owner_free_stack_disabled = false;
> +	}
> +
>  	return 0;
>  }
>  early_param("page_owner", early_page_owner_param);
> @@ -91,6 +98,8 @@ static void init_page_owner(void)
>  	register_failure_stack();
>  	register_early_stack();
>  	static_branch_enable(&page_owner_inited);
> +	if (!page_owner_free_stack_disabled)
> +		static_branch_enable(&page_owner_free_stack);
>  	init_early_allocated_pages();
>  }
>  
> @@ -148,11 +157,11 @@ void __reset_page_owner(struct page *page, unsigned int order)
>  {
>  	int i;
>  	struct page_ext *page_ext;
> -#ifdef CONFIG_DEBUG_PAGEALLOC
> +#ifdef CONFIG_PAGE_OWNER_FREE_STACK
>  	depot_stack_handle_t handle = 0;
>  	struct page_owner *page_owner;
>  
> -	if (debug_pagealloc_enabled())
> +	if (static_branch_unlikely(&page_owner_free_stack))
>  		handle = save_stack(GFP_NOWAIT | __GFP_NOWARN);
>  #endif
>  
> @@ -161,8 +170,8 @@ void __reset_page_owner(struct page *page, unsigned int order)
>  		if (unlikely(!page_ext))
>  			continue;
>  		__clear_bit(PAGE_EXT_OWNER_ACTIVE, &page_ext->flags);
> -#ifdef CONFIG_DEBUG_PAGEALLOC
> -		if (debug_pagealloc_enabled()) {
> +#ifdef CONFIG_PAGE_OWNER_FREE_STACK
> +		if (static_branch_unlikely(&page_owner_free_stack)) {
>  			page_owner = get_page_owner(page_ext);
>  			page_owner->free_handle = handle;
>  		}
> @@ -451,14 +460,16 @@ void __dump_page_owner(struct page *page)
>  		stack_trace_print(entries, nr_entries, 0);
>  	}
>  
> -#ifdef CONFIG_DEBUG_PAGEALLOC
> -	handle = READ_ONCE(page_owner->free_handle);
> -	if (!handle) {
> -		pr_alert("page_owner free stack trace missing\n");
> -	} else {
> -		nr_entries = stack_depot_fetch(handle, &entries);
> -		pr_alert("page last free stack trace:\n");
> -		stack_trace_print(entries, nr_entries, 0);
> +#ifdef CONFIG_PAGE_OWNER_FREE_STACK
> +	if (static_branch_unlikely(&page_owner_free_stack)) {
> +		handle = READ_ONCE(page_owner->free_handle);
> +		if (!handle) {
> +			pr_alert("page_owner free stack trace missing\n");
> +		} else {
> +			nr_entries = stack_depot_fetch(handle, &entries);
> +			pr_alert("page last free stack trace:\n");
> +			stack_trace_print(entries, nr_entries, 0);
> +		}
>  	}
>  #endif
>  

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
