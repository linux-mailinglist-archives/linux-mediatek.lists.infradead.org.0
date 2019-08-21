Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0C89800E
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 18:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bFYSlDGV3T5QrA/kMUa6NFpEJITworslrJwGP+YmCAU=; b=shaFD4sfa1UJj7bqN13+oZhSb
	fLAlkn7AyymRtrYMff++YMouHGSc9ZnYhTtFwuk4zT4a7ZI2JpEFWjv3yJoYl9iEsTgRDGrpyt5qE
	VkX1fqNJB3uivvYkg9Ffy4jHzxU0xWf1YNadkSLtFcIk+At4I0fidxG9lVAOnwxkrTlTnr++QNedU
	qW/6KaLego4supMzsXK/WxfhtusO2htET3MhQ8S7av5lchYPZfLbaRwXQlW6q+uo7Xfvs/Ommizhq
	PhrAa+96yM1IyOpWooOYiPIyb4S0ax27yI/irEtmZCnjpj1Cxcne/+HEuG6OFBNJF5F0ZmX+joCgq
	1czfztlow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TTC-00089X-Kn; Wed, 21 Aug 2019 16:28:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TT9-00087z-3s
 for linux-mediatek@lists.infradead.org; Wed, 21 Aug 2019 16:28:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id b16so2618549wrq.9
 for <linux-mediatek@lists.infradead.org>; Wed, 21 Aug 2019 09:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ywUCIB+cRj4cRKcIpwpQFY+NrjfdLRDV76eNoo3hv/0=;
 b=uFvB4ztTYbbnWUcXOBHe8H8LAboUxJ40gdIQ8giCnWFtsb9UgOEjxHLhk991t4jTGN
 eCF76EMqqZcwUUggeElvFMdSv3nd9GMdRRD9/ueZ3l1sGFh5qp4rzV/F9exy0Pan40hz
 4PQXQbcn/bS4V4Ul6j8X/xkS1A8t6hbKtC0+feu4M4x0ug7E9eohpDOGPbdTZEdGE5xp
 oWXf5eGy9tXHQQNCAJ9qKHkVI+1qxH9DjXQVHnnzGFDT8vXyGGF07ivgT28hGYHqtMYz
 uRt7OuhZuQdSsp1AC48M9oSsPdaOf8XzF4sRuu6fi+yDIBmpequ4bcfS0OekejftB9Zu
 GYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ywUCIB+cRj4cRKcIpwpQFY+NrjfdLRDV76eNoo3hv/0=;
 b=UAN340jPAk5AiIFMPBROuni6DsWyTgeo1LarNbvIpm7aIqJxIQLDM0FY5ilUddFaYK
 2KxMyuSqi7rjfgj8BeFamxuP3Xdl2HbvXTRd9wReVNO+2PlKQIjaHXhPJoKDpkqHTvAc
 l8D9zl6rRLXesZn2KUeRroSe0fosYoCDGM4fQQkWKsT47v0AB1UNvCLfA9tYO+FekRlN
 Rj+obwsOtidCjwmOTQhX6GENx+sOo0bMoQikTfjB07vz2/s0lrRRELTG+mBC/B0YkDCn
 HKWwZAMkB1U/rJ/013Dp+7PugKMrEHKeqzCJPt4eXZ6D40mZ8jFfX3PviLAnFZ5YHH3P
 KtNw==
X-Gm-Message-State: APjAAAWI7OqXVzSr1JMgak/sP4F9bXL0rLqk7AJE6RhP9z3g30KIkHvZ
 Fj96NrrUY25Rpx+2rPVyjTA3bw==
X-Google-Smtp-Source: APXvYqzzf/pBZTUAqrSrh8E6fLbQ03SLEZocUzQ/q912ZaLgwow4co7GX1wxWZBSfdK4XkjU4huGbA==
X-Received: by 2002:adf:e750:: with SMTP id c16mr2099535wrn.199.1566404897059; 
 Wed, 21 Aug 2019 09:28:17 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
 by smtp.gmail.com with ESMTPSA id u130sm1026138wmg.28.2019.08.21.09.28.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 09:28:16 -0700 (PDT)
Date: Wed, 21 Aug 2019 17:28:12 +0100
From: Matthias Maennich <maennich@google.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3 11/11] RFC: watchdog: export core symbols in
 WATCHDOG_CORE namespace
Message-ID: <20190821162812.GB77665@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-12-maennich@google.com>
 <20190821145911.GA6521@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821145911.GA6521@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_092819_180946_DD08896A 
X-CRM114-Status: GOOD (  28.35  )
X-Spam-Score: -12.5 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 3.2 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Guenter!

On Wed, 21 Aug, 07:59, Guenter Roeck wrote:
>On Wed, Aug 21, 2019 at 12:49:26PM +0100, Matthias Maennich wrote:
>> Modules using these symbols are required to explicitly import the
>> namespace. This patch was generated with the following steps and serves
>> as a reference to use the symbol namespace feature:
>>
>>  1) Use EXPORT_SYMBOL_NS* macros instead of EXPORT_SYMBOL* for symbols
>>     in watchdog_core.c
>>  2) make  (see warnings during modpost about missing imports)
>>  3) make nsdeps
>>
>> I used 'allmodconfig' for the above steps to ensure all occurrences are
>> patched.
>>
>> Defining DEFAULT_SYMBOL_NAMESPACE in the Makefile is not trivial in this
>> case as not only watchdog_core is defined in drivers/watchdog/Makefile.
>> Hence this patch uses the variant of using the EXPORT_SYMBOL_NS* macros
>> to export into a different namespace.
>>
>I don't have the context, and thus I am missing the point of this patch
>set. Whatever it is supposed to accomplish, it seems extreme to me
>to require extra code in each driver for it.
>

Unfortunately, get_maintainer.pl has helped me too much and this series
got blocked by some mailing lists due to the large amount of recipients.
Following versions will be sent to the previous audience + the
linux-watchdog list.
For context, the full series (including previous versions) can be found
on lore at
https://lore.kernel.org/lkml/20180716122125.175792-1-maco@android.com/
and the cover letter for v3 has made it to linux-amlogic
https://lore.kernel.org/linux-amlogic/20190821114955.12788-1-maennich@google.com/

>Anyway, WATCHDOG_CORE would be the default namespace (if it is what
>I think it is) for watchdog drivers, even though not all watchdog drivers
>use it. As such, I am missing an explanation why defining it in Makefile
>is not trivial. "... as not only watchdog_core is defined in
>drivers/watchdog/Makefile" does not mean anything to me and is not a real

True, that is a bit out of context. Especially considering you did not
receive any other messages of that series.
Defining a namespace a symbol should be exported to can be done in
different ways. All of them effectively change the EXPORT_SYMBOL*
macro's behaviour. The method I am referring to is using

  ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=WATCHDOG_CORE

directly in drivers/watchdog/Makefile. Since this would also apply the
namespace to exports in non-core modules it would be incorrect. Thus I
used the method of applying the namespace directly by changing the
EXPORT_SYMBOL macro expansion.

>explanation. Also, it is not immediately obvious to me why "select
>WATCHDOG_CORE" in Kconfig would not automatically imply that WATCHDOG_CORE
>is used by a given driver, and why it is impossible to use that
>information to avoid the per-driver changes.
>

One intention of this patch series is to make exporting and using of
namespaces explicit. As such, the subsystem exporting symbols is
defining the namespace it exports to and the module using a namespace is
supposed to explicitly declare its usage via import. In case of watchdog
(and probably other cases) it might make sense to find a way to
implicitly import the namespace for in-tree drivers in the same area.

>I am also missing an explanation why WATCHDOG_CORE is going to be a
>separate namespace to start with. Maybe that discussion has happened,
>but I don't recall being advised or asked or told about it. Are we also
>going to have a new HWMON_CORE namespace ? And the same for each other
>subsystem in the kernel ?
>

This very patch is an RFC to demonstrate how Symbol Namespaces would be
used based on the current implementation (the other RFC as part of this
series is for the introduction of the namespace USB_STORAGE).
WATCHDOG_CORE serves as one of two examples. I do not think the two RFC
patches should be merged along with this series.

>Since this is being added to the watchdog API, it will have to be
>documented accordingly. Watchdog driver writers, both inside and outside
>the watchdog subsystem, will need to know that they now have to add an
>additional boilerplate declaration into their drivers.
>

Completely agree. This is just an RFC that omits these details as it
purely focuses on the introduction and consequences of such a namespace
to demonstrate how the feature works.

>Last but not least, combining patches affecting multiple subsystems in a
>single patch will make it difficult to apply and will likely result in
>conflicts. Personally I would prefer a split into one patch per affected
>subsystem. Also, please keep in mind that new pending watchdog drivers
>won't have the new boilerplate.

I understand the point. Especially as I am already now affected by the
long list of recipients when sending this patch. The problem with single
patches here is, that once a symbol is exported into a namespace, all
modules using it have to declare that import to avoid a warning at
compile time and module load time. Hence the all-in-one approach.
Luckily, the patch series also provides a way to address such a warning
(via `make nsdeps`) that creates the necessary source code fix as a
single line per module and namespace right after MODULE_LICENSE(). That
is how this patch was created in the first place.

Cheers,
Matthias

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
