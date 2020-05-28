Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB4F1E5D1A
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 12:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/vmq8APGa+IBD4u1hmmGiZ/MRkWS8WdN4KmDCWqK/E=; b=dVc1N27CXQY5gV
	Xi898SLdf8yX6wtq4g70FxJ8on5CHRJoagko/UDP+lu/fRE75KjCyN6FfhE7P5bCWLVl2BraQQlQP
	k2xTigxCQeAk6A3mxj4zL2RMaLOrFaXWMBCiys8uxLbTJxShj16mska0oG1+Fvf58QbcBYMpDVyyR
	EUWBs/+RPOiabmfhEsuqEMXfVUaJXAkVUYBHSy4fncUSfqVcobEJ5bdiTb58DjvsecNib+h9Zg0jq
	JhW0cWgeZ1SagxxT6Q2FFrvuB4xBtWYLMjg9ZlUS21xgq3fRNLKeaQfdVBtXKqnyMuYjPbzVmLnOe
	Gv/XOdaGkTD7fAdfk3XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFir-0005eG-8g; Thu, 28 May 2020 10:25:13 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFiT-0004UM-El; Thu, 28 May 2020 10:24:50 +0000
IronPort-SDR: AUUd8XUiY3PE+JSTJ/5xn6p83MEuo+TDWEoCfSkQ2CR9rESNvuC0IPWqPrEQZjEqNyYfCIWQk8
 BWRsXBSLX5+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 03:24:43 -0700
IronPort-SDR: 7YzXa/VGBxUz2xxG1w1dcOrFdJUpU2foPW9a+SEpZaDyYkYPl7NWzB4+lh2YzRLemfTKQLD834
 iDij8LIGp9qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="270806799"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 28 May 2020 03:24:41 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jeFiO-009PMJ-HY; Thu, 28 May 2020 13:24:44 +0300
Date: Thu, 28 May 2020 13:24:44 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [RESEND PATCH v11] Add matrix keypad driver support for Mediatek
 SoCs
Message-ID: <20200528102444.GJ1634618@smile.fi.intel.com>
References: <20200528090144.54033-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528090144.54033-1-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_032449_509139_CAE6E6D7 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
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
 Marco Felsch <m.felsch@pengutronix.de>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 05:01:42PM +0800, Fengping Yu wrote:
> 
> Change since v10:
> - add wakeup source setting in probe function

You forgot tags by Marco

> 
> fengping.yu (3):
>   dt-bindings: Add keypad devicetree documentation
>   drivers: input: keyboard: Add mtk keypad driver
>   configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=m
> 
>  .../devicetree/bindings/input/mtk-kpd.yaml    |  95 ++++++++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/input/keyboard/Kconfig                |  11 +
>  drivers/input/keyboard/Makefile               |   1 +
>  drivers/input/keyboard/mtk-kpd.c              | 206 ++++++++++++++++++
>  5 files changed, 314 insertions(+)
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
