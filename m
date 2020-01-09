Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8DA1358C8
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 Jan 2020 13:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6XO3CTmkJeGwbHiUWSecwhcstGZKe8JTaVPdWV5GPxM=; b=qH55CZ8Me0usneitrKBlXUmR7
	5CAssGpzFUr4r1Vt9ogjijQRnAbud3sQONe21ZJTVJdVJx/qXTX2dtsNAxT/OnpF2XLB7kzjpfXAB
	bRroINfcmTUvSnnvTktGVhkSc8PNceYzuRf6Fu8I/B4mg/YHQMwqqPxqFn7ncv9VPWmUJHZEbtltI
	uZIHvSkJw3WdcjRqcxa58K3jHZBg5ZlY8aMAjH+MeEbthKhkwCRfDqsto1/KPI++t8V3BqSyQtrI0
	Uhw0W00tlOS4OpZiGXRwYMMqE7U/EGM5B4y8g92/t8Bb3y7lQcVOj1/a2Fuavo2T8rcxmS+qPEhdS
	g1XhMYIpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWXy-0006LU-2e; Thu, 09 Jan 2020 12:04:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWXc-00069B-Tq; Thu, 09 Jan 2020 12:03:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7293831B;
 Thu,  9 Jan 2020 04:03:56 -0800 (PST)
Received: from [10.1.32.29] (e122027.cambridge.arm.com [10.1.32.29])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C6553F534;
 Thu,  9 Jan 2020 04:03:53 -0800 (PST)
Subject: Re: [PATCH v2 3/7] drm/panfrost: Improve error reporting in
 panfrost_gpu_power_on
To: Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-4-drinkcat@chromium.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <3997e444-e388-929f-b764-537d62643bae@arm.com>
Date: Thu, 9 Jan 2020 12:03:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108052337.65916-4-drinkcat@chromium.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_040357_048967_F1691397 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 08/01/2020 05:23, Nicolas Boichat wrote:
> It is useful to know which component cannot be powered on.
> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

Looks like helpful error reporting.

Reviewed-by: Steven Price <steven.price@arm.com>

> 
> ---
> 
> Was useful when trying to probe bifrost GPU, to understand what
> issue we are facing.
> ---
>   drivers/gpu/drm/panfrost/panfrost_gpu.c | 15 ++++++++++-----
>   1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_gpu.c b/drivers/gpu/drm/panfrost/panfrost_gpu.c
> index 8822ec13a0d619f..ba02bbfcf28c011 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_gpu.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_gpu.c
> @@ -308,21 +308,26 @@ void panfrost_gpu_power_on(struct panfrost_device *pfdev)
>   	gpu_write(pfdev, L2_PWRON_LO, pfdev->features.l2_present);
>   	ret = readl_relaxed_poll_timeout(pfdev->iomem + L2_READY_LO,
>   		val, val == pfdev->features.l2_present, 100, 1000);
> +	if (ret)
> +		dev_err(pfdev->dev, "error powering up gpu L2");
>   
>   	gpu_write(pfdev, STACK_PWRON_LO, pfdev->features.stack_present);
> -	ret |= readl_relaxed_poll_timeout(pfdev->iomem + STACK_READY_LO,
> +	ret = readl_relaxed_poll_timeout(pfdev->iomem + STACK_READY_LO,
>   		val, val == pfdev->features.stack_present, 100, 1000);
> +	if (ret)
> +		dev_err(pfdev->dev, "error powering up gpu stack");

As mentioned in my previous email - we could just drop this entire section dealing with the core stacks and let the GPU's own dependency management code handle it. Of course there might be a GPU out there for which that is broken... in which case some sort of quirk handling will be needed :(

Steve

>   
>   	gpu_write(pfdev, SHADER_PWRON_LO, pfdev->features.shader_present);
> -	ret |= readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
> +	ret = readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
>   		val, val == pfdev->features.shader_present, 100, 1000);
> +	if (ret)
> +		dev_err(pfdev->dev, "error powering up gpu shader");
>   
>   	gpu_write(pfdev, TILER_PWRON_LO, pfdev->features.tiler_present);
> -	ret |= readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
> +	ret = readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
>   		val, val == pfdev->features.tiler_present, 100, 1000);
> -
>   	if (ret)
> -		dev_err(pfdev->dev, "error powering up gpu");
> +		dev_err(pfdev->dev, "error powering up gpu tiler");
>   }
>   
>   void panfrost_gpu_power_off(struct panfrost_device *pfdev)
> 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
