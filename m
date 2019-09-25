Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAB1BDFA9
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 16:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hkw1HXqvMDLkn+7q69Y8GUmhHnuJy65G7o/ZWBeRtOQ=; b=cKx/xD6jQ3wxxn
	S6hHMfltt16UbzrWTft1vTdzCQCPuPm+l9qCUWzXj7uGbTjYNm1eTc7IgWJvQOa7xaARWwY79fEKR
	ifD1TXLWNcqTqh+VUTb8orMqpwlx6GfEWaz/k7k3Mtt5K2Ux1cBcOGYdI9sC2YAgtCLunIYkH4Uza
	xYOrY/wwZgFIuab6ry2qvp314oKPlxqdpUcecAH+aQoyw0Kunpt7svd8HO0BlttXdxatTkLMX3PCm
	OzhgEs1lbQgRzCZLhR7ZddKpC1ferYiCBMkTncLhyEhlS9KI85ZCglEuAsxbQHORjO4lZscxr9U+m
	lxj7drljEOZ5L6nyUbcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7xv-0006Rq-8i; Wed, 25 Sep 2019 14:08:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7xp-0006N6-GG
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 14:08:19 +0000
X-UUID: 02ff240604e24be0b8ff84492d2f2845-20190925
X-UUID: 02ff240604e24be0b8ff84492d2f2845-20190925
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 864056621; Wed, 25 Sep 2019 06:08:10 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 07:08:09 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Sep 2019 22:08:08 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 25 Sep 2019 22:08:08 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 "David Rientjes" <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, 
 "Andrew Morton" <akpm@linux-foundation.org>
Subject: [PATCH v2] mm: slub: print the offset of fault addresses
Date: Wed, 25 Sep 2019 22:08:07 +0800
Message-ID: <20190925140807.20490-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_070817_549743_01C04132 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

With the commit ad67b74d2469d9b8 ("printk: hash addresses printed with
%p"), it is a little bit harder to match the fault addresses printed by
check_bytes_and_report() or slab_pad_check() in the dump because the
fault addresses may not show up in the dump.

Print the offset of the fault addresses to make it easier to match the
incorrect poison or padding values in the dump.

Before:
We have to search the "63" in the dump. If we want to get the offset of
63, we have to count it from the start of Object dump.

=============================================================
BUG kmalloc-128 (Not tainted): Poison overwritten
-------------------------------------------------------------

Disabling lock debugging due to kernel taint
INFO: 0x00000000570da294-0x00000000570da294.
First byte 0x63 instead of 0x6b
...
INFO: Object 0x000000006ebb3b9e @offset=14208 fp=0x0000000065862488
Redzone 00000000a6abccff: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000000741c16f0: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 0000000061ad278f: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 000000000467c1bd: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 000000008812766b: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 000000003d9b8f25: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 0000000000d80c33: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000000867b0d90: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Object 000000006ebb3b9e: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 000000005ea59a9f: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 000000003ef8bddc: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 000000008190375d: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 000000006df7fb32: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 0000000069474eae: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 0000000008073b7d: 6b 6b 6b 6b 63 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000000b45ae74d: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5

After:
We know the fault address is at @offset=1508, and the Object is at
@offset=1408, so we know the fault address is at offset=100 within the
object.

=========================================================
BUG kmalloc-128 (Not tainted): Poison overwritten
---------------------------------------------------------

Disabling lock debugging due to kernel taint
INFO: 0x00000000638ec1d1-0x00000000638ec1d1 @offset=1508.
First byte 0x63 instead of 0x6b
...
INFO: Object 0x000000008171818d @offset=1408 fp=0x0000000066dae230
Redzone 00000000e2697ab6: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 0000000064b6a381: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000000e413a234: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 0000000004c1dfeb: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 000000009ad24d42: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 000000002a196a23: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 00000000a7b8468a: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Redzone 0000000088db6da3: bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb bb
Object 000000008171818d: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 000000007c4035d4: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 000000004dd281a4: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 0000000079121dff: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 00000000756682a9: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 0000000053b7e541: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 0000000091f8d530: 6b 6b 6b 6b 63 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b
Object 000000009c76035c: 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b a5

Change since v1:
1. do not replace DUMP_PREFIX_ADDRESS with DUMP_PREFIX_OFFSET because
the hash addresses are useful
2. print the offset of the fault address

Cc: Christoph Lameter <cl@linux.com>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: David Rientjes <rientjes@google.com>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 mm/slub.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/mm/slub.c b/mm/slub.c
index 42c1b3af3c98..21d26cd3e3bc 100644
--- a/mm/slub.c
+++ b/mm/slub.c
@@ -736,6 +736,7 @@ static int check_bytes_and_report(struct kmem_cache *s, struct page *page,
 {
 	u8 *fault;
 	u8 *end;
+	u8 *addr = page_address(page);
 
 	metadata_access_enable();
 	fault = memchr_inv(start, value, bytes);
@@ -748,8 +749,9 @@ static int check_bytes_and_report(struct kmem_cache *s, struct page *page,
 		end--;
 
 	slab_bug(s, "%s overwritten", what);
-	pr_err("INFO: 0x%p-0x%p. First byte 0x%x instead of 0x%x\n",
-					fault, end - 1, fault[0], value);
+	pr_err("INFO: 0x%p-0x%p @offset=%tu. First byte 0x%x instead of 0x%x\n",
+					fault, end - 1, fault - addr,
+					fault[0], value);
 	print_trailer(s, page, object);
 
 	restore_bytes(s, what, value, fault, end);
@@ -844,7 +846,8 @@ static int slab_pad_check(struct kmem_cache *s, struct page *page)
 	while (end > fault && end[-1] == POISON_INUSE)
 		end--;
 
-	slab_err(s, page, "Padding overwritten. 0x%p-0x%p", fault, end - 1);
+	slab_err(s, page, "Padding overwritten. 0x%p-0x%p @offset=%tu",
+			fault, end - 1, fault - start);
 	print_section(KERN_ERR, "Padding ", pad, remainder);
 
 	restore_bytes(s, "slab padding", POISON_INUSE, fault, end);
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
