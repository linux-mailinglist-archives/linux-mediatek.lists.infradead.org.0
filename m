Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA08AF38B
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 02:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1r7qey6f9VRV9ckWLWKu0Nxi9eQo7EHzNq7AWZ1j+0=; b=m0RBkALk61nCdX
	9umjMRU8zeRY2yZZv0iFseyFlw1dWe0kRMd+SPUtZTTMLxj5YQ/8tL9XBPOGWQy2XaHkhBJUS1jZM
	ngGVXXMV3pCtfFtsWO4krRpEtSHxUBAneHurjsVboha0nHW98x/HILshoEb+zHkVOxFHYQF2QROq8
	o9sK0AN7Pd92kdpXRyBQhxvJQozSDbgkhxgcjrYpI4RDVO9jpmBZ+PsuPmLG6QmsbFdA6y5TqLt4D
	fRSggAE1IrbmtZr5B5RIqPm5Qk5aJOEbL/dGlKnhCH6Vg1q7Otw6CHb+PqX/iWtXBZNR2h1IIAsMN
	2cuufYQUa1YEb4q1nJTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7q6V-0004lj-61; Wed, 11 Sep 2019 00:03:23 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7q6P-0004j0-20
 for linux-mediatek@lists.infradead.org; Wed, 11 Sep 2019 00:03:20 +0000
Received: by mail-lf1-x143.google.com with SMTP id c195so43350lfg.9
 for <linux-mediatek@lists.infradead.org>; Tue, 10 Sep 2019 17:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3h5YhApDdKtuz+D+gnGApd0B+4LCatw0L0XfiuEsBxQ=;
 b=NVJuR8bVMlcOgsf2yYP8qr45fff0pzpYW0BCQbtA3MsNrrnNBYVUkrPCtjMGuEx2eR
 vHG5rVpaM7qaL5D6ZhjkHfMm284dwMFpk/jTbelXuYGLLAopmskm5XPWQcubU3dyFgQP
 G88QxB3Jcb/plkyiz6fe5BqXD8nxBJ2xf0peSImUUZad5hQShUxqigYRk4Q9D8tv9p5a
 a8lcoGihpXhUGZiy7buZ+CKWHWGu0mF5S/9l1l5Cy2SeI8i3kGeBCygVnoSpYlUNWgIQ
 22K9B0rcSqbfpLPD7mNpTKq7npU9JgB0CxGqWN97IT2niY6foO3t3Au+1txtUD0IGOth
 +r5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3h5YhApDdKtuz+D+gnGApd0B+4LCatw0L0XfiuEsBxQ=;
 b=kiMnf5RTp9DT1yjBeBSSjWbiK4MAEWutEL0p6XDjPDEZj0QiPfgxXVkMCLiYd+IwBH
 gj1Sz3B4ZuUMEhQH/nEsJHzpPx+MPuTrlfh/+wmP1WUG1AquVvnPNDRQtQaRY09Eci85
 xhUmZHTxIART/O9KeUdFxBbnuZxH+UZ4NHFH7hWwa8lYwWImbZ2OuDPGQKJpFYLUptIF
 Od+VX9luG7sdxBtxPGmrGzYBHKS5GIc6WDUMGNF4cZq3RK4ia1eUC9edOq/XyCeqOib6
 6bNFM/yujILw6x+BN7mLKV6tS13M2bnJZMI0qcH9RWYp65gotCU5sXFKmLGPTvngq+ex
 HRwA==
X-Gm-Message-State: APjAAAXfdtNie06VNb1u9TLukwN9mrh/3q70jVEnWPCHSyxmGM2AqH6d
 JhtbBxn9NB8CN45GfYHSZt+uup0QfFSUTdgWNBwSYg==
X-Google-Smtp-Source: APXvYqwSiGgQfEWih9ymT87LJVnnaDlghzrxFki3OwEuC0IQ+sLwt8v1OcRFgydIQHHbkPzCMKjT6aFqwtFQHE75p7Y=
X-Received: by 2002:a19:f512:: with SMTP id j18mr3365169lfb.169.1568160195293; 
 Tue, 10 Sep 2019 17:03:15 -0700 (PDT)
MIME-Version: 1.0
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
 <20190910143231.GB14966@e107533-lin.cambridge.arm.com>
 <ab43b209-78fa-0cab-b8ea-acd4c550e689@microchip.com>
 <20190910150826.GA18308@e107533-lin.cambridge.arm.com>
 <20190910151055.GX21254@piout.net>
In-Reply-To: <20190910151055.GX21254@piout.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 01:03:03 +0100
Message-ID: <CACRpkda4mmpbPWa2nD93CvD6HWzcTUDzyyLdQxC2gNB7XiJF3w@mail.gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_170317_190016_0BF0767A 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
 Ludovic Desroches <Ludovic.Desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "moderated list:H8/300 ARCHITECTURE" <uclinux-h8-devel@lists.sourceforge.jp>,
 Marc Zyngier <marc.zyngier@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-unisoc@lists.infradead.org, Krzysztof Halasa <khalasa@piap.pl>,
 Thomas Gleixner <tglx@linutronix.de>, Scott Branden <sbranden@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Claudiu Beznea <Claudiu.Beznea@microchip.com>,
 Mark Rutland <mark.rutland@arm.com>, James Hogan <jhogan@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Eric Anholt <eric@anholt.net>,
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
 Nicolas Ferre <Nicolas.Ferre@microchip.com>,
 Tony Prisk <linux@prisktech.co.nz>,
 "moderated list:NIOS2 ARCHITECTURE" <nios2-dev@lists.rocketboards.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 4:11 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> On 10/09/2019 16:08:26+0100, Sudeep Holla wrote:
> > On Tue, Sep 10, 2019 at 02:51:50PM +0000, Claudiu.Beznea@microchip.com wrote:

> > In that case, why can't we identify capability that with the compatibles
> > for this timer IP ?
> >
> > IOW, I don't like the proposal as it's hardware limitation.
>
> To be clear, bot timers are exactly the same but can't be clocksource
> and clockevent at the same time. Why would we have different compatibles
> for the exact same IP?

In that case why not just pick the first one you find as clocksource
and the second one as clock event? As they all come to the
same timer of init function two simple local state variables can
solve that:

static bool registered_clocksource;
static bool registered_clockevent;

probe(timer) {
   if (!registered_clocksource) {
       register_clocksource(timer);
       registrered_clocksource = true;
       return;
   }
   if (!registered_clockevent) {
       register_clockevent(timer);
       registered_clockevent = true;
       return;
   }
   pr_info("surplus timer %p\n", timer);
}

Clocksource and clockevent are natural singletons so there is
no need to handle more than one of each in a driver for identical
hardware.

With the Integrator AP timer there is a real reason to select one over
the other but as I replied to that patch it is pretty easy to just identify
which block has this limitation by simply commenting out the IRQ
line for it from the device tree.

Maybe there is something about this I don't understand.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
