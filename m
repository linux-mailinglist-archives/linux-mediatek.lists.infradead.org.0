Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB7B1D4CBE
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 May 2020 13:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OShZUKWDKDLZk1tfSYnfU2MVDixwFDAUTkuQ70f0W4A=; b=p7+6t7RU/mJKRo
	4t9+76ieoulThkGdCu6m6S67xZ16rNxfDE+HD+yXsgWo3RyGWVvAxcc6HXF7v7DOA9N2zVTICMjD2
	jp7GXirNsT1OlZuBv/hpEspFaKbdbkMBvi1eIFFJG+p1lv8QQhitjEs44dShWAORr2IYrZqOlctRH
	uwt4FbDmxsYsr38ST4ALdDqu4IRcgrwvcitXWG4bBBuMJc0yoqjNXsQvU4/nuvVRoowmRFZ+bl1aw
	D5vw3B9Xo8TSmo2LYTKDvxxDLWCJF4q3VFFyPw+pmZjnFMjYheJRF6WZlOU6S1sQPG6FJOqZ2Y10e
	h/gvlUctW0zVE2d8A+xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYfq-0004yT-Ki; Fri, 15 May 2020 11:38:42 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYfH-0004V8-QS; Fri, 15 May 2020 11:38:10 +0000
IronPort-SDR: co4hyqZ8C8w30k1oUW52pWlgkefR8DyLO2e2yCKFJxvl3etrT6UV16GgXTePa5/nSYcSsht0/q
 fg3eNo1x8hzw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 04:38:07 -0700
IronPort-SDR: 7syfHYZiSk8sdH8ji4fv9pM54Sp1BiN4RvBPVmxzksORhZghe3ut/diu/a4C7Nlf1zWtmcXfJu
 gIzg/VPBiymw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="464877908"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 15 May 2020 04:38:05 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jZYfI-006qgY-Gz; Fri, 15 May 2020 14:38:08 +0300
Date: Fri, 15 May 2020 14:38:08 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v8] Add matrix keypad driver support for Mediatek SoCs
Message-ID: <20200515113808.GQ185537@smile.fi.intel.com>
References: <20200515062007.28346-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515062007.28346-1-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_043807_879926_B8C73592 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 02:20:04PM +0800, Fengping Yu wrote:
> 
> Change since v7:
> - specify compatible property as const string
> - add maxItem in required property
> - squash keypad example nodes
> - sort header file with alphabetic order
> - align all define values and add MTK_ prefix to make more uniform
> - change debounce value to default 16ms if not specified in dts
> - remove extra braces
> - separate clk prepare as an internal driver function
> - add special compatible string
> - modify CONFIG_KEYBOARD_MTK_KPD=m to build keypad as ko module

You forgot to address at least some of my comments...

> 
> fengping.yu (3):
>   dt-bindings: Add keypad devicetree documentation
>   drivers: input: keyboard: Add mtk keypad driver
>   configs: defconfig: Add CONFIG_ng.yu (3):
>   dt-bindings: Add keypad devicetree documentation
>   drivers: input: keyboard: Add mtk keypad driver
>   configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=m
> 
>  .../devicetree/bindings/input/mtk-kpd.yaml    |  94 +++++++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/input/keyboard/Kconfig                |   9 +
>  drivers/input/keyboard/Makefile               |   1 +
>  drivers/input/keyboard/mtk-kpd.c              | 231 ++++++++++++++++++
>  5 files changed, 336 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml
>  create mode 100644 drivers/input/keyboard/mtk-kpd.c
> 
> --
> 2.18.0
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
