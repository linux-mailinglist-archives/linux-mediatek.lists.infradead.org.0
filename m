Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2C8AF377
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 01:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1wy3jaMjQu8fzEfNrrUMWUbDyJE98M1wAd0MgoPkNE=; b=bP721qgU6+oaNy
	1MlE10aVUFGw9lHo51wKUgDsz5agOT5RjtiBxtkFi5/vR5xiC5DaC7Mxz2DHaoyy1lE8zieeq2o6T
	lw6QnwYufOHFL+2eQEDNVO/poOLU7TmVNTvvG5z13XYlY+LNvUfqqwx/pc9ldSKGCEyi+o0o9qnG5
	myCk2LxhZe0WUnDJJbGtR1SrBjY7OCRdup1EfCcvUxvxZ2Z1SaBvIaKWxQdhLoEll0q1OZHwxsSmv
	cNjS0a2SIFLp3zwlmDynETQzA7dxoufYb4UgBHHs49Dux8WapVWkUSQ7LlPGRy7qGumdx1hB7Cae9
	eiiTAxEZsemcTHe7lM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7psW-0000LL-Vl; Tue, 10 Sep 2019 23:48:57 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7psN-0000Ho-3D
 for linux-mediatek@lists.infradead.org; Tue, 10 Sep 2019 23:48:49 +0000
Received: by mail-lf1-x144.google.com with SMTP id j4so14887499lfh.8
 for <linux-mediatek@lists.infradead.org>; Tue, 10 Sep 2019 16:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nL38C4T4rzT0VSsEiKY7BmomDl3hFeY7088tc9RdLq8=;
 b=fNEGUezEn4ClsVHmX/nmNiF7ZG6JTfC2btDRxEWPcdmRk0a0FsvI5GS8qdYjx25FKp
 Z5Q4/CFu+iDSAX2rFterlnGQ1MW2Sk6gR3mfMsTu8vyvU/jGEM0Jc08W0Sq44lgp0xR9
 CuSR5RUBNAD9f/xSIv24vJgfP+XgU0l/RFI3nayQNe/1yYJJGrgKDIL8s6DHZhU39Dqr
 TBKpHqE1DkJvJTHx2NFHskH6dl7p95yi4sNbTImUxUlyGuSbemOLPHLEtIfXkNBw9d7/
 rUpU1+cMWUkAMn+hR7NDiGLEM6b9jVVLEIcpdiiAIbYGINkcClRodvCdYR9vR8oMDgr8
 5cAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nL38C4T4rzT0VSsEiKY7BmomDl3hFeY7088tc9RdLq8=;
 b=M3HdV6bkoH9R49flixPPCFW46+J26iORpQoor92uHo3JAskaffJ/tZrsS3QBKBVKq2
 worN4fiKWcJpsp5hrRxQDVTa1Wg1GQQx5G47uB2Az6t5ifxRZ6xYHeAnEzPKLbt0gutY
 c3ltRC3ExavdyTkxm2j3jUeBFkr0kXXsRzvI2hbCRpV7dOpJbiUJz71VAUZqyyFZovBf
 z2g9LptAjgYQ/bmjiKP1xCrxi/1sxgEiKmdhCSkWDNymtr/rTOwI4eHQbBrTJd5GpQQd
 DbW+PFDr+FgmokGIFuadX2WKYQirJ4ttzltiiygBcugSPYbBn1aL4Tdu5fslV/3/XuGA
 crNw==
X-Gm-Message-State: APjAAAVq8KZ7MCOC9uRBKBZtlOza75CCmmXKcr7ipMX6uypk2oXK071/
 85tHPd/Zo/RbOo1jlU1RwPFXR1Tb00x22zjx1GOT7Q==
X-Google-Smtp-Source: APXvYqxP4f7JH+QwULI+vOrlKcfc2e6lWO/TBU9/DTND7ll7mmRrx+NRPo2/Aht4Q5KFeqk+4RbtApAQjqBPq8BsL30=
X-Received: by 2002:ac2:530e:: with SMTP id c14mr21391170lfh.165.1568159324971; 
 Tue, 10 Sep 2019 16:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-8-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1568123236-767-8-git-send-email-claudiu.beznea@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 00:48:33 +0100
Message-ID: <CACRpkdYsCFUNAtarTQmaA2a3-HZjiVjxQ-Wr-7wJp9xrtQRKCg@mail.gmail.com>
Subject: Re: [PATCH 7/7] clocksource/drivers/integrator-ap: parse the chosen
 node
To: Claudiu Beznea <claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_164847_171721_DCAF3946 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, "Nori, Sekhar" <nsekhar@ti.com>,
 guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "moderated list:H8/300 ARCHITECTURE" <uclinux-h8-devel@lists.sourceforge.jp>,
 Marc Zyngier <marc.zyngier@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-unisoc@lists.infradead.org, Krzysztof Halasa <khalasa@piap.pl>,
 Thomas Gleixner <tglx@linutronix.de>, Scott Branden <sbranden@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Sascha Hauer <kernel@pengutronix.de>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 James Hogan <jhogan@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Eric Anholt <eric@anholt.net>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Lyra Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Jon Hunter <jonathanh@nvidia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Kukjin Kim <kgene@kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, John Stultz <john.stultz@linaro.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Barry Song <baohua@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
 Stephen Boyd <sboyd@kernel.org>, Patrice CHOTARD <patrice.chotard@st.com>,
 Stefan Wahren <wahrenst@gmx.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-tegra@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Benjamin Fair <benjaminfair@google.com>, Alexander Shiyan <shc_work@mail.ru>,
 Krzysztof Kozlowski <krzk@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Chen-Yu Tsai <wens@csie.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Orson Zhai <orsonzhai@gmail.com>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 Ray Jui <rjui@broadcom.com>, Vladimir Zapolskiy <vz@mleia.com>,
 John Crispin <john@phrozen.org>, tali.perry1@gmail.com,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 Ley Foon Tan <lftan@altera.com>, linux-oxnas@groups.io,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Baruch Siach <baruch@tkos.co.il>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Russell King <linux@armlinux.org.uk>, Andy Gross <agross@kernel.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, aou@eecs.berkeley.edu,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <monstr@monstr.eu>,
 Baolin Wang <baolin.wang@linaro.org>, Vineet Gupta <vgupta@synopsys.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Tony Prisk <linux@prisktech.co.nz>,
 "moderated list:NIOS2 ARCHITECTURE" <nios2-dev@lists.rocketboards.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 2:50 PM Claudiu Beznea
<claudiu.beznea@microchip.com> wrote:
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
>
> The driver currently uses aliases to know whether the timer is the
> clocksource or the clockevent.

OK maybe that wasn't the most elegant solution.

> Add the /chosen/linux,clocksource and
> /chosen/linux,clockevent parsing while keeping backward compatibility.

This is not how I would solve this today.

I would simply remove/comment out the IRQ from the timer
that cannot be used for clockevent from the device tree
(apparently it doesn't work anyway), and make the code only
pick a timer with a valid interrupt assigned as clock event,
while a timer without interrupt can be used for clock source.

This has the upside of not needing any special aliases or
chosen things.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
