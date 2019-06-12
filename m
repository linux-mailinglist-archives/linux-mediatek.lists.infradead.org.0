Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAF841B9C
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 07:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8O0T/VUr0MjEXsPt91r59hyjnpCC5dsnUBbOdC0uNSg=; b=QhbpUMb02/1zIG
	69ZNWacvpFtgRMra3KrvoGN1XQeTctNwNP2bCPosIay7E/UvBkRACoMqyMXxh17TpssUzENBOyppQ
	odddPMSiqK3fyp8eJIySbZragFLzRXy1Eno7kXmvwQmq4t4HLnle0bQrvpIZ57Pcb/kwf9xsjgTUm
	Sm+pjY4caSPKwgghjiRj1abNlvHM7qLnUbOE7xz6sJCMRRpjdnTP0WxmafZkXq65krwZzodD9NT9C
	EzwoCdrHCmHmGsHF2RkeajsZqv5KXW82+jyANRHH5BvgSBo7NhGq7B+P35s+Ea0H9D8bn2TB3M+H7
	8bp0aBOGqhyhit94DM9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haw8b-0000Ox-AB; Wed, 12 Jun 2019 05:49:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haw8X-0000O0-Hx
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 05:49:31 +0000
X-UUID: acf874c1aa1d45b08db484517be8a9ef-20190611
X-UUID: acf874c1aa1d45b08db484517be8a9ef-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <kobe-cp.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1638488285; Tue, 11 Jun 2019 21:49:16 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 22:49:14 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 13:49:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 12 Jun 2019 13:49:13 +0800
From: Kobe Wu <kobe-cp.wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] locking/lockdep: Fix UBSAN warnings
Date: Wed, 12 Jun 2019 13:49:04 +0800
Message-ID: <1560318544-27635-1-git-send-email-kobe-cp.wu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_224929_598893_0739ABB5 
X-CRM114-Status: UNSURE (   7.43  )
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
Cc: Eason Lin <eason-yh.lin@mediatek.com>, linux-mediatek@lists.infradead.org,
 wsd_upstream@mediatek.com, Kobe Wu <kobe-cp.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix complaints from UBSAN about signed integer overflow.

========================================================================
UBSAN: Undefined behaviour in kernel/locking/lockdep.c:2998:3
signed integer overflow:
2147483647 + 1 cannot be represented in type 'int'
Call trace:
 dump_backtrace+0x0/0x470
 show_stack+0x14/0x20
 dump_stack+0xc8/0x11c
 ubsan_epilogue+0x14/0xa8
 handle_overflow+0x138/0x1a8
 __ubsan_handle_add_overflow+0x10/0x18
 trace_hardirqs_off_caller+0x1a0/0x268
 trace_hardirqs_off+0x1c/0x28
 rcu_irq_enter_irqson+0x18/0x50
 handle_IPI+0x4cc/0x898
 gic_handle_irq+0x1f4/0x240

When system has been running for a long time, signed integer counters
are not enough for some lockdep statistics. Such as the warning above,
it occurs at debug_atomic_inc(hardirqs_off_events). Using unsigned long
counters can satisfy the requirement. Besides, most of other lockdep
statistics are unsigned. It is better to use unsigned int instead of int.

Remove unused variables.
- max_recursion_depth
- nr_cyclic_check_recursions
- nr_find_usage_forwards_recursions
- nr_find_usage_backwards_recursions

Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>
---
 kernel/locking/lockdep_internals.h |   36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/kernel/locking/lockdep_internals.h b/kernel/locking/lockdep_internals.h
index 150ec3f..cc83568 100644
--- a/kernel/locking/lockdep_internals.h
+++ b/kernel/locking/lockdep_internals.h
@@ -131,7 +131,6 @@ extern void get_usage_chars(struct lock_class *class,
 extern unsigned int nr_softirq_chains;
 extern unsigned int nr_process_chains;
 extern unsigned int max_lockdep_depth;
-extern unsigned int max_recursion_depth;
 
 extern unsigned int max_bfs_queue_depth;
 
@@ -160,25 +159,22 @@ extern void get_usage_chars(struct lock_class *class,
  * and we want to avoid too much cache bouncing.
  */
 struct lockdep_stats {
-	int	chain_lookup_hits;
-	int	chain_lookup_misses;
-	int	hardirqs_on_events;
-	int	hardirqs_off_events;
-	int	redundant_hardirqs_on;
-	int	redundant_hardirqs_off;
-	int	softirqs_on_events;
-	int	softirqs_off_events;
-	int	redundant_softirqs_on;
-	int	redundant_softirqs_off;
-	int	nr_unused_locks;
-	int	nr_redundant_checks;
-	int	nr_redundant;
-	int	nr_cyclic_checks;
-	int	nr_cyclic_check_recursions;
-	int	nr_find_usage_forwards_checks;
-	int	nr_find_usage_forwards_recursions;
-	int	nr_find_usage_backwards_checks;
-	int	nr_find_usage_backwards_recursions;
+	unsigned long  chain_lookup_hits;
+	unsigned int   chain_lookup_misses;
+	unsigned long  hardirqs_on_events;
+	unsigned long  hardirqs_off_events;
+	unsigned long  redundant_hardirqs_on;
+	unsigned long  redundant_hardirqs_off;
+	unsigned long  softirqs_on_events;
+	unsigned long  softirqs_off_events;
+	unsigned long  redundant_softirqs_on;
+	unsigned long  redundant_softirqs_off;
+	int            nr_unused_locks;
+	unsigned int   nr_redundant_checks;
+	unsigned int   nr_redundant;
+	unsigned int   nr_cyclic_checks;
+	unsigned int   nr_find_usage_forwards_checks;
+	unsigned int   nr_find_usage_backwards_checks;
 
 	/*
 	 * Per lock class locking operation stat counts
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
