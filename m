Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A2E140874
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Jan 2020 11:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ld9phlrTLsdp1DzTEoHbTfCGF/nY0+auiZYLYDTS5xg=; b=eAWxA1COTlPecN
	f3VUtVYhFigJUGu+MW9+l3qpgfYu6OEeavUaRwSeDOFSDV+UyO0JKW7YUfr0MCmoTRrJgrQjukgjf
	rQ5A3N4Linh7wIy4i17Vi4T8tADN3Pf2jytvOWJqYRFciS+6xIjVA3pWxK/86yghKIi8+VvOlil3V
	+TTWssMt7f6fieY0ohauvsmUnKW9PuDHxKOgMeDbRGzQo0lTGXO+YOaJX3ioutO+JYNNphC2ZS/cW
	RrP92RjQIWb8ybjDbQYIG3p828Cd7D1SxqP6kpSWNTlXwprT6XeSsdhDpFaKrSd8DorobyJNw6aU4
	4ECEMNJtCqm27MYaA0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isPHU-0002fe-Sy; Fri, 17 Jan 2020 10:55:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPH5-0001eV-6G
 for linux-mediatek@lists.infradead.org; Fri, 17 Jan 2020 10:54:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so22289330wru.4
 for <linux-mediatek@lists.infradead.org>; Fri, 17 Jan 2020 02:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZIor9gKMoZIiatH4TckXR6kw5rMM1XpWfkSuSCSgKXE=;
 b=OWTd1xPAQY9tXJXOZoWIjFDzF/j5k4C12aIyvlJSkkdhXlVbD45jelTm6GVI3uVYL7
 n9xkBrIBsIRyofHDfGxI/l2E5DARRbN+kNYjfXDlt0D2NMz3tS9otMH27qG8unAMXkVK
 vbv+o0soDwEv+wngnnE6P2hSuYjaWEszgXFVB2E8sY/8BNNmwio0HXgTBeM5ojO90Xqz
 eXsC84eVsPLNozUlGBGgx1RDyImJeajA48zW6/mFqj9bm+S8xvtQCF24bQIklM7kmSQd
 UX9n+G82Jt0cw5vAEM+XOAz116BMbTc1FuSDri3NMDqzY9VqQE8QDk2hGTzsWxJxyW1O
 /sRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZIor9gKMoZIiatH4TckXR6kw5rMM1XpWfkSuSCSgKXE=;
 b=N6MJj2jDq74mbr+Wj9tt1JspG8jBsAYg5R2JXsohzJmG8ldktvgaHlYhAblLfObQK4
 PGcX8yyzqRl4toYUhTCAryEvlSqZ/C7X5n66pgADMeKtckZ8YrVjX9cifIgOP/hZI0MJ
 49c/B/Ngy4sbmbCdwsD2PpMFrkyEVNMMjEs30rHQXxWXPSGyZAprbtljHbc4cWkdnVE0
 HZ6Dca5wvbORUElXCDRuvYfXIywoYgrINczhihDtX+lV/0poqBvmu+uzeXEGVFKpUldo
 3eGoSC3cg3y0MmhFx9bLgQmcWjFOaEnh+XpEm917NBMUY9xnlgjZF+UYaeBUGlOa0MGH
 Rung==
X-Gm-Message-State: APjAAAVqQ0fF/RHbghO2uMhrh97OxMTLDAl0WQf6GGxkpOQbuTiQHeNH
 qsYF9QfXlg4SAQak9h4eLfrPUQ==
X-Google-Smtp-Source: APXvYqxFsuT0KTxqOuP7M5Z4+OnjHn0WdKusB9YxUQXSRSUEjOMXSk8sV+Vlqk3Ea2XuYbdpzPevfg==
X-Received: by 2002:a05:6000:1288:: with SMTP id
 f8mr2534273wrx.66.1579258481679; 
 Fri, 17 Jan 2020 02:54:41 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id b17sm33252857wrp.49.2020.01.17.02.54.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 02:54:40 -0800 (PST)
Date: Fri, 17 Jan 2020 10:54:37 +0000
From: Quentin Perret <qperret@google.com>
To: lukasz.luba@arm.com
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
Message-ID: <20200117105437.GA211774@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116152032.11301-2-lukasz.luba@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_025447_260671_25398323 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, vincent.guittot@linaro.org,
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, kernel-team@android.com,
 mgorman@suse.de, daniel@ffwll.ch, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, ionela.voinescu@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hey Lukasz,

Still reading through this, but with small changes, this looks pretty
good to me.

On Thursday 16 Jan 2020 at 15:20:29 (+0000), lukasz.luba@arm.com wrote:
> +int em_register_perf_domain(struct device *dev, unsigned int nr_states,
> +			struct em_data_callback *cb)
>  {
>  	unsigned long cap, prev_cap = 0;
>  	struct em_perf_domain *pd;
> -	int cpu, ret = 0;
> +	struct em_device *em_dev;
> +	cpumask_t *span = NULL;
> +	int cpu, ret;
>  
> -	if (!span || !nr_states || !cb)
> +	if (!dev || !nr_states || !cb || !cb->active_power)

Nit: you check !cb->active_power in em_create_pd() too I think, so only
one of the two is needed.

>  		return -EINVAL;
>  
> -	/*
> -	 * Use a mutex to serialize the registration of performance domains and
> -	 * let the driver-defined callback functions sleep.
> -	 */
>  	mutex_lock(&em_pd_mutex);
>  
> -	for_each_cpu(cpu, span) {
> -		/* Make sure we don't register again an existing domain. */
> -		if (READ_ONCE(per_cpu(em_data, cpu))) {
> +	if (_is_cpu_device(dev)) {
> +		span = kzalloc(cpumask_size(), GFP_KERNEL);
> +		if (!span) {
> +			mutex_unlock(&em_pd_mutex);
> +			return -ENOMEM;
> +		}
> +
> +		ret = dev_pm_opp_get_sharing_cpus(dev, span);
> +		if (ret)
> +			goto free_cpumask;

That I think should be changed. This creates some dependency on PM_OPP
for the EM framework. And in fact, the reason we came up with PM_EM was
precisely to not depend on PM_OPP which was deemed too Arm-specific.

Suggested alternative: have two registration functions like so:

	int em_register_dev_pd(struct device *dev, unsigned int nr_states,
			       struct em_data_callback *cb);
	int em_register_cpu_pd(cpumask_t *span, unsigned int nr_states,
			       struct em_data_callback *cb);

where em_register_cpu_pd() does the CPU-specific work and then calls
em_register_dev_pd() (instead of having that big if (_is_cpu_device(dev))
as you currently have). Would that work ?

Another possibility would be to query CPUFreq instead of PM_OPP to get
the mask, but I'd need to look again at the driver registration path in
CPUFreq to see if the policy masks have been populated when we enter
PM_EM ... I am not sure if this is the case, but it's worth having a
look too.

Thanks,
Quentin

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
