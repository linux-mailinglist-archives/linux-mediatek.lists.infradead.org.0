Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A18184494
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Mar 2020 11:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1b5eNpHYX49ZqNxw3FN0X0BzyvktxH6LN81V+kzGjAs=; b=BOF7cYMgsx/BVF
	DHeFbmh4u8yZog3a2PLnu1XnXGT0NQu7hcIJjNc0EafDoBWNU8FECYqMiFa17Hg42caEa/t6D6klZ
	SBtw0cuZ75VA/NUOs3B7P9x8iz6Pt37QXgHfgvQp5um43FjiqU/NKCcJMLwDWgep/gcXhSTLQfAdI
	WJgzGkdHwKILpb073z5CPpCQttQ7b22bF9w2rY0huJfm4ITWyLxxdQUeLm6PZWI8GzOBVrHVMA7w7
	M5cRWqYrpSH8I6ZBpSguiuiJ+7+JrOOmykplqRsSmOY9bIQ5dwe0t0GETh/JBo3NAX7Z5llowW9HC
	1v1/6jBShtBxhVSUcQuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChLq-0004Rq-4Q; Fri, 13 Mar 2020 10:15:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChLn-0004Qw-1z
 for linux-mediatek@lists.infradead.org; Fri, 13 Mar 2020 10:15:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so9263660wmb.0
 for <linux-mediatek@lists.infradead.org>; Fri, 13 Mar 2020 03:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=A2S0VguwI+vPRoafp0n7H/FnoxCrEJkQC7JvYKj1Y0s=;
 b=GVMDp2vZE2aQwlKRTXncVtfN/X+6h48E0TlmseeRuAA107vTByb4SPEwMedGts2FpH
 0TL7glG8mEnbMDZ+queQzD2z8DhUOZNdJH7ieZjOQnso4/ztWA4Zn75c65eSChADubSd
 0cXZHBjArc0TCK17CXch9WBT9JSoawEIY9faPIiTiyZVLh7CB+EXTkP4tDkHsfeB1+R2
 YXRhfNpkpNTIcVQmQ/Elu9NY3FwXfyvYutM+MW2tImKrOwQKW22UE3kEC/U09RRMs36N
 k87s/4AcSbJhgTuxTtpxn6vzTgZzEV/FulMOW4LM8nYmHWyTFOvERzjfZVu+JYlP2r9S
 epPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A2S0VguwI+vPRoafp0n7H/FnoxCrEJkQC7JvYKj1Y0s=;
 b=OtsnmbFIKJp/DeC9bvSedID4EO0vEpt2E7EYeNcl64cNvTmujtqCi86JrQEiCG0UVL
 DDGrrjp8vkxQgb9jebs95KmIpumWuqIRAyV8LUWNw+7pozTQD8srcRW31Ed5LtxEzlOf
 Wosas81EJjFMD14h9yr6qNNolW8d8FF9rN/6Ru62BWtdSWF/OggROimY5T82E1wJQ7hk
 3s41+uKTasxlcwNVex1eC5kf+NMmJA27ddwzjTlBIMiWqqes0tyCGduWFbu12/DXc1HQ
 VRM56Wsh8dU23Hw8yTLHOfQbB3AkTe83PFYaYduqRtgzbcscIIl/+7/KTiKJS2ZssYAe
 8Y4g==
X-Gm-Message-State: ANhLgQ1bDRWDnmKURCttCuIjtG90Mnijq71NJTRRBLGOdp+HzmZCip6k
 mmkYS+DocXmxa/3wBptAAuLhQGotG1TpYg==
X-Google-Smtp-Source: ADFU+vvfNiM0lhbIk+4DF69YACHaSoOD2UzvSXjcbL/Yevz/3tgRAyjOYY4bwXeZHBIHemSgOn8+hQ==
X-Received: by 2002:a1c:9e85:: with SMTP id h127mr9702121wme.145.1584094528850; 
 Fri, 13 Mar 2020 03:15:28 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id a73sm280921wme.47.2020.03.13.03.15.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 03:15:28 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:15:24 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v4 2/4] OPP: change parameter to device pointer in
 dev_pm_opp_of_register_em()
Message-ID: <20200313101524.GA150397@google.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-3-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309134117.2331-3-lukasz.luba@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_031531_129985_78154296 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -14.0 (--------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-14.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 vincent.guittot@linaro.org, khilman@kernel.org, agross@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de,
 orjan.eide@arm.com, daniel@ffwll.ch, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Monday 09 Mar 2020 at 13:41:15 (+0000), Lukasz Luba wrote:
> diff --git a/drivers/cpufreq/cpufreq-dt.c b/drivers/cpufreq/cpufreq-dt.c
> index d2b5f062a07b..676b56424886 100644
> --- a/drivers/cpufreq/cpufreq-dt.c
> +++ b/drivers/cpufreq/cpufreq-dt.c
> @@ -275,7 +275,9 @@ static int cpufreq_init(struct cpufreq_policy *policy)
>  	policy->cpuinfo.transition_latency = transition_latency;
>  	policy->dvfs_possible_from_any_cpu = true;
>  
> -	dev_pm_opp_of_register_em(policy->cpus);
> +	ret = dev_pm_opp_of_register_em(cpu_dev, policy->cpus);
> +	if (ret)
> +		dev_dbg(cpu_dev, "Couldn't register Energy Model %d\n", ret);
>  
>  	return 0;

Ah, that answers my comment on patch 01. You're adding the error
messages here.

Isn't this more boilerplate for the drivers ? All they do is print the
same debug message. Maybe just move it inside dev_pm_opp_of_register_em
directly ?

Thanks,
Quentin

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
