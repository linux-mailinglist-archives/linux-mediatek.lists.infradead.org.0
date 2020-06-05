Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBBC1EEFF4
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jun 2020 05:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8s/fRjdb5+2nuY3F6ODjAHOnzOP8uKl/uCDpPQmOlw=; b=VUEITaRpO7CljV
	TiBNkTUK/Mki4VxFPG2vdn9Nj+qjp3FrshYKN100XiYNr/JkIwCALQZViQwvL1xbxd6NRjzQpvk5l
	hMITFT4JB12ZMkhYTqQ/ZMkCFPJZs/1DTDwYE171Hcb1qmooahv5v82JKkvSyoh+bHctMwy3uVHd9
	Ea7xyPAHhDVS66747sVYwrSHrH5HNdsRMVc9T/bQ9yL3uYrxY3HohRTrUlaw4rTni9h8cM/caoS2H
	N64MChofhx4Ns2QNKXlbroHSs84KK2Q9TyiaJk0c+zO381UwR5nfbLud6W8WUEyMjZZH+EMgj2TzX
	bxD4W914nLV6wj24pUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh34q-0005mW-59; Fri, 05 Jun 2020 03:31:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh34m-0005j1-Ha; Fri, 05 Jun 2020 03:31:26 +0000
X-UUID: 1dd8fcf38c0f40d184364e7f8f57d9fe-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=04uARMuEAI3fSF9KF2DXT7abIE8uC44WP1+LksONuRI=; 
 b=L5uQgRV2jIIsDI24KPEDQTvY5sBQGr+6qdFuD9sz8z3q8A00W/vuBJWQ3S9moALtXme6zE4ZFcV+RnNyjSuhulhLAZZ/BroZlCF8+fU2I9Cngfa5/Um148SazwgHFN1YfYZ/D8OKBtzHRZqPll1c9zILJc+7vWMvCXAg1Fd9CSI=;
X-UUID: 1dd8fcf38c0f40d184364e7f8f57d9fe-20200604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 182426181; Thu, 04 Jun 2020 19:31:14 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 20:31:02 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 5 Jun 2020 11:30:57 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 11:30:57 +0800
Message-ID: <1591327734.8804.564.camel@mhfsdcap03>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Fri, 5 Jun 2020 11:28:54 +0800
In-Reply-To: <20200604081032.GG16711@paasikivi.fi.intel.com>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
 <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
 <1590570089.8804.453.camel@mhfsdcap03>
 <CAAFQd5Dgboh8om68546ADELX3g-0y40rdBxY+H3WsX5xAD1_FQ@mail.gmail.com>
 <1591238018.8804.555.camel@mhfsdcap03>
 <20200604081032.GG16711@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D090CB165FCCEF44021FC7838239E93BBCC7EC861B9949712203DF71BC628EC82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203124_602709_313493B6 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Sakari,

On Thu, 2020-06-04 at 11:10 +0300, Sakari Ailus wrote:
> On Thu, Jun 04, 2020 at 10:33:38AM +0800, Dongchun Zhu wrote:
> > Hi Tomasz,
> > 
> > On Mon, 2020-06-01 at 20:47 +0200, Tomasz Figa wrote:
> > > On Wed, May 27, 2020 at 11:03 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > >
> > > > Hi Tomasz,
> > > >
> > > > On Mon, 2020-05-25 at 13:45 +0200, Tomasz Figa wrote:
> > > > > On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > > > >
> > > > > > Hi Tomasz,
> > > > > >
> > > > > > Thanks for the review. My replies are as below.
> > > > > >
> > > > > > On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > > > > > > Hi Dongchun, Sakari,
> > > > > > >
> > > > > > > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> > > > > [snip]
> > > > > > > > +   pm_runtime_enable(dev);
> > > > > > > > +   if (!pm_runtime_enabled(dev)) {
> > > > > > > > +           ret = dw9768_runtime_resume(dev);
> > > > > > > > +           if (ret < 0) {
> > > > > > > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > > > > > > +                   goto entity_cleanup;
> > > > > > > > +           }
> > > > > > > > +   }
> > > > > > > > +
> > > > > > > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > > > > > > +   if (ret < 0)
> > > > > > > > +           goto entity_cleanup;
> > > > > > > > +
> > > > > > > > +   return 0;
> > > > > > > > +
> > > > > > > > +entity_cleanup:
> > > > > > >
> > > > > > > Need to power off if the code above powered on.
> > > > > > >
> > > > > >
> > > > > > Thanks for the reminder.
> > > > > > If there is something wrong with runtime PM, actuator is to be powered
> > > > > > on via dw9768_runtime_resume() API.
> > > > > > When actuator sub-device is powered on completely and async registered
> > > > > > successfully, we shall power off it afterwards.
> > > > > >
> > > > >
> > > > > The code above calls dw9768_runtime_resume() if
> > > > > !pm_runtime_enabled(dev), but the clean-up code below the
> > > > > entity_cleanup label doesn't have the corresponding
> > > > > dw9768_runtime_suspend() call.
> > > > >
> > > >
> > > > Did you mean the 'entity_cleanup' after v4l2_async_register_subdev()?
> > > 
> > > Yes.
> > > 
> > > > Actually I made some changes for OV02A V9, according to this comment.
> > > > Could you help review that change? Thanks.
> > > 
> > > Sure, I will take a look.
> > > 
> > 
> > Thanks.
> > Sorry, I just wanna make sure the change is okay for next release.
> > May we use the check like OV02A V9 did?
> > ret = v4l2_async_register_subdev(&dw9768->sd);
> > if (ret < 0) {
> > 	if (!pm_runtime_enabled(dev))
> > 		dw9768_runtime_suspend(dev);
> 
> Please do this part where you're jumping to, if possible.
> 

Fine.
Fixed in next release.

> > 	goto entity_cleanup;
> > }
> > 
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
