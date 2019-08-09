Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7453986FC3
	for <lists+linux-mediatek@lfdr.de>; Fri,  9 Aug 2019 04:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZZa0DLKtEZofLu2R0Yh3sJihV0xQY7VpCbSngmSCzM=; b=g5JLdpH/8z4FeK
	ZKx2s9IF3QkO3aFhNkFq3jI4I0+Umrv/LeIQqKkkGgJCXaZtPrl09uonIdSDxb2EVr8KDomFN8qs1
	ccm8ds2oUCnE4YHgdJ/ezzx2/NRMhksnMqyN05sw1uzW0wSA6OGt671dtbxe5/zdpt8rEq+UuFByh
	aJufYiYqes6FVg29bLFLxZgK3/jOFUw8pbFtxf8h7AdyFbcNfWow+0cLdZ70eXuCtdUlQ7ovs+bcZ
	5kZUqRXtD63M//WWaWeJZNsf4TBwU8+LNkzJ2gj0TrTa8J+DGQTyK0wYcxIh+X2Q1a8+si0kXCCRi
	BrU+2zE1/caZcmuV9PIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvuva-0008Bw-6k; Fri, 09 Aug 2019 02:46:50 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hvuvU-0008Bg-Kn; Fri, 09 Aug 2019 02:46:44 +0000
Date: Thu, 8 Aug 2019 19:46:44 -0700
From: Matthew Wilcox <willy@infradead.org>
To: miles.chen@mediatek.com
Subject: Re: [RFC PATCH v2] mm: slub: print kernel addresses in slub debug
 messages
Message-ID: <20190809024644.GL5482@bombadil.infradead.org>
References: <20190809010837.24166-1-miles.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809010837.24166-1-miles.chen@mediatek.com>
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

On Fri, Aug 09, 2019 at 09:08:37AM +0800, miles.chen@mediatek.com wrote:
> Possible approaches are:
> 1. stop printing kernel addresses
> 2. print with %pK,
> 3. print with %px.

No.  The point of obscuring kernel addresses is that if the attacker manages to find a way to get the kernel to spit out some debug messages that we shouldn't
leak all this extra information.

> 4. do nothing

5. Find something more useful to print.

> INFO: Slab 0x(____ptrval____) objects=25 used=10 fp=0x(____ptrval____)

... you don't have any randomness on your platform?

> INFO: Object 0x(____ptrval____) @offset=1408 fp=0x(____ptrval____)
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
> Redzone (____ptrval____): bb bb bb bb bb bb bb bb
> Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> ...
> FIX kmalloc-128: Object at 0x(____ptrval____) not freed

But if you have randomness, at least some of these "pointers" are valuable
because you can compare them against "pointers" printed by other parts
of the kernel.

> After this patch:
> 
> INFO: Slab 0xffffffbf00f57000 objects=25 used=23 fp=0xffffffc03d5c3500
> INFO: Object 0xffffffc03d5c3500 @offset=13568 fp=0xffffffc03d5c0800
> Redzone 00000000: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone 00000010: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone 00000020: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone 00000030: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone 00000040: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone 00000050: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone 00000060: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Redzone 00000070: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
> Object 00000000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000010: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000020: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000030: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000040: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000050: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000060: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
> Object 00000070: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
> Redzone 00000000: bb bb bb bb bb bb bb bb
> Padding 00000000: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> Padding 00000010: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> Padding 00000020: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> Padding 00000030: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
> ...
> FIX kmalloc-128: Object at 0xffffffc03d5c3500 not freed

It looks prettier, but I'm not convinced it's more useful.  Unless your
platform lacks randomness ...

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
