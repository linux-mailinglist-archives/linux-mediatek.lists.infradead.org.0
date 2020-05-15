Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 952A71D4FF8
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 May 2020 16:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F89yypCwUqOhAh7r9GRnx3lQs/vTB1yT2pExv+N3FVg=; b=fhp3QSdFM4lBT/
	E8Gq3wq38se0ORzI7Kkfdco6MRW3ZjQDC4HcFcx+xlhMrS+6keirzcHefaxEjbL0Wmp+YobUwPdDl
	VXnUzgT6NC1Yrpk6Hp2H+4sg/PnyIDYUsVmx8UIqYlynmcFWiQS5xwP+kir5Aj6QvsIlb+zpI4z3o
	yaBLgpWgltQIw3zbeWgHGhiuoYEzHguVt66T+8qNsrk1aokey9AvuNA0RIE4ZEEwRF6Qvuy7QG1Pe
	GQ+nDq4rbAPaX6R42d+HRJyHQDXImrRZXxBRYSD+5SX6Q2fB/jThqJ6w3EYxAYsERRwmBw7q5Zbyl
	ULCEaU+Wvpg62FQv7rCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZayU-00075J-QB; Fri, 15 May 2020 14:06:06 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZayF-0006wG-Pf; Fri, 15 May 2020 14:05:53 +0000
IronPort-SDR: 6nxiNrWWt3WRw/9ByUYuxqUpOfqjMwmL95nbhgmgAgenHFO4kbfpCJxKYiEuH6bDjO/kCPSMgy
 oNXKHYG0XEBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 07:05:51 -0700
IronPort-SDR: j1Q0bRRVSaWAmZFGS8vch5frswSS1RBL2pvNRiS+svM1m7u39vjRO0yCTw2lu0wUihPV6RvRj2
 fU0qJiS54CBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="341988727"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 15 May 2020 07:05:45 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jZayB-006soL-RN; Fri, 15 May 2020 17:05:47 +0300
Date: Fri, 15 May 2020 17:05:47 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v3 3/4] serial: 8250_dw: Simplify the ref clock rate
 setting procedure
Message-ID: <20200515140547.GE1634618@smile.fi.intel.com>
References: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200506233136.11842-1-Sergey.Semin@baikalelectronics.ru>
 <20200506233136.11842-4-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506233136.11842-4-Sergey.Semin@baikalelectronics.ru>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_070551_846580_29F24228 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Paul Burton <paulburton@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Long Cheng <long.cheng@mediatek.com>, linux-mediatek@lists.infradead.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, linux-mips@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:31:34AM +0300, Serge Semin wrote:
> Really instead of twice checking the clk_round_rate() return value
> we could do it once, and if it isn't error the clock rate can be changed.
> By doing so we decrease a number of ret-value tests and remove a weird
> goto-based construction implemented in the dw8250_set_termios() method.

>  	rate = clk_round_rate(d->clk, baud * 16);
> -	if (rate < 0)
> -		ret = rate;

> -	else if (rate == 0)
> -		ret = -ENOENT;

This case now handled differently.
I don't think it's good idea to change semantics.

So, I don't see how this, after leaving the rate==0 case, would be better than
original one.

> -	else
> +	if (rate > 0) {
>  		ret = clk_set_rate(d->clk, rate);
> +		if (!ret)
> +			p->uartclk = rate;
> +	}
>  	clk_prepare_enable(d->clk);
>  
> -	if (ret)
> -		goto out;
> -
> -	p->uartclk = rate;
> -
> -out:
>  	p->status &= ~UPSTAT_AUTOCTS;
>  	if (termios->c_cflag & CRTSCTS)
>  		p->status |= UPSTAT_AUTOCTS;

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
