Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0BB979A0
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 14:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzgwR2HaSRvYrWeUqDNjpEh2GkhpGKsRmg+fXug3YmY=; b=h80O18yFtByPIH
	ig0754alCrcIhyJwZlMMW87jJdukf8a7wFQIF5XPWG7iYSdFdYKN8GfFykWmkfhBjqodmXUQeqx2t
	vXRXRLdMUSxjdZ5dhM9roNnRYsvaULxxz39/37lbDR8/GWAZfQQhpzx69nyUBtOpMyoX6V+fCGkpJ
	QpaKpwiI5U10lUztdqznYz9UTI28kOtw7oqblQWy8AJGW+2jr3wkKiALO4NlhG2u+SS9hGHJGuDjK
	2TGwMKOE7sZUzk7BilQmeAj53aWrBaH2ZWg/+/ogIFPJvY987afeSorijQHsRZSbiKbOp3Jkw6yo2
	a9mVVkbZeLcj+NwFPITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ptt-0005C0-KG; Wed, 21 Aug 2019 12:39:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ptm-0005Aa-Q8; Wed, 21 Aug 2019 12:39:36 +0000
Received: from localhost (unknown [12.166.174.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81D002341E;
 Wed, 21 Aug 2019 12:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566391173;
 bh=9bKz63tfFMpFQqEEIloPUowFJ5JwR4y30ptvJscL/Iw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TupyVj17ES+TfT+ew5wxVn8/RoB+TY3kzi7v4OUpPABmXN54r5OmVi6tbiKQX/bZY
 5gCzoLUZziA2oHRwBivvPBaJ3vxbNxMmuKTqKq08ygNvwKx22cXMo1ObY0kyFKURpq
 clArw0ZdRLuq6XCWIqAV2EpnFRwl4GNUZtxnjD1Y=
Date: Wed, 21 Aug 2019 05:39:33 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Subject: Re: [PATCH v3 11/11] RFC: watchdog: export core symbols in
 WATCHDOG_CORE namespace
Message-ID: <20190821123933.GC4059@kroah.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-12-maennich@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-12-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_053934_890404_35624912 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Tomas Winkler <tomas.winkler@intel.com>, Guenter Roeck <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 tglx@linutronix.de, michal.lkml@markovi.net,
 Scott Branden <sbranden@broadcom.com>, Andrew Jeffery <andrew@aj.id.au>,
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
> An alternative to this patch would be a single definition line before
> any use of EXPORT_SYMBOL*:
>  #define DEFAULT_SYMBOL_NAMESPACE WATCHDOG_CORE
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>

As we talked in chat, the cc: list for this patch was crazy :)

If you end up resending this (as odds are the mailing lists will trash
it for too many recipients), feel free to add:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Great work,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
