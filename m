Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335531C84AA
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 10:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKX1sBRQnCFv3VavpOewRnF/ThKjg8KSrIrqRBUGj7o=; b=XNuWA+LXXhfpG7
	mIafdPL6ef0fqy5HstsE8UZuF6cSy1vRRWijBMGd8GzG01lzGcjcPICAjVIjxlo8Xv6H0aKQ/b03q
	MDi+Kzo7In9sUZ34a4G801uU8zXknw6De2IqlewAiDFU1TO+98iNXpUoG4nnnnnl50TmXnQI34zG3
	gJg6mhbebyDQXxFdm0ou9Y1ikGrxPZS3Bjf8Fs9rigKFJd9mquYiVaFyU37Js+rtvlJynUPlkdASo
	EW1GyquWDcDqOv42qrbzMrTuClow08oCmAWYcbiThwZShoNDtGgc5Dw+ZlZo8Ht5qeoCNWfWhLXlI
	dgxtR+phNC7nkp/k/83w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbmR-0002H6-F0; Thu, 07 May 2020 08:21:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbmM-0002DF-4g
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 08:21:17 +0000
X-UUID: 3eba83d28e5a42538ad42fa7fd51e35c-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=2iVJ6l4CBv8VRKkLxhaqZkNuilBmrmNMDmY45AhN4Yk=; 
 b=KrJ/fHu3aEG9mw2NNOudC09f3d9LDFCNcFuXSKCmj6n+U2ZPLoci90iYPru8BukgGDkYivNx7ajczEX5vWiQPVzORIdmHsTEGpMDldrwqELaahRDWQw21VZHq5enUzdS3HMWgZHjnD2PaxDdnDGk9rCe+uJ09kurdy23KsvCjK0=;
X-UUID: 3eba83d28e5a42538ad42fa7fd51e35c-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <frankie.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 564471693; Thu, 07 May 2020 00:21:09 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 01:11:04 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 16:10:56 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 7 May 2020 16:10:56 +0800
From: Frankie Chang <Frankie.Chang@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Todd Kjos
 <tkjos@google.com>, Joel Fernandes <joel@joelfernandes.org>
Subject: [PATCH v4 1/3] binder: move structs from core file to header file
Date: Thu, 7 May 2020 16:10:53 +0800
Message-ID: <1588839055-26677-2-git-send-email-Frankie.Chang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1588839055-26677-1-git-send-email-Frankie.Chang@mediatek.com>
References: <20200430085105.GF2496467@kroah.com>
 <1588839055-26677-1-git-send-email-Frankie.Chang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_012114_218697_C259F01E 
X-CRM114-Status: GOOD (  14.66  )
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

Moving all structs to header file makes module more
extendable, and makes all these structs to be defined
in the same file.

Signed-off-by: Frankie.Chang <Frankie.Chang@mediatek.com>
---
 drivers/android/binder.c          |  404 -------------------------------------
 drivers/android/binder_internal.h |  403 ++++++++++++++++++++++++++++++++++++
 2 files changed, 403 insertions(+), 404 deletions(-)

 Change since v4:
   split up into a patch series

 Change since v3:
   move all structs definition to header file, and make then defined in the same file. 

 Change since v2:
   move some structs definition to header file which needed by transaction latency module.

 Change since v1:
   first patchset

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index a6b2082..1592396 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -160,24 +160,6 @@ static int binder_set_stop_on_user_error(const char *val,
 #define to_binder_fd_array_object(hdr) \
 	container_of(hdr, struct binder_fd_array_object, hdr)
 
-enum binder_stat_types {
-	BINDER_STAT_PROC,
-	BINDER_STAT_THREAD,
-	BINDER_STAT_NODE,
-	BINDER_STAT_REF,
-	BINDER_STAT_DEATH,
-	BINDER_STAT_TRANSACTION,
-	BINDER_STAT_TRANSACTION_COMPLETE,
-	BINDER_STAT_COUNT
-};
-
-struct binder_stats {
-	atomic_t br[_IOC_NR(BR_FAILED_REPLY) + 1];
-	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
-	atomic_t obj_created[BINDER_STAT_COUNT];
-	atomic_t obj_deleted[BINDER_STAT_COUNT];
-};
-
 static struct binder_stats binder_stats;
 
 static inline void binder_stats_deleted(enum binder_stat_types type)
@@ -213,278 +195,11 @@ static struct binder_transaction_log_entry *binder_transaction_log_add(
 	return e;
 }
 
-/**
- * struct binder_work - work enqueued on a worklist
- * @entry:             node enqueued on list
- * @type:              type of work to be performed
- *
- * There are separate work lists for proc, thread, and node (async).
- */
-struct binder_work {
-	struct list_head entry;
-
-	enum {
-		BINDER_WORK_TRANSACTION = 1,
-		BINDER_WORK_TRANSACTION_COMPLETE,
-		BINDER_WORK_RETURN_ERROR,
-		BINDER_WORK_NODE,
-		BINDER_WORK_DEAD_BINDER,
-		BINDER_WORK_DEAD_BINDER_AND_CLEAR,
-		BINDER_WORK_CLEAR_DEATH_NOTIFICATION,
-	} type;
-};
-
-struct binder_error {
-	struct binder_work work;
-	uint32_t cmd;
-};
-
-/**
- * struct binder_node - binder node bookkeeping
- * @debug_id:             unique ID for debugging
- *                        (invariant after initialized)
- * @lock:                 lock for node fields
- * @work:                 worklist element for node work
- *                        (protected by @proc->inner_lock)
- * @rb_node:              element for proc->nodes tree
- *                        (protected by @proc->inner_lock)
- * @dead_node:            element for binder_dead_nodes list
- *                        (protected by binder_dead_nodes_lock)
- * @proc:                 binder_proc that owns this node
- *                        (invariant after initialized)
- * @refs:                 list of references on this node
- *                        (protected by @lock)
- * @internal_strong_refs: used to take strong references when
- *                        initiating a transaction
- *                        (protected by @proc->inner_lock if @proc
- *                        and by @lock)
- * @local_weak_refs:      weak user refs from local process
- *                        (protected by @proc->inner_lock if @proc
- *                        and by @lock)
- * @local_strong_refs:    strong user refs from local process
- *                        (protected by @proc->inner_lock if @proc
- *                        and by @lock)
- * @tmp_refs:             temporary kernel refs
- *                        (protected by @proc->inner_lock while @proc
- *                        is valid, and by binder_dead_nodes_lock
- *                        if @proc is NULL. During inc/dec and node release
- *                        it is also protected by @lock to provide safety
- *                        as the node dies and @proc becomes NULL)
- * @ptr:                  userspace pointer for node
- *                        (invariant, no lock needed)
- * @cookie:               userspace cookie for node
- *                        (invariant, no lock needed)
- * @has_strong_ref:       userspace notified of strong ref
- *                        (protected by @proc->inner_lock if @proc
- *                        and by @lock)
- * @pending_strong_ref:   userspace has acked notification of strong ref
- *                        (protected by @proc->inner_lock if @proc
- *                        and by @lock)
- * @has_weak_ref:         userspace notified of weak ref
- *                        (protected by @proc->inner_lock if @proc
- *                        and by @lock)
- * @pending_weak_ref:     userspace has acked notification of weak ref
- *                        (protected by @proc->inner_lock if @proc
- *                        and by @lock)
- * @has_async_transaction: async transaction to node in progress
- *                        (protected by @lock)
- * @accept_fds:           file descriptor operations supported for node
- *                        (invariant after initialized)
- * @min_priority:         minimum scheduling priority
- *                        (invariant after initialized)
- * @txn_security_ctx:     require sender's security context
- *                        (invariant after initialized)
- * @async_todo:           list of async work items
- *                        (protected by @proc->inner_lock)
- *
- * Bookkeeping structure for binder nodes.
- */
-struct binder_node {
-	int debug_id;
-	spinlock_t lock;
-	struct binder_work work;
-	union {
-		struct rb_node rb_node;
-		struct hlist_node dead_node;
-	};
-	struct binder_proc *proc;
-	struct hlist_head refs;
-	int internal_strong_refs;
-	int local_weak_refs;
-	int local_strong_refs;
-	int tmp_refs;
-	binder_uintptr_t ptr;
-	binder_uintptr_t cookie;
-	struct {
-		/*
-		 * bitfield elements protected by
-		 * proc inner_lock
-		 */
-		u8 has_strong_ref:1;
-		u8 pending_strong_ref:1;
-		u8 has_weak_ref:1;
-		u8 pending_weak_ref:1;
-	};
-	struct {
-		/*
-		 * invariant after initialization
-		 */
-		u8 accept_fds:1;
-		u8 txn_security_ctx:1;
-		u8 min_priority;
-	};
-	bool has_async_transaction;
-	struct list_head async_todo;
-};
-
-struct binder_ref_death {
-	/**
-	 * @work: worklist element for death notifications
-	 *        (protected by inner_lock of the proc that
-	 *        this ref belongs to)
-	 */
-	struct binder_work work;
-	binder_uintptr_t cookie;
-};
-
-/**
- * struct binder_ref_data - binder_ref counts and id
- * @debug_id:        unique ID for the ref
- * @desc:            unique userspace handle for ref
- * @strong:          strong ref count (debugging only if not locked)
- * @weak:            weak ref count (debugging only if not locked)
- *
- * Structure to hold ref count and ref id information. Since
- * the actual ref can only be accessed with a lock, this structure
- * is used to return information about the ref to callers of
- * ref inc/dec functions.
- */
-struct binder_ref_data {
-	int debug_id;
-	uint32_t desc;
-	int strong;
-	int weak;
-};
-
-/**
- * struct binder_ref - struct to track references on nodes
- * @data:        binder_ref_data containing id, handle, and current refcounts
- * @rb_node_desc: node for lookup by @data.desc in proc's rb_tree
- * @rb_node_node: node for lookup by @node in proc's rb_tree
- * @node_entry:  list entry for node->refs list in target node
- *               (protected by @node->lock)
- * @proc:        binder_proc containing ref
- * @node:        binder_node of target node. When cleaning up a
- *               ref for deletion in binder_cleanup_ref, a non-NULL
- *               @node indicates the node must be freed
- * @death:       pointer to death notification (ref_death) if requested
- *               (protected by @node->lock)
- *
- * Structure to track references from procA to target node (on procB). This
- * structure is unsafe to access without holding @proc->outer_lock.
- */
-struct binder_ref {
-	/* Lookups needed: */
-	/*   node + proc => ref (transaction) */
-	/*   desc + proc => ref (transaction, inc/dec ref) */
-	/*   node => refs + procs (proc exit) */
-	struct binder_ref_data data;
-	struct rb_node rb_node_desc;
-	struct rb_node rb_node_node;
-	struct hlist_node node_entry;
-	struct binder_proc *proc;
-	struct binder_node *node;
-	struct binder_ref_death *death;
-};
-
 enum binder_deferred_state {
 	BINDER_DEFERRED_FLUSH        = 0x01,
 	BINDER_DEFERRED_RELEASE      = 0x02,
 };
 
-/**
- * struct binder_proc - binder process bookkeeping
- * @proc_node:            element for binder_procs list
- * @threads:              rbtree of binder_threads in this proc
- *                        (protected by @inner_lock)
- * @nodes:                rbtree of binder nodes associated with
- *                        this proc ordered by node->ptr
- *                        (protected by @inner_lock)
- * @refs_by_desc:         rbtree of refs ordered by ref->desc
- *                        (protected by @outer_lock)
- * @refs_by_node:         rbtree of refs ordered by ref->node
- *                        (protected by @outer_lock)
- * @waiting_threads:      threads currently waiting for proc work
- *                        (protected by @inner_lock)
- * @pid                   PID of group_leader of process
- *                        (invariant after initialized)
- * @tsk                   task_struct for group_leader of process
- *                        (invariant after initialized)
- * @deferred_work_node:   element for binder_deferred_list
- *                        (protected by binder_deferred_lock)
- * @deferred_work:        bitmap of deferred work to perform
- *                        (protected by binder_deferred_lock)
- * @is_dead:              process is dead and awaiting free
- *                        when outstanding transactions are cleaned up
- *                        (protected by @inner_lock)
- * @todo:                 list of work for this process
- *                        (protected by @inner_lock)
- * @stats:                per-process binder statistics
- *                        (atomics, no lock needed)
- * @delivered_death:      list of delivered death notification
- *                        (protected by @inner_lock)
- * @max_threads:          cap on number of binder threads
- *                        (protected by @inner_lock)
- * @requested_threads:    number of binder threads requested but not
- *                        yet started. In current implementation, can
- *                        only be 0 or 1.
- *                        (protected by @inner_lock)
- * @requested_threads_started: number binder threads started
- *                        (protected by @inner_lock)
- * @tmp_ref:              temporary reference to indicate proc is in use
- *                        (protected by @inner_lock)
- * @default_priority:     default scheduler priority
- *                        (invariant after initialized)
- * @debugfs_entry:        debugfs node
- * @alloc:                binder allocator bookkeeping
- * @context:              binder_context for this proc
- *                        (invariant after initialized)
- * @inner_lock:           can nest under outer_lock and/or node lock
- * @outer_lock:           no nesting under innor or node lock
- *                        Lock order: 1) outer, 2) node, 3) inner
- * @binderfs_entry:       process-specific binderfs log file
- *
- * Bookkeeping structure for binder processes
- */
-struct binder_proc {
-	struct hlist_node proc_node;
-	struct rb_root threads;
-	struct rb_root nodes;
-	struct rb_root refs_by_desc;
-	struct rb_root refs_by_node;
-	struct list_head waiting_threads;
-	int pid;
-	struct task_struct *tsk;
-	struct hlist_node deferred_work_node;
-	int deferred_work;
-	bool is_dead;
-
-	struct list_head todo;
-	struct binder_stats stats;
-	struct list_head delivered_death;
-	int max_threads;
-	int requested_threads;
-	int requested_threads_started;
-	int tmp_ref;
-	long default_priority;
-	struct dentry *debugfs_entry;
-	struct binder_alloc alloc;
-	struct binder_context *context;
-	spinlock_t inner_lock;
-	spinlock_t outer_lock;
-	struct dentry *binderfs_entry;
-};
-
 enum {
 	BINDER_LOOPER_STATE_REGISTERED  = 0x01,
 	BINDER_LOOPER_STATE_ENTERED     = 0x02,
@@ -495,125 +210,6 @@ enum {
 };
 
 /**
- * struct binder_thread - binder thread bookkeeping
- * @proc:                 binder process for this thread
- *                        (invariant after initialization)
- * @rb_node:              element for proc->threads rbtree
- *                        (protected by @proc->inner_lock)
- * @waiting_thread_node:  element for @proc->waiting_threads list
- *                        (protected by @proc->inner_lock)
- * @pid:                  PID for this thread
- *                        (invariant after initialization)
- * @looper:               bitmap of looping state
- *                        (only accessed by this thread)
- * @looper_needs_return:  looping thread needs to exit driver
- *                        (no lock needed)
- * @transaction_stack:    stack of in-progress transactions for this thread
- *                        (protected by @proc->inner_lock)
- * @todo:                 list of work to do for this thread
- *                        (protected by @proc->inner_lock)
- * @process_todo:         whether work in @todo should be processed
- *                        (protected by @proc->inner_lock)
- * @return_error:         transaction errors reported by this thread
- *                        (only accessed by this thread)
- * @reply_error:          transaction errors reported by target thread
- *                        (protected by @proc->inner_lock)
- * @wait:                 wait queue for thread work
- * @stats:                per-thread statistics
- *                        (atomics, no lock needed)
- * @tmp_ref:              temporary reference to indicate thread is in use
- *                        (atomic since @proc->inner_lock cannot
- *                        always be acquired)
- * @is_dead:              thread is dead and awaiting free
- *                        when outstanding transactions are cleaned up
- *                        (protected by @proc->inner_lock)
- *
- * Bookkeeping structure for binder threads.
- */
-struct binder_thread {
-	struct binder_proc *proc;
-	struct rb_node rb_node;
-	struct list_head waiting_thread_node;
-	int pid;
-	int looper;              /* only modified by this thread */
-	bool looper_need_return; /* can be written by other thread */
-	struct binder_transaction *transaction_stack;
-	struct list_head todo;
-	bool process_todo;
-	struct binder_error return_error;
-	struct binder_error reply_error;
-	wait_queue_head_t wait;
-	struct binder_stats stats;
-	atomic_t tmp_ref;
-	bool is_dead;
-};
-
-/**
- * struct binder_txn_fd_fixup - transaction fd fixup list element
- * @fixup_entry:          list entry
- * @file:                 struct file to be associated with new fd
- * @offset:               offset in buffer data to this fixup
- *
- * List element for fd fixups in a transaction. Since file
- * descriptors need to be allocated in the context of the
- * target process, we pass each fd to be processed in this
- * struct.
- */
-struct binder_txn_fd_fixup {
-	struct list_head fixup_entry;
-	struct file *file;
-	size_t offset;
-};
-
-struct binder_transaction {
-	int debug_id;
-	struct binder_work work;
-	struct binder_thread *from;
-	struct binder_transaction *from_parent;
-	struct binder_proc *to_proc;
-	struct binder_thread *to_thread;
-	struct binder_transaction *to_parent;
-	unsigned need_reply:1;
-	/* unsigned is_dead:1; */	/* not used at the moment */
-
-	struct binder_buffer *buffer;
-	unsigned int	code;
-	unsigned int	flags;
-	long	priority;
-	long	saved_priority;
-	kuid_t	sender_euid;
-	struct list_head fd_fixups;
-	binder_uintptr_t security_ctx;
-	/**
-	 * @lock:  protects @from, @to_proc, and @to_thread
-	 *
-	 * @from, @to_proc, and @to_thread can be set to NULL
-	 * during thread teardown
-	 */
-	spinlock_t lock;
-};
-
-/**
- * struct binder_object - union of flat binder object types
- * @hdr:   generic object header
- * @fbo:   binder object (nodes and refs)
- * @fdo:   file descriptor object
- * @bbo:   binder buffer pointer
- * @fdao:  file descriptor array
- *
- * Used for type-independent object copies
- */
-struct binder_object {
-	union {
-		struct binder_object_header hdr;
-		struct flat_binder_object fbo;
-		struct binder_fd_object fdo;
-		struct binder_buffer_object bbo;
-		struct binder_fd_array_object fdao;
-	};
-};
-
-/**
  * binder_proc_lock() - Acquire outer lock for given binder_proc
  * @proc:         struct binder_proc to acquire
  *
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index ae99109..ed61b3e 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -139,6 +139,409 @@ struct binder_transaction_log {
 	struct binder_transaction_log_entry entry[32];
 };
 
+enum binder_stat_types {
+	BINDER_STAT_PROC,
+	BINDER_STAT_THREAD,
+	BINDER_STAT_NODE,
+	BINDER_STAT_REF,
+	BINDER_STAT_DEATH,
+	BINDER_STAT_TRANSACTION,
+	BINDER_STAT_TRANSACTION_COMPLETE,
+	BINDER_STAT_COUNT
+};
+
+struct binder_stats {
+	atomic_t br[_IOC_NR(BR_FAILED_REPLY) + 1];
+	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
+	atomic_t obj_created[BINDER_STAT_COUNT];
+	atomic_t obj_deleted[BINDER_STAT_COUNT];
+};
+
+/**
+ * struct binder_work - work enqueued on a worklist
+ * @entry:             node enqueued on list
+ * @type:              type of work to be performed
+ *
+ * There are separate work lists for proc, thread, and node (async).
+ */
+struct binder_work {
+	struct list_head entry;
+
+	enum {
+		BINDER_WORK_TRANSACTION = 1,
+		BINDER_WORK_TRANSACTION_COMPLETE,
+		BINDER_WORK_RETURN_ERROR,
+		BINDER_WORK_NODE,
+		BINDER_WORK_DEAD_BINDER,
+		BINDER_WORK_DEAD_BINDER_AND_CLEAR,
+		BINDER_WORK_CLEAR_DEATH_NOTIFICATION,
+	} type;
+};
+
+struct binder_error {
+	struct binder_work work;
+	uint32_t cmd;
+};
+
+/* struct binder_node - binder node bookkeeping
+ * @debug_id:             unique ID for debugging
+ *                        (invariant after initialized)
+ * @lock:                 lock for node fields
+ * @work:                 worklist element for node work
+ *                        (protected by @proc->inner_lock)
+ * @rb_node:              element for proc->nodes tree
+ *                        (protected by @proc->inner_lock)
+ * @dead_node:            element for binder_dead_nodes list
+ *                        (protected by binder_dead_nodes_lock)
+ * @proc:                 binder_proc that owns this node
+ *                        (invariant after initialized)
+ * @refs:                 list of references on this node
+ *                        (protected by @lock)
+ * @internal_strong_refs: used to take strong references when
+ *                        initiating a transaction
+ *                        (protected by @proc->inner_lock if @proc
+ *                        and by @lock)
+ * @local_weak_refs:      weak user refs from local process
+ *                        (protected by @proc->inner_lock if @proc
+ *                        and by @lock)
+ * @local_strong_refs:    strong user refs from local process
+ *                        (protected by @proc->inner_lock if @proc
+ *                        and by @lock)
+ * @tmp_refs:             temporary kernel refs
+ *                        (protected by @proc->inner_lock while @proc
+ *                        is valid, and by binder_dead_nodes_lock
+ *                        if @proc is NULL. During inc/dec and node release
+ *                        it is also protected by @lock to provide safety
+ *                        as the node dies and @proc becomes NULL)
+ * @ptr:                  userspace pointer for node
+ *                        (invariant, no lock needed)
+ * @cookie:               userspace cookie for node
+ *                        (invariant, no lock needed)
+ * @has_strong_ref:       userspace notified of strong ref
+ *                        (protected by @proc->inner_lock if @proc
+ *                        and by @lock)
+ * @pending_strong_ref:   userspace has acked notification of strong ref
+ *                        (protected by @proc->inner_lock if @proc
+ *                        and by @lock)
+ * @has_weak_ref:         userspace notified of weak ref
+ *                        (protected by @proc->inner_lock if @proc
+ *                        and by @lock)
+ * @pending_weak_ref:     userspace has acked notification of weak ref
+ *                        (protected by @proc->inner_lock if @proc
+ *                        and by @lock)
+ * @has_async_transaction: async transaction to node in progress
+ *                        (protected by @lock)
+ * @accept_fds:           file descriptor operations supported for node
+ *                        (invariant after initialized)
+ * @min_priority:         minimum scheduling priority
+ *                        (invariant after initialized)
+ * @txn_security_ctx:     require sender's security context
+ *                        (invariant after initialized)
+ * @async_todo:           list of async work items
+ *                        (protected by @proc->inner_lock)
+ *
+ * Bookkeeping structure for binder nodes.
+ */
+struct binder_node {
+	int debug_id;
+	spinlock_t lock;
+	struct binder_work work;
+	union {
+		struct rb_node rb_node;
+		struct hlist_node dead_node;
+	};
+	struct binder_proc *proc;
+	struct hlist_head refs;
+	int internal_strong_refs;
+	int local_weak_refs;
+	int local_strong_refs;
+	int tmp_refs;
+	binder_uintptr_t ptr;
+	binder_uintptr_t cookie;
+	struct {
+		/*
+		 * bitfield elements protected by
+		 * proc inner_lock
+		 */
+		u8 has_strong_ref:1;
+		u8 pending_strong_ref:1;
+		u8 has_weak_ref:1;
+		u8 pending_weak_ref:1;
+	};
+	struct {
+		/*
+		 * invariant after initialization
+		 */
+		u8 accept_fds:1;
+		u8 txn_security_ctx:1;
+		u8 min_priority;
+	};
+	bool has_async_transaction;
+	struct list_head async_todo;
+};
+
+struct binder_ref_death {
+	/**
+	 * @work: worklist element for death notifications
+	 *        (protected by inner_lock of the proc that
+	 *        this ref belongs to)
+	 */
+	struct binder_work work;
+	binder_uintptr_t cookie;
+};
+
+/**
+ * struct binder_ref_data - binder_ref counts and id
+ * @debug_id:        unique ID for the ref
+ * @desc:            unique userspace handle for ref
+ * @strong:          strong ref count (debugging only if not locked)
+ * @weak:            weak ref count (debugging only if not locked)
+ *
+ * Structure to hold ref count and ref id information. Since
+ * the actual ref can only be accessed with a lock, this structure
+ * is used to return information about the ref to callers of
+ * ref inc/dec functions.
+ */
+struct binder_ref_data {
+	int debug_id;
+	uint32_t desc;
+	int strong;
+	int weak;
+};
+
+/**
+ * struct binder_ref - struct to track references on nodes
+ * @data:        binder_ref_data containing id, handle, and current refcounts
+ * @rb_node_desc: node for lookup by @data.desc in proc's rb_tree
+ * @rb_node_node: node for lookup by @node in proc's rb_tree
+ * @node_entry:  list entry for node->refs list in target node
+ *               (protected by @node->lock)
+ * @proc:        binder_proc containing ref
+ * @node:        binder_node of target node. When cleaning up a
+ *               ref for deletion in binder_cleanup_ref, a non-NULL
+ *               @node indicates the node must be freed
+ * @death:       pointer to death notification (ref_death) if requested
+ *               (protected by @node->lock)
+ *
+ * Structure to track references from procA to target node (on procB). This
+ * structure is unsafe to access without holding @proc->outer_lock.
+ */
+struct binder_ref {
+	/* Lookups needed: */
+	/*   node + proc => ref (transaction) */
+	/*   desc + proc => ref (transaction, inc/dec ref) */
+	/*   node => refs + procs (proc exit) */
+	struct binder_ref_data data;
+	struct rb_node rb_node_desc;
+	struct rb_node rb_node_node;
+	struct hlist_node node_entry;
+	struct binder_proc *proc;
+	struct binder_node *node;
+	struct binder_ref_death *death;
+};
+
+/**
+ * struct binder_proc - binder process bookkeeping
+ * @proc_node:            element for binder_procs list
+ * @threads:              rbtree of binder_threads in this proc
+ *                        (protected by @inner_lock)
+ * @nodes:                rbtree of binder nodes associated with
+ *                        this proc ordered by node->ptr
+ *                        (protected by @inner_lock)
+ * @refs_by_desc:         rbtree of refs ordered by ref->desc
+ *                        (protected by @outer_lock)
+ * @refs_by_node:         rbtree of refs ordered by ref->node
+ *                        (protected by @outer_lock)
+ * @waiting_threads:      threads currently waiting for proc work
+ *                        (protected by @inner_lock)
+ * @pid                   PID of group_leader of process
+ *                        (invariant after initialized)
+ * @tsk                   task_struct for group_leader of process
+ *                        (invariant after initialized)
+ * @deferred_work_node:   element for binder_deferred_list
+ *                        (protected by binder_deferred_lock)
+ * @deferred_work:        bitmap of deferred work to perform
+ *                        (protected by binder_deferred_lock)
+ * @is_dead:              process is dead and awaiting free
+ *                        when outstanding transactions are cleaned up
+ *                        (protected by @inner_lock)
+ * @todo:                 list of work for this process
+ *                        (protected by @inner_lock)
+ * @stats:                per-process binder statistics
+ *                        (atomics, no lock needed)
+ * @delivered_death:      list of delivered death notification
+ *                        (protected by @inner_lock)
+ * @max_threads:          cap on number of binder threads
+ *                        (protected by @inner_lock)
+ * @requested_threads:    number of binder threads requested but not
+ *                        yet started. In current implementation, can
+ *                        only be 0 or 1.
+ *                        (protected by @inner_lock)
+ * @requested_threads_started: number binder threads started
+ *                        (protected by @inner_lock)
+ * @tmp_ref:              temporary reference to indicate proc is in use
+ *                        (protected by @inner_lock)
+ * @default_priority:     default scheduler priority
+ *                        (invariant after initialized)
+ * @debugfs_entry:        debugfs node
+ * @alloc:                binder allocator bookkeeping
+ * @context:              binder_context for this proc
+ *                        (invariant after initialized)
+ * @inner_lock:           can nest under outer_lock and/or node lock
+ * @outer_lock:           no nesting under innor or node lock
+ *                        Lock order: 1) outer, 2) node, 3) inner
+ * @binderfs_entry:       process-specific binderfs log file
+ *
+ * Bookkeeping structure for binder processes
+ */
+struct binder_proc {
+	struct hlist_node proc_node;
+	struct rb_root threads;
+	struct rb_root nodes;
+	struct rb_root refs_by_desc;
+	struct rb_root refs_by_node;
+	struct list_head waiting_threads;
+	int pid;
+	struct task_struct *tsk;
+	struct hlist_node deferred_work_node;
+	int deferred_work;
+	bool is_dead;
+
+	struct list_head todo;
+	struct binder_stats stats;
+	struct list_head delivered_death;
+	int max_threads;
+	int requested_threads;
+	int requested_threads_started;
+	int tmp_ref;
+	long default_priority;
+	struct dentry *debugfs_entry;
+	struct binder_alloc alloc;
+	struct binder_context *context;
+	spinlock_t inner_lock;
+	spinlock_t outer_lock;
+	struct dentry *binderfs_entry;
+};
+
+/**
+ * struct binder_thread - binder thread bookkeeping
+ * @proc:                 binder process for this thread
+ *                        (invariant after initialization)
+ * @rb_node:              element for proc->threads rbtree
+ *                        (protected by @proc->inner_lock)
+ * @waiting_thread_node:  element for @proc->waiting_threads list
+ *                        (protected by @proc->inner_lock)
+ * @pid:                  PID for this thread
+ *                        (invariant after initialization)
+ * @looper:               bitmap of looping state
+ *                        (only accessed by this thread)
+ * @looper_needs_return:  looping thread needs to exit driver
+ *                        (no lock needed)
+ * @transaction_stack:    stack of in-progress transactions for this thread
+ *                        (protected by @proc->inner_lock)
+ * @todo:                 list of work to do for this thread
+ *                        (protected by @proc->inner_lock)
+ * @process_todo:         whether work in @todo should be processed
+ *                        (protected by @proc->inner_lock)
+ * @return_error:         transaction errors reported by this thread
+ *                        (only accessed by this thread)
+ * @reply_error:          transaction errors reported by target thread
+ *                        (protected by @proc->inner_lock)
+ * @wait:                 wait queue for thread work
+ * @stats:                per-thread statistics
+ *                        (atomics, no lock needed)
+ * @tmp_ref:              temporary reference to indicate thread is in use
+ *                        (atomic since @proc->inner_lock cannot
+ *                        always be acquired)
+ * @is_dead:              thread is dead and awaiting free
+ *                        when outstanding transactions are cleaned up
+ *                        (protected by @proc->inner_lock)
+ *
+ * Bookkeeping structure for binder threads.
+ */
+struct binder_thread {
+	struct binder_proc *proc;
+	struct rb_node rb_node;
+	struct list_head waiting_thread_node;
+	int pid;
+	int looper;              /* only modified by this thread */
+	bool looper_need_return; /* can be written by other thread */
+	struct binder_transaction *transaction_stack;
+	struct list_head todo;
+	bool process_todo;
+	struct binder_error return_error;
+	struct binder_error reply_error;
+	wait_queue_head_t wait;
+	struct binder_stats stats;
+	atomic_t tmp_ref;
+	bool is_dead;
+};
+
+/**
+ * struct binder_txn_fd_fixup - transaction fd fixup list element
+ * @fixup_entry:          list entry
+ * @file:                 struct file to be associated with new fd
+ * @offset:               offset in buffer data to this fixup
+ *
+ * List element for fd fixups in a transaction. Since file
+ * descriptors need to be allocated in the context of the
+ * target process, we pass each fd to be processed in this
+ * struct.
+ */
+struct binder_txn_fd_fixup {
+	struct list_head fixup_entry;
+	struct file *file;
+	size_t offset;
+};
+
+struct binder_transaction {
+	int debug_id;
+	struct binder_work work;
+	struct binder_thread *from;
+	struct binder_transaction *from_parent;
+	struct binder_proc *to_proc;
+	struct binder_thread *to_thread;
+	struct binder_transaction *to_parent;
+	unsigned need_reply:1;
+	/* unsigned is_dead:1; */       /* not used at the moment */
+
+	struct binder_buffer *buffer;
+	unsigned int    code;
+	unsigned int    flags;
+	long    priority;
+	long    saved_priority;
+	kuid_t  sender_euid;
+	struct list_head fd_fixups;
+	binder_uintptr_t security_ctx;
+	/**
+	 * @lock:  protects @from, @to_proc, and @to_thread
+	 *
+	 * @from, @to_proc, and @to_thread can be set to NULL
+	 * during thread teardown
+	 */
+	spinlock_t lock;
+};
+
+/**
+ * struct binder_object - union of flat binder object types
+ * @hdr:   generic object header
+ * @fbo:   binder object (nodes and refs)
+ * @fdo:   file descriptor object
+ * @bbo:   binder buffer pointer
+ * @fdao:  file descriptor array
+ *
+ * Used for type-independent object copies
+ */
+struct binder_object {
+	union {
+		struct binder_object_header hdr;
+		struct flat_binder_object fbo;
+		struct binder_fd_object fdo;
+		struct binder_buffer_object bbo;
+		struct binder_fd_array_object fdao;
+	};
+};
+
 extern struct binder_transaction_log binder_transaction_log;
 extern struct binder_transaction_log binder_transaction_log_failed;
 #endif /* _LINUX_BINDER_INTERNAL_H */
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
