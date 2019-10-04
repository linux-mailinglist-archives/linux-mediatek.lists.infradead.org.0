Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9595DCBC4A
	for <lists+linux-mediatek@lfdr.de>; Fri,  4 Oct 2019 15:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWAAw8iZo/gMjVVM7Yxd3ceoFPlRpS2j4gP0NntIP6o=; b=iibb2H5P+/OZRa
	und2W+bU3ZDZJlt0zaWqIQ6IB2tJHEp3aevvc4fyNadHm9CiZXykniumc+WdUNzlzJgmzWutO/GXS
	qOUNtc0Wf+6zPTVOlubQS8tPbyrNfoTjZkHlUpWEAx2YHchi+ZK4LNKqkJkyMKIPrYpIfGVN686Dg
	I4OBf2oE4shjUt4UP/ZUEhVcBanW/Ml4kl26FE1oa9aQmeS8WythxGFCywURm7UtnHnGCj7gRX0oj
	n0GyagYFr4DMkw2/J3/IEM3EUmhHJyMwSC2K5zz9GLfDYrgRz0isiaqZwc2Vs0HHXD0MxavvieoNC
	u0TELvZXbDkOfvmEJmqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGO0b-00065J-7C; Fri, 04 Oct 2019 13:52:37 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGO0Q-0005wR-AT
 for linux-mediatek@lists.infradead.org; Fri, 04 Oct 2019 13:52:28 +0000
Received: by mail-qk1-x743.google.com with SMTP id p10so5825152qkg.8
 for <linux-mediatek@lists.infradead.org>; Fri, 04 Oct 2019 06:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Soan35jSNw0pBZHNZx4RYBGEDn5tQAp2CqUTHCkSaUU=;
 b=F3wWmtC0mbYcjGyjEM64p+UQxuXlOFpJRIWcSSIG5ICG0bGXsunoJLAiTWaHb/S9np
 WAIQVmzaXRMGtKKvCvnfFIHSQKl/zAgcD0jgUuCZ/FDoNnxGdQV/BqmBT98ac7TJkkZo
 VnCFkYkWmeNgHVdpxXY0bY36/THZklIHcuJIvr0Pjg1r14MdRWVSJN1pxv7nrwKKcJQj
 pq4Cexzu8soNezZdRgeCgjePP4AtwQD2LrwfSUQqRmJm7q1jwLOP32ieAwBwcEgmjsns
 2OCq0wIUTGulmbCnudAs8kAFyPvn10WSzR2SOr4WVR+wQt5n4W7SUhttThd2XeiwMEKs
 tJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Soan35jSNw0pBZHNZx4RYBGEDn5tQAp2CqUTHCkSaUU=;
 b=qJ+tpugGGOlVAA8wWe2jyA25D7nojPLMRw9AtaSBD3XjcHvSJB4lQ1QukJVIevcZVa
 gPo7Er7g8wH2xOQzEgopcv49TCictLN0qVwOyq8gJqNz7yZNOFkAmELW2GWj+K3ZB2g0
 DpfpO4KqhhvEJhWd/s5ylqVAW3akQM+8B3An/dQ6/uLyE5obdpReJKYbSA/tn3dwsOYC
 l0ED4p6xhmdU+ioPGaXhY+2wMrTfAASwwrzCdYW7bExTpFP5WTBnEr2uHij6ABEzoZSU
 7CJYAXQdXVTReenYsoFZzlRGQ8QIZy4KW9EMpGykRpQs1T0c9sqj+9bMZpZ897NOwb44
 dmaA==
X-Gm-Message-State: APjAAAUVMz/Az9kY2djF6EcLMuKzsG+/hKqrlBIuhtLTYBa+Bq1XVDXU
 gJIbgFlrhqKxKA67ow6focTO8vUHoORED1vEpE8Rpw==
X-Google-Smtp-Source: APXvYqySAzGQFwUKiVRpYAGufaY4Ueqo8hcp857y9UldclJTSmWozxMAehbcGlTq/jDhdwuSuwFWjgCSDJXYbpaD4ww=
X-Received: by 2002:a37:d84:: with SMTP id 126mr9297358qkn.407.1570197144318; 
 Fri, 04 Oct 2019 06:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07> <1570018513.19702.36.camel@mtksdccf07>
 <CACT4Y+bbZhvz9ZpHtgL8rCCsV=ybU5jA6zFnJBL7gY2cNXDLyQ@mail.gmail.com>
 <1570069078.19702.57.camel@mtksdccf07>
 <CACT4Y+ZwNv2-QBrvuR2JvemovmKPQ9Ggrr=ZkdTg6xy_Ki6UAg@mail.gmail.com>
 <1570095525.19702.59.camel@mtksdccf07> <1570110681.19702.64.camel@mtksdccf07>
 <CACT4Y+aKrC8mtcDTVhM-So-TTLjOyFCD7r6jryWFH6i2he1WJA@mail.gmail.com>
 <1570164140.19702.97.camel@mtksdccf07> <1570176131.19702.105.camel@mtksdccf07>
 <CACT4Y+ZvhomaeXFKr4za6MJi=fW2SpPaCFP=fk06CMRhNcmFvQ@mail.gmail.com>
 <1570182257.19702.109.camel@mtksdccf07>
 <CACT4Y+ZnWPEO-9DkE6C3MX-Wo+8pdS6Gr6-2a8LzqBS=2fe84w@mail.gmail.com>
 <1570190718.19702.125.camel@mtksdccf07>
In-Reply-To: <1570190718.19702.125.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 4 Oct 2019 15:52:12 +0200
Message-ID: <CACT4Y+YbkjuW3_WQJ4BB8YHWvxgHJyZYxFbDJpnPzfTMxYs60g@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_065226_388738_CE3DFF51 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Oct 4, 2019 at 2:05 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Fri, 2019-10-04 at 11:54 +0200, Dmitry Vyukov wrote:
> > > > "out-of-bounds" is the _least_ frequent KASAN bug type. So saying
> > > > "out-of-bounds" has downsides of both approaches and won't prevent
> > > > duplicate reports by syzbot...
> > > >
> > > maybe i should add your comment into the comment in get_bug_type?
> >
> > Yes, that's exactly what I meant above:
> >
> > "I would change get_bug_type() to return "slab-out-of-bounds" (as the
> > most common OOB) in such case (with a comment)."
> >
> >  ;)
>
>
> The patchset help to produce KASAN report when size is negative size in
> memory operation function. It is helpful for programmer to solve the
> undefined behavior issue. Patch 1 based on Dmitry's suggestion and
> review, patch 2 is a test in order to verify the patch 1.
>
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=199341
> [2]https://lore.kernel.org/linux-arm-kernel/20190927034338.15813-1-walter-zh.wu@mediatek.com/
>
> Walter Wu (2):
> kasan: detect invalid size in memory operation function
> kasan: add test for invalid size in memmove
>
> lib/test_kasan.c          | 18 ++++++++++++++++++
> mm/kasan/common.c         | 13 ++++++++-----
> mm/kasan/generic.c        |  5 +++++
> mm/kasan/generic_report.c | 10 ++++++++++
> mm/kasan/tags.c           |  5 +++++
> mm/kasan/tags_report.c    | 10 ++++++++++
> 6 files changed, 56 insertions(+), 5 deletions(-)
>
>
>
>
> commit 0bc50c759a425fa0aafb7ef623aa1598b3542c67
> Author: Walter Wu <walter-zh.wu@mediatek.com>
> Date:   Fri Oct 4 18:38:31 2019 +0800
>
>     kasan: detect invalid size in memory operation function
>
>     It is an undefined behavior to pass a negative value to
> memset()/memcpy()/memmove()
>     , so need to be detected by KASAN.
>
>     If size is negative value, then it will be larger than ULONG_MAX/2,
>     so that we will qualify as out-of-bounds issue.
>
>     KASAN report:
>
>      BUG: KASAN: out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
>      Read of size 18446744073709551608 at addr ffffff8069660904 by task
> cat/72
>
>      CPU: 2 PID: 72 Comm: cat Not tainted
> 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
>      Hardware name: linux,dummy-virt (DT)
>      Call trace:
>       dump_backtrace+0x0/0x288
>       show_stack+0x14/0x20
>       dump_stack+0x10c/0x164
>       print_address_description.isra.9+0x68/0x378
>       __kasan_report+0x164/0x1a0
>       kasan_report+0xc/0x18
>       check_memory_region+0x174/0x1d0
>       memmove+0x34/0x88
>       kmalloc_memmove_invalid_size+0x70/0xa0
>
>     [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
>
>     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
>     Reported -by: Dmitry Vyukov <dvyukov@google.com>
>     Suggested-by: Dmitry Vyukov <dvyukov@google.com>
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
> @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t
> len)
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
> @@ -173,6 +173,11 @@ static __always_inline bool
> check_memory_region_inline(unsigned long addr,
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
> index 36c645939bc9..23951a453681 100644
> --- a/mm/kasan/generic_report.c
> +++ b/mm/kasan/generic_report.c
> @@ -107,6 +107,16 @@ static const char *get_wild_bug_type(struct
> kasan_access_info *info)
>
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +       /*
> +        * if access_size < 0, then it will be larger than ULONG_MAX/2,
> +        * so that this can qualify as out-of-bounds.
> +        * out-of-bounds is the _least_ frequent KASAN bug type. So saying
> +        * out-of-bounds has downsides of both approaches and won't prevent
> +        * duplicate reports by syzbot.
> +        */
> +       if ((long)info->access_size < 0)
> +               return "out-of-bounds";
> +
>         if (addr_has_shadow(info->access_addr))
>                 return get_shadow_bug_type(info);
>         return get_wild_bug_type(info);
> diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> index 0e987c9ca052..b829535a3ad7 100644
> --- a/mm/kasan/tags.c
> +++ b/mm/kasan/tags.c
> @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t
> size, bool write,
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
> index 969ae08f59d7..19b9e364b397 100644
> --- a/mm/kasan/tags_report.c
> +++ b/mm/kasan/tags_report.c
> @@ -36,6 +36,16 @@
>
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +       /*
> +        * if access_size < 0, then it will be larger than ULONG_MAX/2,
> +        * so that this can qualify as out-of-bounds.
> +        * out-of-bounds is the _least_ frequent KASAN bug type. So saying
> +        * out-of-bounds has downsides of both approaches and won't prevent
> +        * duplicate reports by syzbot.
> +        */
> +       if ((long)info->access_size < 0)
> +               return "out-of-bounds";


wait, no :)
I meant we change it to heap-out-of-bounds and explain why we are
saying this is a heap-out-of-bounds.
The current comment effectively says we are doing non useful thing for
no reason, it does not eliminate any of my questions as a reader of
this code :)




> +
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>         struct kasan_alloc_meta *alloc_meta;
>         struct kmem_cache *cache;
>
>
>
> commit fb5cf7bd16e939d1feef229af0211a8616c9ea03
> Author: Walter Wu <walter-zh.wu@mediatek.com>
> Date:   Fri Oct 4 18:32:03 2019 +0800
>
>     kasan: add test for invalid size in memmove
>
>     Test size is negative vaule in memmove in order to verify
>     if it correctly produce KASAN report.
>
>     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index 49cc4d570a40..06942cf585cc 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -283,6 +283,23 @@ static noinline void __init
> kmalloc_oob_in_memset(void)
>         kfree(ptr);
>  }
>
> +static noinline void __init kmalloc_memmove_invalid_size(void)
> +{
> +       char *ptr;
> +       size_t size = 64;
> +
> +       pr_info("invalid size in memmove\n");
> +       ptr = kmalloc(size, GFP_KERNEL);
> +       if (!ptr) {
> +               pr_err("Allocation failed\n");
> +               return;
> +       }
> +
> +       memset((char *)ptr, 0, 64);
> +       memmove((char *)ptr, (char *)ptr + 4, -2);
> +       kfree(ptr);
> +}
> +
>  static noinline void __init kmalloc_uaf(void)
>  {
>         char *ptr;
> @@ -773,6 +790,7 @@ static int __init kmalloc_tests_init(void)
>         kmalloc_oob_memset_4();
>         kmalloc_oob_memset_8();
>         kmalloc_oob_memset_16();
> +       kmalloc_memmove_invalid_size();
>         kmalloc_uaf();
>         kmalloc_uaf_memset();
>         kmalloc_uaf2();

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
