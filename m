Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1C013406D
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 12:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCRjL2BQvs1ccnR8wq5gHhSWe/SK0FYz7uPi+SWh8YY=; b=ecVaxJ8QPmmx+M
	hs63e9hz5BF879MvNtBu+sNloq4j4L6nZ+gxO01x/2WSrtkDdlqNstlGw82crz4VYHaRHV+wRD34V
	M49vhQa/t9z5Yo2ALjLBUqb+j8oV7sl0XcXiDeeYVcPxsa9nNx43/QRR4ATBImtxGbfnN+G2Y0jsQ
	wcX6Ugcba43NCpq5kR1yjEhiwpQQFCMOroVAWqXvLhOJvQ/PsB5Ad+1qcGCKwAh3x08u9FS2Aohb/
	/YIZobCTFo1JhzjRBhNpYyvStHrMbnxTPnrWjsFhjtK4NffABcgt+ezaIChpqwGqw6IhupTVwiIbY
	d+XVVW51Sonf/4Q+uuqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9Tf-0006s2-4U; Wed, 08 Jan 2020 11:26:19 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9Tc-0006rG-0G; Wed, 08 Jan 2020 11:26:17 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 03:26:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,409,1571727600"; d="scan'208";a="218043679"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jan 2020 03:26:09 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1ip9TV-0001sB-6p; Wed, 08 Jan 2020 13:26:09 +0200
Date: Wed, 8 Jan 2020 13:26:09 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: Re: [PATCH V2 2/2] drivers: input: keyboard
Message-ID: <20200108112609.GN32742@smile.fi.intel.com>
References: <20200108062923.14684-1-fengping.yu@mediatek.com>
 <20200108062923.14684-3-fengping.yu@mediatek.com>
 <1578473162.12131.13.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578473162.12131.13.camel@mtksdaap41>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_032616_054529_86693B70 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 wsd_upstream@mediatek.com, Stefan Agner <stefan@agner.cn>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>, YueHaibing <yuehaibing@huawei.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 linux-input@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
 Valentin Schneider <valentin.schneider@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Aisheng Dong <aisheng.dong@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>, fengping yu <fengping.yu@mediatek.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 04:46:02PM +0800, Yingjoe Chen wrote:
> On Wed, 2020-01-08 at 14:29 +0800, fengping yu wrote:

> > +	tasklet_init(&keypad->tasklet, kpd_keymap_handler,
> > +		     (unsigned long)keypad);
> > +
> > +	writew((u16)(keypad->key_debounce & KPD_DEBOUNCE_MASK),
> > +		     keypad->base + KP_DEBOUNCE);
> 
> You use a 13 bits mask and set it directly to KP_DEBOUNCE register. Are
> you sure the debounce unit is ms?
> 
> > +
> > +	/* register IRQ */
> > +	err = request_irq(keypad->irqnr, kpd_irq_handler, IRQF_TRIGGER_NONE,
> > +			  KPD_NAME, keypad);
> 
> please consider using devm_request_irq, otherwise you have to free it in
> _remove function.

No, you may not use devm_*_irq() when tasklets are in use. There is a nasty
race condition.

Actually the rule of thumb is to NOT use devm_*_irq() unless you exactly know
what you are doing.

P.S. Why simple not to switch to threaded IRQ handler and drop tasklet? In such
case devm_*_irq() is fine.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
