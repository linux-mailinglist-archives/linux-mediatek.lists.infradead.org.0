Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4606BA10E5
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 07:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNAZ4+ssNJPlvNjE7CyhRKwy0t2DmYiLPBLnoxaT/qo=; b=A1QU/sybH5mWpu
	CtPfkzKg94DO7ZZGvYGWHEppfS7/6xBPX/mhRo6znVaCCDnWC4Ajb/NKUb2pdCgxIDGiKbju7mip7
	eB1slqO4vv9XMAkX4o8TKm6lHv0mViHQhWAV27OUTZpE/GiaN24II7ssiLF0QF2P7Bes41QIx5l09
	W5Ykiqg+jKQqNtuNdHz/+tVy6s2kiTICll3/kWp3NKHb0i3+IFV086QgnrRPIckyED8z7ay8uLA52
	XFdUslCGJczfiZw6K976C+XTLdofwX7IIyaSd+LbT6KjOTlPi1bilpxz75BH+3pBDxIgSTF8dwgYL
	yMwOV4FpOWmKtzzQhhIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3D4t-0003Ju-L1; Thu, 29 Aug 2019 05:34:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3D4q-0003JQ-J8; Thu, 29 Aug 2019 05:34:34 +0000
X-UUID: 1ecea5d6fd9343f69ed79056b26453fe-20190828
X-UUID: 1ecea5d6fd9343f69ed79056b26453fe-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 119870106; Wed, 28 Aug 2019 21:34:34 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 22:34:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 13:34:18 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 13:34:18 +0800
Message-ID: <1567056852.31616.0.camel@mtksdaap41>
Subject: Re: [PATCH v5 09/10] rtc: mt6397: fix alarm register overwrite
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 29 Aug 2019 13:34:12 +0800
In-Reply-To: <bf8435a7-db97-5ed8-bccc-9d197396aeb6@gmail.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-10-git-send-email-hsin-hsiung.wang@mediatek.com>
 <bf8435a7-db97-5ed8-bccc-9d197396aeb6@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: ADC74A5DEDFF4B5036933CA1E2AC6DBFD0512ED5B9376EFA5CA1F9F22C66550D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_223432_641623_243F2884 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>, Mark
 Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Matthias,

On Fri, 2019-08-23 at 17:35 +0200, Matthias Brugger wrote:
> 
> On 23/08/2019 05:45, Hsin-Hsiung Wang wrote:
> > From: Ran Bi <ran.bi@mediatek.com>
> > 
> > Alarm registers high byte was reserved for other functions.
> > This add mask in alarm registers operation functions.
> > This also fix error condition in interrupt handler.
> > 
> > Fixes: fc2979118f3f ("rtc: mediatek: Add MT6397 RTC driver")
> > 
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> 
> Misses your Signed-off-by.
> 

I will add it in the next patch, thanks.

> Regards,
> Matthias
> 
> > ---
> >  drivers/rtc/rtc-mt6397.c | 47 +++++++++++++++++++++++++++++++++--------------
> >  1 file changed, 33 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> > index b46ed4d..828def7 100644
> > --- a/drivers/rtc/rtc-mt6397.c
> > +++ b/drivers/rtc/rtc-mt6397.c
> > @@ -47,6 +47,14 @@
> >  
> >  #define RTC_AL_SEC		0x0018
> >  
> > +#define RTC_AL_SEC_MASK		0x003f
> > +#define RTC_AL_MIN_MASK		0x003f
> > +#define RTC_AL_HOU_MASK		0x001f
> > +#define RTC_AL_DOM_MASK		0x001f
> > +#define RTC_AL_DOW_MASK		0x0007
> > +#define RTC_AL_MTH_MASK		0x000f
> > +#define RTC_AL_YEA_MASK		0x007f
> > +
> >  #define RTC_PDN2		0x002e
> >  #define RTC_PDN2_PWRON_ALARM	BIT(4)
> >  
> > @@ -103,7 +111,7 @@ static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
> >  		irqen = irqsta & ~RTC_IRQ_EN_AL;
> >  		mutex_lock(&rtc->lock);
> >  		if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
> > -				 irqen) < 0)
> > +				 irqen) == 0)
> >  			mtk_rtc_write_trigger(rtc);
> >  		mutex_unlock(&rtc->lock);
> >  
> > @@ -225,12 +233,12 @@ static int mtk_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
> >  	alm->pending = !!(pdn2 & RTC_PDN2_PWRON_ALARM);
> >  	mutex_unlock(&rtc->lock);
> >  
> > -	tm->tm_sec = data[RTC_OFFSET_SEC];
> > -	tm->tm_min = data[RTC_OFFSET_MIN];
> > -	tm->tm_hour = data[RTC_OFFSET_HOUR];
> > -	tm->tm_mday = data[RTC_OFFSET_DOM];
> > -	tm->tm_mon = data[RTC_OFFSET_MTH];
> > -	tm->tm_year = data[RTC_OFFSET_YEAR];
> > +	tm->tm_sec = data[RTC_OFFSET_SEC] & RTC_AL_SEC_MASK;
> > +	tm->tm_min = data[RTC_OFFSET_MIN] & RTC_AL_MIN_MASK;
> > +	tm->tm_hour = data[RTC_OFFSET_HOUR] & RTC_AL_HOU_MASK;
> > +	tm->tm_mday = data[RTC_OFFSET_DOM] & RTC_AL_DOM_MASK;
> > +	tm->tm_mon = data[RTC_OFFSET_MTH] & RTC_AL_MTH_MASK;
> > +	tm->tm_year = data[RTC_OFFSET_YEAR] & RTC_AL_YEA_MASK;
> >  
> >  	tm->tm_year += RTC_MIN_YEAR_OFFSET;
> >  	tm->tm_mon--;
> > @@ -251,14 +259,25 @@ static int mtk_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
> >  	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
> >  	tm->tm_mon++;
> >  
> > -	data[RTC_OFFSET_SEC] = tm->tm_sec;
> > -	data[RTC_OFFSET_MIN] = tm->tm_min;
> > -	data[RTC_OFFSET_HOUR] = tm->tm_hour;
> > -	data[RTC_OFFSET_DOM] = tm->tm_mday;
> > -	data[RTC_OFFSET_MTH] = tm->tm_mon;
> > -	data[RTC_OFFSET_YEAR] = tm->tm_year;
> > -
> >  	mutex_lock(&rtc->lock);
> > +	ret = regmap_bulk_read(rtc->regmap, rtc->addr_base + RTC_AL_SEC,
> > +			       data, RTC_OFFSET_COUNT);
> > +	if (ret < 0)
> > +		goto exit;
> > +
> > +	data[RTC_OFFSET_SEC] = ((data[RTC_OFFSET_SEC] & ~(RTC_AL_SEC_MASK)) |
> > +				(tm->tm_sec & RTC_AL_SEC_MASK));
> > +	data[RTC_OFFSET_MIN] = ((data[RTC_OFFSET_MIN] & ~(RTC_AL_MIN_MASK)) |
> > +				(tm->tm_min & RTC_AL_MIN_MASK));
> > +	data[RTC_OFFSET_HOUR] = ((data[RTC_OFFSET_HOUR] & ~(RTC_AL_HOU_MASK)) |
> > +				(tm->tm_hour & RTC_AL_HOU_MASK));
> > +	data[RTC_OFFSET_DOM] = ((data[RTC_OFFSET_DOM] & ~(RTC_AL_DOM_MASK)) |
> > +				(tm->tm_mday & RTC_AL_DOM_MASK));
> > +	data[RTC_OFFSET_MTH] = ((data[RTC_OFFSET_MTH] & ~(RTC_AL_MTH_MASK)) |
> > +				(tm->tm_mon & RTC_AL_MTH_MASK));
> > +	data[RTC_OFFSET_YEAR] = ((data[RTC_OFFSET_YEAR] & ~(RTC_AL_YEA_MASK)) |
> > +				(tm->tm_year & RTC_AL_YEA_MASK));
> > +
> >  	if (alm->enabled) {
> >  		ret = regmap_bulk_write(rtc->regmap,
> >  					rtc->addr_base + RTC_AL_SEC,
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
