Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2FD92682
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 16:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93Y6a1komZCu2UCnaBz/3ckj9j+5pvsoqpG0ThaxIsw=; b=HOYRkZt/NV+lX9
	IlaKRTl66LdxGlmnLD6XEga28qZF5dXqcTYDfzznXlo2inzNQZVr8zKlZqHtLqyHV5jQyTAluBegp
	fijwKt2g2hkZ3FHnHka2nn7Dl2LIt9ICukX9GS8BXH6+s+7I6Ghbh1C9S7gzQcXN3HMxlEId34f59
	yf3SmvgHtZ5S9HMtBKbPHawzcDOu/f0ArJKkUFEiAuSOjodqUsN9Pa6pbjDbbBREgpKf1PQ/7mcAN
	PUIoQ0mmuMuxjg5oGAoky5QG9TqmGmG0VYBBSY80dSJYJP8pdIMskD7O3cdNfy/LuhjVeu6io/eey
	T55lsCYFUVCqA/PH3Rcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziY8-00068h-Ep; Mon, 19 Aug 2019 14:22:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziY0-00060x-8c; Mon, 19 Aug 2019 14:22:13 +0000
X-UUID: 79a1e94f165b485da7296a7c204052a9-20190819
X-UUID: 79a1e94f165b485da7296a7c204052a9-20190819
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 439221677; Mon, 19 Aug 2019 06:21:59 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 07:21:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 22:21:56 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 22:21:56 +0800
Message-ID: <1566224517.9993.6.camel@mtksdccf07>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Mon, 19 Aug 2019 22:21:57 +0800
In-Reply-To: <8df7ec20-2fd2-8076-9a34-ac4c9785e91a@virtuozzo.com>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
 <8df7ec20-2fd2-8076-9a34-ac4c9785e91a@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_072212_310239_4123C1BE 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, wsd_upstream@mediatek.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-08-19 at 17:06 +0300, Andrey Ryabinin wrote:
> 
> On 8/19/19 4:34 PM, Will Deacon wrote:
> > On Mon, Aug 19, 2019 at 02:23:48PM +0100, Mark Rutland wrote:
> >> On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
> >>> On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> >>>> __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> >>>> but it will modify pointer tag into 0xff, so there is a false positive.
> >>>>
> >>>> When enable tag-based kasan, phys_to_virt() function need to rewrite
> >>>> its original pointer tag in order to avoid kasan report an incorrect
> >>>> memory corruption.
> >>>
> >>> Hmm. Which tree did you see this on? We've recently queued a load of fixes
> >>> in this area, but I /thought/ they were only needed after the support for
> >>> 52-bit virtual addressing in the kernel.
> >>
> >> I'm seeing similar issues in the virtio blk code (splat below), atop of
> >> the arm64 for-next/core branch. I think this is a latent issue, and
> >> people are only just starting to test with KASAN_SW_TAGS.
> >>
> >> It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
> >> virt->page->virt, losing the per-object tag in the process.
> >>
> >> Our page_to_virt() seems to get a per-page tag, but this only makes
> >> sense if you're dealing with the page allocator, rather than something
> >> like SLUB which carves a page into smaller objects giving each object a
> >> distinct tag.
> >>
> >> Any round-trip of a pointer from SLUB is going to lose the per-object
> >> tag.
> > 
> > Urgh, I wonder how this is supposed to work?
> > 
> 
> We supposed to ignore pointers with 0xff tags. We do ignore them when memory access checked,
> but not in kfree() path.
> This untested patch should fix the issue:
> 
> 
> 
> ---
>  mm/kasan/common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 895dc5e2b3d5..0a81cc328049 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -407,7 +407,7 @@ static inline bool shadow_invalid(u8 tag, s8 shadow_byte)
>  		return shadow_byte < 0 ||
>  			shadow_byte >= KASAN_SHADOW_SCALE_SIZE;
>  	else
> -		return tag != (u8)shadow_byte;
> +		return (tag != KASAN_TAG_KERNEL) && (tag != (u8)shadow_byte);
>  }
>  
>  static bool __kasan_slab_free(struct kmem_cache *cache, void *object,


Hi, Andrey,

Does it miss the double-free case after ignore pointer tag 0xff ?
and please help review my another patch about memory corruption
identification.

Thanks your respondence

Walter




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
