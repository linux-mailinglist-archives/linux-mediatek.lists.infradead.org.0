Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD73B12CDC2
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Dec 2019 09:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8F1CR/ZRTqVGgW2eM/B0InGwstDZ+XcsQTZw1sbBlg=; b=S7QG9vVzuQjwy1
	JgcKba4j8uVRRCCrcOXVj2kJvMhG970VtaAGPQeN4qu2r+geRNhvZn3eXeZf0YrHUuxNTybnVkISN
	OunCSGWBUj6ad41D/kQ8XLEwCuBOCwXvODPqgN9NIT2O6/MZCL3Pa5ppADmKiYnyYdA8n0CC+kjIs
	1Va3Yr9wJnhrukYbFn5S196TkK98ZoKUn0Imwe9f2DlMxmHnUb92nXLCvFVcXioGyHe4AZa+z1FPc
	kIrA1XPrxNOiyMlA6WVV097lkD28kUv6YgXBiT5IXTGCkZIXIY/s081jZGAxoLdaJqYoL0x5NWmli
	ei1hnmR9B4+RzGs5g/Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqb7-0002p3-GD; Mon, 30 Dec 2019 08:40:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqak-0001QM-RK; Mon, 30 Dec 2019 08:40:00 +0000
Received: from [217.166.243.182] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ilqaS-0006tO-JZ; Mon, 30 Dec 2019 09:39:40 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 15/32] pwm: rockchip: convert to
 devm_platform_ioremap_resource
Date: Mon, 30 Dec 2019 09:39:38 +0100
Message-ID: <3343090.K8KIS9te04@phil>
In-Reply-To: <20191229080610.7597-15-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-15-tiny.windzz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_003959_036883_974FEBBA 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 linux-riscv@lists.infradead.org, festevam@gmail.com, f.fainelli@gmail.com,
 shc_work@mail.ru, khilman@baylibre.com, wens@csie.org, jonathanh@nvidia.com,
 linux-rockchip@lists.infradead.org, ludovic.desroches@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 slemieux.tyco@gmail.com, linux-pwm@vger.kernel.org, rjui@broadcom.com,
 s.hauer@pengutronix.de, u.kleine-koenig@pengutronix.de, mripard@kernel.org,
 vz@mleia.com, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 nicolas.ferre@microchip.com, linux@prisktech.co.nz, palmer@dabbelt.com,
 kernel@pengutronix.de, shawnguo@kernel.org, claudiu.beznea@microchip.com,
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Am Sonntag, 29. Dezember 2019, 09:05:53 CET schrieb Yangtao Li:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  drivers/pwm/pwm-rockchip.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index 73352e6fbccb..f0549b82338d 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -292,7 +292,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>  {
>  	const struct of_device_id *id;
>  	struct rockchip_pwm_chip *pc;
> -	struct resource *r;
>  	int ret, count;
>  
>  	id = of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
> @@ -303,8 +302,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>  	if (!pc)
>  		return -ENOMEM;
>  
> -	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	pc->base = devm_ioremap_resource(&pdev->dev, r);
> +	pc->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(pc->base))
>  		return PTR_ERR(pc->base);
>  
> 





_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
