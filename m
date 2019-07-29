Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CBD784E4
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 08:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mu7LSTwXCEDOYmz/NcoAOsu/YLso6NxEs/hGWWhj9Qo=; b=PDhyGDjS1B+5JR
	/e+FvSyFunCR0n2u+RwY6CanWRE8hXMOCEepfWY+4oXmYB8MieBgyieegB8DAiJfkgl6QTXN39nVu
	tVsCPrKnuPMHNUQ0i3SvoTO3o+tYthe4ds6fde/lgPJ/UV12Dk5hULTMkNXwE2qkzGt/D5J4TfHZ6
	rl9KsG00EzfvMVnloQoTWsZ/x/6qafgW81XtQyxrqNVWwt15F3GxxFnj8DSTxNmwJyWGuSV2dLgsl
	JwO0ddcFLBoY1UDBZNiI65xIthU0c05apZopWGRSn5XjbvD7DSMV5U+WGyjd5T5M4aeVJouN9yzq5
	XVKN+XHmfNxpi46wl4uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrz5n-0000U9-K0; Mon, 29 Jul 2019 06:25:07 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrz5j-0008Dz-RY
 for linux-mediatek@lists.infradead.org; Mon, 29 Jul 2019 06:25:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 765A3ADFC;
 Mon, 29 Jul 2019 06:25:01 +0000 (UTC)
Date: Mon, 29 Jul 2019 08:25:00 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH v2] mm: memcontrol: fix use after free in mem_cgroup_iter()
Message-ID: <20190729062500.GB9330@dhcp22.suse.cz>
References: <20190726021247.16162-1-miles.chen@mediatek.com>
 <20190726124933.GN6142@dhcp22.suse.cz>
 <20190726125533.GO6142@dhcp22.suse.cz>
 <1564184878.19817.5.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564184878.19817.5.camel@mtkswgap22>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_232504_056862_B3AE42EB 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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
 Johannes Weiner <hannes@cmpxchg.org>, cgroups@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat 27-07-19 07:47:58, Miles Chen wrote:
> On Fri, 2019-07-26 at 14:55 +0200, Michal Hocko wrote:
[...]
> > > I am sorry, I didn't get to comment an earlier version but I am
> > > wondering whether it makes more sense to do and explicit invalidation.
> > > 
> 
> I think we should keep the original v2 version, the reason is the 
> !use_hierarchy does not imply we can reach root_mem_cgroup:
> 
> cd /sys/fs/cgroup/memory/0
> mkdir 1
> cd /sys/fs/cgroup/memory/0/1
> echo 1 > memory.use_hierarchy // only 1 and its children has
> use_hierarchy set
> mkdir 2
> 
> rmdir 2 // parent_mem_cgroup(2) goes up to 1

You are right I have missed this case. I am not sure anybody is using
layout like that but your fix is more robust and catches that case as
well.

Acked-by: Michal Hocko <mhocko@suse.com>
-- 
Michal Hocko
SUSE Labs

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
