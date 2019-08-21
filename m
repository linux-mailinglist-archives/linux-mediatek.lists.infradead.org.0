Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1299A97DD4
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 16:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gwg1t2eCaXBq5rJy1TWPYTiIYpFAvnL4Es3IeVkOUjk=; b=PyRnsh9IQ9dMiD
	GBiB3tSnxqjtPrbJL6m/eaJrKc0PN6H3iEkSBmlyKXrV8TR7GRdsIztH9zwGCP2jnht4fnL4xk0FW
	C64HzzghvtkUmyf6+zSL6b9y5ekLDrtiAJb7lr8GniJQQ3C8C5/DAJq95fpOR/qgGa//P+6Ei9pnO
	fo/WP7UaJ0YvbzSYGUDlUyawmDaspMOvjpcH9wl3lfYkx8pTbYWoZRtIWjAc1x62NZMRtaeiabLaL
	9Cn18/KftqHC9BKfPrLmjHOkShyi++30AZeIgtv7vGRtsFHZKSR/oPCeSWysQd3IgVkBrs7wL/uLt
	2iFTZClKJh4ZjvKT+zuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0S54-0006qa-3j; Wed, 21 Aug 2019 14:59:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0S4w-0006hr-1b; Wed, 21 Aug 2019 14:59:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so1486974plr.1;
 Wed, 21 Aug 2019 07:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MGu3Yx6P1oW2dkVZJ8rQOp/8pAXcm/B2IMgoDlOEKl4=;
 b=WLYmJXxArkZ+xpZrPWfZ85MRzNzUcKTIsk882+RxQxxR3Az/71RvVWigMyyc3o9qDg
 mtvIRNq6XqeN1cOcZdrxEKMDHffD2FSe6/WbeP3fCJsQQUwFHkNqyr1s3s/9l6wOl4hi
 i61XL/Ai4/XENarTcYSqmmmeNxx7hyK+c8wCDaxPxncIttf7Mf8ZvxfKx2BB2nHOHoC4
 c0aMh+x4BaABVYpPLLtW5xg8u7M3ZX6mQoBFs4WrPYllZko4hPmPVVPlY8U86SnB4jfI
 OfGoENjS2m5V/qu3I2HjQjjnojwvAqezsZODeJIns7mWjTQGdm1PNzNZCvBa11J0X1NP
 9Ryw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=MGu3Yx6P1oW2dkVZJ8rQOp/8pAXcm/B2IMgoDlOEKl4=;
 b=uhbJ47o9sZ/RAqmyvpvgGJeZbs5qLnSljOAw9Ji4DvDsBQEQnDimO0hXyKXoz3eipI
 Atdxq5IcqlS8Macq2wPTThAQZHbEeZAhYDmyG48Jxzcwf1VlwH1MjRsxyfSGQARAhKSs
 crhzE61EwvebPnu4Yzl0BdQpek1a7dx1M0A9/1IZmLEz9X1nGNVzYIbHINSlyOp9DWrO
 oyFIA4l+E8QODZxafvGAAsd/SQri7/7ivzQC3046FXF77DzT5f0RKuXkEHonIr6IGR0l
 XfYhQbvJI5Nmew8Wghn4CCOjewV63oQtycSO0kJpGc+VhDDTT/USi41GO/9O1iB0+iXM
 YuaQ==
X-Gm-Message-State: APjAAAVllDHJjtb6q3V7bfLYeXTjth0mnxgxI5cyeNKjZkjs9JY6tac4
 7Q/DyAc/Zsu6voe5SWWsK4g=
X-Google-Smtp-Source: APXvYqxUP8xkNyQZWYrRIamXP/wMkzF1WMKVh7TUKjSQXGKEymiVCjMrEbQg8CoUx7Bzq7phU6wEqA==
X-Received: by 2002:a17:902:44f:: with SMTP id
 73mr34838894ple.192.1566399552898; 
 Wed, 21 Aug 2019 07:59:12 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m145sm27713891pfd.68.2019.08.21.07.59.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 07:59:12 -0700 (PDT)
Date: Wed, 21 Aug 2019 07:59:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Matthias Maennich <maennich@google.com>
Subject: Re: [PATCH v3 11/11] RFC: watchdog: export core symbols in
 WATCHDOG_CORE namespace
Message-ID: <20190821145911.GA6521@roeck-us.net>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-12-maennich@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-12-maennich@google.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_075914_233095_4D9A1119 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, lucas.de.marchi@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arch@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, mingo@redhat.com,
 geert@linux-m68k.org, NXP Linux Team <linux-imx@nxp.com>,
 Tomas Winkler <tomas.winkler@intel.com>, Jean Delvare <jdelvare@suse.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, tglx@linutronix.de,
 michal.lkml@markovi.net, Scott Branden <sbranden@broadcom.com>,
 Andrew Jeffery <andrew@aj.id.au>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed@lists.ozlabs.org, yamada.masahiro@socionext.com,
 Thierry Reding <thierry.reding@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, kernel-team@android.com, sspatil@google.com,
 linux-watchdog@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, pombredanne@nexb.com,
 linux-m68k@lists.linux-m68k.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, maco@android.com,
 linux-arm-kernel@lists.infradead.org, Barry Song <baohua@kernel.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>, oneukum@suse.com,
 Patrice Chotard <patrice.chotard@st.com>, Stefan Wahren <wahrenst@gmx.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, kstewart@linuxfoundation.org,
 usb-storage@lists.one-eyed-alien.net, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, joel@joelfernandes.org, sam@ravnborg.org,
 linux-rtc@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Benjamin Fair <benjaminfair@google.com>, Eric Anholt <eric@anholt.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 Joel Stanley <joel@jms.id.au>, stern@rowland.harvard.edu, arnd@arndb.de,
 Ray Jui <rjui@broadcom.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Orson Zhai <orsonzhai@gmail.com>, linux-hwmon@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Andreas Werner <andreas.werner@men.de>, Avi Fishman <avifishman70@gmail.com>,
 maco@google.com, jeyu@kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Baruch Siach <baruch@tkos.co.il>, Mans Rullgard <mans@mansr.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Tali Perry <tali.perry1@gmail.com>,
 hpa@zytor.com, linux-scsi@vger.kernel.org, openbmc@lists.ozlabs.org,
 x86@kernel.org, Andy Gross <agross@kernel.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 linux-mediatek@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Alessandro Zummo <a.zummo@towertech.it>, Baolin Wang <baolin.wang@linaro.org>,
 Patrick Venture <venture@google.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-modules@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 12:49:26PM +0100, Matthias Maennich wrote:
> Modules using these symbols are required to explicitly import the
> namespace. This patch was generated with the following steps and serves
> as a reference to use the symbol namespace feature:
> 
>  1) Use EXPORT_SYMBOL_NS* macros instead of EXPORT_SYMBOL* for symbols
>     in watchdog_core.c
>  2) make  (see warnings during modpost about missing imports)
>  3) make nsdeps
> 
> I used 'allmodconfig' for the above steps to ensure all occurrences are
> patched.
> 
> Defining DEFAULT_SYMBOL_NAMESPACE in the Makefile is not trivial in this
> case as not only watchdog_core is defined in drivers/watchdog/Makefile.
> Hence this patch uses the variant of using the EXPORT_SYMBOL_NS* macros
> to export into a different namespace.
> 
I don't have the context, and thus I am missing the point of this patch
set. Whatever it is supposed to accomplish, it seems extreme to me
to require extra code in each driver for it.

Anyway, WATCHDOG_CORE would be the default namespace (if it is what
I think it is) for watchdog drivers, even though not all watchdog drivers
use it. As such, I am missing an explanation why defining it in Makefile
is not trivial. "... as not only watchdog_core is defined in
drivers/watchdog/Makefile" does not mean anything to me and is not a real
explanation. Also, it is not immediately obvious to me why "select
WATCHDOG_CORE" in Kconfig would not automatically imply that WATCHDOG_CORE
is used by a given driver, and why it is impossible to use that
information to avoid the per-driver changes.

I am also missing an explanation why WATCHDOG_CORE is going to be a
separate namespace to start with. Maybe that discussion has happened,
but I don't recall being advised or asked or told about it. Are we also
going to have a new HWMON_CORE namespace ? And the same for each other
subsystem in the kernel ?

Since this is being added to the watchdog API, it will have to be
documented accordingly. Watchdog driver writers, both inside and outside
the watchdog subsystem, will need to know that they now have to add an
additional boilerplate declaration into their drivers.

Last but not least, combining patches affecting multiple subsystems in a
single patch will make it difficult to apply and will likely result in
conflicts. Personally I would prefer a split into one patch per affected
subsystem. Also, please keep in mind that new pending watchdog drivers
won't have the new boilerplate.

Thanks,
Guenter

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
