Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCECCDACA
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 05:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyeQO+0BzWxWa08fx8ifxK87y2iEMFwwyH7e53/Visc=; b=STf+ymUaKfGapm
	ABQYdSFWBmaVl+eAxa+SNrOCOtB31jZFO8xfs0VkRNlUGBBcNn/ZUPVVzk754BL2he7zQg/TLhAb1
	mdriz4PKnyiRHTPYc86YP49BAdHd6kvjQbmNe6h9NrMj+BcQ5bMVp//oHiSr6rLRMJKUEJaFwn2QM
	Unb8lk3Cx+SqfioGcsCPwcBrwlJ+bPeMrnUYiXo1wxVxSPZHv74SKsIyFG7rJn7TwMmcac8xYk3+U
	+I0tX0MdLFyq6vEpwKdAVL2PrpJqDNjfi3aILa+FO6J79yJu3O/Ytundqnee4l6zuyCY+P87kacXG
	DTLuojfiEZUZsHDaDIFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHJqk-00084N-6y; Mon, 07 Oct 2019 03:38:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHJqV-0007wj-Q3; Mon, 07 Oct 2019 03:38:05 +0000
X-UUID: dcc2c698dfa74a78adda0dfbec347759-20191006
X-UUID: dcc2c698dfa74a78adda0dfbec347759-20191006
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1521589224; Sun, 06 Oct 2019 19:38:00 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 6 Oct 2019 20:37:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 7 Oct 2019 11:22:49 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 7 Oct 2019 11:22:55 +0800
Message-ID: <1570418576.4686.30.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 7 Oct 2019 11:22:56 +0800
In-Reply-To: <CACT4Y+YbkjuW3_WQJ4BB8YHWvxgHJyZYxFbDJpnPzfTMxYs60g@mail.gmail.com>
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07>
 <1570018513.19702.36.camel@mtksdccf07>
 <CACT4Y+bbZhvz9ZpHtgL8rCCsV=ybU5jA6zFnJBL7gY2cNXDLyQ@mail.gmail.com>
 <1570069078.19702.57.camel@mtksdccf07>
 <CACT4Y+ZwNv2-QBrvuR2JvemovmKPQ9Ggrr=ZkdTg6xy_Ki6UAg@mail.gmail.com>
 <1570095525.19702.59.camel@mtksdccf07>
 <1570110681.19702.64.camel@mtksdccf07>
 <CACT4Y+aKrC8mtcDTVhM-So-TTLjOyFCD7r6jryWFH6i2he1WJA@mail.gmail.com>
 <1570164140.19702.97.camel@mtksdccf07>
 <1570176131.19702.105.camel@mtksdccf07>
 <CACT4Y+ZvhomaeXFKr4za6MJi=fW2SpPaCFP=fk06CMRhNcmFvQ@mail.gmail.com>
 <1570182257.19702.109.camel@mtksdccf07>
 <CACT4Y+ZnWPEO-9DkE6C3MX-Wo+8pdS6Gr6-2a8LzqBS=2fe84w@mail.gmail.com>
 <1570190718.19702.125.camel@mtksdccf07>
 <CACT4Y+YbkjuW3_WQJ4BB8YHWvxgHJyZYxFbDJpnPzfTMxYs60g@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_203803_853448_D57329F7 
X-CRM114-Status: GOOD (  29.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Fri, 2019-10-04 at 15:52 +0200, Dmitry Vyukov wrote:
> On Fri, Oct 4, 2019 at 2:05 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > On Fri, 2019-10-04 at 11:54 +0200, Dmitry Vyukov wrote:
> > > > > "out-of-bounds" is the _least_ frequent KASAN bug type. So saying
> > > > > "out-of-bounds" has downsides of both approaches and won't prevent
> > > > > duplicate reports by syzbot...
> > > > >
> > > > maybe i should add your comment into the comment in get_bug_type?
> > >
> > > Yes, that's exactly what I meant above:
> > >
> > > "I would change get_bug_type() to return "slab-out-of-bounds" (as the
> > > most common OOB) in such case (with a comment)."
> > >
> > >  ;)
> >
> >
> > The patchset help to produce KASAN report when size is negative size in
> > memory operation function. It is helpful for programmer to solve the
> > undefined behavior issue. Patch 1 based on Dmitry's suggestion and
> > review, patch 2 is a test in order to verify the patch 1.
> >
> > [1]https://bugzilla.kernel.org/show_bug.cgi?id=199341
> > [2]https://lore.kernel.org/linux-arm-kernel/20190927034338.15813-1-walter-zh.wu@mediatek.com/
> >
> > Walter Wu (2):
> > kasan: detect invalid size in memory operation function
> > kasan: add test for invalid size in memmove
> >
> > lib/test_kasan.c          | 18 ++++++++++++++++++
> > mm/kasan/common.c         | 13 ++++++++-----
> > mm/kasan/generic.c        |  5 +++++
> > mm/kasan/generic_report.c | 10 ++++++++++
> > mm/kasan/tags.c           |  5 +++++
> > mm/kasan/tags_report.c    | 10 ++++++++++
> > 6 files changed, 56 insertions(+), 5 deletions(-)
> >
> >
> >
> >
> > commit 0bc50c759a425fa0aafb7ef623aa1598b3542c67
> > Author: Walter Wu <walter-zh.wu@mediatek.com>
> > Date:   Fri Oct 4 18:38:31 2019 +0800
> >
> >     kasan: detect invalid size in memory operation function
> >
> >     It is an undefined behavior to pass a negative value to
> > memset()/memcpy()/memmove()
> >     , so need to be detected by KASAN.
> >
> >     If size is negative value, then it will be larger than ULONG_MAX/2,
> >     so that we will qualify as out-of-bounds issue.
> >
> >     KASAN report:
> >
> >      BUG: KASAN: out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
> >      Read of size 18446744073709551608 at addr ffffff8069660904 by task
> > cat/72
> >
> >      CPU: 2 PID: 72 Comm: cat Not tainted
> > 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
> >      Hardware name: linux,dummy-virt (DT)
> >      Call trace:
> >       dump_backtrace+0x0/0x288
> >       show_stack+0x14/0x20
> >       dump_stack+0x10c/0x164
> >       print_address_description.isra.9+0x68/0x378
> >       __kasan_report+0x164/0x1a0
> >       kasan_report+0xc/0x18
> >       check_memory_region+0x174/0x1d0
> >       memmove+0x34/0x88
> >       kmalloc_memmove_invalid_size+0x70/0xa0
> >
> >     [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
> >
> >     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> >     Reported -by: Dmitry Vyukov <dvyukov@google.com>
> >     Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> >
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 6814d6d6a023..6ef0abd27f06 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
> >  #undef memset
> >  void *memset(void *addr, int c, size_t len)
> >  {
> > -       check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > +       if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > +               return NULL;
> >
> >         return __memset(addr, c, len);
> >  }
> > @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
> >  #undef memmove
> >  void *memmove(void *dest, const void *src, size_t len)
> >  {
> > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -       check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +       !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> > +               return NULL;
> >
> >         return __memmove(dest, src, len);
> >  }
> > @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t
> > len)
> >  #undef memcpy
> >  void *memcpy(void *dest, const void *src, size_t len)
> >  {
> > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -       check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +       !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> > +               return NULL;
> >
> >         return __memcpy(dest, src, len);
> >  }
> > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > index 616f9dd82d12..02148a317d27 100644
> > --- a/mm/kasan/generic.c
> > +++ b/mm/kasan/generic.c
> > @@ -173,6 +173,11 @@ static __always_inline bool
> > check_memory_region_inline(unsigned long addr,
> >         if (unlikely(size == 0))
> >                 return true;
> >
> > +       if (unlikely((long)size < 0)) {
> > +               kasan_report(addr, size, write, ret_ip);
> > +               return false;
> > +       }
> > +
> >         if (unlikely((void *)addr <
> >                 kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> >                 kasan_report(addr, size, write, ret_ip);
> > diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> > index 36c645939bc9..23951a453681 100644
> > --- a/mm/kasan/generic_report.c
> > +++ b/mm/kasan/generic_report.c
> > @@ -107,6 +107,16 @@ static const char *get_wild_bug_type(struct
> > kasan_access_info *info)
> >
> >  const char *get_bug_type(struct kasan_access_info *info)
> >  {
> > +       /*
> > +        * if access_size < 0, then it will be larger than ULONG_MAX/2,
> > +        * so that this can qualify as out-of-bounds.
> > +        * out-of-bounds is the _least_ frequent KASAN bug type. So saying
> > +        * out-of-bounds has downsides of both approaches and won't prevent
> > +        * duplicate reports by syzbot.
> > +        */
> > +       if ((long)info->access_size < 0)
> > +               return "out-of-bounds";
> > +
> >         if (addr_has_shadow(info->access_addr))
> >                 return get_shadow_bug_type(info);
> >         return get_wild_bug_type(info);
> > diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> > index 0e987c9ca052..b829535a3ad7 100644
> > --- a/mm/kasan/tags.c
> > +++ b/mm/kasan/tags.c
> > @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t
> > size, bool write,
> >         if (unlikely(size == 0))
> >                 return true;
> >
> > +       if (unlikely((long)size < 0)) {
> > +               kasan_report(addr, size, write, ret_ip);
> > +               return false;
> > +       }
> > +
> >         tag = get_tag((const void *)addr);
> >
> >         /*
> > diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> > index 969ae08f59d7..19b9e364b397 100644
> > --- a/mm/kasan/tags_report.c
> > +++ b/mm/kasan/tags_report.c
> > @@ -36,6 +36,16 @@
> >
> >  const char *get_bug_type(struct kasan_access_info *info)
> >  {
> > +       /*
> > +        * if access_size < 0, then it will be larger than ULONG_MAX/2,
> > +        * so that this can qualify as out-of-bounds.
> > +        * out-of-bounds is the _least_ frequent KASAN bug type. So saying
> > +        * out-of-bounds has downsides of both approaches and won't prevent
> > +        * duplicate reports by syzbot.
> > +        */
> > +       if ((long)info->access_size < 0)
> > +               return "out-of-bounds";
> 
> 
> wait, no :)
> I meant we change it to heap-out-of-bounds and explain why we are
> saying this is a heap-out-of-bounds.
> The current comment effectively says we are doing non useful thing for
> no reason, it does not eliminate any of my questions as a reader of
> this code :)
> 
Ok, the current comment may not enough to be understood why we use OOB
to represent size<0 bug. We can modify it as below :)

If access_size < 0, then it has two reasons to be defined as
out-of-bounds.
1) Casting negative numbers to size_t would indeed turn up as a "large"
size_t and its value will be larger than ULONG_MAX/2, so that this can
qualify as out-of-bounds.
2) Don't generate new bug type in order to prevent duplicate reports by
some systems, e.g. syzbot."

> 
> 
> 
> > +
> >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> >         struct kasan_alloc_meta *alloc_meta;
> >         struct kmem_cache *cache;
> >
> >
> >
> > commit fb5cf7bd16e939d1feef229af0211a8616c9ea03
> > Author: Walter Wu <walter-zh.wu@mediatek.com>
> > Date:   Fri Oct 4 18:32:03 2019 +0800
> >
> >     kasan: add test for invalid size in memmove
> >
> >     Test size is negative vaule in memmove in order to verify
> >     if it correctly produce KASAN report.
> >
> >     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> >
> > diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> > index 49cc4d570a40..06942cf585cc 100644
> > --- a/lib/test_kasan.c
> > +++ b/lib/test_kasan.c
> > @@ -283,6 +283,23 @@ static noinline void __init
> > kmalloc_oob_in_memset(void)
> >         kfree(ptr);
> >  }
> >
> > +static noinline void __init kmalloc_memmove_invalid_size(void)
> > +{
> > +       char *ptr;
> > +       size_t size = 64;
> > +
> > +       pr_info("invalid size in memmove\n");
> > +       ptr = kmalloc(size, GFP_KERNEL);
> > +       if (!ptr) {
> > +               pr_err("Allocation failed\n");
> > +               return;
> > +       }
> > +
> > +       memset((char *)ptr, 0, 64);
> > +       memmove((char *)ptr, (char *)ptr + 4, -2);
> > +       kfree(ptr);
> > +}
> > +
> >  static noinline void __init kmalloc_uaf(void)
> >  {
> >         char *ptr;
> > @@ -773,6 +790,7 @@ static int __init kmalloc_tests_init(void)
> >         kmalloc_oob_memset_4();
> >         kmalloc_oob_memset_8();
> >         kmalloc_oob_memset_16();
> > +       kmalloc_memmove_invalid_size();
> >         kmalloc_uaf();
> >         kmalloc_uaf_memset();
> >         kmalloc_uaf2();



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
