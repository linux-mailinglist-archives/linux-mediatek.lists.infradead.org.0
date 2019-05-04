Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124D213A8D
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 May 2019 16:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lB+ghTRn8FvOrgMcd+r5sE1c39Ak3y7YNINR24nVWE=; b=EEnxx87yCZiItG
	6fF1WzIVV+3GHiKjByBq8u224kWRCc2saDjPyIOReLdDNYAFiiG6/0WGqBKBc7rv8YnStIWKwWZtB
	dWXN3XOSwahbOz7Pos7hwWWiG+o3l4ndsgTfXMJpDo2DK4aEphMJvnNE7PkL0xUzcu4sjk2+gCQFz
	wJg3pS5/cFeU4xV4twq/5Tpx7xU+76juX1EwXrIWeWfwNTb3K0OLtlzVbjNgITIEJp8Bg9QtNZABk
	YPHicUIodS8+FGhMET/3U41tNkIF8nBeSh9P2f1lz4vdhnmF2CYrTqvdyyNDVzh+93Fmbafj/bL0e
	3HRbeIxljGcQoxF1NyZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvHa-0004gZ-7V; Sat, 04 May 2019 14:04:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvHR-0004bb-W2; Sat, 04 May 2019 14:04:47 +0000
X-UUID: 7997a1fe426d48ac953f1810b02bf661-20190504
X-UUID: 7997a1fe426d48ac953f1810b02bf661-20190504
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1903619551; Sat, 04 May 2019 06:04:38 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 4 May 2019 07:04:36 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 4 May 2019 22:04:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 4 May 2019 22:04:16 +0800
Message-ID: <1556978656.25811.1.camel@mtksdaap41>
Subject: Re: [PATCH v3 10/10] rtc: Add support for the MediaTek MT6358 RTC
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Date: Sat, 4 May 2019 22:04:16 +0800
In-Reply-To: <20190503093117.54830-11-hsin-hsiung.wang@mediatek.com>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-11-hsin-hsiung.wang@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 94F06579A06AD170C4104FD99EDD8ACC6517C53AB96CA365032830D34A4671372000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_070446_042402_1B77711F 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Mark
 Rutland <mark.rutland@arm.com>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Mark
 Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 17:31 +0800, Hsin-Hsiung Wang wrote:
> From: Ran Bi <ran.bi@mediatek.com>
> 
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> 
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> ---
>  drivers/rtc/rtc-mt6397.c | 43 ++++++++++++++++++++++++++++++++--------
>  1 file changed, 35 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index f85f1fc29e32..3476e29db87c 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -20,6 +20,7 @@
>  #include <linux/irqdomain.h>
>  #include <linux/platform_device.h>
>  #include <linux/of_address.h>
> +#include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/io.h>
>  #include <linux/mfd/mt6397/core.h>
> @@ -27,7 +28,8 @@
>  #define RTC_BBPU		0x0000
>  #define RTC_BBPU_CBUSY		BIT(6)
>  
> -#define RTC_WRTGR		0x003c
> +#define RTC_WRTGR_MT6358	0x3a
> +#define RTC_WRTGR_MT6397	0x3c
>  
>  #define RTC_IRQ_STA		0x0002
>  #define RTC_IRQ_STA_AL		BIT(0)
> @@ -71,6 +73,10 @@
>  #define RTC_NUM_YEARS		128
>  #define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
>  
> +struct mtk_rtc_compatible {
> +	u32			wrtgr_addr;
> +};
> +
>  struct mt6397_rtc {
>  	struct device		*dev;
>  	struct rtc_device	*rtc_dev;
> @@ -78,7 +84,25 @@ struct mt6397_rtc {
>  	struct regmap		*regmap;
>  	int			irq;
>  	u32			addr_base;
> +	const struct mtk_rtc_compatible *dev_comp;
> +};
> +
> +static const struct mtk_rtc_compatible mt6358_rtc_compat = {
> +	.wrtgr_addr = RTC_WRTGR_MT6358,
> +};
> +
> +static const struct mtk_rtc_compatible mt6397_rtc_compat = {
> +	.wrtgr_addr = RTC_WRTGR_MT6397,
> +};
> +
> +static const struct of_device_id mt6397_rtc_of_match[] = {
> +	{ .compatible = "mediatek,mt6358-rtc",
> +		.data = (void *)&mt6358_rtc_compat, },
> +	{ .compatible = "mediatek,mt6397-rtc",
> +		.data = (void *)&mt6397_rtc_compat, },
> +	{}
>  };
> +MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
>  
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
> @@ -86,7 +110,8 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  	int ret;
>  	u32 data;
>  
> -	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
> +	ret = regmap_write(rtc->regmap,
> +			   rtc->addr_base + rtc->dev_comp->wrtgr_addr, 1);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -332,6 +357,7 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	struct mt6397_chip *mt6397_chip = dev_get_drvdata(pdev->dev.parent);
>  	struct mt6397_rtc *rtc;
> +	const struct of_device_id *of_id;
>  	int ret;
>  
>  	rtc = devm_kzalloc(&pdev->dev, sizeof(struct mt6397_rtc), GFP_KERNEL);
> @@ -341,6 +367,13 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	rtc->addr_base = res->start;
>  
> +	of_id = of_match_device(mt6397_rtc_of_match, &pdev->dev);
> +	if (!of_id) {

This will never happens, but I'm fine with it.

Review-by: Yingjoe Chen <yingjoe.chen@mediatek.com>

Joe.C



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
