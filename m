Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DF81CD81A
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 May 2020 13:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i44peInyv9ylfOG5Tg+5nGGbmz9T65BHMcXNNAAXbkE=; b=QjRsOJym51BwyQ9EiUpgZNdypv
	gaUomEqdP2PHEpHVn9nVTIsjcBgo0sv1orKleY+TY2Wh+oSMrgQhdA2IDIpJxNpOccs0jm+5Fv9hJ
	4A6PZ09QznnE6yCZJuodkOn0lFb2EbKGGo4dEhMFeqDxRl/S9nnJn3bqS1clK/tO2nvRWTJxoASCz
	ynslLvNjcOgZUWhTwdPEkIktVNNh49D7Z+jo8344lsfMzbVT2/o89w4uQtsJS5cuwaiMZjxZbwklD
	v/SwDHStDVERQZSW1kVlAtXCE2U876Ms7HLU75w0oFBihZ0Ez8KJzbhLjDUm2RBCfYNMkw80/VqRO
	3sgCTSZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6Z9-0006Cs-SS; Mon, 11 May 2020 11:25:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6VO-0000Ca-Rr; Mon, 11 May 2020 11:22:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2260B101E;
 Mon, 11 May 2020 04:21:54 -0700 (PDT)
Received: from e123648.arm.com (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 731BF3F305;
 Mon, 11 May 2020 04:21:43 -0700 (PDT)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH v7 13/15] thermal: devfreq_cooling: remove old power model and
 use EM
Date: Mon, 11 May 2020 12:19:10 +0100
Message-Id: <20200511111912.3001-14-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511111912.3001-1-lukasz.luba@arm.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042155_019038_5B9483F8 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
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

Remove old power model and use new Energy Model to calculate the power
budget. It drops static + dynamic power calculations and power table
in order to use Energy Model performance domain data. This model
should be easy to use and could find more users. It is also less
complicated to setup the needed structures.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 drivers/thermal/devfreq_cooling.c | 282 +++++++++---------------------
 include/linux/devfreq_cooling.h   |  17 --
 2 files changed, 86 insertions(+), 213 deletions(-)

diff --git a/drivers/thermal/devfreq_cooling.c b/drivers/thermal/devfreq_cooling.c
index c7ffed2d6ee0..79dcef3dbeeb 100644
--- a/drivers/thermal/devfreq_cooling.c
+++ b/drivers/thermal/devfreq_cooling.c
@@ -41,20 +41,17 @@ static DEFINE_IDA(devfreq_ida);
  * @cdev:	Pointer to associated thermal cooling device.
  * @devfreq:	Pointer to associated devfreq device.
  * @cooling_state:	Current cooling state.
- * @power_table:	Pointer to table with maximum power draw for each
- *			cooling state. State is the index into the table, and
- *			the power is in mW.
  * @freq_table:	Pointer to a table with the frequencies sorted in descending
  *		order.  You can index the table by cooling device state
- * @freq_table_size:	Size of the @freq_table and @power_table
- * @power_ops:	Pointer to devfreq_cooling_power, used to generate the
- *		@power_table.
+ * @max_state:	It is the last index, that is, one less than the number of the
+ *		OPPs
+ * @power_ops:	Pointer to devfreq_cooling_power, a more precised model.
  * @res_util:	Resource utilization scaling factor for the power.
  *		It is multiplied by 100 to minimize the error. It is used
  *		for estimation of the power budget instead of using
- *		'utilization' (which is	'busy_time / 'total_time').
- *		The 'res_util' range is from 100 to (power_table[state] * 100)
- *		for the corresponding 'state'.
+ *		'utilization' (which is	'busy_time' / 'total_time').
+ *		The 'res_util' range is from 100 to power * 100	for the
+ *		corresponding 'state'.
  * @capped_state:	index to cooling state with in dynamic power budget
  * @req_max_freq:	PM QoS request for limiting the maximum frequency
  *			of the devfreq device.
@@ -66,9 +63,8 @@ struct devfreq_cooling_device {
 	struct thermal_cooling_device *cdev;
 	struct devfreq *devfreq;
 	unsigned long cooling_state;
-	u32 *power_table;
 	u32 *freq_table;
-	size_t freq_table_size;
+	size_t max_state;
 	struct devfreq_cooling_power *power_ops;
 	u32 res_util;
 	int capped_state;
@@ -82,7 +78,7 @@ static int devfreq_cooling_get_max_state(struct thermal_cooling_device *cdev,
 {
 	struct devfreq_cooling_device *dfc = cdev->devdata;
 
-	*state = dfc->freq_table_size - 1;
+	*state = dfc->max_state;
 
 	return 0;
 }
@@ -110,10 +106,16 @@ static int devfreq_cooling_set_cur_state(struct thermal_cooling_device *cdev,
 
 	dev_dbg(dev, "Setting cooling state %lu\n", state);
 
-	if (state >= dfc->freq_table_size)
+	if (state > dfc->max_state)
 		return -EINVAL;
 
-	freq = dfc->freq_table[state];
+	if (dfc->em) {
+		/* Energy Model frequencies are in kHz */
+		freq = dfc->em->table[dfc->max_state - state].frequency;
+		freq *= 1000;
+	} else {
+		freq = dfc->freq_table[state];
+	}
 
 	dev_pm_qos_update_request(&dfc->req_max_freq,
 				  DIV_ROUND_UP(freq, HZ_PER_KHZ));
@@ -124,11 +126,11 @@ static int devfreq_cooling_set_cur_state(struct thermal_cooling_device *cdev,
 }
 
 /**
- * freq_get_state() - get the cooling state corresponding to a frequency
+ * freq_get_state() - get the performance index corresponding to a frequency
  * @dfc:	Pointer to devfreq cooling device
- * @freq:	frequency in Hz
+ * @freq:	frequency in kHz
  *
- * Return: the cooling state associated with the @freq, or
+ * Return: the performance index associated with the @freq, or
  * THERMAL_CSTATE_INVALID if it wasn't found.
  */
 static unsigned long
@@ -136,8 +138,8 @@ freq_get_state(struct devfreq_cooling_device *dfc, unsigned long freq)
 {
 	int i;
 
-	for (i = 0; i < dfc->freq_table_size; i++) {
-		if (dfc->freq_table[i] == freq)
+	for (i = 0; i <= dfc->max_state; i++) {
+		if (dfc->em->table[i].frequency == freq)
 			return i;
 	}
 
@@ -172,71 +174,15 @@ static unsigned long get_voltage(struct devfreq *df, unsigned long freq)
 	return voltage;
 }
 
-/**
- * get_static_power() - calculate the static power
- * @dfc:	Pointer to devfreq cooling device
- * @freq:	Frequency in Hz
- *
- * Calculate the static power in milliwatts using the supplied
- * get_static_power().  The current voltage is calculated using the
- * OPP library.  If no get_static_power() was supplied, assume the
- * static power is negligible.
- */
-static unsigned long
-get_static_power(struct devfreq_cooling_device *dfc, unsigned long freq)
+static void dfc_em_get_requested_power(struct em_perf_domain *em,
+				       struct devfreq_dev_status *status,
+				       u32 *power, int em_perf_idx)
 {
-	struct devfreq *df = dfc->devfreq;
-	unsigned long voltage;
+	*power = em->table[em_perf_idx].power;
 
-	if (!dfc->power_ops->get_static_power)
-		return 0;
-
-	voltage = get_voltage(df, freq);
-
-	if (voltage == 0)
-		return 0;
-
-	return dfc->power_ops->get_static_power(df, voltage);
-}
-
-/**
- * get_dynamic_power - calculate the dynamic power
- * @dfc:	Pointer to devfreq cooling device
- * @freq:	Frequency in Hz
- * @voltage:	Voltage in millivolts
- *
- * Calculate the dynamic power in milliwatts consumed by the device at
- * frequency @freq and voltage @voltage.  If the get_dynamic_power()
- * was supplied as part of the devfreq_cooling_power struct, then that
- * function is used.  Otherwise, a simple power model (Pdyn = Coeff *
- * Voltage^2 * Frequency) is used.
- */
-static unsigned long
-get_dynamic_power(struct devfreq_cooling_device *dfc, unsigned long freq,
-		  unsigned long voltage)
-{
-	u64 power;
-	u32 freq_mhz;
-	struct devfreq_cooling_power *dfc_power = dfc->power_ops;
-
-	if (dfc_power->get_dynamic_power)
-		return dfc_power->get_dynamic_power(dfc->devfreq, freq,
-						    voltage);
-
-	freq_mhz = freq / 1000000;
-	power = (u64)dfc_power->dyn_power_coeff * freq_mhz * voltage * voltage;
-	do_div(power, 1000000000);
-
-	return power;
-}
-
-
-static inline unsigned long get_total_power(struct devfreq_cooling_device *dfc,
-					    unsigned long freq,
-					    unsigned long voltage)
-{
-	return get_static_power(dfc, freq) + get_dynamic_power(dfc, freq,
-							       voltage);
+	/* Scale power for utilization */
+	*power *= status->busy_time;
+	*power /= status->total_time;
 }
 
 static void _normalize_load(struct devfreq_dev_status *status)
@@ -268,8 +214,6 @@ static int devfreq_cooling_get_requested_power(struct thermal_cooling_device *cd
 	unsigned long state;
 	unsigned long freq;
 	unsigned long voltage;
-	u32 dyn_power = 0;
-	u32 static_power = 0;
 	int res;
 
 	mutex_lock(&df->lock);
@@ -280,13 +224,14 @@ static int devfreq_cooling_get_requested_power(struct thermal_cooling_device *cd
 
 	freq = status.current_frequency;
 
-	state = freq_get_state(dfc, freq);
+	/* Energy Model frequencies are in kHz */
+	state = freq_get_state(dfc, freq / 1000);
 	if (state == THERMAL_CSTATE_INVALID) {
 		res = -EAGAIN;
 		goto fail;
 	}
 
-	if (dfc->power_ops->get_real_power) {
+	if (dfc->power_ops && dfc->power_ops->get_real_power) {
 		voltage = get_voltage(df, freq);
 		if (voltage == 0) {
 			res = -EINVAL;
@@ -296,7 +241,7 @@ static int devfreq_cooling_get_requested_power(struct thermal_cooling_device *cd
 		res = dfc->power_ops->get_real_power(df, power, freq, voltage);
 		if (!res) {
 			state = dfc->capped_state;
-			dfc->res_util = dfc->power_table[state];
+			dfc->res_util = dfc->em->table[state].power;
 			dfc->res_util *= SCALE_ERROR_MITIGATION;
 
 			if (*power > 1)
@@ -305,17 +250,8 @@ static int devfreq_cooling_get_requested_power(struct thermal_cooling_device *cd
 			goto fail;
 		}
 	} else {
-		dyn_power = dfc->power_table[state];
-
 		_normalize_load(&status);
-
-		/* Scale dynamic power for utilization */
-		dyn_power *= status.busy_time;
-		dyn_power /= status.total_time;
-		/* Get static power */
-		static_power = get_static_power(dfc, freq);
-
-		*power = dyn_power + static_power;
+		dfc_em_get_requested_power(dfc->em, &status, power, state);
 	}
 
 	trace_thermal_power_devfreq_get_power(cdev, &status, freq, *power);
@@ -333,16 +269,14 @@ static int devfreq_cooling_state2power(struct thermal_cooling_device *cdev,
 				       u32 *power)
 {
 	struct devfreq_cooling_device *dfc = cdev->devdata;
-	unsigned long freq;
-	u32 static_power;
+	int idx;
 
-	if (state >= dfc->freq_table_size)
+	if (state > dfc->max_state)
 		return -EINVAL;
 
-	freq = dfc->freq_table[state];
-	static_power = get_static_power(dfc, freq);
+	idx = dfc->max_state - state;
+	*power = dfc->em->table[idx].power;
 
-	*power = dfc->power_table[state] + static_power;
 	return 0;
 }
 
@@ -353,11 +287,8 @@ static int devfreq_cooling_power2state(struct thermal_cooling_device *cdev,
 	struct devfreq_cooling_device *dfc = cdev->devdata;
 	struct devfreq *df = dfc->devfreq;
 	struct devfreq_dev_status status;
-	unsigned long busy_time;
+	u32 est_power = power;
 	unsigned long freq;
-	s32 dyn_power;
-	u32 static_power;
-	s32 est_power;
 	int i;
 
 	mutex_lock(&df->lock);
@@ -366,31 +297,26 @@ static int devfreq_cooling_power2state(struct thermal_cooling_device *cdev,
 
 	freq = status.current_frequency;
 
-	if (dfc->power_ops->get_real_power) {
+	if (dfc->power_ops && dfc->power_ops->get_real_power) {
 		/* Scale for resource utilization */
 		est_power = power * dfc->res_util;
 		est_power /= SCALE_ERROR_MITIGATION;
 	} else {
-		static_power = get_static_power(dfc, freq);
-
-		dyn_power = power - static_power;
-		dyn_power = dyn_power > 0 ? dyn_power : 0;
-
-		/* Scale dynamic power for utilization */
-		busy_time = status.busy_time ?: 1;
-		est_power = (dyn_power * status.total_time) / busy_time;
+		_normalize_load(&status);
+		est_power *= status.total_time;
+		est_power /= status.busy_time;
 	}
 
 	/*
 	 * Find the first cooling state that is within the power
-	 * budget for dynamic power.
+	 * budget. The EM power table is sorted ascending.
 	 */
-	for (i = 0; i < dfc->freq_table_size - 1; i++)
-		if (est_power >= dfc->power_table[i])
+	for (i = dfc->max_state; i > 0; i--)
+		if (est_power >= dfc->em->table[i].power)
 			break;
 
-	*state = i;
-	dfc->capped_state = i;
+	*state = dfc->max_state - i;
+	dfc->capped_state = *state;
 	trace_thermal_power_devfreq_limit(cdev, freq, *state, power);
 	return 0;
 }
@@ -402,91 +328,43 @@ static struct thermal_cooling_device_ops devfreq_cooling_ops = {
 };
 
 /**
- * devfreq_cooling_gen_tables() - Generate power and freq tables.
- * @dfc: Pointer to devfreq cooling device.
- *
- * Generate power and frequency tables: the power table hold the
- * device's maximum power usage at each cooling state (OPP).  The
- * static and dynamic power using the appropriate voltage and
- * frequency for the state, is acquired from the struct
- * devfreq_cooling_power, and summed to make the maximum power draw.
- *
- * The frequency table holds the frequencies in descending order.
- * That way its indexed by cooling device state.
+ * devfreq_cooling_gen_tables() - Generate frequency table.
+ * @dfc:	Pointer to devfreq cooling device.
+ * @num_opps:	Number of OPPs
  *
- * The tables are malloced, and pointers put in dfc.  They must be
- * freed when unregistering the devfreq cooling device.
+ * Generate frequency table which holds the frequencies in descending
+ * order. That way its indexed by cooling device state. This is for
+ * compatibility with drivers which do not register Energy Model.
  *
  * Return: 0 on success, negative error code on failure.
  */
-static int devfreq_cooling_gen_tables(struct devfreq_cooling_device *dfc)
+static int devfreq_cooling_gen_tables(struct devfreq_cooling_device *dfc,
+				      int num_opps)
 {
 	struct devfreq *df = dfc->devfreq;
 	struct device *dev = df->dev.parent;
-	int ret, num_opps;
 	unsigned long freq;
-	u32 *power_table = NULL;
-	u32 *freq_table;
 	int i;
 
-	num_opps = dev_pm_opp_get_opp_count(dev);
-
-	if (dfc->power_ops) {
-		power_table = kcalloc(num_opps, sizeof(*power_table),
-				      GFP_KERNEL);
-		if (!power_table)
-			return -ENOMEM;
-	}
-
-	freq_table = kcalloc(num_opps, sizeof(*freq_table),
+	dfc->freq_table = kcalloc(num_opps, sizeof(*dfc->freq_table),
 			     GFP_KERNEL);
-	if (!freq_table) {
-		ret = -ENOMEM;
-		goto free_power_table;
-	}
+	if (!dfc->freq_table)
+		return -ENOMEM;
 
 	for (i = 0, freq = ULONG_MAX; i < num_opps; i++, freq--) {
-		unsigned long power, voltage;
 		struct dev_pm_opp *opp;
 
 		opp = dev_pm_opp_find_freq_floor(dev, &freq);
 		if (IS_ERR(opp)) {
-			ret = PTR_ERR(opp);
-			goto free_tables;
+			kfree(dfc->freq_table);
+			return PTR_ERR(opp);
 		}
 
-		voltage = dev_pm_opp_get_voltage(opp) / 1000; /* mV */
 		dev_pm_opp_put(opp);
-
-		if (dfc->power_ops) {
-			if (dfc->power_ops->get_real_power)
-				power = get_total_power(dfc, freq, voltage);
-			else
-				power = get_dynamic_power(dfc, freq, voltage);
-
-			dev_dbg(dev, "Power table: %lu MHz @ %lu mV: %lu = %lu mW\n",
-				freq / 1000000, voltage, power, power);
-
-			power_table[i] = power;
-		}
-
-		freq_table[i] = freq;
+		dfc->freq_table[i] = freq;
 	}
 
-	if (dfc->power_ops)
-		dfc->power_table = power_table;
-
-	dfc->freq_table = freq_table;
-	dfc->freq_table_size = num_opps;
-
 	return 0;
-
-free_tables:
-	kfree(freq_table);
-free_power_table:
-	kfree(power_table);
-
-	return ret;
 }
 
 /**
@@ -511,7 +389,7 @@ of_devfreq_cooling_register_power(struct device_node *np, struct devfreq *df,
 	struct thermal_cooling_device *cdev;
 	struct devfreq_cooling_device *dfc;
 	char dev_name[THERMAL_NAME_LENGTH];
-	int err;
+	int err, num_opps;
 
 	dfc = kzalloc(sizeof(*dfc), GFP_KERNEL);
 	if (!dfc)
@@ -519,28 +397,45 @@ of_devfreq_cooling_register_power(struct device_node *np, struct devfreq *df,
 
 	dfc->devfreq = df;
 
-	if (dfc_power) {
-		dfc->power_ops = dfc_power;
-
+	dfc->em = em_pd_get(df->dev.parent);
+	if (dfc->em) {
 		devfreq_cooling_ops.get_requested_power =
 			devfreq_cooling_get_requested_power;
 		devfreq_cooling_ops.state2power = devfreq_cooling_state2power;
 		devfreq_cooling_ops.power2state = devfreq_cooling_power2state;
+
+		dfc->power_ops = dfc_power;
+
+		num_opps = em_pd_nr_perf_states(dfc->em);
+	} else {
+		/* Backward compatibility for drivers which do not use IPA */
+		dev_dbg(df->dev.parent, "missing EM for cooling device\n");
+
+		num_opps = dev_pm_opp_get_opp_count(df->dev.parent);
+
+		err = devfreq_cooling_gen_tables(dfc, num_opps);
+		if (err)
+			goto free_dfc;
 	}
 
-	err = devfreq_cooling_gen_tables(dfc);
-	if (err)
+	if (num_opps <= 0) {
+		err = -EINVAL;
 		goto free_dfc;
+	}
+
+	/* max_state is an index, not a counter */
+	dfc->max_state = num_opps - 1;
 
 	err = dev_pm_qos_add_request(df->dev.parent, &dfc->req_max_freq,
 				     DEV_PM_QOS_MAX_FREQUENCY,
 				     PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE);
 	if (err < 0)
-		goto free_tables;
+		goto free_table;
 
 	err = ida_simple_get(&devfreq_ida, 0, 0, GFP_KERNEL);
 	if (err < 0)
 		goto remove_qos_req;
+
 	dfc->id = err;
 
 	snprintf(dev_name, sizeof(dev_name), "thermal-devfreq-%d", dfc->id);
@@ -561,12 +456,9 @@ of_devfreq_cooling_register_power(struct device_node *np, struct devfreq *df,
 
 release_ida:
 	ida_simple_remove(&devfreq_ida, dfc->id);
-
 remove_qos_req:
 	dev_pm_qos_remove_request(&dfc->req_max_freq);
-
-free_tables:
-	kfree(dfc->power_table);
+free_table:
 	kfree(dfc->freq_table);
 free_dfc:
 	kfree(dfc);
@@ -707,9 +599,7 @@ void devfreq_cooling_unregister(struct thermal_cooling_device *cdev)
 	if (dfc->em_registered)
 		em_dev_unregister_perf_domain(dev);
 
-	kfree(dfc->power_table);
 	kfree(dfc->freq_table);
-
 	kfree(dfc);
 }
 EXPORT_SYMBOL_GPL(devfreq_cooling_unregister);
diff --git a/include/linux/devfreq_cooling.h b/include/linux/devfreq_cooling.h
index 07df019fcb66..613678ce23df 100644
--- a/include/linux/devfreq_cooling.h
+++ b/include/linux/devfreq_cooling.h
@@ -24,17 +24,6 @@
 
 /**
  * struct devfreq_cooling_power - Devfreq cooling power ops
- * @get_static_power:	Take voltage, in mV, and return the static power
- *			in mW.  If NULL, the static power is assumed
- *			to be 0.
- * @get_dynamic_power:	Take voltage, in mV, and frequency, in HZ, and
- *			return the dynamic power draw in mW.  If NULL,
- *			a simple power model is used.
- * @dyn_power_coeff:	Coefficient for the simple dynamic power model in
- *			mW/(MHz mV mV).
- *			If get_dynamic_power() is NULL, then the
- *			dynamic power is calculated as
- *			@dyn_power_coeff * frequency * voltage^2
  * @get_real_power:	When this is set, the framework uses it to ask the
  *			device driver for the actual power.
  *			Some devices have more sophisticated methods
@@ -54,14 +43,8 @@
  *			max total (static + dynamic) power value for each OPP.
  */
 struct devfreq_cooling_power {
-	unsigned long (*get_static_power)(struct devfreq *devfreq,
-					  unsigned long voltage);
-	unsigned long (*get_dynamic_power)(struct devfreq *devfreq,
-					   unsigned long freq,
-					   unsigned long voltage);
 	int (*get_real_power)(struct devfreq *df, u32 *power,
 			      unsigned long freq, unsigned long voltage);
-	unsigned long dyn_power_coeff;
 };
 
 #ifdef CONFIG_DEVFREQ_THERMAL
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
