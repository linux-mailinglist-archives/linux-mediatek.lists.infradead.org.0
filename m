Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F959CB7B6
	for <lists+linux-mediatek@lfdr.de>; Fri,  4 Oct 2019 11:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lssPI/p1MaeU6JLC7eIewgYv7f47i6rEq31wdQbgp/4=; b=c1jr9cTLMclllS
	woRJNX7bEL/NuU/UMpuRS2X13OLnGmCefVvsm2TTtLswtROUEc7BFGV+mP+0L3wKfvkKnVAnia0CZ
	M7OFaIay1X4s74I6HDlFd0WIsYWNo63aEVOiUXOcreXsOEgSpK+rlnooizS2jU46xEa9fhZEL23wt
	n+Rd8j5/1UL/yOVAuzE/az9erb3MsTfV2rxczbwlA9SfkDenb6XNEnPR+vUhdUK96zvcSWb6vKG14
	NSEcdmetEayXBPxl5iMHEjhJr8q5OXENdebetcGFW3zNdPE3CpD5/GaHybKlqCU1qV1tihTYX1o59
	NrU/7E3H2mwp/o++v0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKIC-0007BH-Ix; Fri, 04 Oct 2019 09:54:32 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKHz-00071i-Np
 for linux-mediatek@lists.infradead.org; Fri, 04 Oct 2019 09:54:21 +0000
Received: by mail-qt1-x841.google.com with SMTP id j31so7729802qta.5
 for <linux-mediatek@lists.infradead.org>; Fri, 04 Oct 2019 02:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lYr8ibckse0BmUaAjEkti+4k6yIQOCn91r/LNpsvMM0=;
 b=m1g0d+trfTdQ+ECUs0dLmouJWy/sQUda0BcPSAoUH+uG/QUwZXL1daxAdV6i1F5yxG
 qOd6Ud4kS1pfJvJeoZyYt8cmLUe7/HdEIxIwxA6h0r+KyO2oZE1CJTC5kej+WAmDGvhs
 g1q8Kkh1QysPK7nYlXgGO7K9MWJMpJeN+e4wpXF0kFv8xW4SCpVUMgljBivP86cPFceq
 tOOnxKMU64CeKbO5cJXoehMdcqq14zIMx2l3tVumblXB8VU6U63dZLLpfqQJTrt3FZnE
 pSUY7GqQees/Ikygqqy/PogJWe5MVlogZAiHYdjBtGqG6XrU346eySqNqR8gldgwuJVz
 t3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lYr8ibckse0BmUaAjEkti+4k6yIQOCn91r/LNpsvMM0=;
 b=DiS6wlw/HkdwQ/Un3cpVU3n6/GFgGvTBqWNYFpdNlNCVhv258f1jyFdXfHcqbzmlD7
 Pc/iqWm2WTtAa35PALm1k6mZthasA3auAzsY67Cn/6PyFIGgUbUgpcPMT8IAHOMCRwvm
 7OKF4M3KBOiNHwilY2EEqdNfHl3l3BJ/Pypl1/OLZmFsEOgVNAGHHQl2xGpF9xSxLgO4
 lr7U12ayPFhvu46VhTPWH2w+EAEz4NU9EZ/gYl/g4eEzytwL6GxrSOQ11Ky+b159M1b1
 GLZmL7Kttn0jYSHP1DZ4KWNrqZPWnwfqYCXpHjpxXWF6Dwhmjv9aBDHOujoqL8lbbahZ
 ojng==
X-Gm-Message-State: APjAAAV3fKUawtVRAEX8pcQefDtoZhyNcXvNwYl1kcHG+mtXMdnulwAM
 qhcSD1hoX5K9D4mHiBBX2cKNiTZ5VdCRMF6WMao8kg==
X-Google-Smtp-Source: APXvYqyQh94BA/sDrKViTeebUTvhPkcWicnQF5CkwHSOnMgOpordwR/IaYjOdGiOye/nWgL+V6Iz0kMetMZftZ0V+yI=
X-Received: by 2002:ac8:108b:: with SMTP id a11mr14866143qtj.380.1570182856217; 
 Fri, 04 Oct 2019 02:54:16 -0700 (PDT)
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
In-Reply-To: <1570182257.19702.109.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 4 Oct 2019 11:54:04 +0200
Message-ID: <CACT4Y+ZnWPEO-9DkE6C3MX-Wo+8pdS6Gr6-2a8LzqBS=2fe84w@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_025419_781651_5D764BF2 
X-CRM114-Status: GOOD (  31.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

On Fri, Oct 4, 2019 at 11:44 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Fri, 2019-10-04 at 11:18 +0200, Dmitry Vyukov wrote:
> > On Fri, Oct 4, 2019 at 10:02 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > On Fri, 2019-10-04 at 12:42 +0800, Walter Wu wrote:
> > > > On Thu, 2019-10-03 at 16:53 +0200, Dmitry Vyukov wrote:
> > > > > On Thu, Oct 3, 2019 at 3:51 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:>
> > > > > >
> > > > > >  static void print_error_description(struct kasan_access_info *info)
> > > > > >  {
> > > > > > -       pr_err("BUG: KASAN: %s in %pS\n",
> > > > > > -               get_bug_type(info), (void *)info->ip);
> > > > > > -       pr_err("%s of size %zu at addr %px by task %s/%d\n",
> > > > > > -               info->is_write ? "Write" : "Read", info->access_size,
> > > > > > -               info->access_addr, current->comm, task_pid_nr(current));
> > > > > > +       if ((long)info->access_size < 0) {
> > > > > > +               pr_err("BUG: KASAN: invalid size %zu in %pS\n",
> > > > > > +                       info->access_size, (void *)info->ip);
> > > > >
> > > > > I would not introduce a new bug type.
> > > > > These are parsed and used by some systems, e.g. syzbot. If size is
> > > > > user-controllable, then a new bug type for this will mean 2 bug
> > > > > reports.
> > > > > It also won't harm to print Read/Write, definitely the address, so no
> > > > > reason to special case this out of a dozen of report formats.
> > > > > This can qualify as out-of-bounds (definitely will cross some
> > > > > bounds!), so I would change get_bug_type() to return
> > > > > "slab-out-of-bounds" (as the most common OOB) in such case (with a
> > > > > comment).
> > > > >
> > > > Print Read/Write and address information, it is ok.
> > > > But if we can directly point to the root cause of this problem, why we
> > > > not do it?  see 1) and 2) to get a point, if we print OOB, then user
> > > > needs one minute to think what is root case of this problem, but if we
> > > > print invalid size, then user can directly get root case. this is my
> > > > original thinking.
> > > > 1)Invalid size is true then OOB is true.
> > > > 2)OOB is true then invalid size may be true or false.
> > > >
> > > > But I see you say some systems have used bug report so that avoid this
> > > > trouble, i will print the wrong type is "out-of-bound" in a unified way
> > > > when size<0.
> > > >
> > >
> > > Updated my patch, please help to review it.
> > > thanks.
> > >
> > > commit 13e10a7e4264eb25c5a14193068027afc9c261f6
> > > Author: Walter-zh Wu <walter-zh.wu@mediatek.com>
> > > Date:   Fri Oct 4 15:27:17 2019 +0800
> > >
> > >     kasan: detect negative size in memory operation function
> > >
> > >     It is an undefined behavior to pass a negative value to
> > > memset()/memcpy()/memmove()
> > >     , so need to be detected by KASAN.
> > >
> > >     If size is negative value, then it will be larger than ULONG_MAX/2,
> > >     so that we will qualify as out-of-bounds issue.
> > >
> > >     KASAN report:
> > >
> > >      BUG: KASAN: out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
> > >      Read of size 18446744073709551608 at addr ffffff8069660904 by task
> > > cat/72
> > >
> > >      CPU: 2 PID: 72 Comm: cat Not tainted
> > > 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
> > >      Hardware name: linux,dummy-virt (DT)
> > >      Call trace:
> > >       dump_backtrace+0x0/0x288
> > >       show_stack+0x14/0x20
> > >       dump_stack+0x10c/0x164
> > >       print_address_description.isra.9+0x68/0x378
> > >       __kasan_report+0x164/0x1a0
> > >       kasan_report+0xc/0x18
> > >       check_memory_region+0x174/0x1d0
> > >       memmove+0x34/0x88
> > >       kmalloc_memmove_invalid_size+0x70/0xa0
> > >
> > >     [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
> > >
> > >     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > >     Reported -by: Dmitry Vyukov <dvyukov@google.com>
> > >     Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > >
> > > diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> > > index 49cc4d570a40..06942cf585cc 100644
> > > --- a/lib/test_kasan.c
> > > +++ b/lib/test_kasan.c
> > > @@ -283,6 +283,23 @@ static noinline void __init
> > > kmalloc_oob_in_memset(void)
> > >         kfree(ptr);
> > >  }
> > >
> > > +static noinline void __init kmalloc_memmove_invalid_size(void)
> > > +{
> > > +       char *ptr;
> > > +       size_t size = 64;
> > > +
> > > +       pr_info("invalid size in memmove\n");
> > > +       ptr = kmalloc(size, GFP_KERNEL);
> > > +       if (!ptr) {
> > > +               pr_err("Allocation failed\n");
> > > +               return;
> > > +       }
> > > +
> > > +       memset((char *)ptr, 0, 64);
> > > +       memmove((char *)ptr, (char *)ptr + 4, -2);
> > > +       kfree(ptr);
> > > +}
> > > +
> > >  static noinline void __init kmalloc_uaf(void)
> > >  {
> > >         char *ptr;
> > > @@ -773,6 +790,7 @@ static int __init kmalloc_tests_init(void)
> > >         kmalloc_oob_memset_4();
> > >         kmalloc_oob_memset_8();
> > >         kmalloc_oob_memset_16();
> > > +       kmalloc_memmove_invalid_size();
> > >         kmalloc_uaf();
> > >         kmalloc_uaf_memset();
> > >         kmalloc_uaf2();
> > > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > > index 6814d6d6a023..97dd6eecc3e7 100644
> > > --- a/mm/kasan/common.c
> > > +++ b/mm/kasan/common.c
> > > @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
> > >  #undef memset
> > >  void *memset(void *addr, int c, size_t len)
> > >  {
> > > -       check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > > +       if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > > +               return NULL;
> > >
> > >         return __memset(addr, c, len);
> > >  }
> > > @@ -110,7 +111,8 @@ void *memset(void *addr, int c, size_t len)
> > >  #undef memmove
> > >  void *memmove(void *dest, const void *src, size_t len)
> > >  {
> > > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > > +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_))
> > > +               return NULL;
> > >         check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> >
> > I would check both calls.
> > The current code seems to be over-specialized for handling of invalid
> > size (you assume that if it's invalid size, then the first
> > check_memory_region will detect it and checking the second one is
> > pointless, right?).
> > But check_memory_region can return false in other cases too.
> > Also seeing first call checked, but the second not checked just hurts
> > my eyes when reading code (whenever I will read such code my first
> > reaction will be "why?").
> >
> I can't agree with you any more about second point.
>
> #undef memmove
> void *memmove(void *dest, const void *src, size_t len)
> {
>     if (!check_memory_region((unsigned long)src, len, false, _RET_IP_)
> ||)
>         !check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>         return NULL;
>
>     return __memmove(dest, src, len);
> }
>
> >
> > >
> > >         return __memmove(dest, src, len);
> > > @@ -119,7 +121,8 @@ void *memmove(void *dest, const void *src, size_t
> > > len)
> > >  #undef memcpy
> > >  void *memcpy(void *dest, const void *src, size_t len)
> > >  {
> > > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > > +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_))
> > > +               return NULL;
> > >         check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > >
> > >         return __memcpy(dest, src, len);
> > > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > > index 616f9dd82d12..02148a317d27 100644
> > > --- a/mm/kasan/generic.c
> > > +++ b/mm/kasan/generic.c
> > > @@ -173,6 +173,11 @@ static __always_inline bool
> > > check_memory_region_inline(unsigned long addr,
> > >         if (unlikely(size == 0))
> > >                 return true;
> > >
> > > +       if (unlikely((long)size < 0)) {
> > > +               kasan_report(addr, size, write, ret_ip);
> > > +               return false;
> > > +       }
> > > +
> > >         if (unlikely((void *)addr <
> > >                 kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> > >                 kasan_report(addr, size, write, ret_ip);
> > > diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> > > index 36c645939bc9..ae9596210394 100644
> > > --- a/mm/kasan/generic_report.c
> > > +++ b/mm/kasan/generic_report.c
> > > @@ -107,6 +107,13 @@ static const char *get_wild_bug_type(struct
> > > kasan_access_info *info)
> > >
> > >  const char *get_bug_type(struct kasan_access_info *info)
> > >  {
> > > +       /*
> > > +        * if access_size < 0, then it will be larger than ULONG_MAX/2,
> > > +        * so that this can qualify as out-of-bounds.
> > > +        */
> > > +       if ((long)info->access_size < 0)
> > > +               return "out-of-bounds";
> >
> > "out-of-bounds" is the _least_ frequent KASAN bug type. So saying
> > "out-of-bounds" has downsides of both approaches and won't prevent
> > duplicate reports by syzbot...
> >
> maybe i should add your comment into the comment in get_bug_type?

Yes, that's exactly what I meant above:

"I would change get_bug_type() to return "slab-out-of-bounds" (as the
most common OOB) in such case (with a comment)."

 ;)

> > > +
> > >         if (addr_has_shadow(info->access_addr))
> > >                 return get_shadow_bug_type(info);
> > >         return get_wild_bug_type(info);
> > > diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> > > index 0e987c9ca052..b829535a3ad7 100644
> > > --- a/mm/kasan/tags.c
> > > +++ b/mm/kasan/tags.c
> > > @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t
> > > size, bool write,
> > >         if (unlikely(size == 0))
> > >                 return true;
> > >
> > > +       if (unlikely((long)size < 0)) {
> > > +               kasan_report(addr, size, write, ret_ip);
> > > +               return false;
> > > +       }
> > > +
> > >         tag = get_tag((const void *)addr);
> > >
> > >         /*
> > > diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> > > index 969ae08f59d7..1e1ca81214b5 100644
> > > --- a/mm/kasan/tags_report.c
> > > +++ b/mm/kasan/tags_report.c
> > > @@ -36,6 +36,13 @@
> > >
> > >  const char *get_bug_type(struct kasan_access_info *info)
> > >  {
> > > +       /*
> > > +        * if access_size < 0, then it will be larger than ULONG_MAX/2,
> > > +        * so that this can qualify as out-of-bounds.
> > > +        */
> > > +       if ((long)info->access_size < 0)
> > > +               return "out-of-bounds";
> > > +
> > >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > >         struct kasan_alloc_meta *alloc_meta;
> > >         struct kmem_cache *cache;

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
