Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0201DE77B
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QO7eqj/3jFYXmc4H/QDt9PBPebdx6eHy/f0VAKCIjdU=; b=GIvEyGoKiIV1OW
	X509PcyMXlvcmPdv+TU4w+ppYHBRhn5BD7UETzjVt0/F7eAMLxgEPQtPepVjBN99csphmxO5N30w3
	owlEKbKKHQpsw2NZZdJNdX0LLZ1NQUVma9dIQDNynBOdE36GYDBoMm50PJLGS/iBmEGKBVPmO3rBJ
	U3p+T/4oIdmvykiAA7TRQXIscCk0guwJObHhq+CzP/ETe6FaARzkzUuIweX+dENzmLjCjcMmpTfKI
	Gal4ugIow0yV5yKXJm84hj5/3GQnH8LbRG+vxXX7hK9x4Xgklo04YEEY0mbQHG4FWN7cG2gOEJE3d
	O81CdsOJdxxELQz6OKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7H0-0001Xh-V2; Fri, 22 May 2020 12:59:38 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7Gt-0001WL-Sj; Fri, 22 May 2020 12:59:36 +0000
X-IronPort-AV: E=Sophos;i="5.73,421,1583190000"; d="scan'208";a="450910885"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2020 14:59:22 +0200
Date: Fri, 22 May 2020 14:59:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: kbuild-all@lists.01.org, "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org, 
 "Andrew-sh . Cheng" <andrew-sh.cheng@mediatek.com>, 
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Saravana Kannan <skannan@codeaurora.org>, 
 linux-mediatek@lists.infradead.org, Sibi Sankar <sibis@codeaurora.org>, 
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] PM / devfreq: fix odd_ptr_err.cocci warnings
In-Reply-To: <20200521160908.GA88022@052716d1a29e>
Message-ID: <alpine.DEB.2.21.2005221458020.2442@hadrien>
References: <202005220024.mccUgEgn%lkp@intel.com>
 <20200521160908.GA88022@052716d1a29e>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_055932_200776_68F07398 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [192.134.164.83 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

This provides a patch, but it doesn't look like the right one.  It looks
like the if test should be testing opp_table,

julia

On Fri, 22 May 2020, kbuild test robot wrote:

> From: kbuild test robot <lkp@intel.com>
>
> drivers/devfreq/governor_passive.c:336:7-13: inconsistent IS_ERR and PTR_ERR on line 337.
>
>  PTR_ERR should access the value just tested by IS_ERR
>
> Semantic patch information:
>  There can be false positives in the patch case, where it is the call to
>  IS_ERR that is wrong.
>
> Generated by: scripts/coccinelle/tests/odd_ptr_err.cocci
>
> CC: Saravana Kannan <skannan@codeaurora.org>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> ---
>
> url:    https://github.com/0day-ci/linux/commits/Andrew-sh-Cheng/Add-cpufreq-and-cci-devfreq-for-mt8183-and-SVS-support/20200520-222709
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
> :::::: branch date: 26 hours ago
> :::::: commit date: 26 hours ago
>
> Please take the patch only if it's a positive warning. Thanks!
>
>  governor_passive.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> --- a/drivers/devfreq/governor_passive.c
> +++ b/drivers/devfreq/governor_passive.c
> @@ -334,7 +334,7 @@ static int cpufreq_passive_register(stru
>
>  			opp_table = dev_pm_opp_get_opp_table(cpu_dev);
>  			if (IS_ERR(devfreq->opp_table)) {
> -				ret = PTR_ERR(opp_table);
> +				ret = PTR_ERR(devfreq->opp_table);
>  				goto out;
>  			}
>
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
