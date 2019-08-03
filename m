Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3138068F
	for <lists+linux-mediatek@lfdr.de>; Sat,  3 Aug 2019 16:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZh0Rp8OnWKu3w83RJCoFCHIerWg0hxRyNl1D53NgnU=; b=mtEbgx1Qt/J75U
	jSW26eufGqJ6Vr8MINkWs9TgYh1KjOZ9DW2f0QmSRXMjl+643IUlVoCHZ1WJ67HDVqzyNLti+5yKk
	nS03p2g0VPco5tep8hU27mqLsLDXmwN6q9l0LUljO70+NdW7K1S5hdu0uq40nongXkjPGuiFt3dsW
	jdwo706whi5nvU6jB2BXChzq6/WtpV8DZPtNRfwIggHiFBiC21m9CmX0CD8sIcyORUznMbxhWO0n7
	jRIAYTd2BjFJ96xzDOVj94VKL6JwV5sIwl0epQ6kJTZd9cs5xMNZKoXZbQZpkVG16Pz33wxTNubtF
	ZW6Rvv1gtJb+IoFzVwUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htumZ-0001dk-TV; Sat, 03 Aug 2019 14:13:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htumT-0001bU-1O
 for linux-mediatek@lists.infradead.org; Sat, 03 Aug 2019 14:13:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so80133212wrs.3
 for <linux-mediatek@lists.infradead.org>; Sat, 03 Aug 2019 07:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jamieiles-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NH76ZaePsP0z4l5OXFKg/g6flaC7aHRV+c6EeQ9kS6o=;
 b=yve9gbrhv6FJmbJUZg2guU8pzriDoGRPtUNSqiUWlqQ4TkPhE7DfhQZ1Lvl6wlYKgn
 CUij4lT37fx3UBTzDkqS1of8xRypgfYdRJr/ZTXH9n4ogxbAsHcYxCGIrI95URXflv1g
 FJP9gYfinhrvwugGqlcrYzi3n2ruWV0GhOFk8DMONyy7mf8VlBaevDWMWbiu3MutmmwQ
 QmpvFm+ZUvNuHH0b4aYZwIypRKx4k7GEt4Eb0TgahitiT6Dp+zPrFxSJt1f2evofobtU
 wg0yc6oNTEOJez1sFjYfahVNfvSfG3X1JEqTzitL04k5N+LcsbHTEjXGJOyHEMLK2GEh
 3LLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NH76ZaePsP0z4l5OXFKg/g6flaC7aHRV+c6EeQ9kS6o=;
 b=NkCaIAZmsYqvTT8cPhXb0RYgrjp3Afyr3hB9TXPaxr/sTIpRLFAOTYde4C7FNov9pG
 kQS3t5OEKYOWoRtVDaXUeO5n3m1cO+h55mZ4UzW07AHbShQ3BIJtYaqVp5Y5FDkmacIi
 e+L2yIlpcvM40sxc2SYS7IGYBz8+Ug3figKDLYJ1ro+7T4zB/vyc5QAsXrpscl9n7TPk
 CJQdjfC/znvRzIX5HeHyUJxZViOfPYdpDvywQZUSPjQe9tSff37uUuymzpB/2p/UTX4B
 pojzsNqn1oX24sYjjXGv3JLGWsZrEOUBhpyEtRgwNYYAWQ/S6C56PlvbLvKy/4OLkT2r
 hlYA==
X-Gm-Message-State: APjAAAUrG+xRTdXpHduydfTDhlhCI8CD5uRi2AeVChmgo3m7r2GW0Baw
 2kjXEl6/VF/0DhZj8nbMOiY=
X-Google-Smtp-Source: APXvYqwdvvXxz41HQ2tdGIQL/JsFnK1YhppKjv+IAl3mDZiell5PlMgO40s/vhGd/eO9sYQEnXx8mQ==
X-Received: by 2002:a5d:4b50:: with SMTP id
 w16mr143525518wrs.132.1564841581912; 
 Sat, 03 Aug 2019 07:13:01 -0700 (PDT)
Received: from localhost (cpc128704-hawk17-2-0-cust94.know.cable.virginm.net.
 [82.38.213.95])
 by smtp.gmail.com with ESMTPSA id c65sm80532453wma.44.2019.08.03.07.13.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 07:13:00 -0700 (PDT)
Date: Sat, 3 Aug 2019 15:13:00 +0100
From: Jamie Iles <jamie@jamieiles.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 07/12] crypto: picoxcell - use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190803141300.GA26817@willow>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
 <20190802132809.8116-8-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802132809.8116-8-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_071309_113334_EEEBC6C0 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: heiko@sntech.de, gary.hook@amd.com, clabbe.montjoie@gmail.com,
 linux-arm-kernel@axis.com, jamie@jamieiles.com,
 linux-stm32@st-md-mailman.stormreply.com, jesper.nilsson@axis.com,
 linux-samsung-soc@vger.kernel.org, herbert@gondor.apana.org.au,
 krzk@kernel.org, linux-rockchip@lists.infradead.org, wens@csie.org,
 agross@kernel.org, thomas.lendacky@amd.com, alexandre.torgue@st.com,
 antoine.tenart@bootlin.com, linux-arm-msm@vger.kernel.org, mripard@kernel.org,
 linux-mediatek@lists.infradead.org, lars.persson@axis.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 mcoquelin.stm32@gmail.com, kgene@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 09:28:04PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Jamie Iles <jamie@jamieiles.com>

> ---
>  drivers/crypto/picoxcell_crypto.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
> index b985cb85..9a939b4 100644
> --- a/drivers/crypto/picoxcell_crypto.c
> +++ b/drivers/crypto/picoxcell_crypto.c
> @@ -1624,7 +1624,7 @@ MODULE_DEVICE_TABLE(of, spacc_of_id_table);
>  static int spacc_probe(struct platform_device *pdev)
>  {
>  	int i, err, ret;
> -	struct resource *mem, *irq;
> +	struct resource *irq;
>  	struct device_node *np = pdev->dev.of_node;
>  	struct spacc_engine *engine = devm_kzalloc(&pdev->dev, sizeof(*engine),
>  						   GFP_KERNEL);
> @@ -1653,8 +1653,7 @@ static int spacc_probe(struct platform_device *pdev)
>  
>  	engine->name = dev_name(&pdev->dev);
>  
> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	engine->regs = devm_ioremap_resource(&pdev->dev, mem);
> +	engine->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(engine->regs))
>  		return PTR_ERR(engine->regs);
>  
> -- 
> 2.7.4
> 
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
