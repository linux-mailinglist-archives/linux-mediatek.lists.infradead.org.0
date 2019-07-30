Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B58179F2E
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Jul 2019 05:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erRTlY2TN0lCdsEk273SPLQlighXhIvixglrFdCwjIw=; b=cg2EVqRd78w0pd
	4MPtEzZB4xn10VkHMZVtagOzyUEusQjjBK0kwbUQZV3PGwQ4bCKZttuHWSPdsw3UXh49SNocpLO98
	d+gRvxOwW4mnV1ZUhEha0d9ve76sQi0w5rhKmLUQtPw/lMJiYaeKFFnLgGCTpZe9l7fn4obhcLwx3
	Dm8B/GsDWDim3ppGor17rRIVHyAzWfHmhW097SZi17dO15tCS3eQVyhMRlZPo8g4Bw+6775o9GviO
	xu/0cdGi2PAgxo7irTe/2Cu7Z27VhOojTy+WHZxett8C63GTEiU9yRiar2PcI3JHsIPSgstPWVxNp
	PQkSjRIRC648DmR2oLvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsINY-00058s-1y; Tue, 30 Jul 2019 03:00:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHHC-0007gC-V4
 for linux-mediatek@lists.infradead.org; Tue, 30 Jul 2019 01:50:08 +0000
X-UUID: d6900a9506944e6387fe6cb7379959ff-20190729
X-UUID: d6900a9506944e6387fe6cb7379959ff-20190729
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2131553394; Mon, 29 Jul 2019 17:48:29 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Jul 2019 18:48:28 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 09:48:26 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Jul 2019 09:48:26 +0800
Message-ID: <1564451306.18363.2.camel@mtkswgap22>
Subject: Re: [PATCH v2] mm: memcontrol: fix use after free in mem_cgroup_iter()
From: Miles Chen <miles.chen@mediatek.com>
To: Johannes Weiner <hannes@cmpxchg.org>
Date: Tue, 30 Jul 2019 09:48:26 +0800
In-Reply-To: <20190729160646.GD21958@cmpxchg.org>
References: <20190726021247.16162-1-miles.chen@mediatek.com>
 <20190729160646.GD21958@cmpxchg.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_185007_040617_8B76B9E4 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Vladimir Davydov <vdavydov.dev@gmail.com>,
 cgroups@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-07-29 at 12:06 -0400, Johannes Weiner wrote:
> On Fri, Jul 26, 2019 at 10:12:47AM +0800, Miles Chen wrote:
> > This patch is sent to report an use after free in mem_cgroup_iter()
> > after merging commit: be2657752e9e "mm: memcg: fix use after free in
> > mem_cgroup_iter()".
> > 
> > I work with android kernel tree (4.9 & 4.14), and the commit:
> > be2657752e9e "mm: memcg: fix use after free in mem_cgroup_iter()" has
> > been merged to the trees. However, I can still observe use after free
> > issues addressed in the commit be2657752e9e.
> > (on low-end devices, a few times this month)
> > 
> > backtrace:
> > 	css_tryget <- crash here
> > 	mem_cgroup_iter
> > 	shrink_node
> > 	shrink_zones
> > 	do_try_to_free_pages
> > 	try_to_free_pages
> > 	__perform_reclaim
> > 	__alloc_pages_direct_reclaim
> > 	__alloc_pages_slowpath
> > 	__alloc_pages_nodemask
> > 
> > To debug, I poisoned mem_cgroup before freeing it:
> > 
> > static void __mem_cgroup_free(struct mem_cgroup *memcg)
> > 	for_each_node(node)
> > 	free_mem_cgroup_per_node_info(memcg, node);
> > 	free_percpu(memcg->stat);
> > +       /* poison memcg before freeing it */
> > +       memset(memcg, 0x78, sizeof(struct mem_cgroup));
> > 	kfree(memcg);
> > }
> > 
> > The coredump shows the position=0xdbbc2a00 is freed.
> > 
> > (gdb) p/x ((struct mem_cgroup_per_node *)0xe5009e00)->iter[8]
> > $13 = {position = 0xdbbc2a00, generation = 0x2efd}
> > 
> > 0xdbbc2a00:     0xdbbc2e00      0x00000000      0xdbbc2800      0x00000100
> > 0xdbbc2a10:     0x00000200      0x78787878      0x00026218      0x00000000
> > 0xdbbc2a20:     0xdcad6000      0x00000001      0x78787800      0x00000000
> > 0xdbbc2a30:     0x78780000      0x00000000      0x0068fb84      0x78787878
> > 0xdbbc2a40:     0x78787878      0x78787878      0x78787878      0xe3fa5cc0
> > 0xdbbc2a50:     0x78787878      0x78787878      0x00000000      0x00000000
> > 0xdbbc2a60:     0x00000000      0x00000000      0x00000000      0x00000000
> > 0xdbbc2a70:     0x00000000      0x00000000      0x00000000      0x00000000
> > 0xdbbc2a80:     0x00000000      0x00000000      0x00000000      0x00000000
> > 0xdbbc2a90:     0x00000001      0x00000000      0x00000000      0x00100000
> > 0xdbbc2aa0:     0x00000001      0xdbbc2ac8      0x00000000      0x00000000
> > 0xdbbc2ab0:     0x00000000      0x00000000      0x00000000      0x00000000
> > 0xdbbc2ac0:     0x00000000      0x00000000      0xe5b02618      0x00001000
> > 0xdbbc2ad0:     0x00000000      0x78787878      0x78787878      0x78787878
> > 0xdbbc2ae0:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2af0:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b00:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b10:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b20:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b30:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b40:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b50:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b60:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b70:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2b80:     0x78787878      0x78787878      0x00000000      0x78787878
> > 0xdbbc2b90:     0x78787878      0x78787878      0x78787878      0x78787878
> > 0xdbbc2ba0:     0x78787878      0x78787878      0x78787878      0x78787878
> > 
> > In the reclaim path, try_to_free_pages() does not setup
> > sc.target_mem_cgroup and sc is passed to do_try_to_free_pages(), ...,
> > shrink_node().
> > 
> > In mem_cgroup_iter(), root is set to root_mem_cgroup because
> > sc->target_mem_cgroup is NULL.
> > It is possible to assign a memcg to root_mem_cgroup.nodeinfo.iter in
> > mem_cgroup_iter().
> > 
> > 	try_to_free_pages
> > 		struct scan_control sc = {...}, target_mem_cgroup is 0x0;
> > 	do_try_to_free_pages
> > 	shrink_zones
> > 	shrink_node
> > 		 mem_cgroup *root = sc->target_mem_cgroup;
> > 		 memcg = mem_cgroup_iter(root, NULL, &reclaim);
> > 	mem_cgroup_iter()
> > 		if (!root)
> > 			root = root_mem_cgroup;
> > 		...
> > 
> > 		css = css_next_descendant_pre(css, &root->css);
> > 		memcg = mem_cgroup_from_css(css);
> > 		cmpxchg(&iter->position, pos, memcg);
> > 
> > My device uses memcg non-hierarchical mode.
> > When we release a memcg: invalidate_reclaim_iterators() reaches only
> > dead_memcg and its parents. If non-hierarchical mode is used,
> > invalidate_reclaim_iterators() never reaches root_mem_cgroup.
> > 
> > static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> > {
> > 	struct mem_cgroup *memcg = dead_memcg;
> > 
> > 	for (; memcg; memcg = parent_mem_cgroup(memcg)
> > 	...
> > }
> > 
> > So the use after free scenario looks like:
> > 
> > CPU1						CPU2
> > 
> > try_to_free_pages
> > do_try_to_free_pages
> > shrink_zones
> > shrink_node
> > mem_cgroup_iter()
> >     if (!root)
> >     	root = root_mem_cgroup;
> >     ...
> >     css = css_next_descendant_pre(css, &root->css);
> >     memcg = mem_cgroup_from_css(css);
> >     cmpxchg(&iter->position, pos, memcg);
> > 
> > 					invalidate_reclaim_iterators(memcg);
> > 					...
> > 					__mem_cgroup_free()
> > 						kfree(memcg);
> > 
> > try_to_free_pages
> > do_try_to_free_pages
> > shrink_zones
> > shrink_node
> > mem_cgroup_iter()
> >     if (!root)
> >     	root = root_mem_cgroup;
> >     ...
> >     mz = mem_cgroup_nodeinfo(root, reclaim->pgdat->node_id);
> >     iter = &mz->iter[reclaim->priority];
> >     pos = READ_ONCE(iter->position);
> >     css_tryget(&pos->css) <- use after free
> > 
> > To avoid this, we should also invalidate root_mem_cgroup.nodeinfo.iter in
> > invalidate_reclaim_iterators().
> > 
> > Change since v1:
> > Add a comment to explain why we need to handle root_mem_cgroup separately.
> > Rename invalid_root to invalidate_root.
> > 
> > Cc: Johannes Weiner <hannes@cmpxchg.org>
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > ---
> >  mm/memcontrol.c | 38 ++++++++++++++++++++++++++++----------
> >  1 file changed, 28 insertions(+), 10 deletions(-)
> > 
> > diff --git a/mm/memcontrol.c b/mm/memcontrol.c
> > index cdbb7a84cb6e..09f2191f113b 100644
> > --- a/mm/memcontrol.c
> > +++ b/mm/memcontrol.c
> > @@ -1130,26 +1130,44 @@ void mem_cgroup_iter_break(struct mem_cgroup *root,
> >  		css_put(&prev->css);
> >  }
> >  
> > -static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> > +static void __invalidate_reclaim_iterators(struct mem_cgroup *from,
> > +					struct mem_cgroup *dead_memcg)
> >  {
> > -	struct mem_cgroup *memcg = dead_memcg;
> >  	struct mem_cgroup_reclaim_iter *iter;
> >  	struct mem_cgroup_per_node *mz;
> >  	int nid;
> >  	int i;
> >  
> > -	for (; memcg; memcg = parent_mem_cgroup(memcg)) {
> > -		for_each_node(nid) {
> > -			mz = mem_cgroup_nodeinfo(memcg, nid);
> > -			for (i = 0; i <= DEF_PRIORITY; i++) {
> > -				iter = &mz->iter[i];
> > -				cmpxchg(&iter->position,
> > -					dead_memcg, NULL);
> > -			}
> > +	for_each_node(nid) {
> > +		mz = mem_cgroup_nodeinfo(from, nid);
> > +		for (i = 0; i <= DEF_PRIORITY; i++) {
> > +			iter = &mz->iter[i];
> > +			cmpxchg(&iter->position,
> > +				dead_memcg, NULL);
> >  		}
> >  	}
> >  }
> >  
> > +/*
> > + * When cgruop1 non-hierarchy mode is used, parent_mem_cgroup() does
> > + * not walk all the way up to the cgroup root (root_mem_cgroup). So
> > + * we have to handle dead_memcg from cgroup root separately.
> > + */
> > +static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> > +{
> > +	struct mem_cgroup *memcg = dead_memcg;
> > +	int invalidate_root = 0;
> > +
> > +	for (; memcg; memcg = parent_mem_cgroup(memcg)) {
> > +		__invalidate_reclaim_iterators(memcg, dead_memcg);
> > +		if (memcg == root_mem_cgroup)
> > +			invalidate_root = 1;
> > +	}
> > +
> > +	if (!invalidate_root)
> > +		__invalidate_reclaim_iterators(root_mem_cgroup, dead_memcg);
> 
> "invalidate_root" suggests we still have to invalidate the root, but
> the variable works the opposite way. How about dropping it altogether
> and moving the comment directly to where the decision is made:
> 
> 	struct mem_cgroup *memcg = dead_memcg;
> 
> 	do {
> 		__invalidate_reclaim_iterators(memcg, dead_memcg);
> 		last = memcg;
> 	} while ((memcg = parent_mem_cgroup(memcg)));
> 
> 	/*
> 	 * When cgruop1 non-hierarchy mode is used,
> 	 * parent_mem_cgroup() does not walk all the way up to the
> 	 * cgroup root (root_mem_cgroup). So we have to handle
> 	 * dead_memcg from cgroup root separately.
> 	 */
> 	if (last != root_mem_cgroup)
> 		__invalidate_reclaim_iterators(root_mem_cgroup, dead_memcg);

Thanks for the suggestion, the code is easier to read this way.
I'll submit patch v4 with this and the fixed tags.


Miles


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
