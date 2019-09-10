Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCA3AEAD1
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Sep 2019 14:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cax05j8/wQBwo4c8bg/N/5tpRoEjX1fOVVkS5Ooxg+Q=; b=SGEWq2HsVJoR4p
	hJg4zaWw4gmHveAti8OLEjQQNk42HIHAs3C+qnhBzcehrYun6FecBUa1XbQtfCwJFwIAKBn3eFPiZ
	pN3gJhe3cP6ZIXAKoFQFDD0GU9Es+iVeJ1Fm89XJRFNtd5vUlxyTXQpWcxAATpmhj0g1hUdO/YZos
	DQdLgLEO7baHSF5qynQ367ToVEY+U5XV4hgT4x1ZGB3Wec+zJ7FynH6CwtDQVOjeby7GNJYsb3WwV
	BO1aY+TUEdwhfcl7EPlKaYcRnQ762oj4cyYVcqirftiePJkC8aSPwqC/MMU2o2eGaBjMf3ueDAVlV
	2zy+AcVCLm6ZvM2KXa0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fWx-00013n-Ge; Tue, 10 Sep 2019 12:45:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fWv-00013L-3l; Tue, 10 Sep 2019 12:45:58 +0000
X-UUID: adbed42bd278419f9e538b2e790d0740-20190910
X-UUID: adbed42bd278419f9e538b2e790d0740-20190910
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1986774780; Tue, 10 Sep 2019 04:45:51 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 05:45:49 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 20:45:48 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Sep 2019 20:45:48 +0800
Message-ID: <1568119549.24886.18.camel@mtksdccf07>
Subject: Re: [PATCH v2 0/2] mm/kasan: dump alloc/free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Tue, 10 Sep 2019 20:45:49 +0800
In-Reply-To: <4faedb4d-f16c-1917-9eaa-b0f9c169fa50@suse.cz>
References: <20190909082412.24356-1-walter-zh.wu@mediatek.com>
 <d53d88df-d9a4-c126-32a8-4baeb0645a2c@suse.cz>
 <a7863965-90ab-5dae-65e7-8f68f4b4beb5@virtuozzo.com>
 <4faedb4d-f16c-1917-9eaa-b0f9c169fa50@suse.cz>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_054557_163800_BC967FD1 
X-CRM114-Status: GOOD (  11.57  )
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org, Andrey
 Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Michal Hocko <mhocko@kernel.org>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-09-10 at 13:53 +0200, Vlastimil Babka wrote:
> On 9/10/19 12:50 PM, Andrey Ryabinin wrote:
> > 
> > 
> > For slab objects we memorize both alloc and free stacks. You'll never know in advance what information will be usefull
> > to fix an issue, so it usually better to provide more information. I don't think we should do anything different for pages.
> 
> Exactly, thanks.
> 
> > Given that we already have the page_owner responsible for providing alloc/free stacks for pages, all that we should in KASAN do is to
> > enable the feature by default. Free stack saving should be decoupled from debug_pagealloc into separate option so that it can be enabled
> > by KASAN and/or debug_pagealloc.
> 
> Right. Walter, can you do it that way, or should I?
> 
> Thanks,
> Vlastimil

I will send new patch v3.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
