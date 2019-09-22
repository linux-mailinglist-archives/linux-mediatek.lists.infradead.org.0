Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B658DBA346
	for <lists+linux-mediatek@lfdr.de>; Sun, 22 Sep 2019 19:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SN1N4HrBsmrA2jTmZ1wnlPcLZjiZJw2AVP9+RI7XJpA=; b=NiF0zBg5HnOfQs
	vgjoF083xUhyC6eAV7YG5TckVhg5RXhqVcGjhDeYmOU2hXxwo4/dbEl4102hjruQQ1yDJoVY7KOaJ
	VgSqfbSHEKtojEm6DnYzYWFO8dCceSClI94vxhSsLBR5G9gpX3O6FPSML4BkZaOlPR5Jg0e2/hPq/
	Bs+6XCTYtldHLoW9dgAo8oLsI+upRVjmUCBvJHmtbZMiFCZB6eBzq0nBo1GTa8c99lTmm9eY4Ixm9
	FrAP7alB44Aj4K8hR2D0Q8Ueath2VtX9kHjQOScPJcgCmwl0rFFo8aOAJlbZ7vOhfH9SdSiNikOBa
	uoeqKhc+B6BgyM+8KB3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC5IV-00022r-Cp; Sun, 22 Sep 2019 17:05:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC5IR-00022U-4P
 for linux-mediatek@lists.infradead.org; Sun, 22 Sep 2019 17:05:16 +0000
X-UUID: fd261e2706bc440cadd6aa3bbae720a8-20190922
X-UUID: fd261e2706bc440cadd6aa3bbae720a8-20190922
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1702690914; Sun, 22 Sep 2019 09:05:11 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Sep 2019 10:05:05 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Sep 2019 01:05:04 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 23 Sep 2019 01:05:04 +0800
Message-ID: <1569171908.9436.55.camel@mtkswgap22>
Subject: Re: [PATCH] mm: slub: print_hex_dump() with DUMP_PREFIX_OFFSET
From: Miles Chen <miles.chen@mediatek.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Mon, 23 Sep 2019 01:05:08 +0800
In-Reply-To: <20190921160018.GF15392@bombadil.infradead.org>
References: <20190920104849.32504-1-miles.chen@mediatek.com>
 <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
 <20190921160018.GF15392@bombadil.infradead.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_100515_183878_F3471FA2 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: Andrew Morton <akpm@linux-foundation.org>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Pekka Enberg <penberg@kernel.org>,
 linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 David Rientjes <rientjes@google.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, 2019-09-21 at 09:00 -0700, Matthew Wilcox wrote:
> On Sat, Sep 21, 2019 at 02:08:59AM -0700, David Rientjes wrote:
> > On Fri, 20 Sep 2019, Miles Chen wrote:
> > 
> > > Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
> > > The use DUMP_PREFIX_OFFSET instead of DUMP_PREFIX_ADDRESS with
> > > print_hex_dump() can generate more useful messages.
> > > 
> > > In the following example, it's easier get the offset of incorrect poison
> > > value with DUMP_PREFIX_OFFSET.
> > > 
> > > Before:
> > > Object 00000000e817b73b: 00 00 00 00 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000000816f4601: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000000169d2bb8: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000000f4c38716: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000000917e3491: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000000c0e33738: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 000000001755ddd1: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > 
> > > After:
> > > Object 00000000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000010: 63 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000020: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > > Object 00000030: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
> > 
> > I agree it looks nicer for poisoning, I'm not sure that every caller of 
> > print_section() is the same, however.  For example trace() seems better 
> > off as DUMP_PREFIX_ADDRESS since it already specifies the address of the 
> > object being allocated or freed and offset here wouldn't really be useful, 
> > no?
> 
> While it looks nicer, it might be less useful for debugging.  The point of
> obfuscated %p is that you can compare two "pointer" values for equality.
> So if you know that you freed object 00000000e817b73b from an earlier
> printk, then you can match it up to this dump.  It's obviously not
> perfect since we're only getting the pointers at addresses that are
> multiples of 16, but it's a help.

Thanks for the reply.

The value of 00000000e817b73b dump and the value earlier printk should
be the same, Otherwise we have a serious problem because:

printf("%p", bad_ptr);
print_hex_dump(bad_ptr);

and we see a different hashed address of bad_ptr in print_hex_dump().
I think it's a rare case but we still have a chance to see that case.
DUMP_PREFIX_ADDRESS is useful for that case.


On the other hand, DUMP_PREFIX_OFFSET is useful for finding the offset
of incorrect poison value easier. 
Maybe I can print the offset of the bad poison value in 
check_bytes_and_report(). e.g., 

@@ -736,6 +736,7 @@ static int check_bytes_and_report(struct kmem_cache
*s, struct page *page,
 {
        u8 *fault;
        u8 *end;
+       u8 *addr = page_address(page);

        metadata_access_enable();
        fault = memchr_inv(start, value, bytes);
@@ -748,8 +749,9 @@ static int check_bytes_and_report(struct kmem_cache
*s, struct page *page,
                end--;

        slab_bug(s, "%s overwritten", what);
-       pr_err("INFO: 0x%p-0x%p. First byte 0x%x instead of 0x%x\n",
-                                       fault, end - 1, fault[0],
value);
+       pr_err("INFO: 0x%p-0x%p. First byte 0x%x instead of 0x%x,
offset=%tu\n",
+                                       fault, end - 1, fault[0], value,
fault -
+                                       addr);


and we can see the offset printed out:

=============================================================================
BUG kmalloc-1k (Tainted: G    B            ): Poison overwritten
-----------------------------------------------------------------------------

INFO: 0x(____ptrval____)-0x(____ptrval____). First byte 0x63 instead of
0x6b, offset=7052
INFO: Object 0x(____ptrval____) @offset=6272 fp=0x(____ptrval____)

and we can get the offset by: 7052 - 6272 = 780.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
