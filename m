Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDA4A9590
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Sep 2019 23:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUzsoyYHMuwnuM1d6EoCpsl0RNQeQ657wmlid6u/piw=; b=Omd8HRJ3oqVx6g
	rbBUPEsfW3CVDuzeSTMYNdtlgM+jwK8NEJd8Cff+87H8vlik+ub9Xqi+Kke0ICcCThmUbkoEWaq7p
	rN2g33aFhK4VG6LnBW2bh1Pyvxi0voasAIvJtHWqDOHikUkw7jS/TPIdau36h4wUbWSeXtrnhdTmW
	3FPqZlwf5XCJmN5jR9Yv6cAjJwpg/5jGuWACJRfs3Wkm0ioD6R7nuI+uzAS6IzfydXdQaXtWl0uVd
	WetCHQ0GA6Bif/EMhqb7gMPrApHwNHAstQNncHfmwe3ZV3YRavZVS/cLRLQYW9P30XqkwbRj9YL5T
	OyjhlvK9x/jN9hnk2iLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dB6-0004Fx-Dx; Wed, 04 Sep 2019 21:51:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dAq-00042A-Io
 for linux-mediatek@lists.infradead.org; Wed, 04 Sep 2019 21:50:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id r12so180185pfh.1
 for <linux-mediatek@lists.infradead.org>; Wed, 04 Sep 2019 14:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8+W3OmsE39CBrAqbMD2zucygtqzvFfD25TTwncsech0=;
 b=GjpcQGU018si9YdNfH37M4Jo6uFHTdY0pqnKW1bI2T4aZO3/19Jl5FH8QdTr0Txf8r
 lbdktBIKjY2hxc0z7a5SHCBYbyQppUU8ZGyzcF8t2+flQ2Lwlaci+p+gktP+EW6EDqmr
 7s3ugo5oTSkkJtiu8ZB2vHh7nTcCkJZ54OVg2D6VObo1g+/f028Cz07rHoklB10LETyV
 dFLuT9gELB49hdOz0T2z4JW8dQv635Vj0nXxpecfeEsOaJpbIBJvSdsZWsjU0QjyIfUH
 6VYX5tAcR4yuR3xTSFjlWWV60la4AcfUIWbgbdwQcCg1cQrBM60/vQn9sZI9Ky7KMt6T
 2ZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8+W3OmsE39CBrAqbMD2zucygtqzvFfD25TTwncsech0=;
 b=sZs34RPqfLexMye83tLPCgwQdMJ1jL/P1ADEsw6VvT399NkqWSYgXPqpQ4BfOHdvpK
 r/S6G1FhAwmcAvT565vwnaUp8lcnFGIs7VjBD1SkmdPTpjnT2SvBrd+oqelJrejmkuQ5
 0YciQXQtcUViSI16+pwPhMeu5Zc3hRDZ2WTJv0+eY5DhmYPJGaMpA0V+tRorwGKwUaOC
 knU1pswTzFyQczjlXTThq9ZKrMAO7b7zOCIrOSDB6dxXc+G6lj34Tu7YeQteS2wXLTZg
 akoj0i21/F7Vsnf32coks8rd102H9p9l1lKsRpdWDrullDavNH9Xwg5wKNWLTtE7Jk9d
 eSMw==
X-Gm-Message-State: APjAAAXFcq20q3Z96TvU+oqCG0JcOuQZHEuFp5j2B7WrtSb8jV4zMW1m
 /0NXb9r/iKtGoegLJu8P0+1JZw==
X-Google-Smtp-Source: APXvYqznFPRSJgh/JgdkRzej7oU2uH6AV2QPDQ8rDqB3T60xWU5jKILyc014vwXgwi8/8ui1HTj0dw==
X-Received: by 2002:a17:90a:cc0c:: with SMTP id
 b12mr375908pju.138.1567633843429; 
 Wed, 04 Sep 2019 14:50:43 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w2sm88618pgc.32.2019.09.04.14.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 14:50:42 -0700 (PDT)
Date: Wed, 4 Sep 2019 14:50:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 08/15] thermal: tsens: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904215039.GG580@tuxbook-pro>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-9-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904122939.23780-9-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_145044_626567_C6A98867 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mans@mansr.com, mmayer@broadcom.com, eric@anholt.net,
 miquel.raynal@bootlin.com, linux-stm32@st-md-mailman.stormreply.com,
 heiko@sntech.de, amit.kucheria@verdurent.com, f.fainelli@gmail.com,
 daniel.lezcano@linaro.org, phil@raspberrypi.org,
 linux-rockchip@lists.infradead.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rui.zhang@intel.com, david.hernandezsanchez@st.com, alexandre.torgue@st.com,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, edubezval@gmail.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 gregory.0xf0@gmail.com, matthias.bgg@gmail.com, horms+renesas@verge.net.au,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, jun.nie@linaro.org, computersforpeace@gmail.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed 04 Sep 05:29 PDT 2019, YueHaibing wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/thermal/qcom/tsens-common.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/thermal/qcom/tsens-common.c b/drivers/thermal/qcom/tsens-common.c
> index 528df88..43ce4fb 100644
> --- a/drivers/thermal/qcom/tsens-common.c
> +++ b/drivers/thermal/qcom/tsens-common.c
> @@ -155,7 +155,6 @@ int __init init_common(struct tsens_priv *priv)
>  {
>  	void __iomem *tm_base, *srot_base;
>  	struct device *dev = priv->dev;
> -	struct resource *res;
>  	u32 enabled;
>  	int ret, i, j;
>  	struct platform_device *op = of_find_device_by_node(priv->dev->of_node);
> @@ -166,8 +165,7 @@ int __init init_common(struct tsens_priv *priv)
>  	if (op->num_resources > 1) {
>  		/* DT with separate SROT and TM address space */
>  		priv->tm_offset = 0;
> -		res = platform_get_resource(op, IORESOURCE_MEM, 1);
> -		srot_base = devm_ioremap_resource(&op->dev, res);
> +		srot_base = devm_platform_ioremap_resource(op, 1);
>  		if (IS_ERR(srot_base)) {
>  			ret = PTR_ERR(srot_base);
>  			goto err_put_device;
> @@ -184,8 +182,7 @@ int __init init_common(struct tsens_priv *priv)
>  		priv->tm_offset = 0x1000;
>  	}
>  
> -	res = platform_get_resource(op, IORESOURCE_MEM, 0);
> -	tm_base = devm_ioremap_resource(&op->dev, res);
> +	tm_base = devm_platform_ioremap_resource(op, 0);
>  	if (IS_ERR(tm_base)) {
>  		ret = PTR_ERR(tm_base);
>  		goto err_put_device;
> -- 
> 2.7.4
> 
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
