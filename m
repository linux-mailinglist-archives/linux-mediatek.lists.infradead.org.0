Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A2387C97
	for <lists+linux-mediatek@lfdr.de>; Fri,  9 Aug 2019 16:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKHkxvtQA23pVnHQN89RpWSErVb08fClrd6Oj7LuGoM=; b=uE2ruhH1CZ2n/y
	hY/Lg3oqaNQAWcMj8T2llXZs3uwdtVwk+/ptf4N74quVgaZhyMR8C6W9MDEC3cyUfv+zpQLrCNdMT
	Awz5Nwv0UVhrF1Hfsxt+MIgleRA82xAxdMwhQg0ZDoBFHrSICy7Is73p3Gy9ovl765gQgQEd1O9MI
	Mt3ezCZ8McQ5+IbwTWKmHHLWzLSvy7o4ODDjjTXkcp0uFB8K2w/jhBhr/yPJfI0d9RtacTOEjYVIL
	yNc9hC7rRtWZGW5hrckBH+1clXb20XYiSOGWzzy551Aom1/JF0eIT8bY/lTw/e0bOd0+OzX1R2Ddd
	2q2tymvjJ6zfMqhrnZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5qY-0007Jq-EB; Fri, 09 Aug 2019 14:26:22 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hw5qT-0007Je-Q0; Fri, 09 Aug 2019 14:26:17 +0000
Date: Fri, 9 Aug 2019 07:26:17 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [RFC PATCH v2] mm: slub: print kernel addresses in slub debug
 messages
Message-ID: <20190809142617.GO5482@bombadil.infradead.org>
References: <20190809010837.24166-1-miles.chen@mediatek.com>
 <20190809024644.GL5482@bombadil.infradead.org>
 <1565359918.12824.20.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565359918.12824.20.camel@mtkswgap22>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 Pekka Enberg <penberg@kernel.org>, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, David Rientjes <rientjes@google.com>,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 "Tobin C . Harding" <me@tobin.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 10:11:58PM +0800, Miles Chen wrote:
> On Thu, 2019-08-08 at 19:46 -0700, Matthew Wilcox wrote:
> > On Fri, Aug 09, 2019 at 09:08:37AM +0800, miles.chen@mediatek.com wrote:
> > > INFO: Slab 0x(____ptrval____) objects=25 used=10 fp=0x(____ptrval____)
> > 
> > ... you don't have any randomness on your platform?
> 
> We have randomized base on our platforms.

Look at initialize_ptr_random().  If you have randomness, then you
get a siphash_1u32() of the address.  With no randomness, you get this
___ptrval___ string instead.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
