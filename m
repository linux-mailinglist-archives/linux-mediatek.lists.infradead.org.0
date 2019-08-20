Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4AC969BC
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 21:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTFtRq78Wu6mUP/82fUsdZSAlDS9+HXWz+Kw5NqvVio=; b=t89/H30JoGg2vj
	PhA3gABvA4obOwMHA+cKlVz0PXzn9f88am6MWebOuA5sPAWjsR3Zrf19PfT67MVp/pEFHA74701XI
	mbcxN1VMpyYGwZ1gUya0KYdoxXl42ARmyAIjtT/vuPBZM+j6WBdKOtAG45Ft4di3tb3BqHDE3fQtq
	ahJ+HfdDK2mqBC23S+gBYCTq5PTsrB1/IflFcEOK5mJD9WCFVWWrAbpJ/1/MijfiEe1lsdfaXjQdi
	w2cPMLz01c8BJw6UEQQF1GCHfRnDpXb0/G+6Ehukf2Y3EpCzGxlhco1DrszN2u91NJPSmuTm8x/yf
	AQUEfgECUrPJr1QNd/Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0A93-0006Ua-Gr; Tue, 20 Aug 2019 19:50:17 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0A8o-000593-38; Tue, 20 Aug 2019 19:50:04 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 51CF160004;
 Tue, 20 Aug 2019 19:49:59 +0000 (UTC)
Date: Tue, 20 Aug 2019 21:49:59 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 07/13] rtc: mt6397: improvements of rtc driver
Message-ID: <20190820194959.GY3545@piout.net>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-8-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-8-frank-w@public-files.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_125002_454496_D7FF9039 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Tianping Fang <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 18/08/2019 15:56:05+0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> - use regmap_read_poll_timeout to drop while-loop
> - use devm-api to drop remove-callback
> 
> Suggested-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
> changes since v5: none
> changes since v4: none
> changes since v3: none
> changes since v2:
> - fix allocation after irq-request
> - compatible for mt6323 in separate commit => part 5
> ---
>  drivers/rtc/rtc-mt6397.c | 51 +++++++++++++++-------------------------
>  1 file changed, 19 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index c08ee5edf865..9370b7fc9f81 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -4,16 +4,19 @@
>  * Author: Tianping.Fang <tianping.fang@mediatek.com>
>  */
>  
> -#include <linux/delay.h>
> -#include <linux/init.h>
> +#include <linux/err.h>
> +#include <linux/interrupt.h>
> +#include <linux/mfd/mt6397/core.h>
>  #include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/rtc.h>
>  #include <linux/mfd/mt6397/rtc.h>
> +#include <linux/mod_devicetable.h>
>  
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
> -	unsigned long timeout = jiffies + HZ;
>  	int ret;
>  	u32 data;
>  
> @@ -21,19 +24,13 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  	if (ret < 0)
>  		return ret;
>  
> -	while (1) {
> -		ret = regmap_read(rtc->regmap, rtc->addr_base + RTC_BBPU,
> -				  &data);
> -		if (ret < 0)
> -			break;
> -		if (!(data & RTC_BBPU_CBUSY))
> -			break;
> -		if (time_after(jiffies, timeout)) {
> -			ret = -ETIMEDOUT;
> -			break;
> -		}
> -		cpu_relax();
> -	}
> +	ret = regmap_read_poll_timeout(rtc->regmap,
> +					rtc->addr_base + RTC_BBPU, data,
> +					!(data & RTC_BBPU_CBUSY),
> +					MTK_RTC_POLL_DELAY_US,
> +					MTK_RTC_POLL_TIMEOUT);
> +	if (ret < 0)
> +		dev_err(rtc->dev, "failed to write WRTGE: %d\n", ret);
>  
>  	return ret;
>  }
> @@ -266,19 +263,19 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  		return rtc->irq;
>  
>  	rtc->regmap = mt6397_chip->regmap;
> -	rtc->dev = &pdev->dev;
>  	mutex_init(&rtc->lock);
>  
>  	platform_set_drvdata(pdev, rtc);
>  
> -	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
> +	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
>  	if (IS_ERR(rtc->rtc_dev))
>  		return PTR_ERR(rtc->rtc_dev);
>  
> -	ret = request_threaded_irq(rtc->irq, NULL,
> -				   mtk_rtc_irq_handler_thread,
> -				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> -				   "mt6397-rtc", rtc);
> +	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
> +					mtk_rtc_irq_handler_thread,
> +					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> +					"mt6397-rtc", rtc);
> +
>  	if (ret) {
>  		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
>  			rtc->irq, ret);
> @@ -302,15 +299,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	return ret;
>  }
>  
> -static int mtk_rtc_remove(struct platform_device *pdev)
> -{
> -	struct mt6397_rtc *rtc = platform_get_drvdata(pdev);
> -
> -	free_irq(rtc->irq, rtc);
> -
> -	return 0;
> -}
> -
>  #ifdef CONFIG_PM_SLEEP
>  static int mt6397_rtc_suspend(struct device *dev)
>  {
> @@ -349,7 +337,6 @@ static struct platform_driver mtk_rtc_driver = {
>  		.pm = &mt6397_pm_ops,
>  	},
>  	.probe	= mtk_rtc_probe,
> -	.remove = mtk_rtc_remove,
>  };
>  
>  module_platform_driver(mtk_rtc_driver);
> -- 
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
