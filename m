Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED41C1D7960
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 15:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EF5xrmXljdX9qXaNThif6O9iq5djmRHB+jQByg+ug8=; b=M53gYawq4raTox
	SrdUg6W/lj2ffPo2G4PLQZt/m76US5t/UunHR25NfZIuqvMspMhifCYpAX3ELsZFUyLCTXU1LVdN3
	1naVbgKpruKjo46/OBbxrlgZkreS3bUIg3tjKdkOkpdjnIYQhmxfyT9drmoi/RPSazFZdHHN7Fx25
	avVPuVCxOWXvrLIOXy3+GgVuTmeeVPrNRlRnA3ijRTH1QZD+Mt611wcipUgptQMKF2JPYUmG/ydq3
	cOdZvUROX6CxQC9gUkM/DnkKcwEb85Hr/IeZkiV31Ckwxl+FpHOhXFMXhNBq8LxwsuyGmIhWHXLx5
	/slazBIvSfHeixvm4fkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafXd-0001Be-Rj; Mon, 18 May 2020 13:10:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafXQ-00012w-T3; Mon, 18 May 2020 13:10:40 +0000
X-UUID: 642eb57c8f9b4eec8ea3c52b317f37e0-20200518
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NW+oKNdt91ijVvJ9s3UwA40pv/oGY7fZyF/xj9NBb9w=; 
 b=nazVbV5FjLVnaOuSSvmH62sWEFDeTAUskH46ZpX20ZFx2JvwYU1Ir1oAI5UNUmLKU5f6Y4CwhDdu5sN9UjjjWLdDeMIrMIxZYD1sdxQDDW1gKRIwAByTtQPrPyM6vOiQeiREduuMyihgok09O2mc0q1dVA3eXira1H/HSwTfzRE=;
X-UUID: 642eb57c8f9b4eec8ea3c52b317f37e0-20200518
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1177060527; Mon, 18 May 2020 05:10:19 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 06:10:27 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 21:10:12 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 18 May 2020 21:10:12 +0800
Message-ID: <1589807413.16436.21.camel@mtksdccf07>
Subject: Re: [PATCH v3 2/4] kasan: record and print the free track
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 18 May 2020 21:10:13 +0800
In-Reply-To: <1589801235.16436.12.camel@mtksdccf07>
References: <20200518062730.4665-1-walter-zh.wu@mediatek.com>
 <CACT4Y+YVF2cLdg6qaK+3NcU3kLz2Pys6NWxLAYfity5n5cjirA@mail.gmail.com>
 <1589801235.16436.12.camel@mtksdccf07>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F824AAD9ABEE6A42A165D6B8C07B30E91472DB191E4C6F015040541E8A42C3D72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_061037_423867_F0A3A1FA 
X-CRM114-Status: GOOD (  26.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 2020-05-18 at 19:27 +0800, Walter Wu wrote:
> On Mon, 2020-05-18 at 12:18 +0200, Dmitry Vyukov wrote:
> > On Mon, May 18, 2020 at 8:27 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > Move free track from slub alloc meta-data to slub free meta-data in
> > > order to make struct kasan_free_meta size is 16 bytes. It is a good
> > > size because it is the minimal redzone size and a good number of
> > > alignment.
> > >
> > > For free track in generic KASAN, we do the modification in struct
> > > kasan_alloc_meta and kasan_free_meta:
> > > - remove free track from kasan_alloc_meta.
> > > - add free track into kasan_free_meta.
> > >
> > > [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> > >
> > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > Cc: Alexander Potapenko <glider@google.com>
> > > ---
> > >  mm/kasan/common.c  | 33 ++++++++++-----------------------
> > >  mm/kasan/generic.c | 18 ++++++++++++++++++
> > >  mm/kasan/kasan.h   |  7 +++++++
> > >  mm/kasan/report.c  | 20 --------------------
> > >  mm/kasan/tags.c    | 37 +++++++++++++++++++++++++++++++++++++
> > >  5 files changed, 72 insertions(+), 43 deletions(-)
> > >
> > > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > > index 8bc618289bb1..6500bc2bb70c 100644
> > > --- a/mm/kasan/common.c
> > > +++ b/mm/kasan/common.c
> > > @@ -51,7 +51,7 @@ depot_stack_handle_t kasan_save_stack(gfp_t flags)
> > >         return stack_depot_save(entries, nr_entries, flags);
> > >  }
> > >
> > > -static inline void set_track(struct kasan_track *track, gfp_t flags)
> > > +void kasan_set_track(struct kasan_track *track, gfp_t flags)
> > >  {
> > >         track->pid = current->pid;
> > >         track->stack = kasan_save_stack(flags);
> > > @@ -249,9 +249,7 @@ void kasan_cache_create(struct kmem_cache *cache, unsigned int *size,
> > >         *size += sizeof(struct kasan_alloc_meta);
> > >
> > >         /* Add free meta. */
> > > -       if (IS_ENABLED(CONFIG_KASAN_GENERIC) &&
> > > -           (cache->flags & SLAB_TYPESAFE_BY_RCU || cache->ctor ||
> > > -            cache->object_size < sizeof(struct kasan_free_meta))) {
> > > +       if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {
> > 
> > Why do we need to increase object size unconditionally?
> > We only store info in free track when the object is free, so I would
> > assume we still can generally overlap free track and the object
> > itself. We store free track at the same time we use the quarantine
> > link, and the quarantine link was overlapped with the object just
> > fine.
> > With this change we indeed increase object size, which we do not want
> > in general.
> > 
> 
> If it doesn't add free meta, but we always store free track into the
> object, Is it safe?
> 
> > 
> > >                 cache->kasan_info.free_meta_offset = *size;
> > >                 *size += sizeof(struct kasan_free_meta);
> > >         }
> > > @@ -299,24 +297,6 @@ struct kasan_free_meta *get_free_info(struct kmem_cache *cache,
> > >         return (void *)object + cache->kasan_info.free_meta_offset;
> > >  }
> > >
> > > -
> > > -static void kasan_set_free_info(struct kmem_cache *cache,
> > > -               void *object, u8 tag)
> > > -{
> > > -       struct kasan_alloc_meta *alloc_meta;
> > > -       u8 idx = 0;
> > > -
> > > -       alloc_meta = get_alloc_info(cache, object);
> > > -
> > > -#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > -       idx = alloc_meta->free_track_idx;
> > > -       alloc_meta->free_pointer_tag[idx] = tag;
> > > -       alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
> > > -#endif
> > > -
> > > -       set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
> > > -}
> > > -
> > >  void kasan_poison_slab(struct page *page)
> > >  {
> > >         unsigned long i;
> > > @@ -396,6 +376,13 @@ void * __must_check kasan_init_slab_obj(struct kmem_cache *cache,
> > >         alloc_info = get_alloc_info(cache, object);
> > >         __memset(alloc_info, 0, sizeof(*alloc_info));
> > >
> > > +       if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {
> > > +               struct kasan_free_meta *free_info;
> > > +
> > > +               free_info = get_free_info(cache, object);
> > > +               __memset(free_info, 0, sizeof(*free_info));
> > 
> > If we overlap free track with object, this will not be needed as well, right?
> > 

I thought about it, I think you are right, because the free track must
be stored when object is free, so even don't clean this meta data. It
doesn't matter.

Thanks for your review. If there are no other problems, I will send next
patch. 

Thanks.


> 
> Should we not consider those objects which have adding free meta? If
> they exist, then we should init their meta data when object re-allocate.
> 
> struct kasan_free_meta {
>     struct qlist_node quarantine_link;
>     struct kasan_track free_track;
> };
> 
> 
> > > +       }
> > > +
> > >         if (IS_ENABLED(CONFIG_KASAN_SW_TAGS))
> > >                 object = set_tag(object,
> > >                                 assign_tag(cache, object, true, false));
> > > @@ -492,7 +479,7 @@ static void *__kasan_kmalloc(struct kmem_cache *cache, const void *object,
> > >                 KASAN_KMALLOC_REDZONE);
> > >
> > >         if (cache->flags & SLAB_KASAN)
> > > -               set_track(&get_alloc_info(cache, object)->alloc_track, flags);
> > > +               kasan_set_track(&get_alloc_info(cache, object)->alloc_track, flags);
> > >
> > >         return set_tag(object, tag);
> > >  }
> > > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > > index 78d8e0a75a8a..988bc095b738 100644
> > > --- a/mm/kasan/generic.c
> > > +++ b/mm/kasan/generic.c
> > > @@ -345,3 +345,21 @@ void kasan_record_aux_stack(void *addr)
> > >                 alloc_info->rcu_stack[1] = alloc_info->rcu_stack[0];
> > >         alloc_info->rcu_stack[0] = kasan_save_stack(GFP_NOWAIT);
> > >  }
> > > +
> > > +void kasan_set_free_info(struct kmem_cache *cache,
> > > +                               void *object, u8 tag)
> > > +{
> > > +       struct kasan_free_meta *free_meta;
> > > +
> > > +       free_meta = get_free_info(cache, object);
> > > +       kasan_set_track(&free_meta->free_track, GFP_NOWAIT);
> > > +}
> > > +
> > > +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > +                               void *object, u8 tag)
> > > +{
> > > +       struct kasan_free_meta *free_meta;
> > > +
> > > +       free_meta = get_free_info(cache, object);
> > > +       return &free_meta->free_track;
> > > +}
> > > diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> > > index 870c5dd07756..87ee3626b8b0 100644
> > > --- a/mm/kasan/kasan.h
> > > +++ b/mm/kasan/kasan.h
> > > @@ -127,6 +127,9 @@ struct kasan_free_meta {
> > >          * Otherwise it might be used for the allocator freelist.
> > >          */
> > >         struct qlist_node quarantine_link;
> > > +#ifdef CONFIG_KASAN_GENERIC
> > > +       struct kasan_track free_track;
> > > +#endif
> > >  };
> > >
> > >  struct kasan_alloc_meta *get_alloc_info(struct kmem_cache *cache,
> > > @@ -168,6 +171,10 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
> > >  struct page *kasan_addr_to_page(const void *addr);
> > >
> > >  depot_stack_handle_t kasan_save_stack(gfp_t flags);
> > > +void kasan_set_track(struct kasan_track *track, gfp_t flags);
> > > +void kasan_set_free_info(struct kmem_cache *cache, void *object, u8 tag);
> > > +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > +                               void *object, u8 tag);
> > >
> > >  #if defined(CONFIG_KASAN_GENERIC) && \
> > >         (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
> > > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > > index 5ee66cf7e27c..7e9f9f6d5e85 100644
> > > --- a/mm/kasan/report.c
> > > +++ b/mm/kasan/report.c
> > > @@ -159,26 +159,6 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
> > >                 (void *)(object_addr + cache->object_size));
> > >  }
> > >
> > > -static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > -               void *object, u8 tag)
> > > -{
> > > -       struct kasan_alloc_meta *alloc_meta;
> > > -       int i = 0;
> > > -
> > > -       alloc_meta = get_alloc_info(cache, object);
> > > -
> > > -#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > -       for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
> > > -               if (alloc_meta->free_pointer_tag[i] == tag)
> > > -                       break;
> > > -       }
> > > -       if (i == KASAN_NR_FREE_STACKS)
> > > -               i = alloc_meta->free_track_idx;
> > > -#endif
> > > -
> > > -       return &alloc_meta->free_track[i];
> > > -}
> > > -
> > >  #ifdef CONFIG_KASAN_GENERIC
> > >  static void print_stack(depot_stack_handle_t stack)
> > >  {
> > > diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> > > index 25b7734e7013..201dee5d6ae0 100644
> > > --- a/mm/kasan/tags.c
> > > +++ b/mm/kasan/tags.c
> > > @@ -162,3 +162,40 @@ void __hwasan_tag_memory(unsigned long addr, u8 tag, unsigned long size)
> > >         kasan_poison_shadow((void *)addr, size, tag);
> > >  }
> > >  EXPORT_SYMBOL(__hwasan_tag_memory);
> > > +
> > > +void kasan_set_free_info(struct kmem_cache *cache,
> > > +                               void *object, u8 tag)
> > > +{
> > > +       struct kasan_alloc_meta *alloc_meta;
> > > +       u8 idx = 0;
> > > +
> > > +       alloc_meta = get_alloc_info(cache, object);
> > > +
> > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > +       idx = alloc_meta->free_track_idx;
> > > +       alloc_meta->free_pointer_tag[idx] = tag;
> > > +       alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
> > > +#endif
> > > +
> > > +       kasan_set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
> > > +}
> > > +
> > > +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > +                               void *object, u8 tag)
> > > +{
> > > +       struct kasan_alloc_meta *alloc_meta;
> > > +       int i = 0;
> > > +
> > > +       alloc_meta = get_alloc_info(cache, object);
> > > +
> > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > +       for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
> > > +               if (alloc_meta->free_pointer_tag[i] == tag)
> > > +                       break;
> > > +       }
> > > +       if (i == KASAN_NR_FREE_STACKS)
> > > +               i = alloc_meta->free_track_idx;
> > > +#endif
> > > +
> > > +       return &alloc_meta->free_track[i];
> > > +}
> > > --
> > > 2.18.0
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
