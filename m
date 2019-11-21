Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D841104DEF
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 Nov 2019 09:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CPUjq0JC2nAm1lev9d4cXJNXLBamVRxsR4mQ6sEoc9A=; b=FFQjXb9l5KNuVJ
	Hehir2G69ZqET/WessKtvbaoYEG/QxvoNe++LtU9K8/X9OpdFq7psTzYYvRARfMsrmWfwuZ93MON+
	ta8xnsXGPBBGUXRhR0bNkAp+NVEVTzss14dfjk2vyBxHWsp6wlsX+CNRdbCzAm8A8XGohutl9aGNG
	bm0aCpd69BCvM5/mX2w2ipFYTyBajcvzg3DGLNfWKNwplH5uzQPg9vIaWB1e2391EP/+Gv15KlVoL
	9MtXJh95oftyUeY2vVI9O3jX4mHOJODD7pKDM5qHK42GHcAUS+RZVtQxCqhLW/jE2wPhUr5Lto1sX
	E3qtjOlQL7n0+kVm8iUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhr9-00029J-5M; Thu, 21 Nov 2019 08:30:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhr6-00028Q-OV; Thu, 21 Nov 2019 08:30:26 +0000
X-UUID: bb0a1d9a487949e9a1c1342ae8acb302-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0Ckld6EwBzz2+Vv2aLPvbwitkSnSY2s1D7AUbqn0zrg=; 
 b=i1ke+CB4hO9trYn+KlvsKyGptMnYEreF+L2kHRi5BQEeT1Jup1ewWq5B7VLn4GDFN4M3mtDPEFCIhSSkUU52hnR3i/ryJZFxUbV1ek9WYv8Io771D6k9E0iBNZj5GQaSesQuNxn6cuN2/M9pFLbvE1z12ISXPdizbcqbbxjDjzg=;
X-UUID: bb0a1d9a487949e9a1c1342ae8acb302-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yt.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1153496331; Thu, 21 Nov 2019 00:30:12 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 00:30:16 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 16:30:04 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 16:30:14 +0800
From: YT Chang <yt.chang@mediatek.com>
To: YT Chang <yt.chang@mediatek.com>, Peter Zijlstra <peterz@infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/1] sched: cfs_rq h_load might not update due to irq disable
Date: Thu, 21 Nov 2019 16:30:09 +0800
Message-ID: <1574325009-10846-1-git-send-email-yt.chang@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_003024_810147_15B1A112 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Syndrome:

Two CPUs might do idle balance in the same time.
One CPU does idle balance and pulls some tasks.
However before pick next task, ALL task are pulled back to other CPU.
That results in infinite loop in both CPUs.

=========================================
code flow:

in pick_next_task_fair()

again:

if nr_running == 0
	goto idle
pick next task
	return

idle:
	idle_balance
       /* pull some tasks from other CPU,
        * However other CPU are also do idle balance,
	* and pull back these task */

	go to again

=========================================
The result to pull ALL tasks back when the task_h_load
is incorrect and too low.

static unsigned long task_h_load(struct task_struct *p)
{
        struct cfs_rq *cfs_rq = task_cfs_rq(p);

	update_cfs_rq_h_load(cfs_rq);
	return div64_ul(p->se.avg.load_avg_contrib * cfs_rq->h_load,
			cfs_rq->runnable_load_avg + 1);
}

The cfs_rq->h_load is incorrect and might too small.
The original idea of cfs_rq::last_h_load_update will not
update cfs_rq::h_load more than once a jiffies.
When the Two CPUs pull each other in the pick_next_task_fair,
the irq disabled and result in jiffie not update.
(Other CPUs wait for runqueue lock locked by the two CPUs.
So, ALL CPUs are irq disabled.)

Solution:
cfs_rq h_load might not update due to irq disable
use sched_clock instead jiffies

Signed-off-by: YT Chang <yt.chang@mediatek.com>
---
 kernel/sched/fair.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 83ab35e..231c53f 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -7578,9 +7578,11 @@ static void update_cfs_rq_h_load(struct cfs_rq *cfs_rq)
 {
 	struct rq *rq = rq_of(cfs_rq);
 	struct sched_entity *se = cfs_rq->tg->se[cpu_of(rq)];
-	unsigned long now = jiffies;
+	u64 now = sched_clock_cpu(cpu_of(rq));
 	unsigned long load;
 
+	now = now * HZ >> 30;
+
 	if (cfs_rq->last_h_load_update == now)
 		return;
 
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
