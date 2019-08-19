Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F4A94892
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 17:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LI7ILU+b2/vpCuE/ESKzV0F48GP62X8Zi7RPwPIStiA=; b=lYt8eVdx+XFXN2
	iB5I/tXMDaSNXqAbL83sWHBcsICiDU7bgOsYPNK3oBltqRV1/2ZtYrAnFSq8kGXLeEMilarj2IDoI
	lv386EizqahExtJMpC73jhDpkRInwj3/mcR15P2XN+RO06pkPqcynDbY+jVF46q0KwyrvChMhgk77
	fsleQTj5c2votaR2l5lc6VoiFAxMOnvsQGPRt5MhJFc9S7E5Kk5BOC+2Q44qh2aYka9MYwe3z8ZPi
	7em7/BzgxPSD0AHOBqLbn58GyRR2brNaaz3byC07txdqz90uBgfo0FnlDTlhJT2sDy7cG9ydAbttH
	a6RM3+eCcaFS6fO2PsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjjE-0007If-RK; Mon, 19 Aug 2019 15:37:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjjB-0007Hy-TH
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 15:37:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so1365822pfq.12
 for <linux-mediatek@lists.infradead.org>; Mon, 19 Aug 2019 08:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1doVjKq3mcViKTNmljRst42DcW8+lOf7Fak48gVUGb8=;
 b=BASVfhGkzN100FGLXKPxZyTuDTg4gC8vCGHFSJ2QDaCfNCZtKHEAq04TsQ0+463trf
 GBdXivq4N3R9ss4Wm4N5jznlSGLRH33IOUeJzCal1xKetx3QR1PcyWN4v4HJit8hFI/8
 nFMbIWH8qEcI5nPXLhTj52avIgg1R3Gok/PSKm7gPAK+HoOIGzYMJzu7ujn2Hi6mmfm5
 ZdcOg3osALz6v+VLP2frAn/78eygWYbd/46p8fNNwduO+dKL7T+cPOqiJG9kwZLD8nXp
 KggzvDFhQpdUhZ1ruczIO6AktSO4hs53d65me4r+223aInxmAKZaQ7biNvTl/OnTKsZF
 /sZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1doVjKq3mcViKTNmljRst42DcW8+lOf7Fak48gVUGb8=;
 b=Y4vNAxGOdnJ/3T2jCWr6hM5d8x0oLUhg5xHXFI2NJZQ/ng1IZM1RzQ68ZkfVB82gam
 AnxGy2m5XOvRlI+/R04aQ47O37WaOJCO9mYOr4bAPH1VrnL+Gx0cZkcW2lWu+Ibrhmsy
 oiseLmVGeJ2vFIBFJtZ5NGlHRrpCcxIrgAby1hsaJVV6OJKiJR7pbT9ATasXjf8LWrQJ
 uwOM2NjQgnmbQTr66kc/xd+jxPmQosU0JbdvZZLoO5DN0DeGE4MK6FjpIJiX37c/LGwB
 qcKpmZ4pWnVZvG8ieNX76lN696JRe8oOeY6/d90/CSSyP2HWufEXF4thEWILa4Tfnrt5
 BKFA==
X-Gm-Message-State: APjAAAXOgIug0ROTgbakQXMkqLykmj13Z/2lMvQXY/tTPMyosalzZkHP
 jYrnjNkk4bb8orZ9I26s1Ej0W7Gm+EWDR32SAocNpg==
X-Google-Smtp-Source: APXvYqw6B56e2SpZwAoVQuNMbYHFVLD01QKRph/mh7Hz0wR6sgA4mf5sfjZn+obkXz1yiarMDGGjXriS/Cn3mnt/vVo=
X-Received: by 2002:aa7:9e0a:: with SMTP id y10mr24422794pfq.93.1566229067338; 
 Mon, 19 Aug 2019 08:37:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
 <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
 <20190819150341.GC9927@lakrids.cambridge.arm.com>
In-Reply-To: <20190819150341.GC9927@lakrids.cambridge.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 17:37:36 +0200
Message-ID: <CAAeHK+wBNnnKY4wg=34aD8Of6Vea4nzWF-FEnnSpHN0pFyTR3Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
To: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_083749_971319_94A1FEBE 
X-CRM114-Status: GOOD (  35.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 linux-mediatek@lists.infradead.org, Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 5:03 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Mon, Aug 19, 2019 at 04:05:22PM +0200, Andrey Konovalov wrote:
> > On Mon, Aug 19, 2019 at 3:34 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Mon, Aug 19, 2019 at 02:23:48PM +0100, Mark Rutland wrote:
> > > > On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
> > > > > On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> > > > > > __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> > > > > > but it will modify pointer tag into 0xff, so there is a false positive.
> > > > > >
> > > > > > When enable tag-based kasan, phys_to_virt() function need to rewrite
> > > > > > its original pointer tag in order to avoid kasan report an incorrect
> > > > > > memory corruption.
> > > > >
> > > > > Hmm. Which tree did you see this on? We've recently queued a load of fixes
> > > > > in this area, but I /thought/ they were only needed after the support for
> > > > > 52-bit virtual addressing in the kernel.
> > > >
> > > > I'm seeing similar issues in the virtio blk code (splat below), atop of
> > > > the arm64 for-next/core branch. I think this is a latent issue, and
> > > > people are only just starting to test with KASAN_SW_TAGS.
> > > >
> > > > It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
> > > > virt->page->virt, losing the per-object tag in the process.
> > > >
> > > > Our page_to_virt() seems to get a per-page tag, but this only makes
> > > > sense if you're dealing with the page allocator, rather than something
> > > > like SLUB which carves a page into smaller objects giving each object a
> > > > distinct tag.
> > > >
> > > > Any round-trip of a pointer from SLUB is going to lose the per-object
> > > > tag.
> > >
> > > Urgh, I wonder how this is supposed to work?
> > >
> > > If we end up having to check the KASAN shadow for *_to_virt(), then why
> > > do we need to store anything in the page flags at all? Andrey?
> >
> > As per 2813b9c0 ("kasan, mm, arm64: tag non slab memory allocated via
> > pagealloc") we should only save a non-0xff tag in page flags for non
> > slab pages.
> >
> > Could you share your .config so I can reproduce this?
>
> I wrote a test (below) to do so. :)
>
> It fires with arm64 defconfig, + CONFIG_TEST_KASAN=m.
>
> With Andrey Ryabinin's patch it works as expected with no KASAN splats
> for the two new test cases.

OK, Andrey's patch makes sense and fixes both Mark's test patch and
reports from CONFIG_IOMMU_IO_PGTABLE_ARMV7S_SELFTEST.

Tested-by: Andrey Konovalov <andreyknvl@google.com>
Reviewed-by: Andrey Konovalov <andreyknvl@google.com>

on both patches.

>
> Thanks,
> Mark.
>
> ---->8----
> From 7e8569b558fca21ad4e80fddae659591bc84ce1f Mon Sep 17 00:00:00 2001
> From: Mark Rutland <mark.rutland@arm.com>
> Date: Mon, 19 Aug 2019 15:39:32 +0100
> Subject: [PATCH] lib/test_kasan: add roundtrip tests
>
> In several places we needs to be able to operate on pointers which have

"needs" => "need"

> gone via a roundtrip:
>
>         virt -> {phys,page} -> virt
>
> With KASAN_SW_TAGS, we can't preserve the tag for SLUB objects, and the
> {phys,page} -> virt conversion will use KASAN_TAG_KERNEL.
>
> This patch adds tests to ensure that this works as expected, without
> false positives.
>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Will Deacon <will.deacon@arm.com>
> ---
>  lib/test_kasan.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
> diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> index b63b367a94e8..cf7b93f0d90c 100644
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -19,6 +19,8 @@
>  #include <linux/string.h>
>  #include <linux/uaccess.h>
>
> +#include <asm/page.h>
> +
>  /*
>   * Note: test functions are marked noinline so that their names appear in
>   * reports.
> @@ -337,6 +339,42 @@ static noinline void __init kmalloc_uaf2(void)
>         kfree(ptr2);
>  }
>
> +static noinline void __init kfree_via_page(void)
> +{
> +       char *ptr;
> +       size_t size = 8;
> +       struct page *page;
> +       unsigned long offset;
> +
> +       pr_info("invalid-free false positive (via page)\n");
> +       ptr = kmalloc(size, GFP_KERNEL);
> +       if (!ptr) {
> +               pr_err("Allocation failed\n");
> +               return;
> +       }
> +
> +       page = virt_to_page(ptr);
> +       offset = offset_in_page(ptr);
> +       kfree(page_address(page) + offset);
> +}
> +
> +static noinline void __init kfree_via_phys(void)
> +{
> +       char *ptr;
> +       size_t size = 8;
> +       phys_addr_t phys;
> +
> +       pr_info("invalid-free false positive (via phys)\n");
> +       ptr = kmalloc(size, GFP_KERNEL);
> +       if (!ptr) {
> +               pr_err("Allocation failed\n");
> +               return;
> +       }
> +
> +       phys = virt_to_phys(ptr);
> +       kfree(phys_to_virt(phys));
> +}
> +
>  static noinline void __init kmem_cache_oob(void)
>  {
>         char *p;
> @@ -737,6 +775,8 @@ static int __init kmalloc_tests_init(void)
>         kmalloc_uaf();
>         kmalloc_uaf_memset();
>         kmalloc_uaf2();
> +       kfree_via_page();
> +       kfree_via_phys();
>         kmem_cache_oob();
>         memcg_accounted_kmem_cache();
>         kasan_stack_oob();
> --
> 2.11.0
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
