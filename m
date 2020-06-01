Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125001EA0FF
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jun 2020 11:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPTtm1wEm65fr3uyBWVg8nEVp71GHgZjMLlgldCkqu0=; b=M4/QtfmEShgMYS
	HowXU12boBLZzVo/49pcywPc4g2o55qKeji96XkeUdnB4f/Ws2d6VS2KOJd9jn/Z8KTBk1jqRUAaC
	Ah9MX2VUxfM/JQ7QQQLssmv1DdFBrHSxH1l3prPpwgyAdXkBRb9zdRlVRX2GG427TXQwoXAkrucGC
	OWY4U+tspVrdX89E4O/YgW3b0zUWQeQ6FE1RUtLtEccSCCWb4kyz0caNsHE+EQCMimmEF01t5VpDs
	+XxmxosObPav61lupD+rLa2vvIMuV9sZEMYfWcFmhdhMPttwVOwAOJRIqLBB7UCyjOCNuhPtlwzU0
	Rrt52reijk1HvQvpmYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgnq-0001gi-BL; Mon, 01 Jun 2020 09:32:18 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgni-0001bI-Pq; Mon, 01 Jun 2020 09:32:11 +0000
IronPort-SDR: Y1drMRaHti6N0vPmghbBJhvVipiYSPwSQiFFABUcBLSretjG2dLHtZXltba91/TOBTH3m0OaD9
 E5yKPOEU993Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 02:32:09 -0700
IronPort-SDR: /ujC3+DghISsUsonHBJPV5Gk1lF8j7sRohgtk5GOx7IvnSaAXmCHl6B6CxQWao4yIOCr0yCDB7
 OVC2kkPKlCsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,460,1583222400"; d="scan'208";a="470229648"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 01 Jun 2020 02:32:07 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jfgni-00AC6i-VN; Mon, 01 Jun 2020 12:32:10 +0300
Date: Mon, 1 Jun 2020 12:32:10 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v13 3/3] configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=m
Message-ID: <20200601093210.GA2428291@smile.fi.intel.com>
References: <20200601022548.18213-1-fengping.yu@mediatek.com>
 <20200601022548.18213-4-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601022548.18213-4-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_023210_849966_0E4D2DDC 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
 Marco Felsch <m.felsch@pengutronix.de>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 10:25:51AM +0800, Fengping Yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> Add Mediatek matrix keypad support in defconfig.

I didn't review this either, but it's fine to me.

> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d85045..112ced090b21 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -349,6 +349,7 @@ CONFIG_KEYBOARD_GPIO=y
>  CONFIG_KEYBOARD_SNVS_PWRKEY=m
>  CONFIG_KEYBOARD_IMX_SC_KEY=m
>  CONFIG_KEYBOARD_CROS_EC=y
> +CONFIG_KEYBOARD_MTK_KPD=m
>  CONFIG_INPUT_TOUCHSCREEN=y
>  CONFIG_TOUCHSCREEN_ATMEL_MXT=m
>  CONFIG_INPUT_MISC=y
> -- 
> 2.18.0

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
