Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16656AD4D5
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Sep 2019 10:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qqky9O0XzwjEyT+ibNO5q6mLSJQ+DG4nACLMzSxp1cI=; b=X1UPWpu7zuZRYj
	x+l8aiXOzq6TN/c2D0P0vyDMadmX/FguNvSaQWWdt0Uap41aZzIn4RLdO0TD5nEqmxJPNLegQgTuy
	4NvYcEGF6u2H+BsY0ODUdumH0UgCcCJlZdO4R5TXIC9i6SM2/MXdWm3LP9H8G4qlPg55rfLG4dM4y
	/z8pQYilBM3YDIRsosu608vDLN8Wu/WdXovlHdXujOOqx7uqzVUWSu2oaHAeNFwt8yogSY8wzg41n
	hbZ/L9xBGGC8bwlcDeKVwrCrBW7WOGHPvQAVEBFRVJWaRc49dm/x52RhlrW8pD2oH3Lt1bYnHMtFQ
	Ejbj8vHV9rrpBmgcdBSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7EyO-0000XX-Ka; Mon, 09 Sep 2019 08:24:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7EyJ-0000WO-CV; Mon, 09 Sep 2019 08:24:29 +0000
X-UUID: e37b21132f514bf591a2356a4b89b331-20190909
X-UUID: e37b21132f514bf591a2356a4b89b331-20190909
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 71618279; Mon, 09 Sep 2019 00:24:16 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Sep 2019 01:24:15 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Sep 2019 16:24:13 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 9 Sep 2019 16:24:13 +0800
From: <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, "Martin
 Schwidefsky" <schwidefsky@de.ibm.com>, Will Deacon <will@kernel.org>, "Andrey
 Konovalov" <andreyknvl@google.com>, Arnd Bergmann <arnd@arndb.de>, "Thomas
 Gleixner" <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>, Qian Cai
 <cai@lca.pw>
Subject: [PATCH v2 0/2] mm/kasan: dump alloc/free stack for page allocator
Date: Mon, 9 Sep 2019 16:24:12 +0800
Message-ID: <20190909082412.24356-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_012427_425600_6EF25DBA 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Walter Wu <walter-zh.wu@mediatek.com>

This patch is KASAN report adds the alloc/free stacks for page allocator
in order to help programmer to see memory corruption caused by page.

By default, KASAN doesn't record alloc and free stack for page allocator.
It is difficult to fix up page use-after-free or dobule-free issue.

Our patchsets will record the last stack of pages.
It is very helpful for solving the page use-after-free or double-free.

KASAN report will show the last stack of page, it may be:
a) If page is in-use state, then it prints alloc stack.
   It is useful to fix up page out-of-bound issue.

BUG: KASAN: slab-out-of-bounds in kmalloc_pagealloc_oob_right+0x88/0x90
Write of size 1 at addr ffffffc0d64ea00a by task cat/115
...
Allocation stack of page:
 set_page_stack.constprop.1+0x30/0xc8
 kasan_alloc_pages+0x18/0x38
 prep_new_page+0x5c/0x150
 get_page_from_freelist+0xb8c/0x17c8
 __alloc_pages_nodemask+0x1a0/0x11b0
 kmalloc_order+0x28/0x58
 kmalloc_order_trace+0x28/0xe0
 kmalloc_pagealloc_oob_right+0x2c/0x68

b) If page is freed state, then it prints free stack.
   It is useful to fix up page use-after-free or double-free issue.

BUG: KASAN: use-after-free in kmalloc_pagealloc_uaf+0x70/0x80
Write of size 1 at addr ffffffc0d651c000 by task cat/115
...
Free stack of page:
 kasan_free_pages+0x68/0x70
 __free_pages_ok+0x3c0/0x1328
 __free_pages+0x50/0x78
 kfree+0x1c4/0x250
 kmalloc_pagealloc_uaf+0x38/0x80

This has been discussed, please refer below link.
https://bugzilla.kernel.org/show_bug.cgi?id=203967

Changes since v1:
- slim page_owner and move it into kasan
- enable the feature by default

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 include/linux/kasan.h |  1 +
 lib/Kconfig.kasan     |  2 ++
 mm/kasan/common.c     | 32 ++++++++++++++++++++++++++++++++
 mm/kasan/kasan.h      |  5 +++++
 mm/kasan/report.c     | 27 +++++++++++++++++++++++++++
 5 files changed, 67 insertions(+)

diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index cc8a03cc9674..97e1bcb20489 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -19,6 +19,7 @@ extern pte_t kasan_early_shadow_pte[PTRS_PER_PTE];
 extern pmd_t kasan_early_shadow_pmd[PTRS_PER_PMD];
 extern pud_t kasan_early_shadow_pud[PTRS_PER_PUD];
 extern p4d_t kasan_early_shadow_p4d[MAX_PTRS_PER_P4D];
+extern struct page_ext_operations page_stack_ops;
 
 int kasan_populate_early_shadow(const void *shadow_start,
 				const void *shadow_end);
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 4fafba1a923b..b5a9410ba4e8 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -41,6 +41,7 @@ config KASAN_GENERIC
 	select SLUB_DEBUG if SLUB
 	select CONSTRUCTORS
 	select STACKDEPOT
+	select PAGE_EXTENSION
 	help
 	  Enables generic KASAN mode.
 	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
@@ -63,6 +64,7 @@ config KASAN_SW_TAGS
 	select SLUB_DEBUG if SLUB
 	select CONSTRUCTORS
 	select STACKDEPOT
+	select PAGE_EXTENSION
 	help
 	  Enables software tag-based KASAN mode.
 	  This mode requires Top Byte Ignore support by the CPU and therefore
diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 2277b82902d8..c349143d2587 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -211,10 +211,38 @@ void kasan_unpoison_stack_above_sp_to(const void *watermark)
 	kasan_unpoison_shadow(sp, size);
 }
 
+static bool need_page_stack(void)
+{
+	return true;
+}
+
+struct page_ext_operations page_stack_ops = {
+	.size = sizeof(depot_stack_handle_t),
+	.need = need_page_stack,
+};
+
+static void set_page_stack(struct page *page, gfp_t gfp_mask)
+{
+	struct page_ext *page_ext = lookup_page_ext(page);
+	depot_stack_handle_t handle;
+	depot_stack_handle_t *page_stack;
+
+	if (unlikely(!page_ext))
+		return;
+
+	handle = save_stack(gfp_mask);
+
+	page_stack = get_page_stack(page_ext);
+	*page_stack = handle;
+}
+
 void kasan_alloc_pages(struct page *page, unsigned int order)
 {
 	u8 tag;
 	unsigned long i;
+	gfp_t gfp_flags = GFP_KERNEL;
+
+	set_page_stack(page, gfp_flags);
 
 	if (unlikely(PageHighMem(page)))
 		return;
@@ -227,6 +255,10 @@ void kasan_alloc_pages(struct page *page, unsigned int order)
 
 void kasan_free_pages(struct page *page, unsigned int order)
 {
+	gfp_t gfp_flags = GFP_KERNEL;
+
+	set_page_stack(page, gfp_flags);
+
 	if (likely(!PageHighMem(page)))
 		kasan_poison_shadow(page_address(page),
 				PAGE_SIZE << order,
diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
index 014f19e76247..95b3b510d04f 100644
--- a/mm/kasan/kasan.h
+++ b/mm/kasan/kasan.h
@@ -126,6 +126,11 @@ static inline bool addr_has_shadow(const void *addr)
 	return (addr >= kasan_shadow_to_mem((void *)KASAN_SHADOW_START));
 }
 
+static inline depot_stack_handle_t *get_page_stack(struct page_ext *page_ext)
+{
+	return (void *)page_ext + page_stack_ops.offset;
+}
+
 void kasan_poison_shadow(const void *address, size_t size, u8 value);
 
 /**
diff --git a/mm/kasan/report.c b/mm/kasan/report.c
index 0e5f965f1882..2e26bc192114 100644
--- a/mm/kasan/report.c
+++ b/mm/kasan/report.c
@@ -344,6 +344,32 @@ static void print_address_stack_frame(const void *addr)
 	print_decoded_frame_descr(frame_descr);
 }
 
+static void dump_page_stack(struct page *page)
+{
+	struct page_ext *page_ext = lookup_page_ext(page);
+	depot_stack_handle_t handle;
+	unsigned long *entries;
+	unsigned int nr_entries;
+	depot_stack_handle_t *page_stack;
+
+	if (unlikely(!page_ext))
+		return;
+
+	page_stack = get_page_stack(page_ext);
+
+	handle = READ_ONCE(*page_stack);
+	if (!handle)
+		return;
+
+	if ((unsigned long)page->flags & PAGE_FLAGS_CHECK_AT_PREP)
+		pr_info("Allocation stack of page:\n");
+	else
+		pr_info("Free stack of page:\n");
+
+	nr_entries = stack_depot_fetch(handle, &entries);
+	stack_trace_print(entries, nr_entries, 0);
+}
+
 static void print_address_description(void *addr)
 {
 	struct page *page = addr_to_page(addr);
@@ -366,6 +392,7 @@ static void print_address_description(void *addr)
 	if (page) {
 		pr_err("The buggy address belongs to the page:\n");
 		dump_page(page, "kasan: bad access detected");
+		dump_page_stack(page);
 	}
 
 	print_address_stack_frame(addr);
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
