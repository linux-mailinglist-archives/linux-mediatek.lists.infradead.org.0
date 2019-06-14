Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4366C451EB
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 04:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEG1XsgGb44EwxRzKUu6oC9v8LXpl2Npc5uklqQ9K3A=; b=Uh99E7CNaa7L16
	IVONA1cALtGYKJL7yDXBd1CS2/c/y1lWNKKQC9Hz/IYEPL7r9X+1TgBmPWb+pVZp0R6LmOteBn2SP
	6QEWjX2yZ2Bs/IQxGtEtmetQM29x+WmZefB2AhGcbHcohURahK0HKDfN5ulawNQsvutJr8fbOZV+Q
	y0uJCC0+st3HrJ+dF4NsK4Q69y6UgB4Rw8+mZGuL/o4uXO0UDuC67a6u/IU1yktGB3zIo6v9Dlg7d
	CUHmSkyghypaDOr0+yc0PLBCAsGw+87xPZ2SChV6Dzi6Y6oN5nH2jGj4a1CrupOLUnuD419rYV0Gx
	J1PgrdSFtMGDcpBH0QJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbc0s-0002P1-G6; Fri, 14 Jun 2019 02:32:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbc0p-0002DC-4d; Fri, 14 Jun 2019 02:32:20 +0000
X-UUID: 19c69bc2b55a43ba855ba6e14fe55af1-20190613
X-UUID: 19c69bc2b55a43ba855ba6e14fe55af1-20190613
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 505435386; Thu, 13 Jun 2019 18:32:09 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 19:32:08 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 10:32:00 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 10:32:00 +0800
Message-ID: <1560479520.15814.34.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Fri, 14 Jun 2019 10:32:00 +0800
In-Reply-To: <1560447999.15814.15.camel@mtksdccf07>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C34F4A9FF25B720FA8D264905C1A23CE1B1F2B5A1E4DE450A529D5CDAA5FBF8F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_193219_189773_CED56027 
X-CRM114-Status: GOOD (  20.56  )
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
Cc: wsd_upstream@mediatek.com, "Jason A . Donenfeld" <Jason@zx2c4.com>, Vasily
 Gorbik <gor@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Pekka Enberg <penberg@kernel.org>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Miles Chen <miles.chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 01:46 +0800, Walter Wu wrote:
> On Thu, 2019-06-13 at 15:27 +0300, Andrey Ryabinin wrote:
> > 
> > On 6/13/19 11:13 AM, Walter Wu wrote:
> > > This patch adds memory corruption identification at bug report for
> > > software tag-based mode, the report show whether it is "use-after-free"
> > > or "out-of-bound" error instead of "invalid-access" error.This will make
> > > it easier for programmers to see the memory corruption problem.
> > > 
> > > Now we extend the quarantine to support both generic and tag-based kasan.
> > > For tag-based kasan, the quarantine stores only freed object information
> > > to check if an object is freed recently. When tag-based kasan reports an
> > > error, we can check if the tagged addr is in the quarantine and make a
> > > good guess if the object is more like "use-after-free" or "out-of-bound".
> > > 
> > 
> > 
> > We already have all the information and don't need the quarantine to make such guess.
> > Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
> > otherwise it's use-after-free.
> > 
> > In pseudo-code it's something like this:
> > 
> > u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));
> > 
> > if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
> > 	// out-of-bounds
> > else
> > 	// use-after-free
> 
> Thanks your explanation.
> I see, we can use it to decide corruption type.
> But some use-after-free issues, it may not have accurate free-backtrace.
> Unfortunately in that situation, free-backtrace is the most important.
> please see below example
> 
> In generic KASAN, it gets accurate free-backrace(ptr1).
> In tag-based KASAN, it gets wrong free-backtrace(ptr2). It will make
> programmer misjudge, so they may not believe tag-based KASAN.
> So We provide this patch, we hope tag-based KASAN bug report is the same
> accurate with generic KASAN.
> 
> ---
>     ptr1 = kmalloc(size, GFP_KERNEL);
>     ptr1_free(ptr1);
> 
>     ptr2 = kmalloc(size, GFP_KERNEL);
>     ptr2_free(ptr2);
> 
>     ptr1[size] = 'x';  //corruption here
> 
> 
> static noinline void ptr1_free(char* ptr)
> {
>     kfree(ptr);
> }
> static noinline void ptr2_free(char* ptr)
> {
>     kfree(ptr);
> }
> ---
> 
We think of another question about deciding by that shadow of the first
byte.
In tag-based KASAN, it is immediately released after calling kfree(), so
the slub is easy to be used by another pointer, then it will change
shadow memory to the tag of new pointer, it will not be the
KASAN_TAG_INVALID, so there are many false negative cases, especially in
small size allocation.

Our patch is to solve those problems. so please consider it, thanks.



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
