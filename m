Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F40E132066
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Jan 2020 08:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+7xMNCOywbmNqMv6uXvQxBK/dIA2oVXQPil73+KRWc=; b=ERX5QkE4pchVfK
	T+IFqXYVq+ZHbYQtvNqjWc+pgJdrOskcLKVVQ4HFN9X6nDqXjQEyaAdGfb/vlw0SEGvS1/foyvy2s
	2b9asd9XuEg07dcGlAgRlxxi+Z2R24BzN1SFuWam2vDkIZ6VCZ6zzjFyJJlwvQCNxy1FTmt7GYQRS
	3/E2ADmOqTzl2D30n9Q9yxy/tynIrbPzUUwfBm4fH5sRaIEDGlYKvHa65nTV6ZRCKBRSuITCprYZh
	eSWhQz59CarhEiKjaLG22o71Adr+U0CcAZ/jECpCIfz8XH8kdjxIS+S9B1iRNnepL2MrxUbVxTl5K
	AGQXZ5Tka8N6D80DPRTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojGZ-0003e8-IR; Tue, 07 Jan 2020 07:27:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojGT-0003Vz-9D
 for linux-mediatek@lists.infradead.org; Tue, 07 Jan 2020 07:26:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iojGI-0000qU-CN; Tue, 07 Jan 2020 08:26:46 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iojGH-00029v-Ic; Tue, 07 Jan 2020 08:26:45 +0100
Date: Tue, 7 Jan 2020 08:26:45 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230172113.17222-2-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_232657_319277_2CA987A5 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello Krzysztof,

On Mon, Dec 30, 2019 at 06:21:13PM +0100, Krzysztof Kozlowski wrote:
> Some of the PWM drivers can be compile tested to increase build
> coverage.
> =

> The Meson PWM driver requires COMMON_CLK dependency.

I'm surprised that there are not more that need this. Is HAVE_CLK not
enough?

Also HAS_IOMEM is a typical requirement, but I tested with an ARCH=3Dum
config (which does't have HAS_IOMEM) and they all compile fine.

> @@ -318,7 +319,7 @@ config PWM_MEDIATEK
>  =

>  config PWM_MXS
>  	tristate "Freescale MXS PWM support"
> -	depends on ARCH_MXS && OF
> +	depends on (ARCH_MXS && OF) || COMPILE_TEST
>  	select STMP_DEVICE
>  	help
>  	  Generic PWM framework driver for Freescale MXS.
> @@ -328,7 +329,8 @@ config PWM_MXS
>  =

>  config PWM_OMAP_DMTIMER
>  	tristate "OMAP Dual-Mode Timer PWM support"
> -	depends on OF && ARCH_OMAP && OMAP_DM_TIMER
> +	depends on (ARCH_OMAP && OMAP_DM_TIMER) || COMPILE_TEST
> +	depends on OF

I'm surprised that OF isn't required for PWM_MXS but is is for
PWM_OMAP_DMTIMER. pwm-mxs compiles without CONFIG_OF, didn't test
pwm-omap-dmtimer.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            =
|    | https://www.pengutronix.de/ |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
