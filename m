Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D32F1855BA
	for <lists+linux-mediatek@lfdr.de>; Sat, 14 Mar 2020 13:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60VdLGVp4ktBVpQuM9BI+AScCF5M4mwEq+ypCicqkI8=; b=iUfv/V59xnX6au
	N/MHhKdDeQFZc7kt7TbigmnGQ6BB9/ZTdEqIaO+Cm6Xkyg0QMe+k1OPkIQg9a9QXIR8aWlYg+N9Hz
	NAAPCCStO07/WNopRMzt3jGZO4jrHtQN1zEwxFVfmnOz5LErdICG0BBkQSzh4uobUk8bARUQFFwqS
	tGyHleCC6AfaQ/nFPbwyPJSNlGEHmhryDXOYLk6uOnsmDO0KQCC5OsubLnaWvIxrYVkNf/Ids33ec
	H2SG2zrSyLUZ1B/Wgau8CYiYTJdchsYynhxt2sxe5aa1qxVdTOOs2XJZhmG5P73Zpdbjik3xoU1MD
	GZAD6ZuaEKXnUe6X/kNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD5sR-0003F6-77; Sat, 14 Mar 2020 12:26:51 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD5sG-00039R-2S; Sat, 14 Mar 2020 12:26:42 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C566A240009;
 Sat, 14 Mar 2020 12:24:55 +0000 (UTC)
Date: Sat, 14 Mar 2020 13:24:55 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH v3 0/4] Add Support for MediaTek MT2712 RTC
Message-ID: <20200314122455.GC4518@piout.net>
References: <20200226051303.22560-1-ran.bi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226051303.22560-1-ran.bi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_052640_251559_9F4B9375 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alessandro Zummo <a.zummo@towertech.it>, Flora Fu <flora.fu@mediatek.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 26/02/2020 13:12:59+0800, Ran Bi wrote:
> This patchset add support to MT2712 RTC. MT2712 RTC is a SoC based RTC
> with different architecture compared to MT7622 RTC.
> 
> Changes in V3:
> 1. change struct mt2712_rtc
> 2. use 100 as year offset
> 3. change irq handle thread
> 4. remove useless rtc time check
> 5. not modify struct rtc_time in set_time/set_alarm functions
> 6. modify rtc init function
> 7. add power lost flag for get_time/set_time functions
> 8. add .alarm_irq_enable callback
> 9. set rtc->range_min and rtc->range_max to do range checking
> 10. use fixed driver name
> 
> Changes in V2:
> 1. change minimum year from 1968 to 2000
> 2. fix lock usage
> 3. stop to calculate useless day of week
> 4. stop to set default date after init
> 5. change the prefix of functions
> 6. use devm_request_threaded_irq() to replace request_threaded_irq()
> 7. add mt2712 rtc related files into MAINTAINERS
> 
> Ran Bi (4):
>   bindings: rtc: add bindings for MT2712 RTC
>   rtc: add support for the MediaTek MT2712 RTC
>   arm64: dts: add RTC nodes for MT2712
>   MAINTAINERS: add MT2712 RTC files
> 

Applied 1,2 and 4, thanks!


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
