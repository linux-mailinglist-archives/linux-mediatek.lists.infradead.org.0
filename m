Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F0ECEB7F
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 20:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdBj6ahpHiRUPV1kWh2BjlBxqWxRApCvQlS4tHh2hZE=; b=QMl6y799lishuz
	nNV5OZ+MhmHCAi2NFspWSGH++dzGFtHDiHhe+BO6YrgEP7UZhCp+lu2Tb8tom+PIua/SMT2dg3dCU
	oq4JCtVLO4iH6DpuCvtB38Qa+SYjVYl6SuczrBTsUZszvMwdwc5ndGOseuN/yzELJAFDIqSYUxQ8B
	9btG//L2gUDbjhA5cVYaDozH9Ml1bOz7GXQ7Cm9Vb8rpk0sVei8sy6ww95bI82A0mmSLKVjYALmYD
	JG65+PGMwVuWTMyUk32UdVT91ogiC9wd8E1OccOzs1/MYEdSbQRMZSSICCBwZdiWnvqJy61f19uXU
	lEL+EpGrwd6s4WYe4ecw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXRz-0004KP-7U; Mon, 07 Oct 2019 18:09:39 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXRd-00045S-Vk
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 18:09:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id e1so8684978pgj.6
 for <linux-mediatek@lists.infradead.org>; Mon, 07 Oct 2019 11:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=GeChysEpyXENIdkz70FTwZQNrGJAliQm6LKcOJ4pwgg=;
 b=1g4svc2i2jhyiyQgS7H2WqaqlY4rawaEfSSoyLIcO9cblF0u1gFFqp/KTw35+0FZfc
 MwzkbFI30GsMRmv2OloegWaVbSjb8KDnm+dfMEbweYWsOm1wGCxZsUSg/z+13uH3xzh1
 RupL3Su0rST4Jq9HoZjj9nGm9XoyTwDep1/8UQyx/IVu9uLc6qpUfKWUlHyLvUMgJXNW
 aB2X3gCDtmoi4cYwtVghiMaLgJrHmdzn/5lss3HRCyoE4uQU4faG8oZ0vBV7mGtmCjn5
 1yBEDl3LzEuJXvBb0Jp2SepKw/cROrKcSFBMbcUwB1odwRJ0Wn5DcdTOh2g1tJhlI8t4
 bchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=GeChysEpyXENIdkz70FTwZQNrGJAliQm6LKcOJ4pwgg=;
 b=a5ZMbSQhPkDlaN4zq8npv8q6TleK4KZ53H2mrcW6ycmRwojZtb8N3k8gSpy6n+AWBS
 pBc+LGtbNLLd93d3yclJ74qHgd/EMp1KFh0g4319rLczwhrttXcEsOVY61WQpCHwsA3y
 fD7CXWsASbFQKDNWoD//wcSlt6suMwy2xb178FY7YwhkywCHY+wIt/kGJIT3By5aZnY9
 mOslB5ITag0afhE8RNPK9FEhZZ33tt4xvor2CEPM7pCW5CAo/0zE9l+K5NkZCWPab26d
 srCeIETbbuzMMHQrM49ARtGJNVUpvPtHUfO8PU17NliI44fJO/2mKugYfPL1M7C29wkL
 r2yQ==
X-Gm-Message-State: APjAAAXZjHBRPsCQO57/4DFojm1+lp/Tph9BPctBECWjtMiLLeGShXyp
 dtUhMNaU7UuONJPMcYY64FOP3Q==
X-Google-Smtp-Source: APXvYqyCq2Sjyl//q7G2IzZThRFyehP3F/3geHI2eKnTCZnkHRsOjKjZK4tPTO1jHMEhvfanawQuGw==
X-Received: by 2002:a65:688a:: with SMTP id e10mr31994989pgt.221.1570471756657; 
 Mon, 07 Oct 2019 11:09:16 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:bd18:5fe6:bf81:d473])
 by smtp.gmail.com with ESMTPSA id s73sm155793pjb.15.2019.10.07.11.09.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 07 Oct 2019 11:09:16 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: YueHaibing <yuehaibing@huawei.com>, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, joel@jms.id.au, andrew@aj.id.au,
 nicolas.ferre@microchip.com, ludovic.desroches@microchip.com,
 computersforpeace@gmail.com, gregory.0xf0@gmail.com, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linus.walleij@linaro.org,
 baruch@tkos.co.il, paul@crapouillou.net, vz@mleia.com, slemieux.tyco@gmail.com,
 eddie.huang@mediatek.com, sean.wang@mediatek.com, matthias.bgg@gmail.com,
 patrice.chotard@st.com, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 mripard@kernel.org, wens@csie.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com, linux@prisktech.co.nz, michal.simek@xilinx.com
Subject: Re: [PATCH -next 16/34] rtc: meson: use
 devm_platform_ioremap_resource() to simplify code
In-Reply-To: <20191006102953.57536-17-yuehaibing@huawei.com>
References: <20191006102953.57536-1-yuehaibing@huawei.com>
 <20191006102953.57536-17-yuehaibing@huawei.com>
Date: Mon, 07 Oct 2019 11:09:15 -0700
Message-ID: <7hk19gfmwk.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_110918_030247_85B1DF7E 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rtc@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

YueHaibing <yuehaibing@huawei.com> writes:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

> ---
>  drivers/rtc/rtc-meson.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/rtc/rtc-meson.c b/drivers/rtc/rtc-meson.c
> index e08b981..9bd8478 100644
> --- a/drivers/rtc/rtc-meson.c
> +++ b/drivers/rtc/rtc-meson.c
> @@ -292,7 +292,6 @@ static int meson_rtc_probe(struct platform_device *pdev)
>  	};
>  	struct device *dev = &pdev->dev;
>  	struct meson_rtc *rtc;
> -	struct resource *res;
>  	void __iomem *base;
>  	int ret;
>  	u32 tm;
> @@ -312,8 +311,7 @@ static int meson_rtc_probe(struct platform_device *pdev)
>  	rtc->rtc->ops = &meson_rtc_ops;
>  	rtc->rtc->range_max = U32_MAX;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  
> -- 
> 2.7.4

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
