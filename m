Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193B77A23D
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Jul 2019 09:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Gj8zdPNyw/PWiabjtPRcfDqtwScnim+adjElm8ZpHA=; b=tbTyEozh7WGKLH
	7wYcW0dKY684IHqjgDWGiPN2BASCAXNEWtVS891Ji27SZXa7mOX+ymR4HcJ+oaDYT4L4BsLA3Fs0I
	8ry/ufypmbbcD+3FJH4DPgor+tLAWTFHba+mq+iLQ2YoXSk2UFVKTKOxVN71DEJtWVG7PnpfouIb/
	i2JEVxEt0xDcmWFm53pyJOaodvxtBE2TCY1SM47O/ivmOLnDZU/EimN13HT8n8LBaxqssl0oIp0N/
	Qmp96CR/0S0K47r57A6IIUpwhQgst22JFau6Hn1HEo4YwUZNmTH2ct+y92/oMnclJAIwyWm5NTYsa
	adyiTSf9t/6hwGelhrvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMXl-00065v-E0; Tue, 30 Jul 2019 07:27:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsMXf-00061O-Bh
 for linux-mediatek@lists.infradead.org; Tue, 30 Jul 2019 07:27:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8A31BAFBB;
 Tue, 30 Jul 2019 07:27:25 +0000 (UTC)
Date: Tue, 30 Jul 2019 09:27:24 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH v4] mm: memcontrol: fix use after free in mem_cgroup_iter()
Message-ID: <20190730072724.GM9330@dhcp22.suse.cz>
References: <20190730015729.4406-1-miles.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730015729.4406-1-miles.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_002727_716758_83A16CD5 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Vladimir Davydov <vdavydov.dev@gmail.com>,
 Johannes Weiner <hannes@cmpxchg.org>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

[Cc Andrew to pick up the patch]

On Tue 30-07-19 09:57:29, Miles Chen wrote:
> This patch is sent to report an use after free in mem_cgroup_iter()
> after merging commit: be2657752e9e "mm: memcg: fix use after free in
> mem_cgroup_iter()".
> 
> I work with android kernel tree (4.9 & 4.14), and the commit:
> be2657752e9e "mm: memcg: fix use after free in mem_cgroup_iter()" has
> been merged to the trees. However, I can still observe use after free
> issues addressed in the commit be2657752e9e.
> (on low-end devices, a few times this month)
> 
> backtrace:
> 	css_tryget <- crash here
> 	mem_cgroup_iter
> 	shrink_node
> 	shrink_zones
> 	do_try_to_free_pages
> 	try_to_free_pages
> 	__perform_reclaim
> 	__alloc_pages_direct_reclaim
> 	__alloc_pages_slowpath
> 	__alloc_pages_nodemask
> 
> To debug, I poisoned mem_cgroup before freeing it:
> 
> static void __mem_cgroup_free(struct mem_cgroup *memcg)
> 	for_each_node(node)
> 	free_mem_cgroup_per_node_info(memcg, node);
> 	free_percpu(memcg->stat);
> +       /* poison memcg before freeing it */
> +       memset(memcg, 0x78, sizeof(struct mem_cgroup));
> 	kfree(memcg);
> }
> 
> The coredump shows the position=0xdbbc2a00 is freed.
> 
> (gdb) p/x ((struct mem_cgroup_per_node *)0xe5009e00)->iter[8]
> $13 = {position = 0xdbbc2a00, generation = 0x2efd}
> 
> 0xdbbc2a00:     0xdbbc2e00      0x00000000      0xdbbc2800      0x00000100
> 0xdbbc2a10:     0x00000200      0x78787878      0x00026218      0x00000000
> 0xdbbc2a20:     0xdcad6000      0x00000001      0x78787800      0x00000000
> 0xdbbc2a30:     0x78780000      0x00000000      0x0068fb84      0x78787878
> 0xdbbc2a40:     0x78787878      0x78787878      0x78787878      0xe3fa5cc0
> 0xdbbc2a50:     0x78787878      0x78787878      0x00000000      0x00000000
> 0xdbbc2a60:     0x00000000      0x00000000      0x00000000      0x00000000
> 0xdbbc2a70:     0x00000000      0x00000000      0x00000000      0x00000000
> 0xdbbc2a80:     0x00000000      0x00000000      0x00000000      0x00000000
> 0xdbbc2a90:     0x00000001      0x00000000      0x00000000      0x00100000
> 0xdbbc2aa0:     0x00000001      0xdbbc2ac8      0x00000000      0x00000000
> 0xdbbc2ab0:     0x00000000      0x00000000      0x00000000      0x00000000
> 0xdbbc2ac0:     0x00000000      0x00000000      0xe5b02618      0x00001000
> 0xdbbc2ad0:     0x00000000      0x78787878      0x78787878      0x78787878
> 0xdbbc2ae0:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2af0:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b00:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b10:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b20:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b30:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b40:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b50:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b60:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b70:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2b80:     0x78787878      0x78787878      0x00000000      0x78787878
> 0xdbbc2b90:     0x78787878      0x78787878      0x78787878      0x78787878
> 0xdbbc2ba0:     0x78787878      0x78787878      0x78787878      0x78787878
> 
> In the reclaim path, try_to_free_pages() does not setup
> sc.target_mem_cgroup and sc is passed to do_try_to_free_pages(), ...,
> shrink_node().
> 
> In mem_cgroup_iter(), root is set to root_mem_cgroup because
> sc->target_mem_cgroup is NULL.
> It is possible to assign a memcg to root_mem_cgroup.nodeinfo.iter in
> mem_cgroup_iter().
> 
> 	try_to_free_pages
> 		struct scan_control sc = {...}, target_mem_cgroup is 0x0;
> 	do_try_to_free_pages
> 	shrink_zones
> 	shrink_node
> 		 mem_cgroup *root = sc->target_mem_cgroup;
> 		 memcg = mem_cgroup_iter(root, NULL, &reclaim);
> 	mem_cgroup_iter()
> 		if (!root)
> 			root = root_mem_cgroup;
> 		...
> 
> 		css = css_next_descendant_pre(css, &root->css);
> 		memcg = mem_cgroup_from_css(css);
> 		cmpxchg(&iter->position, pos, memcg);
> 
> My device uses memcg non-hierarchical mode.
> When we release a memcg: invalidate_reclaim_iterators() reaches only
> dead_memcg and its parents. If non-hierarchical mode is used,
> invalidate_reclaim_iterators() never reaches root_mem_cgroup.
> 
> static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> {
> 	struct mem_cgroup *memcg = dead_memcg;
> 
> 	for (; memcg; memcg = parent_mem_cgroup(memcg)
> 	...
> }
> 
> So the use after free scenario looks like:
> 
> CPU1						CPU2
> 
> try_to_free_pages
> do_try_to_free_pages
> shrink_zones
> shrink_node
> mem_cgroup_iter()
>     if (!root)
>     	root = root_mem_cgroup;
>     ...
>     css = css_next_descendant_pre(css, &root->css);
>     memcg = mem_cgroup_from_css(css);
>     cmpxchg(&iter->position, pos, memcg);
> 
> 					invalidate_reclaim_iterators(memcg);
> 					...
> 					__mem_cgroup_free()
> 						kfree(memcg);
> 
> try_to_free_pages
> do_try_to_free_pages
> shrink_zones
> shrink_node
> mem_cgroup_iter()
>     if (!root)
>     	root = root_mem_cgroup;
>     ...
>     mz = mem_cgroup_nodeinfo(root, reclaim->pgdat->node_id);
>     iter = &mz->iter[reclaim->priority];
>     pos = READ_ONCE(iter->position);
>     css_tryget(&pos->css) <- use after free
> 
> To avoid this, we should also invalidate root_mem_cgroup.nodeinfo.iter in
> invalidate_reclaim_iterators().
> 
> Change since v1:
> Add a comment to explain why we need to handle root_mem_cgroup separately.
> Rename invalid_root to invalidate_root.
> 
> Change since v2:
> Add fix tag
> 
> Change since v3:
> Remove confusing 'invalidate_root', make the code easier to read
> 
> Fixes: 5ac8fb31ad2e ("mm: memcontrol: convert reclaim iterator to simple css refcounting")
> Cc: Johannes Weiner <hannes@cmpxchg.org>
> Cc: Michal Hocko <mhocko@kernel.org>
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  mm/memcontrol.c | 39 +++++++++++++++++++++++++++++----------
>  1 file changed, 29 insertions(+), 10 deletions(-)
> 
> diff --git a/mm/memcontrol.c b/mm/memcontrol.c
> index cdbb7a84cb6e..8a2a2d5cfc26 100644
> --- a/mm/memcontrol.c
> +++ b/mm/memcontrol.c
> @@ -1130,26 +1130,45 @@ void mem_cgroup_iter_break(struct mem_cgroup *root,
>  		css_put(&prev->css);
>  }
>  
> -static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> +static void __invalidate_reclaim_iterators(struct mem_cgroup *from,
> +					struct mem_cgroup *dead_memcg)
>  {
> -	struct mem_cgroup *memcg = dead_memcg;
>  	struct mem_cgroup_reclaim_iter *iter;
>  	struct mem_cgroup_per_node *mz;
>  	int nid;
>  	int i;
>  
> -	for (; memcg; memcg = parent_mem_cgroup(memcg)) {
> -		for_each_node(nid) {
> -			mz = mem_cgroup_nodeinfo(memcg, nid);
> -			for (i = 0; i <= DEF_PRIORITY; i++) {
> -				iter = &mz->iter[i];
> -				cmpxchg(&iter->position,
> -					dead_memcg, NULL);
> -			}
> +	for_each_node(nid) {
> +		mz = mem_cgroup_nodeinfo(from, nid);
> +		for (i = 0; i <= DEF_PRIORITY; i++) {
> +			iter = &mz->iter[i];
> +			cmpxchg(&iter->position,
> +				dead_memcg, NULL);
>  		}
>  	}
>  }
>  
> +static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> +{
> +	struct mem_cgroup *memcg = dead_memcg;
> +	struct mem_cgroup *last;
> +
> +	do {
> +		__invalidate_reclaim_iterators(memcg, dead_memcg);
> +		last = memcg;
> +	} while (memcg = parent_mem_cgroup(memcg));
> +
> +	/*
> +	 * When cgruop1 non-hierarchy mode is used,
> +	 * parent_mem_cgroup() does not walk all the way up to the
> +	 * cgroup root (root_mem_cgroup). So we have to handle
> +	 * dead_memcg from cgroup root separately.
> +	 */
> +	if (last != root_mem_cgroup)
> +		__invalidate_reclaim_iterators(root_mem_cgroup,
> +						dead_memcg);
> +}
> +
>  /**
>   * mem_cgroup_scan_tasks - iterate over tasks of a memory cgroup hierarchy
>   * @memcg: hierarchy root
> -- 
> 2.18.0

-- 
Michal Hocko
SUSE Labs

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
