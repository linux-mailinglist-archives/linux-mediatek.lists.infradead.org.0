Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A600A1E3E79
	for <lists+linux-mediatek@lfdr.de>; Wed, 27 May 2020 12:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=79MJ2nM2JIZYWcz7y3iPpZGpBY29NeSnTt5nW4FuBZk=; b=N1Bblr+9G9pe4D/ZQx+F0B2i48
	TE3mwAHSAuctzalUCZ+D+skT35mwe4qqs0lxugLj5mypG7xxuehl+8BXVZ1L4R8EE5HpWP+cQYpl5
	FLoxqRmQhmyjhthKGTw3BXRlQHaXdwr6aRjGUjHXk5BBWuK1vBTCb7eV/qK/YhL+VT9u/GZZpWjZD
	mD0feA5yUoAx67qjXVZoZaU+s5vY2ucf1Ub9i2AbtG7kOGVgJ6KMCO/DRHtc2XrZRzErWDEKkwdg3
	xDtxFf+GHywmqt49XHEuOw/QVTIsAFlouFyZG+Fxh9tQ6ZEuBClAHS+8oTRJCRxd17gOlHqQXja6C
	kWnHL6/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdstu-0007wI-0s; Wed, 27 May 2020 10:03:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdssD-0006Pu-Ix; Wed, 27 May 2020 10:01:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 783D255D;
 Wed, 27 May 2020 03:01:20 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3AF573F6C4;
 Wed, 27 May 2020 03:01:09 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v8 6/8] PM / EM: change name of em_pd_energy to em_cpu_energy
Date: Wed, 27 May 2020 10:58:52 +0100
Message-Id: <20200527095854.21714-7-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200527095854.21714-1-lukasz.luba@arm.com>
References: <20200527095854.21714-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_030121_808552_07111413 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, mka@chromium.org, robh@kernel.org,
 amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 vincent.guittot@linaro.org, khilman@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, orjan.eide@arm.com,
 daniel@ffwll.ch, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 rostedt@goodmis.org, matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com,
 airlied@linux.ie, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, rdunlap@infradead.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Energy Model framework now supports other devices than CPUs. Refactor some
of the functions in order to prevent wrong usage. The old function
em_pd_energy has to generic name. It must not be used without proper
cpumask pointer, which is possible only for CPU devices. Thus, rename it
and add proper description to warn of potential wrong usage for other
devices.

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Acked-by: Quentin Perret <qperret@google.com>
Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 include/linux/energy_model.h | 11 ++++++++---
 kernel/sched/fair.c          |  2 +-
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/include/linux/energy_model.h b/include/linux/energy_model.h
index 3aaa0bc43429..a0aff705b535 100644
--- a/include/linux/energy_model.h
+++ b/include/linux/energy_model.h
@@ -83,15 +83,20 @@ int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
 void em_dev_unregister_perf_domain(struct device *dev);
 
 /**
- * em_pd_energy() - Estimates the energy consumed by the CPUs of a perf. domain
+ * em_cpu_energy() - Estimates the energy consumed by the CPUs of a
+		performance domain
  * @pd		: performance domain for which energy has to be estimated
  * @max_util	: highest utilization among CPUs of the domain
  * @sum_util	: sum of the utilization of all CPUs in the domain
  *
+ * This function must be used only for CPU devices. There is no validation,
+ * i.e. if the EM is a CPU type and has cpumask allocated. It is called from
+ * the scheduler code quite frequently and that is why there is not checks.
+ *
  * Return: the sum of the energy consumed by the CPUs of the domain assuming
  * a capacity state satisfying the max utilization of the domain.
  */
-static inline unsigned long em_pd_energy(struct em_perf_domain *pd,
+static inline unsigned long em_cpu_energy(struct em_perf_domain *pd,
 				unsigned long max_util, unsigned long sum_util)
 {
 	unsigned long freq, scale_cpu;
@@ -196,7 +201,7 @@ static inline struct em_perf_domain *em_pd_get(struct device *dev)
 {
 	return NULL;
 }
-static inline unsigned long em_pd_energy(struct em_perf_domain *pd,
+static inline unsigned long em_cpu_energy(struct em_perf_domain *pd,
 			unsigned long max_util, unsigned long sum_util)
 {
 	return 0;
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 538ba5d94e99..c28f1de43f5e 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -6489,7 +6489,7 @@ compute_energy(struct task_struct *p, int dst_cpu, struct perf_domain *pd)
 		max_util = max(max_util, cpu_util);
 	}
 
-	return em_pd_energy(pd->em_pd, max_util, sum_util);
+	return em_cpu_energy(pd->em_pd, max_util, sum_util);
 }
 
 /*
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
