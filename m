Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18211CDB8F
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 May 2020 15:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOBc9+As30q0dKS4sdoV5IBmh7LOVtkjYrDUZ97f4i4=; b=ioNN4m8SCmp6vK
	Inog7fU8kis1C3jcROruE9ghlPpf0e7t9qH60B6LH4RliC+MToZfUXHuBTbYfbQXOsdj5OUYg5KGQ
	cycOz0mQQvWPRjV7uYbIUSgGKPKsuyCRNUKEIC6Hny6/c/naqkG0u2Oe/jVWzPl7YPaE0n327Xnyk
	79ePs/pGh0CCI/RWRVZPTAOHDxcmoFZvTYjYNU/DK8iYdKDhGdBFx6cZRYG2xXEzE+96xThWGrg6I
	5EnyH0pwW1bsB88iC+RifW3ThXMk4g6AJkVoDahPel65E+z9RnAEXy2+nm6Hb79umANZcJ1VR+Zmq
	WN1rdza82TulFQDpphhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8iP-0001HW-PS; Mon, 11 May 2020 13:43:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8iM-0001GQ-LQ
 for linux-mediatek@lists.infradead.org; Mon, 11 May 2020 13:43:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so11048583wrt.5
 for <linux-mediatek@lists.infradead.org>; Mon, 11 May 2020 06:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0fpk5Xqv9Yro05H314xa5B77PsSpk1e22VGbukZepR0=;
 b=mEYRAbohHj9FT80QIN/XzGP0RK1RJdYQ+SPBVrhjGvEG1fo/b/wSbQUryrPWgltT0o
 IkcFU/TN3+CssRVyv7w9pbFo1Ao857ZUnI61mXnTixG4CNdUkxo1TqBtb+18gV/r0s9T
 PPmzLqaj4sRqLx9LKDx1ZKjj7S/l7K66pZ7BoueguIMGC7RkhcUpGCTxIqf80k1bRJMt
 K4r7mmsbyu5ERiD9qkW6VioEmXn0IV06q0wEgK46c748II6H/HGiqFskqR/x66mf2GeN
 X68E2XP0oEEZzqsVFopP+39+jSNN9eg9gI+iHo96H/QWJXde4g2p+s6l6KmyLM09APAS
 DDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0fpk5Xqv9Yro05H314xa5B77PsSpk1e22VGbukZepR0=;
 b=E865mdwn8wtgA1qRjMrlqkS/Iai6ae14vMKY6w/OTr2HPxmTnU9G42W4opQl5N0FpR
 qY6WNTw5Z1IqsOb1AvSGcZG0Cw45deeb0Vxzz5YXiXP7DvcHB9SAvz+GdV3koVT85t4E
 1AkmlKJblqg53Yj7n/5d0NGNYwo0XtWbF+9Fll/QL/sZj06FUF8uJ1RPyzmmVLRVFEJC
 APh1YyHa1rzCGdZQWfcmB+tKNzOrcEml7tBSzeVJQGX8drjMz832JIPd79JTOKn9DBwX
 LTaHhhLddPcL6ti27K4ZkuwEHvbb+tTo0WnZjKZ5RL3Rlyy6nQT60C7Ya066TeemRUQ+
 08Cw==
X-Gm-Message-State: AGi0PuYKfM6Cto7gSEW8fwvq58B85LXzEol1WFIcQTaYAjFxRfMoj9YV
 Gi/9bq16qEuB3uQJlzstxMED9A==
X-Google-Smtp-Source: APiQypItJDTCfkEocXHWq2r5Ng7HfPcqePb/ZXsdjVC/ZzMJj4eOCaQ+uMUlRLgbkt8pygDOHi6PUw==
X-Received: by 2002:adf:eac6:: with SMTP id o6mr18960567wrn.297.1589204603437; 
 Mon, 11 May 2020 06:43:23 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id q184sm27142122wma.25.2020.05.11.06.43.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 06:43:22 -0700 (PDT)
Date: Mon, 11 May 2020 14:43:19 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 04/15] PM / EM: add support for other devices than
 CPUs in Energy Model
Message-ID: <20200511134319.GA29112@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-5-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-5-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_064326_727279_70BEBA64 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 vincent.guittot@linaro.org, khilman@kernel.org, agross@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de,
 orjan.eide@arm.com, daniel@ffwll.ch, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hey Lukasz,

On Monday 11 May 2020 at 12:19:01 (+0100), Lukasz Luba wrote:
<snip>
> @@ -27,12 +29,15 @@ struct em_perf_state {
>   * em_perf_domain - Performance domain
>   * @table:		List of performance states, in ascending order
>   * @nr_perf_states:	Number of performance states
> - * @cpus:		Cpumask covering the CPUs of the domain
> + * @cpus:		Cpumask covering the CPUs of the domain. It's here
> + *			for performance reasons to avoid potential cache
> + *			misses during energy calculations in the scheduler

And because that saves a pointer, and simplifies allocating/freeing that
memory region :)

<snip>
> diff --git a/kernel/power/energy_model.c b/kernel/power/energy_model.c
> index 5b8a1566526a..9cc7f2973600 100644
> --- a/kernel/power/energy_model.c
> +++ b/kernel/power/energy_model.c
> @@ -2,8 +2,9 @@
>  /*
>   * Energy Model of CPUs

Should this comment change too?

<snip>
> -static void em_debug_create_pd(struct em_perf_domain *pd, int cpu)
> +static void em_debug_create_pd(struct device *dev)
>  {
>  	struct dentry *d;
> -	char name[8];
>  	int i;
>  
> -	snprintf(name, sizeof(name), "pd%d", cpu);
> -
>  	/* Create the directory of the performance domain */
> -	d = debugfs_create_dir(name, rootdir);
> +	d = debugfs_create_dir(dev_name(dev), rootdir);

So what will be the name for the perf domain of CPUs now? cpuX?

<snip>
> @@ -142,8 +149,8 @@ em_create_pd(struct device *dev, int nr_states, struct em_data_callback *cb,
>  		 */
>  		opp_eff = freq / power;
>  		if (opp_eff >= prev_opp_eff)
> -			pr_warn("pd%d: hertz/watts ratio non-monotonically decreasing: em_perf_state %d >= em_perf_state%d\n",
> -					cpu, i, i - 1);
> +			dev_dbg(dev, "EM: hertz/watts ratio non-monotonically decreasing: em_perf_state %d >= em_perf_state%d\n",
> +					i, i - 1);

It feels like changing from warn to debug doesn't really belong to this
patch no?

<snip>
> @@ -216,47 +274,50 @@ int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
>  	 */
>  	mutex_lock(&em_pd_mutex);
>  
> -	for_each_cpu(cpu, span) {
> -		/* Make sure we don't register again an existing domain. */
> -		if (READ_ONCE(per_cpu(em_data, cpu))) {
> -			ret = -EEXIST;
> -			goto unlock;
> -		}
> +	if (dev->em_pd) {
> +		ret = -EEXIST;
> +		goto unlock;
> +	}
>  
> -		/*
> -		 * All CPUs of a domain must have the same micro-architecture
> -		 * since they all share the same table.
> -		 */
> -		cap = arch_scale_cpu_capacity(cpu);
> -		if (prev_cap && prev_cap != cap) {
> -			pr_err("CPUs of %*pbl must have the same capacity\n",
> -							cpumask_pr_args(span));
> +	if (_is_cpu_device(dev)) {

Something like

	if (!_is_cpu_device(dev))
		goto device;

would limit the diff a bit, but that may just be personal taste.

But appart from these nits, the patch LGTM.

Thanks,
Quentin

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
