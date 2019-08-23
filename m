Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B78E9A7AD
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 08:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLJdx/6Rdiu94hf5ICeL6qhbvqRAui6Fr6Nu9y/6QEY=; b=grW3N7o4PPbv9e
	lW5vj9Uln8plD5YikWEGzdc8Zv2UffCya+J3BSivngpxtEYkpI88P+BGt29/KBmhXTRYfI4kZkkWw
	RWqMmNRDXsRcAzMmi/Z4zXe411t51+5ZuXZStauUW20qZk9x47ZJFi7+4D3bN/9oxZksWLcgtnor1
	3faOwRPLq8YBTaHISZz4gXDtx/uk5HRp04VYzLy4gRlNdupE5n2VlUyoUnZSC2yXCZIV1EGlIs/Vo
	LH1WfIT+M5z9aNEMDFDWhlQsk86rScTnOckiEs6Wk8ipoDrow3k+TrEhLAZbWT3A9ctv05IkeNfom
	7F4AL4p8crfvtXtLPCuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13BG-0006r4-6Z; Fri, 23 Aug 2019 06:36:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13Aq-0006fj-Ou; Fri, 23 Aug 2019 06:35:49 +0000
X-UUID: 92d506b48bce4b579b2252098c8976b9-20190822
X-UUID: 92d506b48bce4b579b2252098c8976b9-20190822
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 547139161; Thu, 22 Aug 2019 22:35:30 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 23:35:29 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs08n1.mediatek.inc
 (172.21.101.55) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 23 Aug 2019 14:35:32 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 14:35:26 +0800
Message-ID: <1566542131.12318.52.camel@mhfsdcap03>
Subject: Re: [PATCH v2 1/4] bindings: rtc: add bindings for MT2712 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 23 Aug 2019 14:35:31 +0800
In-Reply-To: <84bd8752-f437-781f-9f08-cedfca6cc06a@gmail.com>
References: <20190801110122.26834-1-ran.bi@mediatek.com>
 <20190801110122.26834-2-ran.bi@mediatek.com>
 <84bd8752-f437-781f-9f08-cedfca6cc06a@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_233548_816664_1AAA1410 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Hi,

> > +Required properties:
> > +- compatible	    : Should be "mediatek,mt2712-rtc" : for MT2712 SoC
> > +- reg 		    : Specifies base physical address and size of the registers;
> > +- interrupts	    : Should contain the interrupt for RTC alarm;
> 
> No clocks for the RTC? What about CLK_TOP_RTC_SEL from the clk driver?
> 
> Regards,
> Matthias
> 

I suppose that we don't need clock control for mt2712 RTC. RTC clock is directly
come from 32K crystal and there is no control register to switch the clock. In mt2712,
CLK_TOP_RTC_SEL is prepared for other module even it called CLK_TOP_RTC_SEL.

Regards,
Ran

> > +
> > +Example:
> > +
> > +rtc: rtc@10011000 {
> > +	compatible = "mediatek,mt2712-rtc";
> > +	reg = <0 0x10011000 0 0x1000>;
> > +	interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_LOW>;
> > +};
> > 




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
