Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF07CFBFE
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 16:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpI87AsmOHwKvBtrJqcKw3MTrTmHTTfIu23w1Ybn8Iw=; b=Nsv4lnOhWQkKVU
	j5GEyMzFM+vtSEmx6OYZ3vLIzziwYNNVRCKnVJKf/XgXTkZi1eSIkQZegiTZRHHujEejuTnSpCZiG
	SiMS7qOHcaJj3Y3KxvbE13fjW72nyFPKeMtO3E9dsIUc828hcEOfSZF+lYW3cI+GV1YsIFwzpolih
	DS/Vllf850yfhwKHsafYbz5RUA2fci68XZdJ1weHXo3XZnogevyub6AF1yQ80/tFr81LhT8atoqfw
	GTpTQ/s9guXqpuO2O4z9R1HJDYzt7cdIGyU4AHDGVTNjNb8HIExmKMJVlYMDbpMJ8gmb/QYU1vYy4
	9tHgwgjdYWGCWEwbSgLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqAo-0003Mv-Hb; Tue, 08 Oct 2019 14:09:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqAk-0003Ls-Go
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 14:09:07 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iHqAL-0005tE-74; Tue, 08 Oct 2019 16:08:41 +0200
Message-ID: <1570543719.18914.7.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/4] watchdog: mtk_wdt: mt8183: Add reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>, Yingjoe Chen
 <yingjoe.chen@mediatek.com>
Date: Tue, 08 Oct 2019 16:08:39 +0200
In-Reply-To: <70b77fb3-7186-734d-3415-64acb30bab8f@roeck-us.net>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
 <a0b2e9a3-ca77-814f-b7bd-edc69f00fce2@roeck-us.net>
 <1570255179.29077.24.camel@mtksdaap41>
 <70b77fb3-7186-734d-3415-64acb30bab8f@roeck-us.net>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_070906_557416_118B5079 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, broonie@kernel.org,
 yong.liang@mediatek.com, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 lgirdwood@gmail.com, tzungbi@google.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com, perex@perex.cz,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Guenter, Yingjoe,

On Sat, 2019-10-05 at 07:46 -0700, Guenter Roeck wrote:
> On 10/4/19 10:59 PM, Yingjoe Chen wrote:
> > On Thu, 2019-10-03 at 06:49 -0700, Guenter Roeck wrote:
> > > On 9/27/19 3:31 AM, Jiaxin Yu wrote:
> > 
> > <snip..>
> > 
> > 
> > > > +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
> > > > +			       unsigned long id)
> > > > +{
> > > > +	unsigned int tmp;
> > > > +	unsigned long flags;
> > > > +	struct toprgu_reset *data = container_of(rcdev,
> > > > +				struct toprgu_reset, rcdev);
> > > > +
> > > > +	spin_lock_irqsave(&data->lock, flags);
> > > > +
> > > > +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> > > > +	tmp |= BIT(id);
> > > > +	tmp |= WDT_SWSYS_RST_KEY;
> > > > +	writel(tmp, data->toprgu_swrst_base + data->regofs);
> > > > +
> > > > +	spin_unlock_irqrestore(&data->lock, flags);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
> > > > +				 unsigned long id)
> > > > +{
> > > > +	unsigned int tmp;
> > > > +	unsigned long flags;
> > > > +	struct toprgu_reset *data = container_of(rcdev,
> > > > +					struct toprgu_reset, rcdev);
> > > > +
> > > > +	spin_lock_irqsave(&data->lock, flags);
> > > > +
> > > > +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
> > > > +	tmp &= ~BIT(id);
> > > > +	tmp |= WDT_SWSYS_RST_KEY;
> > > > +	writel(tmp, data->toprgu_swrst_base + data->regofs);
> > > > +
> > > > +	spin_unlock_irqrestore(&data->lock, flags);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int toprgu_reset(struct reset_controller_dev *rcdev,
> > > > +			unsigned long id)
> > > > +{
> > > > +	int ret;
> > > > +
> > > > +	ret = toprgu_reset_assert(rcdev, id);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	return toprgu_reset_deassert(rcdev, id);
> > > 
> > > Unless there is additional synchronization elsewhere, parallel calls
> > > to the -> assert, and ->reset callbacks may result in the reset being
> > > deasserted while at least one caller (the one who called the ->assert
> > > function) believes that it is still asserted.
> > > 
> > > [ ... and if there _is_ additional synchronization elsewhere, the
> > >     local spinlock would be unnecessary ]
> > > 
> > 
> > I'm not sure if this count as additional synchronization, but you could
> > get exclusive control to the reset by calling
> > reset_control_get_exclusive so others won't try to reset the component
> > while you are using it.
> > 
> > In this case, you still need spinlock because other drivers might trying
> > to reset their components and they share same register.
> 
> That isn't what I meant. I referred to synchronization in the reset
> controller core. AFAICS the reset controller core prevents parallel
> calls into the same reset controller driver using atomics.

No, it doesn't. The atomics in struct reset_control prevent parallel
calls on the same, reset control only, for shared reset controls.
Two calls on different reset controls can still run simultaneously on
the same rcdev.

> Unfortunately, it is not well defined if additional synchronization on
> driver level is needed - some drivers implement it, some drivers
> don't,

I think all drivers protect read/modify/write cycles to shared registers
with a spinlock. Those that don't either have separate set/clear
registers or use regmap, otherwise it might be a bug.

> and I don't find a documentation.

I am aware this is a problem.

regards
Philipp

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
