Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DA71B70BC
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Apr 2020 11:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zjuo3T0eAUyrx7c931i1N0OS7HmsD0Ihm/1UIdivpCU=; b=XoF85fC8bKA+YVi3PLM/EP5fs
	DHsfXlHgnX4NHnrKDZcp8c/rFgMY2v8NYxBjVWtaPfI1MSq+9lAdLZS99p1QnBydfDaTCGCZGLQXH
	Nv1toIRfgNk7nwUGcvXDP8B5AudvThZ1fGuX5Mp0n0yw7UEtW1c05oY53zB69dLohiouXMJ43XWi+
	OMO1DpeDE4h50r+QF5fm12b0PmYGL5NwrVMKk+u3rwdJv2YD2UPMLY74tjbkddbWDQRypDEcwKZGF
	+Yv+ASEiqAOUjhxzfa8yvNNgZkmddL/yaBWO2HbfLE1dJ9b9ahJsM1C867SY46ss9vlBYTKHuKfqX
	A7MmgtIYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRuXQ-0000Yp-Dc; Fri, 24 Apr 2020 09:22:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRuXF-0000Ow-1x; Fri, 24 Apr 2020 09:22:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CEBB81FB;
 Fri, 24 Apr 2020 02:22:11 -0700 (PDT)
Received: from [10.37.12.92] (unknown [10.37.12.92])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A5703F73D;
 Fri, 24 Apr 2020 02:22:06 -0700 (PDT)
Subject: Re: [PATCH] thermal: power_allocate: add upper and lower limits
To: Michael Kao <michael.kao@mediatek.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, hsinyi@chromium.org,
 linux-pm@vger.kernel.org, srv_heupstream@mediatek.com
References: <20200424071601.2636-1-michael.kao@mediatek.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <accb83e0-ffbe-b6e3-6bf9-e7cc8b9fe19c@arm.com>
Date: Fri, 24 Apr 2020 10:22:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200424071601.2636-1-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_022213_135256_A50C93EF 
X-CRM114-Status: GOOD (  21.20  )
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Michael,

On 4/24/20 8:16 AM, Michael Kao wrote:
> The upper and lower limits of thermal throttle state in the
> device tree do not apply to the power_allocate governor.
> Add the upper and lower limits to the power_allocate governor.
> 
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>   drivers/thermal/thermal_core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
> index 9a321dc548c8..f6feed2265bd 100644
> --- a/drivers/thermal/thermal_core.c
> +++ b/drivers/thermal/thermal_core.c
> @@ -598,7 +598,7 @@ int power_actor_set_power(struct thermal_cooling_device *cdev,
>   	if (ret)
>   		return ret;
>   
> -	instance->target = state;
> +	instance->target = clamp_val(state, instance->lower, instance->upper);
>   	mutex_lock(&cdev->lock);
>   	cdev->updated = false;
>   	mutex_unlock(&cdev->lock);
> 

Thank you for the patch and having to look at it. I have some concerns
with this approach. Let's analyze it further.

In default the cooling devices in the thermal zone which is used by IPA
do not have this 'lower' and 'upper' limits. They are set to
THERMAL_NO_LIMIT in DT to give full control to IPA over the states.

This the function 'power_actor_set_power' actually translates granted
power to the state that device will run for the next period.
The IPA algorithm has already split the power budget.
Now what happen when the 'lower' value will change the state to a state
which consumes more power than was calculated in the IPA alg... It will
became unstable.

I would rather see a change which uses these 'lower' and 'upper' limits
before the IPA do the calculation of the power budget. But this wasn't
a requirement and we assumed that IPA has full control over the cooling
device (which I described above with this DT THERMAL_NO_LIMIT).

Is there a problem with your platform that it has to provide some
minimal performance, so you tried to introduce this clamping?

Regards,
Lukasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
