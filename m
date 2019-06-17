Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23D74AD1C
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 23:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:
	References:In-Reply-To:Message-ID:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjFJ3rQLy0Yeew2gfoOk5ArVz7LvgRS80Ho9BOwdcy4=; b=GuhipE58Ege5/b
	S/L8SBSPRRRQ5yGvJC4OBD6iFwJJ4PXS7qDnauotcTmIE6IW/ZOfIGvCq+R2aPXk2AbvhmVObmFfG
	K5e27eU8qkYPiSpkxb00JRsqQ53yTBYvnplFxddWlTS8wTQ/u7qQDUBwovX7zZaOcMDZdMp9Q10x+
	/w8pLbc49zVBHXxvpGWl+hk2Y/CyulHPJ9rwQQaymYTNZIy2TZaVoWcsGaKZ5JAL/IG+DC/xA/iz/
	XVge/Nmk9BXblVaBDpnuWhy+ZlACivKYAf++eTNnybyU5J+t3NifS0Wbmk90mI84XQXeC4V7bT9tT
	ztEJjzSMGlWc9khj5wLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLQd-0004jJ-Q6; Tue, 18 Jun 2019 21:14:07 +0000
Received: from terminus.zytor.com ([198.137.202.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsSe-0005pJ-Tl
 for linux-mediatek@lists.infradead.org; Mon, 17 Jun 2019 14:18:18 +0000
Received: from terminus.zytor.com (localhost [127.0.0.1])
 by terminus.zytor.com (8.15.2/8.15.2) with ESMTPS id x5HEI0mV3452655
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 17 Jun 2019 07:18:00 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 terminus.zytor.com x5HEI0mV3452655
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
 s=2019051801; t=1560781081;
 bh=QvsIwv5WIf+fcrELoHYf3/XxiI/T/+7WhknAQJefcpA=;
 h=Date:From:Cc:Reply-To:In-Reply-To:References:To:Subject:From;
 b=aoMimue4QS255/49S8jKwNJ6HkiHmK8XmmopUCnbCmM+RvIgclS7dSMgFtzjAr2FM
 2RSPuDhoDnmyTJpr3AiqHc4rjnyMDQE0PX1iFtkwMcBa1UvxO2JGTfeMWjKO1k1+Vr
 qHSxqL8Y+sPQ6Eic8f+h5dj8H5risLAmba14gkl/XqN6rcXpycgkpItwqAeIIiPzq0
 EU4EEfb7kecAKrqPEH5VF13UUfpuph14DD/txFIkWdO47edHQiOb9URoMDn4c0BOQi
 tvZKPoDRSejXD472LZ5tMaweqiacuOijyzeNBsutNX65fSqJznYomzxSoRdo0R6GG8
 nQNZ5uff7VXxQ==
Received: (from tipbot@localhost)
 by terminus.zytor.com (8.15.2/8.15.2/Submit) id x5HEI08Z3452652;
 Mon, 17 Jun 2019 07:18:00 -0700
Date: Mon, 17 Jun 2019 07:18:00 -0700
X-Authentication-Warning: terminus.zytor.com: tipbot set sender to
 tipbot@zytor.com using -f
From: tip-bot for Kobe Wu <tipbot@zytor.com>
Message-ID: <tip-dd471efe345bf6f9e1206f6c629ca3e80eb43523@git.kernel.org>
In-Reply-To: <1559217575-30298-1-git-send-email-kobe-cp.wu@mediatek.com>
References: <1559217575-30298-1-git-send-email-kobe-cp.wu@mediatek.com>
To: linux-tip-commits@vger.kernel.org
Subject: [tip:locking/core] locking/lockdep: Remove unnecessary
 DEBUG_LOCKS_WARN_ON()
Git-Commit-ID: dd471efe345bf6f9e1206f6c629ca3e80eb43523
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot.git.kernel.org>
Robot-Unsubscribe: Contact <mailto:hpa@kernel.org> to get blacklisted from
 these emails
MIME-Version: 1.0
Content-Disposition: inline
Precedence: bulk
X-Spam-Status: No, score=-1.2 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DATE_IN_FUTURE_06_12,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,
 DKIM_VALID_EF autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on terminus.zytor.com
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_071816_965994_AEA7E0A4 
X-CRM114-Status: UNSURE (   8.63  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Mailman-Approved-At: Tue, 18 Jun 2019 14:14:05 -0700
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
Reply-To: peterz@infradead.org, linux-mediatek@lists.infradead.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, eason-yh.lin@mediatek.com,
 kobe-cp.wu@mediatek.com, wsd_upstream@mediatek.com, tglx@linutronix.de,
 hpa@zytor.com, torvalds@linux-foundation.org, mingo@kernel.org
Cc: eason-yh.lin@mediatek.com, wsd_upstream@mediatek.com, peterz@infradead.org,
 hpa@zytor.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, kobe-cp.wu@mediatek.com,
 tglx@linutronix.de, torvalds@linux-foundation.org, mingo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Commit-ID:  dd471efe345bf6f9e1206f6c629ca3e80eb43523
Gitweb:     https://git.kernel.org/tip/dd471efe345bf6f9e1206f6c629ca3e80eb43523
Author:     Kobe Wu <kobe-cp.wu@mediatek.com>
AuthorDate: Thu, 30 May 2019 19:59:35 +0800
Committer:  Ingo Molnar <mingo@kernel.org>
CommitDate: Mon, 17 Jun 2019 12:09:37 +0200

locking/lockdep: Remove unnecessary DEBUG_LOCKS_WARN_ON()

DEBUG_LOCKS_WARN_ON() will turn off debug_locks and
makes print_unlock_imbalance_bug() return directly.

Remove a redundant whitespace.

Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Cc: <linux-mediatek@lists.infradead.org>
Cc: <wsd_upstream@mediatek.com>
Cc: Eason Lin <eason-yh.lin@mediatek.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Will Deacon <will.deacon@arm.com>
Link: https://lkml.kernel.org/r/1559217575-30298-1-git-send-email-kobe-cp.wu@mediatek.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
---
 kernel/locking/lockdep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index 48a840adb281..5e368f485330 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -4160,7 +4160,7 @@ __lock_release(struct lockdep_map *lock, unsigned long ip)
 	 * So we're all set to release this lock.. wait what lock? We don't
 	 * own any locks, you've been drinking again?
 	 */
-	if (DEBUG_LOCKS_WARN_ON(depth <= 0)) {
+	if (depth <= 0) {
 		print_unlock_imbalance_bug(curr, lock, ip);
 		return 0;
 	}

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
