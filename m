Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FA37754A
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 01:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LJLaRNRLoML6ig2C3Q1qX6qZwZQIs0nUGWc+0aMVec=; b=Sq8D3yU2F9A4vP
	ucvr4aTZOd73t4oDHSOPbukqvXOVfeFGE4aFCopvysPduuza3tmsq1QHweQb3qJ6KR5ActCnmH6bl
	Zx5IWWls2XrYbkqa84u3rdqJ5YlwGVbS67ddegOQCK7U1pP2oPZNEI/uUFbUIEfPnD2TAfT+BmROb
	UWO1KeHxUxqxRjyb1c/Wxi1sjQkhQS/RbVjIkj/P7QYLVo9mKVsiFaRhKqwocGrlNLl7leFKuWKRb
	rubb4aOdkl87okcHlOBYJ28yHIpTuGdTSutmJ4taOiTQWOTirTAFSpb8vzafLaNiuKAN/Q9VgYHYE
	XNubhiCCg6iUFO1ErNnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr9wa-0001uL-TI; Fri, 26 Jul 2019 23:48:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr9wW-0001te-L5
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 23:48:11 +0000
X-UUID: a3337fe4070b462fb2dca5cfbb010e92-20190726
X-UUID: a3337fe4070b462fb2dca5cfbb010e92-20190726
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1016637412; Fri, 26 Jul 2019 15:48:01 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 16:47:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 27 Jul 2019 07:47:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 27 Jul 2019 07:47:57 +0800
Message-ID: <1564184878.19817.5.camel@mtkswgap22>
Subject: Re: [PATCH v2] mm: memcontrol: fix use after free in mem_cgroup_iter()
From: Miles Chen <miles.chen@mediatek.com>
To: Michal Hocko <mhocko@kernel.org>
Date: Sat, 27 Jul 2019 07:47:58 +0800
In-Reply-To: <20190726125533.GO6142@dhcp22.suse.cz>
References: <20190726021247.16162-1-miles.chen@mediatek.com>
 <20190726124933.GN6142@dhcp22.suse.cz>
 <20190726125533.GO6142@dhcp22.suse.cz>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_164808_697964_3D67C5DA 
X-CRM114-Status: GOOD (  22.80  )
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Vladimir Davydov <vdavydov.dev@gmail.com>,
 Johannes Weiner <hannes@cmpxchg.org>, cgroups@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-07-26 at 14:55 +0200, Michal Hocko wrote:
> On Fri 26-07-19 14:49:33, Michal Hocko wrote:
> > On Fri 26-07-19 10:12:47, Miles Chen wrote:
> > > This patch is sent to report an use after free in mem_cgroup_iter()
> > > after merging commit: be2657752e9e "mm: memcg: fix use after free in
> > > mem_cgroup_iter()".
> > > 
> > > I work with android kernel tree (4.9 & 4.14), and the commit:
> > > be2657752e9e "mm: memcg: fix use after free in mem_cgroup_iter()" has
> > > been merged to the trees. However, I can still observe use after free
> > > issues addressed in the commit be2657752e9e.
> > > (on low-end devices, a few times this month)
> > > 
> > > backtrace:
> > > 	css_tryget <- crash here
> > > 	mem_cgroup_iter
> > > 	shrink_node
> > > 	shrink_zones
> > > 	do_try_to_free_pages
> > > 	try_to_free_pages
> > > 	__perform_reclaim
> > > 	__alloc_pages_direct_reclaim
> > > 	__alloc_pages_slowpath
> > > 	__alloc_pages_nodemask
> > > 
> > > To debug, I poisoned mem_cgroup before freeing it:
> > > 
> > > static void __mem_cgroup_free(struct mem_cgroup *memcg)
> > > 	for_each_node(node)
> > > 	free_mem_cgroup_per_node_info(memcg, node);
> > > 	free_percpu(memcg->stat);
> > > +       /* poison memcg before freeing it */
> > > +       memset(memcg, 0x78, sizeof(struct mem_cgroup));
> > > 	kfree(memcg);
> > > }
> > > 
> > > The coredump shows the position=0xdbbc2a00 is freed.
> > > 
> > > (gdb) p/x ((struct mem_cgroup_per_node *)0xe5009e00)->iter[8]
> > > $13 = {position = 0xdbbc2a00, generation = 0x2efd}
> > > 
> > > 0xdbbc2a00:     0xdbbc2e00      0x00000000      0xdbbc2800      0x00000100
> > > 0xdbbc2a10:     0x00000200      0x78787878      0x00026218      0x00000000
> > > 0xdbbc2a20:     0xdcad6000      0x00000001      0x78787800      0x00000000
> > > 0xdbbc2a30:     0x78780000      0x00000000      0x0068fb84      0x78787878
> > > 0xdbbc2a40:     0x78787878      0x78787878      0x78787878      0xe3fa5cc0
> > > 0xdbbc2a50:     0x78787878      0x78787878      0x00000000      0x00000000
> > > 0xdbbc2a60:     0x00000000      0x00000000      0x00000000      0x00000000
> > > 0xdbbc2a70:     0x00000000      0x00000000      0x00000000      0x00000000
> > > 0xdbbc2a80:     0x00000000      0x00000000      0x00000000      0x00000000
> > > 0xdbbc2a90:     0x00000001      0x00000000      0x00000000      0x00100000
> > > 0xdbbc2aa0:     0x00000001      0xdbbc2ac8      0x00000000      0x00000000
> > > 0xdbbc2ab0:     0x00000000      0x00000000      0x00000000      0x00000000
> > > 0xdbbc2ac0:     0x00000000      0x00000000      0xe5b02618      0x00001000
> > > 0xdbbc2ad0:     0x00000000      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2ae0:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2af0:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b00:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b10:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b20:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b30:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b40:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b50:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b60:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b70:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2b80:     0x78787878      0x78787878      0x00000000      0x78787878
> > > 0xdbbc2b90:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 0xdbbc2ba0:     0x78787878      0x78787878      0x78787878      0x78787878
> > > 
> > > In the reclaim path, try_to_free_pages() does not setup
> > > sc.target_mem_cgroup and sc is passed to do_try_to_free_pages(), ...,
> > > shrink_node().
> > > 
> > > In mem_cgroup_iter(), root is set to root_mem_cgroup because
> > > sc->target_mem_cgroup is NULL.
> > > It is possible to assign a memcg to root_mem_cgroup.nodeinfo.iter in
> > > mem_cgroup_iter().
> > > 
> > > 	try_to_free_pages
> > > 		struct scan_control sc = {...}, target_mem_cgroup is 0x0;
> > > 	do_try_to_free_pages
> > > 	shrink_zones
> > > 	shrink_node
> > > 		 mem_cgroup *root = sc->target_mem_cgroup;
> > > 		 memcg = mem_cgroup_iter(root, NULL, &reclaim);
> > > 	mem_cgroup_iter()
> > > 		if (!root)
> > > 			root = root_mem_cgroup;
> > > 		...
> > > 
> > > 		css = css_next_descendant_pre(css, &root->css);
> > > 		memcg = mem_cgroup_from_css(css);
> > > 		cmpxchg(&iter->position, pos, memcg);
> > > 
> > > My device uses memcg non-hierarchical mode.
> > > When we release a memcg: invalidate_reclaim_iterators() reaches only
> > > dead_memcg and its parents. If non-hierarchical mode is used,
> > > invalidate_reclaim_iterators() never reaches root_mem_cgroup.
> > > 
> > > static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> > > {
> > > 	struct mem_cgroup *memcg = dead_memcg;
> > > 
> > > 	for (; memcg; memcg = parent_mem_cgroup(memcg)
> > > 	...
> > > }
> > > 
> > > So the use after free scenario looks like:
> > > 
> > > CPU1						CPU2
> > > 
> > > try_to_free_pages
> > > do_try_to_free_pages
> > > shrink_zones
> > > shrink_node
> > > mem_cgroup_iter()
> > >     if (!root)
> > >     	root = root_mem_cgroup;
> > >     ...
> > >     css = css_next_descendant_pre(css, &root->css);
> > >     memcg = mem_cgroup_from_css(css);
> > >     cmpxchg(&iter->position, pos, memcg);
> > > 
> > > 					invalidate_reclaim_iterators(memcg);
> > > 					...
> > > 					__mem_cgroup_free()
> > > 						kfree(memcg);
> > > 
> > > try_to_free_pages
> > > do_try_to_free_pages
> > > shrink_zones
> > > shrink_node
> > > mem_cgroup_iter()
> > >     if (!root)
> > >     	root = root_mem_cgroup;
> > >     ...
> > >     mz = mem_cgroup_nodeinfo(root, reclaim->pgdat->node_id);
> > >     iter = &mz->iter[reclaim->priority];
> > >     pos = READ_ONCE(iter->position);
> > >     css_tryget(&pos->css) <- use after free
> > 
> > Thanks for the write up. This is really useful.
> > 
> > > To avoid this, we should also invalidate root_mem_cgroup.nodeinfo.iter in
> > > invalidate_reclaim_iterators().
> > 
> > I am sorry, I didn't get to comment an earlier version but I am
> > wondering whether it makes more sense to do and explicit invalidation.
> > 

I think we should keep the original v2 version, the reason is the 
!use_hierarchy does not imply we can reach root_mem_cgroup:

cd /sys/fs/cgroup/memory/0
mkdir 1
cd /sys/fs/cgroup/memory/0/1
echo 1 > memory.use_hierarchy // only 1 and its children has
use_hierarchy set
mkdir 2

rmdir 2 // parent_mem_cgroup(2) goes up to 1

> > [...]
> > > +static void invalidate_reclaim_iterators(struct mem_cgroup *dead_memcg)
> > > +{
> > > +	struct mem_cgroup *memcg = dead_memcg;
> > > +	int invalidate_root = 0;
> > > +
> > > +	for (; memcg; memcg = parent_mem_cgroup(memcg))
> > > +		__invalidate_reclaim_iterators(memcg, dead_memcg);
> > 
> > 	/* here goes your comment */
> > 	if (!dead_memcg->use_hierarchy)
> > 		__invalidate_reclaim_iterators(root_mem_cgroup,	dead_memcg);
> > > +
> > > +}
> > 
> > Other than that the patch looks good to me.
> > 
> > Acked-by: Michal Hocko <mhocko@suse.com>
> 
> Btw. I believe we want to push this to stable trees as well. I think it
> goes all the way down to 5ac8fb31ad2e ("mm: memcontrol: convert reclaim
> iterator to simple css refcounting"). Unless I am missing something a
> Fixes: tag would be really helpful.

No problem. I'll add the fix tag to patch v3.
Fixes: 5ac8fb31ad2e ("mm: memcontrol: convert reclaim iterator to simple
css refcounting")


Miles



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
