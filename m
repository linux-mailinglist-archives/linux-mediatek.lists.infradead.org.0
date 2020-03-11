Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480A181061
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Mar 2020 07:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVFgQQh/tx3HFTi2Y+Df2ZzhT0l7KiJ8V6xi15GwQ8E=; b=CnnI8yWtMm8B03
	B0+c9EL+/uwZSHsu1bnJkZcrdPi6iL77Wz1k0opSc/5Ibw7byI0siU1jAUsYe2x1ItajVKSYSpgZT
	lKSkN7APAkPaBQlIpJSu09/PDw0D4TbD279c5HbOTEGA2dLUrgbDzvVnRBg+ZxNPddGRxiFM4eSd/
	SZ8y9UVq6HZzBAxpo3/Y0IsRk17Pvin/8wFH1w0J/q/77AkittPHzD17ZbUbzavkM1IZFV8FCRLIe
	GhJ4I5hUm2RmUUvLasR9ca2KjF6tzfKWHzYTL1d36MMpw0G+XV+ENwOXp1bv1iPHL5PZyhyR1A9/P
	nF2fukIrsO+cQdzQ/BMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBuVj-0003fq-Sk; Wed, 11 Mar 2020 06:06:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBuVZ-0003XL-3G
 for linux-mediatek@lists.infradead.org; Wed, 11 Mar 2020 06:06:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id b1so578120pgm.8
 for <linux-mediatek@lists.infradead.org>; Tue, 10 Mar 2020 23:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VD15hEVyVLaO06R8soxT+wdeQAWi6jWDprT4gENa4Pk=;
 b=BXuEks7icu5+J5qHi20hsEXmiCS9E/ow1l+ZYZM9dxF94vzf71w5/CXBQ/elTEp2KY
 sK8PCWAC3CzcAsApi7PogMStwLY/F4bznDnaXJEdBmhw68CVuyf9vg0GSasdNXWi1ZwT
 7hT/PuFLEvpc89BNSLsKiNMtvhjH4ARqGRItPC1FZ5eS88OofdfR+fvzxCiIw9RNVbBH
 DKPTCJAE4h7KiuM6zOg9g0+3oavV1W+RM5RX6EcvpwmUgcS5BSDXSw+8pyqe4yxY6HxW
 YO+gCM+xBLjl9wjlLUpYgIyOjYjSmeSVRwCpR+CVEmmjBcyduqs/JiHWgwd69myM0ZN/
 bKMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VD15hEVyVLaO06R8soxT+wdeQAWi6jWDprT4gENa4Pk=;
 b=RR6YQCX9Kw3fFVcHDC6kvi99Tu9BgENYYXtHRc2X9sWXsM8aGJEwhgkBg9uqMuxqN+
 crNXDx8ad8mBll4GGMgzYsY0d8xX9n5c0sqAIfCb+GsC1/qcolY3eR2ST+Uc57fqilBv
 tYvOsvJO244MeniEMeWxK7ivvB1mR/u4/tp4DO27cZBAoL4He4cX6oCWXbF0Dsf4hmrp
 7PuMEuwOEOXf9+rk6f9sMZEH1OsgIiR9Tx03+GNnmkVgcV39omOC3UV1roEQ5FuD3B+l
 DAUchZvzDrICBh3AWyQJtTgvF2Hz6GVyY25PfR0ZqawJivY2B0wEUkUH6rG9ttl92Mbl
 hXfg==
X-Gm-Message-State: ANhLgQ3236JXj/gm7A/qK4WqqdsTk7f6WHxqkF7JIRAFDxXODNA7AhMu
 QHL1lHjIecgKxLjwLVT76uZRFw==
X-Google-Smtp-Source: ADFU+vtUcWmiYBhCHp72xQGkMofh54beImT2nmLF78jXNh6JeBSFkkPXyzzpZemY6U8GEERnxtK6Bg==
X-Received: by 2002:a63:a055:: with SMTP id u21mr1300692pgn.100.1583906780227; 
 Tue, 10 Mar 2020 23:06:20 -0700 (PDT)
Received: from localhost ([122.171.122.128])
 by smtp.gmail.com with ESMTPSA id i5sm31347131pfo.173.2020.03.10.23.06.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Mar 2020 23:06:19 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:36:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
Message-ID: <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583827865.4840.1.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_230621_142332_B02D0DB5 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 10-03-20, 16:11, andrew-sh.cheng wrote:
> On Tue, 2019-12-10 at 14:43 +0800, Viresh Kumar wrote:
> > On 09-12-19, 14:56, andrew-sh.cheng wrote:
> > > On Wed, 2019-11-27 at 14:06 +0530, Viresh Kumar wrote:
> > > > On 26-11-19, 19:50, Andrew-sh.Cheng wrote:
> > > > > +		if (!IS_ERR(opp_item))
> > > > > +			dev_pm_opp_put(opp_item);
> > > > > +		else
> > > > > +			freq = 0;
> > > > > +
> > > > 
> > > > What is the purpose of the above code ?
> > > When dev_pm_opp_find_freq_ceil() doesn't find matching opp item, freq
> > > value won't be set.
> > > Set it as 0 for below checking
> > > > 
> > > > > +		/* case of current opp is disabled */
> > > > > +		if (freq == 0 || freq != info->opp_freq) {
> > > > > +			// find an enable opp item
> > > > > +			freq = 1;
> > > > > +			opp_item = dev_pm_opp_find_freq_ceil(info->cpu_dev,
> > > > > +							     &freq);
> > > > > +			if (!IS_ERR(opp_item)) {
> > > > > +				dev_pm_opp_put(opp_item);
> > > > > +				policy = cpufreq_cpu_get(info->opp_cpu);
> > > > > +				if (policy) {
> > > > > +					cpufreq_driver_target(policy,
> > > > > +						freq / 1000,
> > > > > +						CPUFREQ_RELATION_L);
> > > > 
> > > > Why don't you simply call this instead of all the code in the else
> > > > block ?
> > > These else code is used to check "current opp item is disabled or not".
> > > If not, do nothing.
> > > If current opp item is disabled, need to find an not-disabled opp item,
> > > and set frequency to it.
> > 
> > Right. So this notifier helper of yours receive the opp which is getting
> > disabled, why don't you compare its frequency directly to see if the current OPP
> > is getting disabled ?
> Sorry to overlook your question.
> This is because when the opp is disabled,
> we cannot use dev_pm_opp_get_freq() to get frequency of that opp.
> There is a check:
> 	if (IS_ERR_OR_NULL(opp) || !opp->available) {

I think we can remove the available check here, as we are jut trying
to find frequency of an OPP we already have. Send a patch for that
please.

> 		pr_err("%s: Invalid parameters\n", __func__);
> 		return 0;
> 
> > 
> 

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
