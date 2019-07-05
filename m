Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 769D260D22
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 23:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtRYqmumc+9nPGRmsDzV2ZyA1koR/salBrGJTLNlyss=; b=QuXP4t6QeVBvSQ
	tP5tF15C+mJ5oA67KAH3KQsz7pM/Finmew8j8F2y4Lkjox2cVxnHiyJZ9q7vIIsWJD1jz9z2xOX7B
	6Sdf61EAcEcuAyvR+Wwws6zcSmvpdmTXHCOjrfd43KI0WhbJipYZ0HiPxID0ZjfIm7pLJHpLlSqCB
	rRSUfQ7nmKlQZ6NZTsJAX06Npi3lW3AKDqvSpZwn6ZX1Wj1c+OJ5/tqc63IHGGUZZvi7KnSHBph9W
	xKSX4eJfxi7Mocgyz8KvaQ9rqtc8HWi1QJU5CiymPui3t/bts5JaFibfpsvedAnkf9x3HLlYLz+os
	4+6eE1oGQ3sALtslcRiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjVhv-0006S6-PA; Fri, 05 Jul 2019 21:25:28 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjVhf-0005vx-LZ; Fri, 05 Jul 2019 21:25:13 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5B1981C0003;
 Fri,  5 Jul 2019 21:24:48 +0000 (UTC)
Date: Fri, 5 Jul 2019 23:24:48 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: Re: [PATCH v2 3/7] rtc: mt6397: improvements of rtc driver
Message-ID: <20190705212448.GB12409@piout.net>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-4-frank-w@public-files.de>
 <20190704204336.GJ3692@piout.net>
 <trinity-7b1977bd-252b-4482-b708-cf704a9d3da1-1562340946396@3c-app-gmx-bs68>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-7b1977bd-252b-4482-b708-cf704a9d3da1-1562340946396@3c-app-gmx-bs68>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_142512_024568_68E4C74A 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 05/07/2019 17:35:46+0200, Frank Wunderlich wrote:
> Hi Alexander,
> 
> thank you for the Review
> 
> > Gesendet: Donnerstag, 04. Juli 2019 um 22:43 Uhr
> > Von: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
> > > -	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
> > > -	if (IS_ERR(rtc->rtc_dev))
> > > -		return PTR_ERR(rtc->rtc_dev);
> > > +	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
> > > +					mtk_rtc_irq_handler_thread,
> > > +					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> > > +					"mt6397-rtc", rtc);
> > >
> >
> > This change may lead to a crash and the allocation was intentionally
> > placed before the irq request.
> 
> i got no crash till now, but i will try to move the allocation before irq-request
> 

Let's say the RTC has been used to start your platform, then the irq
handler will be called as soon as the irq is requested, leading to a
null pointer dereference.

> > > -	ret = request_threaded_irq(rtc->irq, NULL,
> > > -				   mtk_rtc_irq_handler_thread,
> > > -				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> > > -				   "mt6397-rtc", rtc);
> > >  	if (ret) {
> > >  		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
> > >  			rtc->irq, ret);
> > > @@ -287,6 +281,10 @@ static int mtk_rtc_probe(struct platform_device *pdev)
> > >
> > >  	device_init_wakeup(&pdev->dev, 1);
> > >
> > > +	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
> > > +	if (IS_ERR(rtc->rtc_dev))
> > > +		return PTR_ERR(rtc->rtc_dev);
> > > +
> > >  	rtc->rtc_dev->ops = &mtk_rtc_ops;
> 
> 
> > >  static const struct of_device_id mt6397_rtc_of_match[] = {
> > > +	{ .compatible = "mediatek,mt6323-rtc", },
> >
> > Unrelated change, this is not an improvement and must be accompanied by
> > a documentation change.
> 
> documentation is changed in 1/7 defining this compatible. i called it improvement because existing driver now supports another chip
> 

Yes and IIRC, I did comment that the rtc change also had to be separated
from 1/7.

Also, I really doubt this new compatible is necessary at all as you
could simply directly use mediatek,mt6397-rtc.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
