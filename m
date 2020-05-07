Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 347E11C846C
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 10:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhdiOk2UEqyO9aRpcDqsotoM8qdTpK7cZVxnRyIFqLg=; b=Gw3hcsrfH+B/M0
	DAnVcPc5Di8Qa3Q5zgIeX278QcCzXLfWtOIHoK1XLb51tEclH/wKKlOAVzuybOMHwEHlVzJeezPGB
	1pZ8UGAj3ipXGqjqg5tWp5KIjw8nWD1gnoD7e4OkROMH6hLJpes6UVJxXBEjQNUGRGTOO8LLYIyJ2
	92DAY5Nr9Y3P//IWX6y/iyRF8t7mtccpYJOGikTs8D8yBwPboRpZrdLAKO7hSS/b4RIGau6lmHJa+
	LzHWJwNSjv/crwJq/xFGTqoKyQ4MCj3PKg+yWav7PYMTLVWPaKSI3Xwc1TabLtpZ4fvc5oOc0ZuPu
	KEBEdJJ5VqjkXsUenBug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbcd-0004B1-D5; Thu, 07 May 2020 08:11:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbcY-00047n-VO
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 08:11:08 +0000
X-UUID: 11125aa7156b425a93fc907c89a859aa-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=PCe+RLLLq9BkAA97AK2FC1kvwkgj9Yf4+fT0kgzimd4=; 
 b=VWice97I5QuiJXhUVrpqEvi/Ccm7Eh+go3lGZbhRyKg3v9BBb+v8Q2gyGUetI0drvNcqMqoRsgCxKgVChCmZqnOmQcO+KKyGuiW9Ma4kA261rqJDw7DtLhhCnaqrALkmYJaF57RVkzdRTGDi6hBNsEotwghDEzyrx+lQKsQyUjo=;
X-UUID: 11125aa7156b425a93fc907c89a859aa-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <frankie.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 191065922; Thu, 07 May 2020 00:11:03 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 01:11:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 16:10:59 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 7 May 2020 16:10:57 +0800
From: Frankie Chang <Frankie.Chang@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Todd Kjos
 <tkjos@google.com>, Joel Fernandes <joel@joelfernandes.org>
Subject: [PATCH v4 3/3] binder: add transaction latency tracer
Date: Thu, 7 May 2020 16:10:55 +0800
Message-ID: <1588839055-26677-4-git-send-email-Frankie.Chang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1588839055-26677-1-git-send-email-Frankie.Chang@mediatek.com>
References: <20200430085105.GF2496467@kroah.com>
 <1588839055-26677-1-git-send-email-Frankie.Chang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_011107_016833_C18A1BA6 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Jian-Min Liu <Jian-Min.Liu@mediatek.com>, linux-mediatek@lists.infradead.org,
 "Frankie.Chang" <Frankie.Chang@mediatek.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "Frankie.Chang" <Frankie.Chang@mediatek.com>

Record start/end timestamp for binder transaction.
When transaction is completed or transaction is free,
it would be checked if transaction latency over threshold (2 sec),
if yes, printing related information for tracing.

/* Implement details */
- Add latency tracer module to monitor slow transaction.
  The trace_binder_free_transaction would not be enabled
  by default. Monitoring which transaction is too slow to
  cause some of exceptions is important. So we hook the
  tracepoint to call the monitor function.

Signed-off-by: Frankie.Chang <Frankie.Chang@mediatek.com>
---
 drivers/android/Kconfig                 |    8 +++
 drivers/android/Makefile                |    1 +
 drivers/android/binder.c                |    2 +
 drivers/android/binder_internal.h       |   13 ++++
 drivers/android/binder_latency_tracer.c |  105 +++++++++++++++++++++++++++++++
 drivers/android/binder_trace.h          |   26 +++++++-
 6 files changed, 152 insertions(+), 3 deletions(-)
 create mode 100644 drivers/android/binder_latency_tracer.c

 Change from v4:
   split up into patch series.

 Change from v3:
   use tracepoints for binder_update_info and print_binder_transaction_ext,
   instead of custom registration functions.

 Change from v2:
   create transaction latency module to monitor slow transaction.

 Change from v1:
   first patchset.

diff --git a/drivers/android/Kconfig b/drivers/android/Kconfig
index 6fdf2ab..7ba80eb 100644
--- a/drivers/android/Kconfig
+++ b/drivers/android/Kconfig
@@ -54,6 +54,14 @@ config ANDROID_BINDER_IPC_SELFTEST
 	  exhaustively with combinations of various buffer sizes and
 	  alignments.
 
+config BINDER_USER_TRACKING
+	bool "Android Binder transaction tracking"
+	help
+	  Used for track abnormal binder transaction which is over 2 seconds,
+	  when the transaction is done or be free, this transaction would be
+	  checked whether it executed overtime.
+	  If yes, printing out the detail info about it.
+
 endif # if ANDROID
 
 endmenu
diff --git a/drivers/android/Makefile b/drivers/android/Makefile
index c9d3d0c9..552e8ac 100644
--- a/drivers/android/Makefile
+++ b/drivers/android/Makefile
@@ -4,3 +4,4 @@ ccflags-y += -I$(src)			# needed for trace events
 obj-$(CONFIG_ANDROID_BINDERFS)		+= binderfs.o
 obj-$(CONFIG_ANDROID_BINDER_IPC)	+= binder.o binder_alloc.o
 obj-$(CONFIG_ANDROID_BINDER_IPC_SELFTEST) += binder_alloc_selftest.o
+obj-$(CONFIG_BINDER_USER_TRACKING)	+= binder_latency_tracer.o
diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 4c3dd98..b89d75a 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2657,6 +2657,7 @@ static void binder_transaction(struct binder_proc *proc,
 		return_error_line = __LINE__;
 		goto err_alloc_t_failed;
 	}
+	trace_binder_update_info(t, e);
 	INIT_LIST_HEAD(&t->fd_fixups);
 	binder_stats_created(BINDER_STAT_TRANSACTION);
 	spin_lock_init(&t->lock);
@@ -5145,6 +5146,7 @@ static void print_binder_transaction_ilocked(struct seq_file *m,
 		   t->to_thread ? t->to_thread->pid : 0,
 		   t->code, t->flags, t->priority, t->need_reply);
 	spin_unlock(&t->lock);
+	trace_print_binder_transaction_ext(m, t);
 
 	if (proc != to_proc) {
 		/*
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index ed61b3e..24d7beb 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -12,6 +12,11 @@
 #include <linux/types.h>
 #include <linux/uidgid.h>
 
+#ifdef CONFIG_BINDER_USER_TRACKING
+#include <linux/rtc.h>
+#include <linux/time.h>
+#endif
+
 struct binder_context {
 	struct binder_node *binder_context_mgr_node;
 	struct mutex context_mgr_node_lock;
@@ -131,6 +136,10 @@ struct binder_transaction_log_entry {
 	uint32_t return_error;
 	uint32_t return_error_param;
 	char context_name[BINDERFS_MAX_NAME + 1];
+#ifdef CONFIG_BINDER_USER_TRACKING
+	struct timespec timestamp;
+	struct timeval tv;
+#endif
 };
 
 struct binder_transaction_log {
@@ -520,6 +529,10 @@ struct binder_transaction {
 	 * during thread teardown
 	 */
 	spinlock_t lock;
+#ifdef CONFIG_BINDER_USER_TRACKING
+	struct timespec timestamp;
+	struct timeval tv;
+#endif
 };
 
 /**
diff --git a/drivers/android/binder_latency_tracer.c b/drivers/android/binder_latency_tracer.c
new file mode 100644
index 0000000..45c14fb
--- /dev/null
+++ b/drivers/android/binder_latency_tracer.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ */
+
+#include <linux/module.h>
+#include <uapi/linux/android/binder.h>
+#include "binder_alloc.h"
+#include "binder_internal.h"
+#include "binder_trace.h"
+
+/*
+ * probe_binder_free_transaction - Output info of a delay transaction
+ * @t:          pointer to the over-time transaction
+ */
+void probe_binder_free_transaction(void *ignore, struct binder_transaction *t)
+{
+	struct rtc_time tm;
+	struct timespec *startime;
+	struct timespec cur, sub_t;
+
+	ktime_get_ts(&cur);
+	startime = &t->timestamp;
+	sub_t = timespec_sub(cur, *startime);
+
+	/* if transaction time is over than 2 sec,
+	 * show timeout warning log.
+	 */
+	if (sub_t.tv_sec < 2)
+		return;
+
+	rtc_time_to_tm(t->tv.tv_sec, &tm);
+
+	spin_lock(&t->lock);
+	pr_info_ratelimited("%d: from %d:%d to %d:%d",
+			t->debug_id,
+			t->from ? t->from->proc->pid : 0,
+			t->from ? t->from->pid : 0,
+			t->to_proc ? t->to_proc->pid : 0,
+			t->to_thread ? t->to_thread->pid : 0);
+	spin_unlock(&t->lock);
+
+	pr_info_ratelimited(" total %u.%03ld s code %u start %lu.%03ld android %d-%02d-%02d %02d:%02d:%02d.%03lu\n",
+			(unsigned int)sub_t.tv_sec,
+			(sub_t.tv_nsec / NSEC_PER_MSEC),
+			t->code,
+			(unsigned long)startime->tv_sec,
+			(startime->tv_nsec / NSEC_PER_MSEC),
+			(tm.tm_year + 1900), (tm.tm_mon + 1), tm.tm_mday,
+			tm.tm_hour, tm.tm_min, tm.tm_sec,
+			(unsigned long)(t->tv.tv_usec / USEC_PER_MSEC));
+}
+
+static void probe_binder_update_info(void *ignore, struct binder_transaction *t,
+			   struct binder_transaction_log_entry *e)
+{
+	ktime_get_ts(&e->timestamp);
+	do_gettimeofday(&e->tv);
+	e->tv.tv_sec -= (sys_tz.tz_minuteswest * 60);
+	memcpy(&t->timestamp, &e->timestamp, sizeof(struct timespec));
+	memcpy(&t->tv, &e->tv, sizeof(struct timeval));
+}
+
+static void probe_print_binder_transaction_ext(void *ignore, struct seq_file *m,
+					 struct binder_transaction *t)
+{
+	struct rtc_time tm;
+
+	rtc_time_to_tm(t->tv.tv_sec, &tm);
+	seq_printf(m,
+		   " start %lu.%06lu android %d-%02d-%02d %02d:%02d:%02d.%03lu",
+		   (unsigned long)t->timestamp.tv_sec,
+		   (t->timestamp.tv_nsec / NSEC_PER_USEC),
+		   (tm.tm_year + 1900), (tm.tm_mon + 1), tm.tm_mday,
+		   tm.tm_hour, tm.tm_min, tm.tm_sec,
+		   (unsigned long)(t->tv.tv_usec / USEC_PER_MSEC));
+
+}
+
+static int __init init_binder_latency_tracer(void)
+{
+	register_trace_binder_free_transaction(
+			probe_binder_free_transaction, NULL);
+	register_trace_binder_update_info(
+			probe_binder_update_info, NULL);
+	register_trace_print_binder_transaction_ext(
+			probe_print_binder_transaction_ext, NULL);
+
+	return 0;
+}
+
+static void exit_binder_latency_tracer(void)
+{
+	unregister_trace_binder_free_transaction(
+			probe_binder_free_transaction, NULL);
+	unregister_trace_binder_update_info(
+			probe_binder_update_info, NULL);
+	unregister_trace_print_binder_transaction_ext(
+			probe_print_binder_transaction_ext, NULL);
+}
+
+module_init(init_binder_latency_tracer);
+module_exit(exit_binder_latency_tracer);
+
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/android/binder_trace.h b/drivers/android/binder_trace.h
index 7acc18d..466993e 100644
--- a/drivers/android/binder_trace.h
+++ b/drivers/android/binder_trace.h
@@ -18,6 +18,7 @@
 struct binder_ref_data;
 struct binder_thread;
 struct binder_transaction;
+struct binder_transaction_log_entry;
 
 TRACE_EVENT(binder_ioctl,
 	TP_PROTO(unsigned int cmd, unsigned long arg),
@@ -95,6 +96,18 @@
 		  __entry->thread_todo)
 );
 
+DECLARE_TRACE(binder_update_info,
+	TP_PROTO(struct binder_transaction *t,
+		 struct binder_transaction_log_entry *e),
+	TP_ARGS(t, e)
+);
+
+DECLARE_TRACE(print_binder_transaction_ext,
+	TP_PROTO(struct seq_file *m,
+		 struct binder_transaction *t),
+	TP_ARGS(m, t)
+);
+
 TRACE_EVENT(binder_free_transaction,
 	TP_PROTO(struct binder_transaction *t),
 	TP_ARGS(t),
@@ -115,11 +128,18 @@
 		__entry->to_thread = t->to_thread ? t->to_thread->pid : 0;
 		__entry->code = t->code;
 		__entry->flags = t->flags;
-	),
-	TP_printk("transaction=%d from %d:%d to %d:%d flags=0x%x code=0x%x",
+#ifdef CONFIG_BINDER_USER_TRACKING
+		__entry->start_sec = t->timestamp.tv_sec;
+		__entry->start_nsec = t->timestamp.tv_nsec / NSEC_PER_MSEC;
+#else
+		__entry->start_sec = 0;
+		__entry->start_nsec = 0;
+#endif
+	),
+	TP_printk("transaction=%d from %d:%d to %d:%d flags=0x%x code=0x%x start %lu.%03ld",
 		  __entry->debug_id, __entry->from_proc, __entry->from_thread,
 		  __entry->to_proc, __entry->to_thread, __entry->code,
-		  __entry->flags)
+		  __entry->flags, __entry->start_sec, __entry->start_nsec)
 );
 
 TRACE_EVENT(binder_transaction,
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
