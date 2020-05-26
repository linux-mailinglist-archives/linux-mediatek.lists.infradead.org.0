Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2347019A9CA
	for <lists+linux-mediatek@lfdr.de>; Wed,  1 Apr 2020 12:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QVj7SXtMIuYbssTDaVODm30xD5Ili37aqgefyx+j3nE=; b=VarVp2egZX6KTN/ixPoW1MoDQ
	1YR52heOdbq7si4vor4l1MzP35yL4S/045B81KZyywMD4DZIx3lzOPqmGThQEFWiMek3w3qgtJ9Sf
	jjh3DzPGykfOwx+ioHodri+wSFZZjJedcB9c5X5m3SmkmUEvDOxa2niajGqNV/9jEr+9p1EglXv+a
	MD8QZZz8brCiKLd1a1AT8nVaSs2u2mAUpJ8tRsf/pdilZX+MQNBFkwYocctx9pY4HsWoylT5jyRnl
	vzDfh5T4U+NeMxyjivxVN9Zg5KdYFN1/+fag9FBnKHD/j+P8K2Do7KfQp1UW/MJj4UumTn53KfAxB
	feknyxHbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJawJ-0000He-IW; Wed, 01 Apr 2020 10:49:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJaw9-0000Ac-R3; Wed, 01 Apr 2020 10:49:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA5471FB;
 Wed,  1 Apr 2020 03:49:32 -0700 (PDT)
Received: from [10.37.12.63] (unknown [10.37.12.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A4CC3F68F;
 Wed,  1 Apr 2020 03:49:21 -0700 (PDT)
Subject: Re: [PATCH v5 4/5] thermal: devfreq_cooling: Refactor code and switch
 to use Energy Model
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-5-lukasz.luba@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <b409f9d4-e9fe-1473-f2dd-aa11e3be1fd9@arm.com>
Date: Wed, 1 Apr 2020 11:49:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200318114548.19916-5-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_034933_921725_1D70C9F1 
X-CRM114-Status: GOOD (  16.27  )
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
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 vincent.guittot@linaro.org, khilman@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, orjan.eide@arm.com,
 daniel@ffwll.ch, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 rostedt@goodmis.org, matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com,
 airlied@linux.ie, javi.merino@arm.com, tomeu.vizoso@collabora.com,
 qperret@google.com, sboyd@kernel.org, mka@chromium.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, agross@kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 3/18/20 11:45 AM, Lukasz Luba wrote:
> The overhauled Energy Model (EM) framework support also devfreq devices.
> The unified API interface of the EM can be used in the thermal subsystem to
> not duplicate code. The power table now is taken from EM structure and
> there is no need to maintain calculation for it locally. In case when the
> EM is not provided by the device a simple interface for cooling device is
> used.
> 
> There is also an improvement in code related to enabling/disabling OPPs,
> which prevents from race condition with devfreq governors.
> 
> [lkp: Reported the build warning]
> Reported-by: kbuild test robot <lkp@intel.com>
> Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org> # for tracing code
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>   drivers/thermal/devfreq_cooling.c | 474 ++++++++++++++++--------------
>   include/linux/devfreq_cooling.h   |  39 +--
>   include/trace/events/thermal.h    |  19 +-
>   3 files changed, 277 insertions(+), 255 deletions(-)
> 

Gentle ping.

Daniel or Amit could you have a look at this patch?

Regards,
Lukasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
