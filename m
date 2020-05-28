Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47071E60A4
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 14:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWbtHhF3jUyCRpo1dhEn7nvadIBNKAzE14cHueVsRbE=; b=LWVoAFhyxjnO2x
	VXbqxZ6eJHMftg0DbwR2TGPprTmebaic5ij/awZ6ByZ2VylkICywdN3v+3YGGLE1er/hnHP4FVV2i
	qfuN4hbQ61kA0g7VhRBS9ecN06+UlcTvN16SnZEVhbFZT/0Y/MU9/MO6gNadSmsbMzp91569BF2o2
	TlzQeVJqzxz+W+yMH4eurC4EOn/sjeuCKUz0UzrNOb7zPOPcUoILssdIdLjt5IzenTucCvVhYJo72
	DImIzeOTO7aTCiqeraN4ICpFb7vW4Hp52AmNcBoEzR26diBl3QrmUS48J8KINunLIYS5APdPA115v
	p6m/U2VqH+7YMv1IZ/Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHYs-0005nK-2U; Thu, 28 May 2020 12:23:02 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHYg-0005gx-7z; Thu, 28 May 2020 12:22:51 +0000
IronPort-SDR: UGyaJ4naWK3FZ7BpKWK+HgzICkUBC0LgdP7GLaLOZIDpN3Qho8sObBq7j6b16Q+EXfz0/vkmfR
 7hYngJzaDOlQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 05:22:47 -0700
IronPort-SDR: A3d785f1MX0R7l/E+smvmFj55G3TOUMleCHgan5saOuclYvpp83MCkk6Ke8WhCNtrEbqnDgWXP
 cxkwBA55WAIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="270834696"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 28 May 2020 05:22:45 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jeHYe-009QMX-Rx; Thu, 28 May 2020 15:22:48 +0300
Date: Thu, 28 May 2020 15:22:48 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [RESEND PATCH v11 2/3] drivers: input: keyboard: Add mtk keypad
 driver
Message-ID: <20200528122248.GL1634618@smile.fi.intel.com>
References: <20200528090144.54033-1-fengping.yu@mediatek.com>
 <20200528090144.54033-3-fengping.yu@mediatek.com>
 <20200528102730.GK1634618@smile.fi.intel.com>
 <20200528114558.5decxsun2o65k2fr@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528114558.5decxsun2o65k2fr@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_052250_328106_AE2D5B18 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Fengping Yu <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 01:45:58PM +0200, Marco Felsch wrote:
> On 20-05-28 13:27, Andy Shevchenko wrote:
> > On Thu, May 28, 2020 at 05:01:47PM +0800, Fengping Yu wrote:

...

> > > +	select CONFIG_REGMAP_MMIO
> > 
> > This is wrong.
> 
> Why is this wrong? The driver uses the rmap-mmio functions.

In Kconfig CONFIG_ prefix is implied.

There is no CONFIG_CONFIG_REGMAP_MMIO.

> Thanks for the explanation =)

Sorry, I think it's obvious...

> > > +	select INPUT_MATRIXKMAP

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
