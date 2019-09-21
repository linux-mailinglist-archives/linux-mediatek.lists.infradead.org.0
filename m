Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3641FB9ECC
	for <lists+linux-mediatek@lfdr.de>; Sat, 21 Sep 2019 18:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RPNNPnAL+Ld99YpUXjKKmRyyfBvnzDBX8fqv8boIBA=; b=nVDabMD6+Lfs7E
	cFJeAihzLRxJaFcvEco2hav8KBW3OZpK6SvEO0qbLNAJZmri+c2fXCXV9C9TqNJ9c84OPfcX7TdCL
	BTqEJtONuilaNLqqGmKUTVlEb+VQNyOo5RurxrNke4gdqFRCCvqlz1nXY12P22XCV/HyCnwTzVsj0
	iaUGVjGVxD0QJkrs1owIg1tDHHbQxGPMICFwrwTNfwz9BCsT2BHfynsxcWskGFDQ1/U8RpG9FcUBv
	ko2NuB8kNc0JEwYIiH2amtLwgs1lWvsq9C1kBKukl/YNMQhC/XnPh4BtjW5RHQGrAa8bY2xsaVJMb
	8BnVvdt8W11/+fcyfQqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBho6-0000xS-LG; Sat, 21 Sep 2019 16:00:22 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iBho2-0000xH-73; Sat, 21 Sep 2019 16:00:18 +0000
Date: Sat, 21 Sep 2019 09:00:18 -0700
From: Matthew Wilcox <willy@infradead.org>
To: David Rientjes <rientjes@google.com>
Subject: Re: [PATCH] mm: slub: print_hex_dump() with DUMP_PREFIX_OFFSET
Message-ID: <20190921160018.GF15392@bombadil.infradead.org>
References: <20190920104849.32504-1-miles.chen@mediatek.com>
 <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 linux-mm@kvack.org, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Christoph Lameter <cl@linux.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 02:08:59AM -0700, David Rientjes wrote:
> On Fri, 20 Sep 2019, Miles Chen wrote:
> 
> > Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
> > The use DUMP_PREFIX_OFFSET instead of DUMP_PREFIX_ADDRESS with
> > print_hex_dump() can generate more useful messages.
> > 
> > In the following example, it's easier get the offset of incorrect poison
> > value with DUMP_PREFIX_OFFSET.
> > 
> > Before:
> > Object 00000000e817b73b: 00 00 00 00 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000816f4601: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000169d2bb8: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000f4c38716: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000917e3491: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000000c0e33738: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 000000001755ddd1: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > 
> > After:
> > Object 00000000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000010: 63 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000020: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> > Object 00000030: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
> 
> I agree it looks nicer for poisoning, I'm not sure that every caller of 
> print_section() is the same, however.  For example trace() seems better 
> off as DUMP_PREFIX_ADDRESS since it already specifies the address of the 
> object being allocated or freed and offset here wouldn't really be useful, 
> no?

While it looks nicer, it might be less useful for debugging.  The point of
obfuscated %p is that you can compare two "pointer" values for equality.
So if you know that you freed object 00000000e817b73b from an earlier
printk, then you can match it up to this dump.  It's obviously not
perfect since we're only getting the pointers at addresses that are
multiples of 16, but it's a help.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
