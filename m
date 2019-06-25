Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC31F9EFC8
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 18:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:
	References:In-Reply-To:Message-ID:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLtm6zsZc1LVt7ATF+Op5bvcQjJnfOwSvTrjZK2vc0I=; b=iPqg+b2HOxngxL
	NWJ7ukWqKTPVsVbsLgJGjD+Sv2FjSBeidAH23ti8tqWlP4KJ1LwOCqjrqZBZsCYOqJNTmoKWw2RIn
	2435bO34q4fOELpN4tML1K7oQ3daVU435XS5GTrh8AsKlSt+62UfxwoUKmQ6fKDAdypZdgXmSbI49
	u6TuCfRoyVUOg3U85fOr1NHrwZ/QFGyo2Tn87XOlcssMC7KkDJQBrNe16E9Jxl5dRlWI+mJXQqmpM
	YFB6zGnZ3v8DLQ58mpGh1qjf80qho7hEtTgj57VjFHORhAuDRxV/BTuLqQFHoJkKgs6PI5PAXTaUP
	v8utGdFm+PU95Y6QV6ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2e2j-0002gc-1M; Tue, 27 Aug 2019 16:10:01 +0000
Received: from terminus.zytor.com ([198.137.202.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfh7H-0005H2-QB
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 08:47:54 +0000
Received: from terminus.zytor.com (localhost [127.0.0.1])
 by terminus.zytor.com (8.15.2/8.15.2) with ESMTPS id x5P8lZV63536042
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 25 Jun 2019 01:47:35 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 terminus.zytor.com x5P8lZV63536042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
 s=2019061801; t=1561452456;
 bh=ryX8v7tj7G7wPWNZ8zfZ0V7lLgGrMj2/mk3YLXLmFqo=;
 h=Date:From:Cc:Reply-To:In-Reply-To:References:To:Subject:From;
 b=iRe6+A1zvkV7CTyV1VLkPAdiozK1z1Qh2jVGN6riSJ02W8p8wo+PvIF4NMyJIAVR3
 WtulJVYExqt0z7qS78hV1RrmsCrJ2SrBeLYYzZMkBM2PIA17O4WBE/EV5sSNu1lgzt
 y7f4qVhuv1i4jAiim+oO5SXbBo00mBT1YKiLojBAh0XfAomPAahtqEMaogDyUM20Y9
 1HlzgU89AzW+xF7yFBp1/820KbypDdPlBaxbSdJMdCQrYSaUImI0mSgbFqlvyH4tti
 KUt40cBZbemgcevBacQuYuzhCH1QdxazJ7xb8lldHkt661WfOpfmdpVfJ/FLsNd15v
 RJoOkf0130jLQ==
Received: (from tipbot@localhost)
 by terminus.zytor.com (8.15.2/8.15.2/Submit) id x5P8lYtu3536038;
 Tue, 25 Jun 2019 01:47:34 -0700
Date: Tue, 25 Jun 2019 01:47:34 -0700
X-Authentication-Warning: terminus.zytor.com: tipbot set sender to
 tipbot@zytor.com using -f
From: tip-bot for Kobe Wu <tipbot@zytor.com>
Message-ID: <tip-9156e545765e467e6268c4814cfa609ebb16237e@git.kernel.org>
In-Reply-To: <1561365348-16050-1-git-send-email-kobe-cp.wu@mediatek.com>
References: <1561365348-16050-1-git-send-email-kobe-cp.wu@mediatek.com>
To: linux-tip-commits@vger.kernel.org
Subject: [tip:locking/core] locking/lockdep: increase size of counters for
 lockdep statistics
Git-Commit-ID: 9156e545765e467e6268c4814cfa609ebb16237e
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot.git.kernel.org>
Robot-Unsubscribe: Contact <mailto:hpa@kernel.org> to get blacklisted from
 these emails
MIME-Version: 1.0
Content-Disposition: inline
Precedence: bulk
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on terminus.zytor.com
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_014751_856424_F752A0F2 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.137.202.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Mailman-Approved-At: Tue, 27 Aug 2019 09:09:59 -0700
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Reply-To: will.deacon@arm.com, wsd_upstream@mediatek.com,
 eason-yh.lin@mediatek.com, linux-mediatek@lists.infradead.org,
 torvalds@linux-foundation.org, tglx@linutronix.de, mingo@kernel.org,
 peterz@infradead.org, linux-kernel@vger.kernel.org, hpa@zytor.com,
 kobe-cp.wu@mediatek.com
Cc: eason-yh.lin@mediatek.com, wsd_upstream@mediatek.com, peterz@infradead.org,
 kobe-cp.wu@mediatek.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, hpa@zytor.com, tglx@linutronix.de,
 torvalds@linux-foundation.org, mingo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Commit-ID:  9156e545765e467e6268c4814cfa609ebb16237e
Gitweb:     https://git.kernel.org/tip/9156e545765e467e6268c4814cfa609ebb16237e
Author:     Kobe Wu <kobe-cp.wu@mediatek.com>
AuthorDate: Mon, 24 Jun 2019 16:35:48 +0800
Committer:  Ingo Molnar <mingo@kernel.org>
CommitDate: Tue, 25 Jun 2019 10:17:08 +0200

locking/lockdep: increase size of counters for lockdep statistics

When system has been running for a long time, signed integer
counters are not enough for some lockdep statistics. Using
unsigned long counters can satisfy the requirement. Besides,
most of lockdep statistics are unsigned. It is better to use
unsigned int instead of int.

Remove unused variables.
- max_recursion_depth
- nr_cyclic_check_recursions
- nr_find_usage_forwards_recursions
- nr_find_usage_backwards_recursions

Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Cc: <linux-mediatek@lists.infradead.org>
Cc: <wsd_upstream@mediatek.com>
Cc: Eason Lin <eason-yh.lin@mediatek.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Will Deacon <will.deacon@arm.com>
Link: https://lkml.kernel.org/r/1561365348-16050-1-git-send-email-kobe-cp.wu@mediatek.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
---
 kernel/locking/lockdep_internals.h | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/kernel/locking/lockdep_internals.h b/kernel/locking/lockdep_internals.h
index 150ec3f0c5b5..cc83568d5012 100644
--- a/kernel/locking/lockdep_internals.h
+++ b/kernel/locking/lockdep_internals.h
@@ -131,7 +131,6 @@ extern unsigned int nr_hardirq_chains;
 extern unsigned int nr_softirq_chains;
 extern unsigned int nr_process_chains;
 extern unsigned int max_lockdep_depth;
-extern unsigned int max_recursion_depth;
 
 extern unsigned int max_bfs_queue_depth;
 
@@ -160,25 +159,22 @@ lockdep_count_backward_deps(struct lock_class *class)
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

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
