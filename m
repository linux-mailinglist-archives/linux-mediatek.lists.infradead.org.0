Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A4D19F65B
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Apr 2020 15:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgQBZnGxjcZmPqC+22ZAeaDecnPlAVkVqa8doEWHOnk=; b=IvvgsXuNUJ6XpN
	2L8CqLgiky3bQ9Ryrq7sPOIJCDTpYqu9apBPePtbExud58iFf+bC2JjtlVxzYu0eJYwTsNqxW0AV9
	tereSKBn+g1KNy6VW+iRH9z9nbtdbGLYoXX+lDB/92lrzUI91QhfOr+hQYDA8Fnf3leJ/vTB21JmO
	abSSI01j4G1GC2P8/G4DQ2jGWZkmXUGGeMX8w/bmzeoOgmwdDuu3nY9irrg9oeL/S5hPVCar43A1w
	trEJHV9srXc2iDmduI4NDSUo30whNl8u2cq/20CvTw6MLJtqcmbGNTtL43GfaOQj4MHvZ/1XubdlT
	ljFcjnurJCP/Zq6DsMmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRQ7-0005fM-Ke; Mon, 06 Apr 2020 13:04:07 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRQ4-0005f0-NT
 for linux-mediatek@lists.infradead.org; Mon, 06 Apr 2020 13:04:05 +0000
IronPort-SDR: O4EBP1mjoP2WAqfZycYgZMvxc/wPkDmhvr7tanVYsJ8gYk5WUB/hCp30GevbDEkBkduipo7vqM
 xo6WgyhK5cGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 06:04:03 -0700
IronPort-SDR: M1yeWc4dK0ciV2kr3dpLZnL49hrexu8/JdeW3lQVODOoJAXpSHu0mzrDSeCBWFBGHIqkApSY9t
 jtVqmRz9IVjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="424350736"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 06 Apr 2020 06:03:59 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jLRQ1-00GBQE-Vd; Mon, 06 Apr 2020 16:04:01 +0300
Date: Mon, 6 Apr 2020 16:04:01 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v3] Add support for MediaTek keypad
Message-ID: <20200406130401.GV3676135@smile.fi.intel.com>
References: <20200405020114.14787-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200405020114.14787-1-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_060404_832134_164D7E4D 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, Apr 05, 2020 at 10:01:13AM +0800, Fengping yu wrote:
> 
> This patchset add support to MediaTek matrix keypad.

Seems it has not addressed comments I gave.

> 
> Change since V2:
> - remove extra space and redundant lines
> - update keypad devicetree document debounce time unit
> - change to use devm_platform_ioremap_resource() to simplify resource management
> - use bitmap to store and check keypad state
> 
> fengping.yu (2):
>   add dt-binding document for MediaTek Keypad
>   add MediaTek keypad driver
> 
>  .../devicetree/bindings/input/mtk-kpd.txt     |  61 +++++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/input/keyboard/Kconfig                |   7 +
>  drivers/input/keyboard/Makefile               |   1 +
>  drivers/input/keyboard/mtk-kpd.c              | 258 ++++++++++++++++++
>  5 files changed, 328 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
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
