Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BB0A7C21
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Sep 2019 08:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2SrfVRx51vyUEaFlYgXpCnc99rlSOKgnwRzNdgOp+2U=; b=IDWTZyB8kyaJwU
	s21srgTGR462IJw77Zk1jWZcWTrCjhu5hKc5/105grqCgYmjb/HIFV7XPdeHSwwSwJF504CHCfzO+
	1NzYPCTdzvY1ynC/ekAJ+40dQwT4nKpDQQH7uvbgDK71RVflpxjzh5H1jjG7ZJaedRzKk6QlZXi9W
	Mqzg4MZy5/07XiXyDNX4SQmLHj1HTUGId5WzWOyGeDs8A42eI9Lsl3FVO2qZzu+HJcuIUu7jRm3mo
	9s0WY6S9+h3WLObnKIZ835uvUsLsmLJMLNpILuLZHCJpKB3KnFz2+6zGejP5fosdFd1q4J4vXhfrt
	l3JrzbPU4/oHF70ilmLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PEh-0008MI-CZ; Wed, 04 Sep 2019 06:57:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PEd-0008Lc-Mq; Wed, 04 Sep 2019 06:57:44 +0000
X-UUID: 93fe7781352746ed99b6afc9713f20b3-20190903
X-UUID: 93fe7781352746ed99b6afc9713f20b3-20190903
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 269693652; Tue, 03 Sep 2019 22:57:39 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 23:57:38 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 14:57:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Sep 2019 14:57:36 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, "Thomas
 Gleixner" <tglx@linutronix.de>, Michal Hocko <mhocko@suse.com>, Josh
 Poimboeuf <jpoimboe@redhat.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] mm/page_owner: determine the last stack state of page
 with CONFIG_KASAN_DUMP_PAGE=y
Date: Wed, 4 Sep 2019 14:57:36 +0800
Message-ID: <20190904065736.20736-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_235743_764313_99940735 
X-CRM114-Status: UNSURE (   7.33  )
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When enable CONFIG_KASAN_DUMP_PAGE, then page_owner will record last stack,
So we need to know the last stack is allocation or free state.

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 mm/page_owner.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/mm/page_owner.c b/mm/page_owner.c
index addcbb2ae4e4..2756adca250e 100644
--- a/mm/page_owner.c
+++ b/mm/page_owner.c
@@ -418,6 +418,12 @@ void __dump_page_owner(struct page *page)
 	nr_entries = stack_depot_fetch(handle, &entries);
 	pr_alert("page allocated via order %u, migratetype %s, gfp_mask %#x(%pGg)\n",
 		 page_owner->order, migratetype_names[mt], gfp_mask, &gfp_mask);
+#ifdef CONFIG_KASAN_DUMP_PAGE
+	if ((unsigned long)page->flags & PAGE_FLAGS_CHECK_AT_PREP)
+		pr_info("Allocation stack of page:\n");
+	else
+		pr_info("Free stack of page:\n");
+#endif
 	stack_trace_print(entries, nr_entries, 0);
 
 	if (page_owner->last_migrate_reason != -1)
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
