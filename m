Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC391D4CD1
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 May 2020 13:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfmUe8m62oO7nSyQoi59bzK3igem6GBi3HVUa6Keiqk=; b=C8PuQE7ciRtla8
	ffmBUbfLcRoPdwa3E/XgI9ufYCxbedM/B6Z1IfLugE57ljI4MLf6jsbIodY0rYP2uGJLFUsNC5VEa
	hq5hX6GzychP/UAYCKr/kHx94laUDx0l4fswzQ8T61anAfMPdVJNNk4XS+RnvT3rGluQzNcZ4dGmh
	Wjg5yxaG6CEQDRyK8yp/1XTVXts1SBewklKfOlvQH5jmtcoqq+p4x/YSSKB8ffI4hoaF1cGUPzD6/
	pCTRud0xIGtyX3IesAaO4NANu4NyQXBkQ8AnuXPdEORSBcdXCVeHilimWcAZWEGP1J2x5UqRYYHEK
	7U0pcOBibp4Ve4C+YM/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYi4-0008NK-Vb; Fri, 15 May 2020 11:41:00 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYho-0008AJ-FZ; Fri, 15 May 2020 11:40:45 +0000
IronPort-SDR: 28vGEwlBa0iX4YtKzNR4yjd8QIzU7qfn/KsZ10W2GcvvtYY8dXQhX4eShtmC4+0yeNFE9k/oIK
 o21u+5vDNC2g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 04:40:43 -0700
IronPort-SDR: Zxm93dBj9QeuaxwdKrGE0EN+mN8jDYSRw9LLjluNBQVeEX+0HcpZst/qTiBxgupCSun+htzg6Y
 x2dIMorsXzvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="287758924"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 04:40:40 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jZYho-006qhy-8y; Fri, 15 May 2020 14:40:44 +0300
Date: Fri, 15 May 2020 14:40:44 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v8 2/3] drivers: input: keyboard: Add mtk keypad driver
Message-ID: <20200515114044.GR185537@smile.fi.intel.com>
References: <20200515062007.28346-1-fengping.yu@mediatek.com>
 <20200515062007.28346-3-fengping.yu@mediatek.com>
 <20200515093016.rw5bmvoumgzvkqrc@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515093016.rw5bmvoumgzvkqrc@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_044044_560241_DBBAF608 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Fengping Yu <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 11:30:16AM +0200, Marco Felsch wrote:
> On 20-05-15 14:20, Fengping Yu wrote:

...

> > +	depends on OF && HAVE_CLK
> 
> Please drop those deps and instead use:

+1

> depends on ARCH_MEDIATEK && ARM64

I would go even further
	depends on (ARCH_MEDIATEK && ARM64) || COMPILE_TEST

> There are still some missing deps:
> 
> select CONFIG_REGMAP_MMIO
> select INPUT_MATRIXKMAP

...

> > +#define MTK_KPD_DEBOUNCE_MAX_US		256000 /*256ms */
> 
> Thanks for aligning the defines but the 256ms comment is still useless
> as Andy already said.

Yes, it seems my comments partially (?) have been ignored.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
