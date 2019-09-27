Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DC4BFDB2
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 05:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WM+kwR2Q+sZku6qKWnjZeGm1VKwf6Z7erJEGtTns7+0=; b=b5clbi5w4C5Uo4
	zegAJwRWl0tfPSuFoRvSvBFQP9ymVHk3n7mk/xxeFKeu78Q3x+nrTBM0aNJw3kJ8UO/ln+QLBSJbj
	fOpAbTGosF1XSzQewGjIknQO/GNFhAqRGy6wEmjoj7P9IcHsrbf8jZQ5W73QIiyIR0fcZ91yR1hkA
	A0oHAwP7XC1AkkR37kFeyspSNToEiD11SbD722rCn9JyYHewWlmv5nxaG7ZZ8a9Amo3r4XGL/rTWS
	aM5SXCiAwpR+Fj9T/Jfce/bACbqpbFFaYyFJlrB9+EcdzU1tViaONn9i7Fd9EwMlkG8r3HIypdQQQ
	U8X/AxlaaOfh/obL5n4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDhAr-000542-G2; Fri, 27 Sep 2019 03:44:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDhAc-0004u6-JT; Fri, 27 Sep 2019 03:43:52 +0000
X-UUID: a227aa22d2b94251a29de5cadf5bf977-20190926
X-UUID: a227aa22d2b94251a29de5cadf5bf977-20190926
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1113642830; Thu, 26 Sep 2019 19:43:41 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 20:43:41 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 11:43:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Sep 2019 11:43:39 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH] kasan: fix the missing underflow in memmove and memcpy with
 CONFIG_KASAN_GENERIC=y
Date: Fri, 27 Sep 2019 11:43:38 +0800
Message-ID: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_204350_644939_A6250459 
X-CRM114-Status: GOOD (  11.31  )
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

memmove() and memcpy() have missing underflow issues.
When -7 <= size < 0, then KASAN will miss to catch the underflow issue.
It looks like shadow start address and shadow end address is the same,
so it does not actually check anything.

The following test is indeed not caught by KASAN:

	char *p = kmalloc(64, GFP_KERNEL);
	memset((char *)p, 0, 64);
	memmove((char *)p, (char *)p + 4, -2);
	kfree((char*)p);

It should be checked here:

void *memmove(void *dest, const void *src, size_t len)
{
	check_memory_region((unsigned long)src, len, false, _RET_IP_);
	check_memory_region((unsigned long)dest, len, true, _RET_IP_);

	return __memmove(dest, src, len);
}

We fix the shadow end address which is calculated, then generic KASAN
get the right shadow end address and detect this underflow issue.

[1] https://bugzilla.kernel.org/show_bug.cgi?id=199341

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Reported-by: Dmitry Vyukov <dvyukov@google.com>
---
 lib/test_kasan.c   | 36 ++++++++++++++++++++++++++++++++++++
 mm/kasan/generic.c |  8 ++++++--
 2 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/lib/test_kasan.c b/lib/test_kasan.c
index b63b367a94e8..8bd014852556 100644
--- a/lib/test_kasan.c
+++ b/lib/test_kasan.c
@@ -280,6 +280,40 @@ static noinline void __init kmalloc_oob_in_memset(void)
 	kfree(ptr);
 }
 
+static noinline void __init kmalloc_oob_in_memmove_underflow(void)
+{
+	char *ptr;
+	size_t size = 64;
+
+	pr_info("underflow out-of-bounds in memmove\n");
+	ptr = kmalloc(size, GFP_KERNEL);
+	if (!ptr) {
+		pr_err("Allocation failed\n");
+		return;
+	}
+
+	memset((char *)ptr, 0, 64);
+	memmove((char *)ptr, (char *)ptr + 4, -2);
+	kfree(ptr);
+}
+
+static noinline void __init kmalloc_oob_in_memmove_overflow(void)
+{
+	char *ptr;
+	size_t size = 64;
+
+	pr_info("overflow out-of-bounds in memmove\n");
+	ptr = kmalloc(size, GFP_KERNEL);
+	if (!ptr) {
+		pr_err("Allocation failed\n");
+		return;
+	}
+
+	memset((char *)ptr, 0, 64);
+	memmove((char *)ptr + size, (char *)ptr, 2);
+	kfree(ptr);
+}
+
 static noinline void __init kmalloc_uaf(void)
 {
 	char *ptr;
@@ -734,6 +768,8 @@ static int __init kmalloc_tests_init(void)
 	kmalloc_oob_memset_4();
 	kmalloc_oob_memset_8();
 	kmalloc_oob_memset_16();
+	kmalloc_oob_in_memmove_underflow();
+	kmalloc_oob_in_memmove_overflow();
 	kmalloc_uaf();
 	kmalloc_uaf_memset();
 	kmalloc_uaf2();
diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
index 616f9dd82d12..34ca23d59e67 100644
--- a/mm/kasan/generic.c
+++ b/mm/kasan/generic.c
@@ -131,9 +131,13 @@ static __always_inline bool memory_is_poisoned_n(unsigned long addr,
 						size_t size)
 {
 	unsigned long ret;
+	void *shadow_start = kasan_mem_to_shadow((void *)addr);
+	void *shadow_end = kasan_mem_to_shadow((void *)addr + size - 1) + 1;
 
-	ret = memory_is_nonzero(kasan_mem_to_shadow((void *)addr),
-			kasan_mem_to_shadow((void *)addr + size - 1) + 1);
+	if ((long)size < 0)
+		shadow_end = kasan_mem_to_shadow((void *)addr + size);
+
+	ret = memory_is_nonzero(shadow_start, shadow_end);
 
 	if (unlikely(ret)) {
 		unsigned long last_byte = addr + size - 1;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
