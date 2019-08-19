Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51496920CA
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 11:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=McfN+tCiEEWWVZXcqIwySPBnksNJa4GMTJAT9EmRDAg=; b=GPcqHyggadpk0B
	HnYqkRd9stxEGyt2klRXuDb4TcqzftG5tIC+6pAue8gBLQZW/5AIrWmeirJHngd+rRetobkRzQ7lG
	7XX+DeedEOoKc8sLVfcwJdo8IuZ1843Nw+O+oe0hhaHnqSK+nnSbn6LyhEwJCyfG4FcxuAGbNBRCr
	EYPbJxywpFGCq7ApbmNEu9DlTZAh1xhZ7npg9pJIbg7Mo1mZeSkODEUwQr40uIGStk+4/RfWQLojO
	1z35iW3xrxHwLVI9gIEELohRabQ5sFp8ywzfJOeCV2+dFncwDX0RbzhdxL1c53RG9vUHprfSo7Cy8
	bmPrHbmPXv45/e2UMMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeO3-00064d-3l; Mon, 19 Aug 2019 09:55:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeKW-0003sF-3n
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 09:52:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id v12so867652pfn.10
 for <linux-mediatek@lists.infradead.org>; Mon, 19 Aug 2019 02:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xGqFoegYFFErF3k96plvP+BoToF4gSQapUoW0Zrc4EI=;
 b=tjBog+GFQi8eVR5IFt2HYmaEBLiJLQHxwfxJD321hYhOdjgK5Z3oqNtUNEwz5/DGUM
 CgK2pwBoFXfPXDH/+suP2sgFZzD50XlOsXvAZez4WXG03lgGgRVPxog7eKGf5EjlDzna
 6cIC492iG1do16x4weU/6N/DzEdydwxfFqjgp17sNZsOiNwPlY9dDzaDFb/7KRppt1xh
 5H/dJvmoYdEwLttrr8+OCIrrbNijeXHXIkqoaF7oWUDtXew+OV5iEODi5hhMFjexa2dT
 GAZLnxaJobyzQ8g5eE2mEWeChuuIqMtdY08D8RSuhTxX4hxQUt2qSDTYVxXrPZ7Ml5aF
 wNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xGqFoegYFFErF3k96plvP+BoToF4gSQapUoW0Zrc4EI=;
 b=csUty6Pjqo7gJmbrIDnYqPG7hPETfiHBy2v1haYF3hyJcDrHWgXBiZq4R2MaHVJmpe
 u/qwllCP4zHOS+ZEGQl6ZV9gzdRbu5n/rsLczD8DfnqOkzc0UlKRNhwfSoU0rd9wQVk6
 BeWoFU4PUBsIBv5ceHJhB71UAzzHP1YBPoKwf4H/ixpUfouIYhwhwvdjCeObVaLBlpYo
 w2HEHyoyZY/vcaYhudkfmwZj0UXvKpCeuz3582DuWHYuQW5xpfx+GeT3r5AWZlj4ENPx
 gzlOuyMfm91jDx0poCIPCRj6MpnHeM/uJcbqZdRiHooQfcC2YkDq2A+YTdgIilB9rWVz
 dPtQ==
X-Gm-Message-State: APjAAAXoXwmfXRsTR8tAkldHtW8QQoOeyNRmLt0TLA6N7NXZoVlcRAzL
 51huMSDhVIPlLSoAVeTS4R8zQg==
X-Google-Smtp-Source: APXvYqwefojTPrDuHM+2Bz8IW3MPXqRE/59Iakl1TK1LeLtzUvPNSDdCUFmUg0z973E3A07y52xJwg==
X-Received: by 2002:a17:90a:fd8c:: with SMTP id
 cx12mr19976973pjb.95.1566208318998; 
 Mon, 19 Aug 2019 02:51:58 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id b126sm2036018pfb.110.2019.08.19.02.51.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 02:51:58 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:21:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 1/8] cpufreq: mediatek: change to regulator_get_optional
Message-ID: <20190819095156.m3iltf5ni3pprrt7@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-2-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565703113-31479-2-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_025200_307255_90C353A5 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
> For new mediatek chip mt8183,
> cci and little cluster share the same buck,
> so need to modify the attribute of regulator from exclusive to optional
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/cpufreq/mediatek-cpufreq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index f14f3a85f2f7..a370577ffc73 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -338,7 +338,7 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  		goto out_free_resources;
>  	}
>  
> -	proc_reg = regulator_get_exclusive(cpu_dev, "proc");
> +	proc_reg = regulator_get_optional(cpu_dev, "proc");
>  	if (IS_ERR(proc_reg)) {
>  		if (PTR_ERR(proc_reg) == -EPROBE_DEFER)
>  			pr_warn("proc regulator for cpu%d not ready, retry.\n",

Applied. Thanks.

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
