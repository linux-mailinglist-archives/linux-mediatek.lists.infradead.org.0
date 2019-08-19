Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A85920DC
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 12:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYGexGX4Tusw6zRG/bHUC2cgrUyIS3fy7fzEap+Oe/Q=; b=hY9tClXZjG47yD
	FRG1ne1fOVABhycSR9poNooIY6XZTL1dUwsuqsIlPqvfckO6LjpGKCNC5YsuBjE/1LtJX71e8wnp1
	u4g/hD9P18+xLAXauvENN6cBSMgDBjGLhVygeDqVAnc4oPco5p/25n5q9rRINnwl+lEFg2VxysFC3
	1s/4WEHyC+fz2qzI76XU3HVa04zYq+sIG/P3sjbRLMBl6v9cyvyUbfldCMxa+em8JjXFf1jPKyeHz
	FAcxMNU2EcNw5cUhhlCDQOrdYyZ5plQhCaU9Q5BjVpbgMQp70YuWYzzlYDMoiqhOoDcvSuVBQ2fgL
	1MIjIhcI7ZAzDS1sqojQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeS4-0006Oc-Cp; Mon, 19 Aug 2019 09:59:49 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeRg-0006N6-Vl
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 09:59:37 +0000
Received: by mail-pg1-x531.google.com with SMTP id m3so909702pgv.13
 for <linux-mediatek@lists.infradead.org>; Mon, 19 Aug 2019 02:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=olmkP9Ue0IYi0nIG9Jgk3ly+FXYntmyDpFNEtwV9Avw=;
 b=jVMofs4s+gnCUAI79Ip6xg3i2RYI+g/WOdXI6cIBBoHeRXdYRK95YSl51r2dCRiGoS
 CiCQd8CQXBbUOr6+gF8VweGsgKMLsOcgsbdzsM35hExJDC8SuJ+8KO9GOiLG6J3lAZlM
 JBekdQXJuGo3w80gSIoEBzWdp7/nrsEpbTVMw6PIzssbWVHlxegW8W6TKqil4zjQUMKw
 UBZZopGFveiUcMuqZ4lF43p0BGxD8HqGxseLqoRLQeEuLwzYDRVodbbJ32/p2h9mj5ji
 UoP5hP0x0uBcNzonEoOq3XHWSVYrDeNst784sV+x8X5/hR0xw+fivaQ/8nmLW6eRtpKb
 L4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=olmkP9Ue0IYi0nIG9Jgk3ly+FXYntmyDpFNEtwV9Avw=;
 b=Tv/NOlsexKflpL9lAC7+OSyr2I/VLC5cgksZ1rPlN+97tSak927dDG4PkPfyKySC+b
 uUCLs87LpllZNV6cButcCxFjM+xChhzpZm/tZ8DTvVJdkYiJXtKl6WIK9aI5HtV8YDB3
 UZXiPzdoowVHe7TWl7uoODXYsv4+mN4OJSD6di2r/TrUOXlY0mGpxPbIn1jQUmGwHhIv
 hN5kb6KMgwY7dzOUkyJo7hWV9lxKMM8vfIYQ9fnAJyfKoFIeM/7EpnlrGKeRWV2G5CmB
 m5j45qnDNUtg38pY6izHadelgQQhrVkjNoEiJScz580XNJaHOKRHMyvHAarpj9ms9zPA
 JrNw==
X-Gm-Message-State: APjAAAXylOJcQhFYWSVdpoZ9ZFl9lyEizAc+hSH+p81oJEsw+VR6tO7v
 9IzglitlX/x/9DfN7t7uKg+jmg==
X-Google-Smtp-Source: APXvYqzxIL7FNkeVE+u8/wl10luXKQYJ2XZM5P9oxQ0cMb5m0opTFk66svqyoJdFdPJeYTRamxtKbA==
X-Received: by 2002:a65:5584:: with SMTP id j4mr18996392pgs.258.1566208763608; 
 Mon, 19 Aug 2019 02:59:23 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id r4sm18937523pfl.127.2019.08.19.02.59.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 02:59:22 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:29:21 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 3/8] cpufreq: mediatek: Add support for mt8183
Message-ID: <20190819095921.sk2pltuylfaxklnx@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-4-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565703113-31479-4-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_025927_260768_52895833 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
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
> Add compatible string for mediatek mt8183
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  drivers/cpufreq/mediatek-cpufreq.c   | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 03dc4244ab00..0f7e837a264e 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -117,6 +117,7 @@ static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "mediatek,mt817x", },
>  	{ .compatible = "mediatek,mt8173", },
>  	{ .compatible = "mediatek,mt8176", },
> +	{ .compatible = "mediatek,mt8183", },
>  
>  	{ .compatible = "nvidia,tegra124", },
>  	{ .compatible = "nvidia,tegra210", },
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index acd9539e95de..4dce41b18369 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -546,6 +546,7 @@ static const struct of_device_id mtk_cpufreq_machines[] __initconst = {
>  	{ .compatible = "mediatek,mt817x", },
>  	{ .compatible = "mediatek,mt8173", },
>  	{ .compatible = "mediatek,mt8176", },
> +	{ .compatible = "mediatek,mt8183", },

Had to fix rebase conflict manually for this. Please always rebase on latest
linux-next.

Applied. Thanks.

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
