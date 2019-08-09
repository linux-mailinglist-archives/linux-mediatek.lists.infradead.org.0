Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8201086F1D
	for <lists+linux-mediatek@lfdr.de>; Fri,  9 Aug 2019 03:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b7zZdrVgxvjhpfmZtmCAkOs7p6LY0/GTY5w7hl8sg6c=; b=fs3ZTUxRN6gDPv
	rA6rlY2TT88be7StZkb737bFGR2dA5uJ/aUNjUQavVPvl/5ikUxSBZlR5ubPXnF1CzGbSv5NZOyZc
	tsiLx8YLDUv1v+XV/U8sjqWdEi7z6s/aIpsVjcQRgFJ3V/5bn3vRmwcGAP3Lhospu4T1GbxpfL5X+
	e/3D0cboW97SJVoC/UxQD/IUbXtjpfqhVyWkVxjWDyoRgXKyiTRjlYpWYKcFMZPBb9+GtWYMnOsK9
	18dkf/WSzuPGkYeBzonB4u1JTnpBUgOjr6OUNlvyEhFostDwL9ccc87WtivMEjB4GtUPddO9qYM6m
	Kg3xRkII20ogW1RpVdcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvtOl-0002uk-Mh; Fri, 09 Aug 2019 01:08:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvtOg-0002u9-Ix
 for linux-mediatek@lists.infradead.org; Fri, 09 Aug 2019 01:08:48 +0000
X-UUID: 519a686316f748408d87bb89917e5f86-20190808
X-UUID: 519a686316f748408d87bb89917e5f86-20190808
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 192526724; Thu, 08 Aug 2019 17:08:41 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 8 Aug 2019 18:08:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 9 Aug 2019 09:08:37 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 9 Aug 2019 09:08:37 +0800
From: <miles.chen@mediatek.com>
To: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 "David Rientjes" <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, 
 "Andrew Morton" <akpm@linux-foundation.org>
Subject: [RFC PATCH v2] mm: slub: print kernel addresses in slub debug messages
Date: Fri, 9 Aug 2019 09:08:37 +0800
Message-ID: <20190809010837.24166-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_180846_639039_22D6168F 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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
Cc: Kees Cook <keescook@chromium.org>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 "Tobin C . Harding" <me@tobin.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Miles Chen <miles.chen@mediatek.com>

This RFC patch is sent to discuss the printing address with %p issue.

Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
%p gives obfuscated addresses now. When CONFIG_SLUB_DEBUG=y, it is still
useful to get real virtual addresses.

Possible approaches are:
1. stop printing kernel addresses
2. print with %pK,
3. print with %px.
4. do nothing

This patch takes %px approach and shows the output here.
(%px will causes checkpatch warnings, let us ignore the warning here to
have the discussion). Also, use DUMP_PREFIX_OFFSET instead of
DUMP_PREFIX_ADDRESS.

Before this patch:

INFO: Slab 0x(____ptrval____) objects=25 used=10 fp=0x(____ptrval____)
INFO: Object 0x(____ptrval____) @offset=1408 fp=0x(____ptrval____)
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone (____ptrval____): bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object (____ptrval____): 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
Redzone (____ptrval____): bb bb bb bb bb bb bb bb
Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
Padding (____ptrval____): 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
...
FIX kmalloc-128: Object at 0x(____ptrval____) not freed

After this patch:

INFO: Slab 0xffffffbf00f57000 objects=25 used=23 fp=0xffffffc03d5c3500
INFO: Object 0xffffffc03d5c3500 @offset=13568 fp=0xffffffc03d5c0800
Redzone 00000000: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000010: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000020: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000030: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000040: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000050: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000060: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000070: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Object 00000000: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000010: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000020: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000030: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000040: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000050: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000060: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000070: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5
Redzone 00000000: bb bb bb bb bb bb bb bb
Padding 00000000: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
Padding 00000010: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
Padding 00000020: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
Padding 00000030: 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a
...
FIX kmalloc-128: Object at 0xffffffc03d5c3500 not freed

Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Tobin C. Harding <me@tobin.cc>
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 mm/slub.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/mm/slub.c b/mm/slub.c
index 8834563cdb4b..bc1fb8e81557 100644
--- a/mm/slub.c
+++ b/mm/slub.c
@@ -528,7 +528,7 @@ static void print_section(char *level, char *text, u8 *addr,
 			  unsigned int length)
 {
 	metadata_access_enable();
-	print_hex_dump(level, text, DUMP_PREFIX_ADDRESS, 16, 1, addr,
+	print_hex_dump(level, text, DUMP_PREFIX_OFFSET, 16, 1, addr,
 			length, 1);
 	metadata_access_disable();
 }
@@ -611,7 +611,7 @@ static void print_tracking(struct kmem_cache *s, void *object)
 
 static void print_page_info(struct page *page)
 {
-	pr_err("INFO: Slab 0x%p objects=%u used=%u fp=0x%p flags=0x%04lx\n",
+	pr_err("INFO: Slab 0x%px objects=%u used=%u fp=0x%px flags=0x%04lx\n",
 	       page, page->objects, page->inuse, page->freelist, page->flags);
 
 }
@@ -653,7 +653,7 @@ static void print_trailer(struct kmem_cache *s, struct page *page, u8 *p)
 
 	print_page_info(page);
 
-	pr_err("INFO: Object 0x%p @offset=%tu fp=0x%p\n\n",
+	pr_err("INFO: Object 0x%px @offset=%tu fp=0x%px\n\n",
 	       p, p - addr, get_freepointer(s, p));
 
 	if (s->flags & SLAB_RED_ZONE)
@@ -991,7 +991,7 @@ static void trace(struct kmem_cache *s, struct page *page, void *object,
 								int alloc)
 {
 	if (s->flags & SLAB_TRACE) {
-		pr_info("TRACE %s %s 0x%p inuse=%d fp=0x%p\n",
+		pr_info("TRACE %s %s 0x%px inuse=%d fp=0x%p\n",
 			s->name,
 			alloc ? "alloc" : "free",
 			object, page->inuse,
@@ -1212,7 +1212,7 @@ static noinline int free_debug_processing(
 	slab_unlock(page);
 	spin_unlock_irqrestore(&n->list_lock, flags);
 	if (!ret)
-		slab_fix(s, "Object at 0x%p not freed", object);
+		slab_fix(s, "Object at 0x%px not freed", object);
 	return ret;
 }
 
@@ -3693,7 +3693,7 @@ static void list_slab_objects(struct kmem_cache *s, struct page *page,
 	for_each_object(p, s, addr, page->objects) {
 
 		if (!test_bit(slab_index(p, s, addr), map)) {
-			pr_err("INFO: Object 0x%p @offset=%tu\n", p, p - addr);
+			pr_err("INFO: Object 0x%px @offset=%tu\n", p, p - addr);
 			print_tracking(s, p);
 		}
 	}
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
