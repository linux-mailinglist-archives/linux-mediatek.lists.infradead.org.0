Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F69AA30F
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 14:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzM5o/i45nzWfhdxhHeHUt9wPcGWWbg5XZ5H1wumygw=; b=PyBbef9Ob6KjHm
	pi6Xfk5akvdhgci0/tPr5Z5KRSkEvyngMMveAaaT1IfC4Zf+1i9PzOdTOAHbrPTKkXx/E/KeJDCVd
	h0ZgJDfFyy1BENa0nBIDvkSxBeloB4Si7DeaAydAlkqEpRopnylMXTq1qeJzY7JV8BSDRUKONmn6t
	7q3C2ybxrCcCYKruK6bJUEJAIwHJ2wwD8Ch2StOcg3fhm5Zivs8rdeploLMo0UKGV8ypCY290tDc8
	74/V3NFExICFZdZTJlk4Uhhs4Di0oTv0iFfF16urbKXe6ReuC1ZmMahGjDMB2hyKNG0arnNoZKXsA
	hvmcNS5ZgxfbcTPCQoBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qpD-000263-HE; Thu, 05 Sep 2019 12:25:19 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qot-0000j2-DU; Thu, 05 Sep 2019 12:25:00 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="199270720"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2019 05:24:49 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1i5qoj-00083O-A7; Thu, 05 Sep 2019 15:24:49 +0300
Date: Thu, 5 Sep 2019 15:24:49 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [V2, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Message-ID: <20190905122449.GG2680@smile.fi.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-2-dongchun.zhu@mediatek.com>
 <20190905101406.GA2680@smile.fi.intel.com>
 <20190905104829.GB5475@paasikivi.fi.intel.com>
 <20190905113509.GD2680@smile.fi.intel.com>
 <CABxcv=knP+-x0O-Ga-Dy8WTNovHk6GfX4ZEv0vVjnQvwchuVzg@mail.gmail.com>
 <20190905120012.GD5475@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905120012.GD5475@paasikivi.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_052459_474853_20458043 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 drinkcat@chromium.org, srv_heupstream@mediatek.com, sam.hung@mediatek.com,
 shengnan.wang@mediatek.com, Tomasz Figa <tfiga@chromium.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, bingbu.cao@intel.com,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 03:00:12PM +0300, Sakari Ailus wrote:

> And I see no reason to add a separate patch just for
> MAINTAINERS change.

It's up to maintainers of the subsystem.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
