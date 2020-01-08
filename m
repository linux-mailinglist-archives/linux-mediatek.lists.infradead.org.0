Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CC4133E75
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 10:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhjeOenvbZFJIJvbkJfpBp3MKBfOkMgjMmgTfzTbAU4=; b=NZ5JeBLbPGmqqH
	ZRFki7DYoGbrTLmK0RowpOSilBsnGDUY7QXoXa0YntsnMQ9o481SGz4fOdgY1hrfmJ8jkktAXSe4E
	VbDG4bLaCS172N5O3lyqJkwBmZfXt7eSM4eLVeI65v+aLMXpYSrvyruyDdcG6DsMTNh05t4qTmyoZ
	9TprfNfKDNYd9ScqTCF/KyFHmhvbM4Mh/b2DaKqDVHNhBmeV+IrzIr85cX//BLG4dpDr7QOZBNqGa
	WNvsvmzrAJhvzMCpiWAAxRxWSjDhLqtyOrk50hu22Uvsqf38TM21KWKCpMK3RrBPEG8FrEKlwkiM0
	AnJEuCT2F37tjK1DPtlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7qX-0001vl-MC; Wed, 08 Jan 2020 09:41:49 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7qO-0001oz-Ry; Wed, 08 Jan 2020 09:41:42 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 97692200010;
 Wed,  8 Jan 2020 09:41:32 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>, ssantosh@kernel.org,
 paul@crapouillou.net, matthias.bgg@gmail.com, rogerq@ti.com, tony@atomide.com,
 lukasz.luba@arm.com, kgene@kernel.org, krzk@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, allison@lohutok.net,
 tglx@linutronix.de, yong.wu@mediatek.com, jroedel@suse.de,
 evgreen@chromium.org, rfontana@redhat.com, digetx@gmail.com,
 pdeschrijver@nvidia.com, john@phrozen.org, alexios.zavras@intel.com,
 sboyd@kernel.org, kstewart@linuxfoundation.org, info@metux.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH 3/9] memory: mvebu-devbus: convert to
 devm_platform_ioremap_resource
In-Reply-To: <20191222185034.4665-3-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
 <20191222185034.4665-3-tiny.windzz@gmail.com>
Date: Wed, 08 Jan 2020 10:41:32 +0100
Message-ID: <87lfqib7zn.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_014141_041381_B0DBAB4B 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Yangtao Li,

> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>


Applied on mvebu/drivers

Thanks,

Gregory

> ---
>  drivers/memory/mvebu-devbus.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/memory/mvebu-devbus.c b/drivers/memory/mvebu-devbus.c
> index 095f8a3b2cfc..886aea587276 100644
> --- a/drivers/memory/mvebu-devbus.c
> +++ b/drivers/memory/mvebu-devbus.c
> @@ -267,7 +267,6 @@ static int mvebu_devbus_probe(struct platform_device *pdev)
>  	struct devbus_read_params r;
>  	struct devbus_write_params w;
>  	struct devbus *devbus;
> -	struct resource *res;
>  	struct clk *clk;
>  	unsigned long rate;
>  	int err;
> @@ -277,8 +276,7 @@ static int mvebu_devbus_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	devbus->dev = dev;
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	devbus->base = devm_ioremap_resource(&pdev->dev, res);
> +	devbus->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(devbus->base))
>  		return PTR_ERR(devbus->base);
>  
> -- 
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
