Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B87B11E3
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 17:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LC8Alf+3BwTY0nKih63W8U2ZaYi9TzElRkH4paEhFms=; b=DFE3cZyU+60n3j
	WpBzkuHPLIuhs+r0ux6PKpRhAtCfMR2HUl5/uhADfrbD4887x69J9oBA20W2udqbN1qg5pN0TuXx/
	3Ve0ZIft4gGWtU5dBUsh952Juc+mUmk9fucD0qinZ6fGpp5HgRnyMCWfhsljzu9d1/b+AGP6kUawO
	HszcAWqq2ft0V9woca19nnf+7t1kip/n3uEWgvkbwhcbSW/Bvplcm/4gLvI5pECX1FsAabEcmqBnw
	JsVR7h/6aSCx+3KNLm8h8usikLtqxoQwF1/5+/QZ978CkCzBrVHWZPiimVsg4b++g7SqTD1YNFsL6
	365TStJD25OUAJufURvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8QnO-00083O-AE; Thu, 12 Sep 2019 15:14:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QnK-00082J-6K; Thu, 12 Sep 2019 15:14:03 +0000
X-UUID: 79e05ae087d54f0fb5271006aca0d6de-20190912
X-UUID: 79e05ae087d54f0fb5271006aca0d6de-20190912
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1133051023; Thu, 12 Sep 2019 07:13:55 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 08:13:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 23:13:53 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Sep 2019 23:13:52 +0800
Message-ID: <1568301233.19274.17.camel@mtksdccf07>
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Thu, 12 Sep 2019 23:13:53 +0800
In-Reply-To: <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
 <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
 <1568297308.19040.5.camel@mtksdccf07>
 <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_081402_242957_82C8ED98 
X-CRM114-Status: GOOD (  18.06  )
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-09-12 at 16:31 +0200, Vlastimil Babka wrote:
> On 9/12/19 4:08 PM, Walter Wu wrote:
> > 
> >>   extern void __reset_page_owner(struct page *page, unsigned int order);
> >> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> >> index 6c9682ce0254..dc560c7562e8 100644
> >> --- a/lib/Kconfig.kasan
> >> +++ b/lib/Kconfig.kasan
> >> @@ -41,6 +41,8 @@ config KASAN_GENERIC
> >>   	select SLUB_DEBUG if SLUB
> >>   	select CONSTRUCTORS
> >>   	select STACKDEPOT
> >> +	select PAGE_OWNER
> >> +	select PAGE_OWNER_FREE_STACK
> >>   	help
> >>   	  Enables generic KASAN mode.
> >>   	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
> >> @@ -63,6 +65,8 @@ config KASAN_SW_TAGS
> >>   	select SLUB_DEBUG if SLUB
> >>   	select CONSTRUCTORS
> >>   	select STACKDEPOT
> >> +	select PAGE_OWNER
> >> +	select PAGE_OWNER_FREE_STACK
> >>   	help
> > 
> > What is the difference between PAGE_OWNER+PAGE_OWNER_FREE_STACK and
> > DEBUG_PAGEALLOC?
> 
> Same memory usage, but debug_pagealloc means also extra checks and 
> restricting memory access to freed pages to catch UAF.
> 
> > If you directly enable PAGE_OWNER+PAGE_OWNER_FREE_STACK
> > PAGE_OWNER_FREE_STACK,don't you think low-memory device to want to use
> > KASAN?
> 
> OK, so it should be optional? But I think it's enough to distinguish no 
> PAGE_OWNER at all, and PAGE_OWNER+PAGE_OWNER_FREE_STACK together - I 
> don't see much point in PAGE_OWNER only for this kind of debugging.
> 
If it's possible, it should be optional.
My experience is that PAGE_OWNER usually debug memory leakage.

> So how about this? KASAN wouldn't select PAGE_OWNER* but it would be 
> recommended in the help+docs. When PAGE_OWNER and KASAN are selected by 
> user, PAGE_OWNER_FREE_STACK gets also selected, and both will be also 
> runtime enabled without explicit page_owner=on.
> I mostly want to avoid another boot-time option for enabling 
> PAGE_OWNER_FREE_STACK.
> Would that be enough flexibility for low-memory devices vs full-fledged 
> debugging?

We usually see feature option to decide whether it meet the platform.
The boot-time option isn't troubled to us, because enable the feature
owner should know what he should add to do.




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
