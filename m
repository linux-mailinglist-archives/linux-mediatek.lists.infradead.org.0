Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21633955B3
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 05:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIp6PLw8kNQpPVF3HdJBh+JuuIj5cJV4m7JOH9RWy9s=; b=PcPPeaEW5R1iI0
	ji07KHhV+YAuF1tqCcNhRyeQ33dwdrvPmjxyeayN4G9R0pECXXJlnmNYcsuacuNoulpty6L2O4bhI
	HOU3zGe9hbdWcZdzw7ghshitxKbI4vrgu/FreSsJZT+CrFvsL74Ar6329II0yhA+3mdMx26YhisW+
	Mks4x5XAr1ghnbegx726AFoATALwKqIMkfjdPqxA+4WxgAQqCXtupXQlw1JlKwqzo1cMu5lTqgczq
	DbMfytgdhZkdQCMHdkbfDhC2CrzHidLnYRMTMSiXUSbQw3kOvj8sjSlC1c3ZQMfC6borsFT5bXL9X
	F3enppt15TpQ28pAlFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuzw-00050V-7s; Tue, 20 Aug 2019 03:39:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuzd-0004oq-Qp
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 03:39:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id n190so2388143pgn.0
 for <linux-mediatek@lists.infradead.org>; Mon, 19 Aug 2019 20:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DYGO86uLTSpBFsqyRPgG0kZAe1AG4hshV79weFR5920=;
 b=mCEsjGHEV/007JwSzWPqAL6lNivgf0WcmcgTIxpLCH3P6kLl8PO6XhqagkWFSQwVG3
 0nigHbGCULjYmojCXTzJbxmerZxC99eFsf34Rl9lwnGIimxMizNZZR/kod7JTk1xuaBm
 wutn87TaESpTlsiYFDwI2mD8yEgXKVxDWorWE+SyHugrIfo1WCgGOgDjM7TpBhrWjNxX
 y22qC45an5oM0evMP0ybn51EbI/K6vlPVv3IsB/sor+H03c9wTN4UlHfoazUZBUNijrc
 iN9o2hhErrOZ3fgcae9W3EdtBIrR5XxgdB2mOQcihllJofU8jNxLCkxyQqUicaYwG8v2
 IzFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DYGO86uLTSpBFsqyRPgG0kZAe1AG4hshV79weFR5920=;
 b=gB8PLs2se8/NAHrPUrp940edl6kXMGemUHSw1C1JwXE1Ea8fICG7sLFUi6PsZ+oncU
 I81zXatlHS1PeNDLEZpvK4cPCMWVC3D8+xEcqXpKlZC35YYs4Gfc6zbJDIithOsjEPW+
 jtWAl7g6qL4SgLr8XQnV5qQrP9Lk1Xhoz6IpyvyUz1HahPb24wEqhXC5jSzo66dJr0CB
 37QpmSB+rStKoVAxN8urnkEm6PC0MbKrrr5SRtzVka6rYfFzalva2MLqdXGuRC6TgxJ8
 zMmeJDsnxWI/lVI1B2MmTpFFuw6X8fK142Y34zbG5FmhISr8mk/31kRw+zYd/vYO1Kl+
 2JWg==
X-Gm-Message-State: APjAAAXZ1MDFoQq7gLTqBWKBFlmL83yio21oUm5DBd5aSMyBpzQrjfeX
 Qi/TF3spM+K0zwRrH0DD1RojCA==
X-Google-Smtp-Source: APXvYqzFpEjUSmXBk62EUY/Mz1WvgYWKQh88SMa3hzj+OaxnG3lQPeO6zyJZ8hFl1UXHq9rv1X8Eug==
X-Received: by 2002:a65:6415:: with SMTP id a21mr21550631pgv.98.1566272371730; 
 Mon, 19 Aug 2019 20:39:31 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id i137sm36834826pgc.4.2019.08.19.20.39.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 20:39:30 -0700 (PDT)
Date: Tue, 20 Aug 2019 09:09:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 7/8] cpufreq: mediatek: add opp notification for SVS support
Message-ID: <20190820033927.72muldasu4xd6wb7@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_203933_869954_487D6039 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 13-08-19, 21:31, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> cpufreq should listen opp notification and do proper actions
> when receiving disable and voltage adjustment events,
> which are triggered when SVS is enabled.
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/cpufreq/mediatek-cpufreq.c | 78 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
> 
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index 4dce41b18369..9820c8003507 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -42,6 +42,10 @@ struct mtk_cpu_dvfs_info {
>  	struct list_head list_head;
>  	int intermediate_voltage;
>  	bool need_voltage_tracking;
> +	struct mutex lock; /* avoid notify and policy race condition */
> +	struct notifier_block opp_nb;
> +	int opp_cpu;
> +	unsigned long opp_freq;
>  };
>  
>  static LIST_HEAD(dvfs_info_list);
> @@ -231,6 +235,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>  	vproc = dev_pm_opp_get_voltage(opp);
>  	dev_pm_opp_put(opp);
>  
> +	mutex_lock(&info->lock);
>  	/*
>  	 * If the new voltage or the intermediate voltage is higher than the
>  	 * current voltage, scale up voltage first.
> @@ -242,6 +247,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>  			pr_err("cpu%d: failed to scale up voltage!\n",
>  			       policy->cpu);
>  			mtk_cpufreq_set_voltage(info, old_vproc);
> +			mutex_unlock(&info->lock);
>  			return ret;
>  		}
>  	}
> @@ -253,6 +259,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>  		       policy->cpu);
>  		mtk_cpufreq_set_voltage(info, old_vproc);
>  		WARN_ON(1);
> +		mutex_unlock(&info->lock);
>  		return ret;
>  	}
>  
> @@ -263,6 +270,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>  		       policy->cpu);
>  		clk_set_parent(cpu_clk, armpll);
>  		mtk_cpufreq_set_voltage(info, old_vproc);
> +		mutex_unlock(&info->lock);
>  		return ret;
>  	}
>  
> @@ -273,6 +281,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>  		       policy->cpu);
>  		mtk_cpufreq_set_voltage(info, inter_vproc);
>  		WARN_ON(1);
> +		mutex_unlock(&info->lock);
>  		return ret;
>  	}
>  
> @@ -288,15 +297,74 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>  			clk_set_parent(cpu_clk, info->inter_clk);
>  			clk_set_rate(armpll, old_freq_hz);
>  			clk_set_parent(cpu_clk, armpll);
> +			mutex_unlock(&info->lock);
>  			return ret;
>  		}
>  	}
>  
> +	info->opp_freq = freq_hz;
> +	mutex_unlock(&info->lock);
> +
>  	return 0;
>  }
>  
>  #define DYNAMIC_POWER "dynamic-power-coefficient"
>  
> +static int mtk_cpufreq_opp_notifier(struct notifier_block *nb,
> +				    unsigned long event, void *data)
> +{
> +	struct dev_pm_opp *opp = data;
> +	struct dev_pm_opp *opp_item;
> +	struct mtk_cpu_dvfs_info *info =
> +		container_of(nb, struct mtk_cpu_dvfs_info, opp_nb);
> +	unsigned long freq, volt;
> +	struct cpufreq_policy *policy;
> +	int ret = 0;
> +
> +	if (event == OPP_EVENT_ADJUST_VOLTAGE) {
> +		freq = dev_pm_opp_get_freq(opp);
> +
> +		mutex_lock(&info->lock);
> +		if (info->opp_freq == freq) {
> +			volt = dev_pm_opp_get_voltage(opp);
> +			ret = mtk_cpufreq_set_voltage(info, volt);
> +			if (ret)
> +				dev_err(info->cpu_dev, "failed to scale voltage: %d\n",
> +					ret);
> +		}
> +		mutex_unlock(&info->lock);
> +	} else if (event == OPP_EVENT_DISABLE) {

Does this ever get called for your platform ? Why are you using opp disable ?
Maybe we can avoid it completely.

> +		freq = info->opp_freq;
> +		opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev, &freq);
> +		if (!IS_ERR(opp_item))
> +			dev_pm_opp_put(opp_item);
> +		else
> +			freq = 0;
> +
> +		/* case of current opp is disabled */
> +		if (freq == 0 || freq != info->opp_freq) {
> +			// find an enable opp item
> +			freq = 1;
> +			opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev,
> +							     &freq);
> +			if (!IS_ERR(opp_item)) {
> +				dev_pm_opp_put(opp_item);
> +				policy = cpufreq_cpu_get(info->opp_cpu);
> +				if (policy) {
> +					cpufreq_driver_target(policy,
> +						freq / 1000,
> +						CPUFREQ_RELATION_L);
> +					cpufreq_cpu_put(policy);
> +				}
> +			} else
> +				pr_err("%s: all opp items are disabled\n",
> +				       __func__);
> +		}
> +	}
> +
> +	return notifier_from_errno(ret);
> +}
> +
>  static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  {
>  	struct device *cpu_dev;
> @@ -383,11 +451,21 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
>  	dev_pm_opp_put(opp);
>  
> +	info->opp_cpu = cpu;
> +	info->opp_nb.notifier_call = mtk_cpufreq_opp_notifier;
> +	ret = dev_pm_opp_register_notifier(cpu_dev, &info->opp_nb);
> +	if (ret) {
> +		pr_warn("cannot register opp notification\n");
> +		goto out_free_opp_table;
> +	}
> +
> +	mutex_init(&info->lock);
>  	info->cpu_dev = cpu_dev;
>  	info->proc_reg = proc_reg;
>  	info->sram_reg = IS_ERR(sram_reg) ? NULL : sram_reg;
>  	info->cpu_clk = cpu_clk;
>  	info->inter_clk = inter_clk;
> +	info->opp_freq = clk_get_rate(cpu_clk);
>  
>  	/*
>  	 * If SRAM regulator is present, software "voltage tracking" is needed
> -- 
> 2.12.5

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
