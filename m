Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B871A43D8
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 10:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yj5IB0tX2fdmGexwjp3r2lYmmKF75FkgMcGH/+IW9F8=; b=Q/IRn3ZE8cMnzfLPMl4ayGXcbn
	a7oCR5gfy6atN0xgxyE3pPDygl8gob87PAIM4u/5WOZfjA0mTbQNJFLo0S0Ss66QuqRejVF4azgtG
	NXfWexBM6TDcxGOiFh4oTektmHuI2W68gjDiXayswUiZt68T2QbJC7ZePIXViRcTG+y0Zh3duZ5fS
	K0fpsOZ/YdkJmJyROgSr7b5XKCYVOwL1/f+Ibk9d/AOtybXf8ZKXRquk0TviAlopj9emKBFg3LRpi
	13A03NInIQUAYSkmnmD+UFy/ZrOESaza+cpPm3gv7cZbHTmTHB95l+qqodulmAxfJW5aTyJ4uenCX
	grC/jY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpHJ-0005zt-6X; Fri, 10 Apr 2020 08:44:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpFx-0004ua-RS; Fri, 10 Apr 2020 08:43:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF19F31B;
 Fri, 10 Apr 2020 01:43:20 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.30])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1D9AA3F68F;
 Fri, 10 Apr 2020 01:43:10 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v6 05/10] PM / EM: remove em_register_perf_domain
Date: Fri, 10 Apr 2020 09:42:05 +0100
Message-Id: <20200410084210.24932-6-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410084210.24932-1-lukasz.luba@arm.com>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_014321_983627_FC5E4AA0 
X-CRM114-Status: GOOD (  10.64  )
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

Remove old function em_register_perf_domain which is no longer needed.
There is em_dev_register_perf_domain that covers old use cases and new as
well.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 include/linux/energy_model.h |  7 -------
 kernel/power/energy_model.c  | 25 -------------------------
 2 files changed, 32 deletions(-)

diff --git a/include/linux/energy_model.h b/include/linux/energy_model.h
index f6b8077cc875..73c43e4c8a3b 100644
--- a/include/linux/energy_model.h
+++ b/include/linux/energy_model.h
@@ -78,8 +78,6 @@ struct em_data_callback {
 struct em_perf_domain *em_cpu_get(int cpu);
 struct em_perf_domain *em_pd_get(struct device *dev);
 void em_pd_put(struct device *dev);
-int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
-						struct em_data_callback *cb);
 int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
 				struct em_data_callback *cb, cpumask_t *span);
 void em_dev_unregister_perf_domain(struct device *dev);
@@ -181,11 +179,6 @@ static inline int em_pd_nr_perf_states(struct em_perf_domain *pd)
 struct em_data_callback {};
 #define EM_DATA_CB(_active_power_cb) { }
 
-static inline int em_register_perf_domain(cpumask_t *span,
-			unsigned int nr_states, struct em_data_callback *cb)
-{
-	return -EINVAL;
-}
 static inline
 int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
 				struct em_data_callback *cb, cpumask_t *span)
diff --git a/kernel/power/energy_model.c b/kernel/power/energy_model.c
index 5967a21b56fc..506d3e39b553 100644
--- a/kernel/power/energy_model.c
+++ b/kernel/power/energy_model.c
@@ -500,31 +500,6 @@ static void _em_release(struct kref *ref)
 	kfree(em_dev);
 }
 
-/**
- * em_register_perf_domain() - Register the Energy Model of a performance domain
- * @span	: Mask of CPUs in the performance domain
- * @nr_states	: Number of capacity states to register
- * @cb		: Callback functions providing the data of the Energy Model
- *
- * Create Energy Model tables for a performance domain using the callbacks
- * defined in cb.
- *
- * If multiple clients register the same performance domain, all but the first
- * registration will be ignored.
- *
- * Return 0 on success
- */
-int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
-						struct em_data_callback *cb)
-{
-	struct device *cpu_dev;
-
-	cpu_dev = get_cpu_device(cpumask_first(span));
-
-	return em_dev_register_perf_domain(cpu_dev, nr_states, cb, span);
-}
-EXPORT_SYMBOL_GPL(em_register_perf_domain);
-
 /**
  * em_dev_unregister_perf_domain() - Unregister Energy Model (EM) for a device
  * @dev		: Device for which the EM is registered
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
