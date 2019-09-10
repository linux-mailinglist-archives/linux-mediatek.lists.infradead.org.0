Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ED5AE1D1
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Sep 2019 03:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1vR/AXUYaxus3rYtY0fnDDxJj3Li6byyDfOxv535Iw=; b=TIQRBY6Cz9O5/L
	E6HwnpmW/UqkfaIxoy1SKus5p/kE1WtkrtnhxCfuie3uiLToDM2FcebUAmHOtIHXI1gkIhJYswA6Z
	nvrZIj7fefaeZzXLAAkaXCb5CLp+F81UTMHFuKe9mHnY3EvrVT6xBCZwP9TftEUdPMRpxZDmUKAX7
	qPng3vAVsFOv9iFhzJ8sMN+UADTsWWpW3n1mkILMb8gV/Jn2XnDejNPrsIPnY9b1189yq44kr5gWW
	OUC/yEBTXqm7HpGqQhK5C7oDgnh5P0K7X05LJF77wtLUlZf+IB1Fmw+W66fMzel9btZCjCaPU/shO
	RaTtTRacgrHrGHl1PJLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7UdX-0000EM-Ms; Tue, 10 Sep 2019 01:08:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7UdS-0000Ds-V5; Tue, 10 Sep 2019 01:08:01 +0000
X-UUID: 029bb8e465e548d1a44397873e2e5f8a-20190909
X-UUID: 029bb8e465e548d1a44397873e2e5f8a-20190909
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1906183390; Mon, 09 Sep 2019 17:07:52 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Sep 2019 18:07:51 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 09:07:49 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Sep 2019 09:07:49 +0800
Message-ID: <1568077669.24886.3.camel@mtksdccf07>
Subject: Re: [PATCH v2 1/2] mm/page_ext: support to record the last stack of
 page
From: Walter Wu <walter-zh.wu@mediatek.com>
To: David Hildenbrand <david@redhat.com>
Date: Tue, 10 Sep 2019 09:07:49 +0800
In-Reply-To: <36b5a8e0-2783-4c0e-4fc7-78ea652ba475@redhat.com>
References: <20190909085339.25350-1-walter-zh.wu@mediatek.com>
 <36b5a8e0-2783-4c0e-4fc7-78ea652ba475@redhat.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_180759_012249_7EE3EC16 
X-CRM114-Status: GOOD (  16.36  )
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

On Mon, 2019-09-09 at 12:57 +0200, David Hildenbrand wrote:
> On 09.09.19 10:53, Walter Wu wrote:
> > KASAN will record last stack of page in order to help programmer
> > to see memory corruption caused by page.
> > 
> > What is difference between page_owner and our patch?
> > page_owner records alloc stack of page, but our patch is to record
> > last stack(it may be alloc or free stack of page).
> > 
> > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > ---
> >  mm/page_ext.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/mm/page_ext.c b/mm/page_ext.c
> > index 5f5769c7db3b..7ca33dcd9ffa 100644
> > --- a/mm/page_ext.c
> > +++ b/mm/page_ext.c
> > @@ -65,6 +65,9 @@ static struct page_ext_operations *page_ext_ops[] = {
> >  #if defined(CONFIG_IDLE_PAGE_TRACKING) && !defined(CONFIG_64BIT)
> >  	&page_idle_ops,
> >  #endif
> > +#ifdef CONFIG_KASAN
> > +	&page_stack_ops,
> > +#endif
> >  };
> >  
> >  static unsigned long total_usage;
> > 
> 
> Are you sure this patch compiles?
> 
This is patchsets, it need another patch2.
We have verified it by running KASAN UT on Qemu.




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
