Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DCECB593
	for <lists+linux-mediatek@lfdr.de>; Fri,  4 Oct 2019 09:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QR9f4hgGYj2L0C1TEMhCP+HVoEfqJ0avGiKll5bAc1E=; b=kvIrWsDg/Jok6j
	3LosHKKG2673DKunYHUuo9taZcVrYbV6q1NFds7U21JAMYW40OABFAdhB6OrSlcg0yB6CA0rY3r1F
	jagcNucN+i2vBopwVOcvNiYkUT5BYKH7deEFDW72OVO5VU9Mf62q+T5Jf3BeUXnB76xnl5NdkRdw7
	ZpXlAx0A8WPZp4ieU94DFN8wMdVzMHc/tsyulIP8mkbBGOmVBDtsYz+A/vGW5X0nmb5CEg9hi17uP
	15vPRbmSQfg6c1OlFi0YNHC0nuZR/yr1fiWrZsmQObuqpefIBse8RY3D6VCIn59ilt/4miRidm5Ci
	aYFu5OVZNt1HzUQ4UkIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGIV9-0003sP-NT; Fri, 04 Oct 2019 07:59:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGIV5-0003rE-L1
 for linux-mediatek@lists.infradead.org; Fri, 04 Oct 2019 07:59:45 +0000
X-UUID: 522c8c1fd853466599bae215b62b4bcf-20191003
X-UUID: 522c8c1fd853466599bae215b62b4bcf-20191003
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 335265684; Thu, 03 Oct 2019 23:59:35 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 4 Oct 2019 00:59:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 4 Oct 2019 15:59:33 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 4 Oct 2019 15:59:33 +0800
Message-ID: <1570175974.23700.0.camel@mtkswgap22>
Subject: Re: [PATCH] mm/page_owner: fix incorrect looping in
 __set_page_owner_handle()
From: Miles Chen <miles.chen@mediatek.com>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 4 Oct 2019 15:59:34 +0800
In-Reply-To: <f5027e93-7cf3-3a90-f1f8-b829ea4b75b9@suse.cz>
References: <20191004073755.3228-1-miles.chen@mediatek.com>
 <f5027e93-7cf3-3a90-f1f8-b829ea4b75b9@suse.cz>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_005943_692290_47FA6E19 
X-CRM114-Status: GOOD (  17.76  )
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
Cc: Michal Hocko <mhocko@suse.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-10-04 at 09:57 +0200, Vlastimil Babka wrote:
> On 10/4/19 9:37 AM, Miles Chen wrote:
> > In __set_page_owner_handle(), we should loop over page
> > [0...(1 << order) - 1] and setup their page_owner structures.
> > 
> > Currently, __set_page_owner_handle() update page_ext at the end of
> > the loop, sets the page_owner of (page + 0) twice and
> > misses the page_owner of (page + (1 << order) - 1).
> > 
> > Fix it by updating the page_ext at the start of the loop.
> > 
> > In i == 0 case:
> > for (i = 0; i < (1 << order); i++) {
> > 	page_owner = get_page_owner(page_ext); <- page_ext belongs to page + 0
> > 	...
> > 	page_ext = lookup_page_ext(page + i); <- lookup_page_ext(page + 0)
> > }
> > 
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Vlastimil Babka <vbabka@suse.cz>
> > Cc: Michal Hocko <mhocko@suse.com>
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > Fixes: 7e2f2a0cd17c ("mm, page_owner: record page owner for each subpage")
> 
> Thanks. Kirill spotted it earlier and there's a fix pending:
> https://lore.kernel.org/linux-mm/20190930122916.14969-2-vbabka@suse.cz/

Great. thanks for the information.


Miles
> 
> > ---
> >  mm/page_owner.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/mm/page_owner.c b/mm/page_owner.c
> > index dee931184788..110c3e1987f2 100644
> > --- a/mm/page_owner.c
> > +++ b/mm/page_owner.c
> > @@ -178,6 +178,7 @@ static inline void __set_page_owner_handle(struct page *page,
> >  	int i;
> >  
> >  	for (i = 0; i < (1 << order); i++) {
> > +		page_ext = lookup_page_ext(page + i);
> >  		page_owner = get_page_owner(page_ext);
> >  		page_owner->handle = handle;
> >  		page_owner->order = order;
> > @@ -185,8 +186,6 @@ static inline void __set_page_owner_handle(struct page *page,
> >  		page_owner->last_migrate_reason = -1;
> >  		__set_bit(PAGE_EXT_OWNER, &page_ext->flags);
> >  		__set_bit(PAGE_EXT_OWNER_ACTIVE, &page_ext->flags);
> > -
> > -		page_ext = lookup_page_ext(page + i);
> >  	}
> >  }
> >  
> > 
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
