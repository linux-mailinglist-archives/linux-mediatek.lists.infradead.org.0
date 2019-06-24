Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310AF50426
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 10:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vIxmdgGTnsFyIhOl9f6vF/xxjBoENxMxsWggaGvewj8=; b=UubOjb5FDEdmiI
	ViibeauWPY5Ult+Ao2akFcNYgmKW/My3pLciWwjje9wZ2JlsG5NBXJh3fDJ0sH3Kt4dRKmgAWkoYR
	geSz2mMpiZ1E2KJaimDLsfR6NokgLuYUj1pU6wtydpFB9Uq1nPPvglv1UxMn9X37JiJoEYsz66Tdw
	uKIxu76pzxiMYQEuvnE5Naea9YdefiTsKjybK8KB8i9PQutM7BAC5RMhZlwn20chTRQj2zTLPN9cL
	+gM5ExfMeU3Ev3s0I5maWb3UeSZN+beYSIrq2LXfc4ets17FtkXiFBsCRcLHNGuOaKlxBTfr7eqFq
	zKf/Fpil5b8Pjo/Rcp8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJvz-0004o3-Ng; Mon, 24 Jun 2019 08:02:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJvh-0004ZZ-7U
 for linux-mediatek@lists.infradead.org; Mon, 24 Jun 2019 08:02:22 +0000
X-UUID: 4bb1ecd86fc247a783af475e48071dc8-20190624
X-UUID: 4bb1ecd86fc247a783af475e48071dc8-20190624
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <kobe-cp.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 137419139; Mon, 24 Jun 2019 00:01:40 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Jun 2019 01:01:39 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Jun 2019 16:01:37 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 24 Jun 2019 16:01:37 +0800
From: Kobe Wu <kobe-cp.wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] locking/lockdep: Save and display stack trace of held locks
Date: Mon, 24 Jun 2019 16:00:59 +0800
Message-ID: <1561363259-14705-1-git-send-email-kobe-cp.wu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_010221_286301_A71A8987 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
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
Cc: Eason Lin <eason-yh.lin@mediatek.com>, linux-mediatek@lists.infradead.org,
 wsd_upstream@mediatek.com, Kobe Wu <kobe-cp.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Save the stack trace of held locks when lock_acquire() is invoked
and display the stack trace when lockdep_print_held_locks() is
invoked. The runtime stack trace of held locks are helpful in
analyzing code flow and lockdep's warning.

Save stack trace of each held lock will increase runtime overhead
and memory consumption. The operation will be activated under
CONFIG_LOCKDEP_TRACE_HELD_LOCK. So the impact will only occur
when CONFIG_LOCKDEP_TRACE_HELD_LOCK=y.

Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>
---
 include/linux/lockdep.h  |   13 +++++++++++++
 kernel/locking/lockdep.c |   22 ++++++++++++++++++++++
 lib/Kconfig.debug        |   13 +++++++++++++
 3 files changed, 48 insertions(+)

diff --git a/include/linux/lockdep.h b/include/linux/lockdep.h
index 6e2377e..4e8d027 100644
--- a/include/linux/lockdep.h
+++ b/include/linux/lockdep.h
@@ -224,6 +224,10 @@ struct lock_chain {
  */
 #define MAX_LOCKDEP_KEYS		((1UL << MAX_LOCKDEP_KEYS_BITS) - 1)
 
+#ifdef CONFIG_LOCKDEP_TRACE_HELD_LOCK
+#define MAX_HELD_LOCK_ENTRIES 32
+#endif
+
 struct held_lock {
 	/*
 	 * One-way hash of the dependency chain up to this point. We
@@ -269,6 +273,15 @@ struct held_lock {
 	unsigned int hardirqs_off:1;
 	unsigned int references:12;					/* 32 bits */
 	unsigned int pin_count;
+
+#ifdef CONFIG_LOCKDEP_TRACE_HELD_LOCK
+	/*
+	 * When trying to acquire a lock, the stack trace will be saved
+	 * in the entries.
+	 */
+	unsigned int nr_entries;
+	unsigned long entries[MAX_HELD_LOCK_ENTRIES];
+#endif
 };
 
 /*
diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index d06190f..ad7cecf 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -457,6 +457,28 @@ static int save_trace(struct lock_trace *trace)
 	return 1;
 }
 
+/* Stack-trace: record stack backtrace when trying to acquire a lock. */
+#ifdef CONFIG_LOCKDEP_TRACE_HELD_LOCK
+static void save_held_lock_trace(struct held_lock *hlock)
+{
+	hlock->nr_entries =
+		stack_trace_save(hlock->entries, MAX_HELD_LOCK_ENTRIES, 2);
+}
+
+static void print_held_lock_trace(struct held_lock *hlock)
+{
+	stack_trace_print(hlock->entries, hlock->nr_entries, 6);
+}
+#else
+static void save_held_lock_trace(struct held_lock *hlock)
+{
+}
+
+static void print_held_lock_trace(struct held_lock *hlock)
+{
+}
+#endif
+
 unsigned int nr_hardirq_chains;
 unsigned int nr_softirq_chains;
 unsigned int nr_process_chains;
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index eae4395..7082843 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1285,6 +1285,19 @@ config WW_MUTEX_SELFTEST
 	  Say M if you want these self tests to build as a module.
 	  Say N if you are unsure.
 
+config LOCKDEP_TRACE_HELD_LOCK
+	bool "Lock information: save and display stack trace of held locks"
+	depends on PROVE_LOCKING
+	default n
+	help
+	  This feature will save the stack trace when trying to acquire a lock
+	  and display the stack trace when a lockdep warning is reported. This
+	  might be helpful in analyzing lockdep's warnings.
+
+	  Enable this will increase runtime overhead and memory consumption.
+
+	  If unsure, say N.
+
 endmenu # lock debugging
 
 config TRACE_IRQFLAGS
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
