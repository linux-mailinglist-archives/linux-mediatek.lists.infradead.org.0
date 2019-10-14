Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF132D606D
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 12:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/evsZST5NyQIlchNl+JXgR+wfzkwbMhiIJFFH9j8dU=; b=Hwcl4h4O52Wbmw
	mL366w7DJirjUe1HmdQ+LYRTOzPdUqKCjvN/0EPXP01Zq9NZxGA6MhYU6GepgJGhAVex4wasn/CdF
	qGz30sFn1Ll8QaIV55AuOoFbhyR6cOjutbvBGBCikZmIhLEdP/Oproc7LGQvNEI9kWjfU3JrtPViX
	qcu+xeUV+7F0G9TPOwRJ8gBi0uH/Kw/FIle0QPNemjK+24tIMKd61K0dlPSh+0/2ggPAf2/AlSDfl
	GvRZo3fJ37eFTfm+5WBS6tUzNZd+OwBHqxaSFLqfZhS70YLrPhjWrEwY7V01NgKwGNjX23+3D/0Ee
	mQ5dV4VoFgRCfmS/PyVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxmX-0002GM-LJ; Mon, 14 Oct 2019 10:40:53 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxmT-0002FX-GO
 for linux-mediatek@lists.infradead.org; Mon, 14 Oct 2019 10:40:51 +0000
Received: by mail-qt1-x844.google.com with SMTP id o12so24771665qtf.3
 for <linux-mediatek@lists.infradead.org>; Mon, 14 Oct 2019 03:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3YrhF1CY8Iis1JpXe2D3S6ZujIQpFi34GXY+qWGn3K4=;
 b=ROvJeYaFK/UErE1I8NcK2RXh5FOCiUehaOama+hKeRb6K0pU+BoWEggIDveJnxEDUy
 Ucpi3nVPGtyHOUKX7kAmQGQaiCfc5d8UVEJaiA+QujWXu+uBLr0cMVwJV8r/ebuc+ekE
 q/6vo8w+5ii/MJo6qEJCFuzsRSBCODdDphMVpChyoyOC/1m5B5j9xPGp8JzPVbZEdXFJ
 R1JBi7mm+KeNwdZ4GZaUG8QT3EvQpixIwU6nkcaWeVcTXrM+qyQyQuPiyip5D5SLHV3Z
 hpGz5rJz2gR3FpKjLbrFYBqgLfJW2iPOWL2FOtpBydYUw3a2NVKwVypmzK/zKYty5hMY
 zoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3YrhF1CY8Iis1JpXe2D3S6ZujIQpFi34GXY+qWGn3K4=;
 b=GKc6Qg7vrHuJhyTyp7ET06hWozmpQS0dK4oScKZekiVXS/ff6qbuAmZei3LaFBSdm6
 gok+DTQ0p0WjbOUnaQi4bgiDKij5WcyNyJJ08tMbNI7nMpZyhMpdXIDkPsZusvF3wWwD
 qDSbtaphDp/LaSqvwNOMnKIXkuseEeiAThG7EpLPcao3Fto7ke+vnwrH+pib4N+oi4pA
 eWCJ2HJjOU8KfmcfSu3zEysJk2Q4k+CHeLoLD/Fn7noWdctyKbGJkRweSIMlXLALjHbC
 BwDCP2yGdxo1NOlhmQO7i4eM8ZeoPEmO5neNXor1Do9vArD4am+Q5jMLfF/39UX9W1G/
 FumA==
X-Gm-Message-State: APjAAAXxrBH2DUew6lw/FNeGF+C+2fA7kfJvYblx+DgvTty7cfvTA+Hh
 IRfsSsMnihFPGhvkMJBSuKCAuFM6iaWBEgYIlZyVZw==
X-Google-Smtp-Source: APXvYqzFZN6AZNRHFN9kMSHww3z2LMClLWJn5P8w2ZzOop0SdLx+xfMbKdpOqyrk2p3husLubvv8FDO5kjHf1lEtBmQ=
X-Received: by 2002:a0c:fec3:: with SMTP id z3mr30851968qvs.122.1571049647781; 
 Mon, 14 Oct 2019 03:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191014103632.17930-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20191014103632.17930-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 14 Oct 2019 12:40:36 +0200
Message-ID: <CACT4Y+bQNDMZE72rcrpfA+eBizx8OGx-Ae78Ci5KU6AN-PBDqw@mail.gmail.com>
Subject: Re: [PATCH 1/2] kasan: detect negative size in memory operation
 function
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_034049_578693_540D82F2 
X-CRM114-Status: GOOD (  27.26  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:36 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> KASAN missed detecting size is negative numbers in memset(), memcpy(),
> and memmove(), it will cause out-of-bounds bug, so needs to be detected
> by KASAN.
>
> If size is negative numbers, then it has three reasons to be
> defined as heap-out-of-bounds bug type.
> 1) Casting negative numbers to size_t would indeed turn up as
>    a large size_t and its value will be larger than ULONG_MAX/2,
>    so that this can qualify as out-of-bounds.
> 2) If KASAN has new bug type and user-space passes negative size,
>    then there are duplicate reports. So don't produce new bug type
>    in order to prevent duplicate reports by some systems (e.g. syzbot)
>    to report the same bug twice.
> 3) When size is negative numbers, it may be passed from user-space.
>    So we always print heap-out-of-bounds in order to prevent that
>    kernel-space and user-space have the same bug but have duplicate
>    reports.
>
> KASAN report:
>
>  BUG: KASAN: heap-out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
>  Read of size 18446744073709551608 at addr ffffff8069660904 by task cat/72
>
>  CPU: 2 PID: 72 Comm: cat Not tainted 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
>  Hardware name: linux,dummy-virt (DT)
>  Call trace:
>   dump_backtrace+0x0/0x288
>   show_stack+0x14/0x20
>   dump_stack+0x10c/0x164
>   print_address_description.isra.9+0x68/0x378
>   __kasan_report+0x164/0x1a0
>   kasan_report+0xc/0x18
>   check_memory_region+0x174/0x1d0
>   memmove+0x34/0x88
>   kmalloc_memmove_invalid_size+0x70/0xa0
>
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
>
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Reported -by: Dmitry Vyukov <dvyukov@google.com>
> Suggested-by: Dmitry Vyukov <dvyukov@google.com>

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>  mm/kasan/common.c         | 13 ++++++++-----
>  mm/kasan/generic.c        |  5 +++++
>  mm/kasan/generic_report.c | 18 ++++++++++++++++++
>  mm/kasan/tags.c           |  5 +++++
>  mm/kasan/tags_report.c    | 18 ++++++++++++++++++
>  5 files changed, 54 insertions(+), 5 deletions(-)
>
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 6814d6d6a023..6ef0abd27f06 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
>  #undef memset
>  void *memset(void *addr, int c, size_t len)
>  {
> -       check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> +       if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> +               return NULL;
>
>         return __memset(addr, c, len);
>  }
> @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -       check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +       !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> +               return NULL;
>
>         return __memmove(dest, src, len);
>  }
> @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t len)
>  #undef memcpy
>  void *memcpy(void *dest, const void *src, size_t len)
>  {
> -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -       check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +       !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> +               return NULL;
>
>         return __memcpy(dest, src, len);
>  }
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 616f9dd82d12..02148a317d27 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -173,6 +173,11 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
>         if (unlikely(size == 0))
>                 return true;
>
> +       if (unlikely((long)size < 0)) {
> +               kasan_report(addr, size, write, ret_ip);
> +               return false;
> +       }
> +
>         if (unlikely((void *)addr <
>                 kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
>                 kasan_report(addr, size, write, ret_ip);
> diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> index 36c645939bc9..52a92c7db697 100644
> --- a/mm/kasan/generic_report.c
> +++ b/mm/kasan/generic_report.c
> @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
>
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +       /*
> +        * If access_size is negative numbers, then it has three reasons
> +        * to be defined as heap-out-of-bounds bug type.
> +        * 1) Casting negative numbers to size_t would indeed turn up as
> +        *    a large size_t and its value will be larger than ULONG_MAX/2,
> +        *    so that this can qualify as out-of-bounds.
> +        * 2) If KASAN has new bug type and user-space passes negative size,
> +        *    then there are duplicate reports. So don't produce new bug type
> +        *    in order to prevent duplicate reports by some systems
> +        *    (e.g. syzbot) to report the same bug twice.
> +        * 3) When size is negative numbers, it may be passed from user-space.
> +        *    So we always print heap-out-of-bounds in order to prevent that
> +        *    kernel-space and user-space have the same bug but have duplicate
> +        *    reports.
> +        */
> +       if ((long)info->access_size < 0)
> +               return "heap-out-of-bounds";
> +
>         if (addr_has_shadow(info->access_addr))
>                 return get_shadow_bug_type(info);
>         return get_wild_bug_type(info);
> diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> index 0e987c9ca052..b829535a3ad7 100644
> --- a/mm/kasan/tags.c
> +++ b/mm/kasan/tags.c
> @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
>         if (unlikely(size == 0))
>                 return true;
>
> +       if (unlikely((long)size < 0)) {
> +               kasan_report(addr, size, write, ret_ip);
> +               return false;
> +       }
> +
>         tag = get_tag((const void *)addr);
>
>         /*
> diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> index 969ae08f59d7..f7ae474aef3a 100644
> --- a/mm/kasan/tags_report.c
> +++ b/mm/kasan/tags_report.c
> @@ -36,6 +36,24 @@
>
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +       /*
> +        * If access_size is negative numbers, then it has three reasons
> +        * to be defined as heap-out-of-bounds bug type.
> +        * 1) Casting negative numbers to size_t would indeed turn up as
> +        *    a large size_t and its value will be larger than ULONG_MAX/2,
> +        *    so that this can qualify as out-of-bounds.
> +        * 2) If KASAN has new bug type and user-space passes negative size,
> +        *    then there are duplicate reports. So don't produce new bug type
> +        *    in order to prevent duplicate reports by some systems
> +        *    (e.g. syzbot) to report the same bug twice.
> +        * 3) When size is negative numbers, it may be passed from user-space.
> +        *    So we always print heap-out-of-bounds in order to prevent that
> +        *    kernel-space and user-space have the same bug but have duplicate
> +        *    reports.
> +        */
> +       if ((long)info->access_size < 0)
> +               return "heap-out-of-bounds";
> +
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>         struct kasan_alloc_meta *alloc_meta;
>         struct kmem_cache *cache;
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20191014103632.17930-1-walter-zh.wu%40mediatek.com.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
