Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B29B1B313A
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 Apr 2020 22:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIqDM9om398pIU8oSZ4MhZFbJIF4fgYFKYyyOF2TPyw=; b=K5DtF+njqfXhKc
	Zm2kXeTGk3gk0UpNrpLyibvltFpfvLRnQ71vAbU5f0Ca9UjfwPTsALtqQnv3+8DSAlPbF7ha/6WtK
	DxQR5zAKjnQsy8acdDm8Yt+Msv1phBOcU+qAthZz77lLUbw/9F3NRi9nHHSvOGlnQDZ5aCIAvNT3A
	eYWMgmhIrBXIrv5iSpLmkPAfvPLgNOr18xzWmzTl5uZMDS2ijHxYAdQ7Hr3zVmCtyQn+HlzHe82/T
	oWDr8OnOvPyyTAcmt9elukKZUJIQK47dNI5OW1ePj9Knu5atahH/D9dSJbaO8fW8bTU0Y/Aue90UT
	wYqYkNbYbZDY2RXKdFrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQzYW-0001AT-Sl; Tue, 21 Apr 2020 20:31:44 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQzYS-00018A-W7
 for linux-mediatek@lists.infradead.org; Tue, 21 Apr 2020 20:31:42 +0000
Received: by mail-io1-xd41.google.com with SMTP id w4so9204194ioc.6
 for <linux-mediatek@lists.infradead.org>; Tue, 21 Apr 2020 13:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DgynPmoHWquo2i6Yyvm5x5n+FCVjD0yzZNoB+cTueB0=;
 b=ie6ohRqyPbI+C4yBuHi6QA74OoL4yfStj7tBGqZwCMM1CSqVDKrZo5EzljVuI4Nwbh
 E8w+vvHv6vtOly2PHR4bf5m/LDCu6LXowc5Tv2F49VGJ+gHtIvdW7VpJTdKQDUsGlSXS
 JS2dURYAU+iGzaWXuh4lmrsMHOChsYSg3Z7aM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DgynPmoHWquo2i6Yyvm5x5n+FCVjD0yzZNoB+cTueB0=;
 b=rs6fquNTlEtpe01Qj2Hebrh4x/8nO3FTPlWRjsu3lEpgtuO6b+XpPrblbgo1OXDjPG
 IYNjZm6XpFGZFd5DsNIu22Qm7I+dBUy5OQCzJK5fU5sgKQWpYLEUb2XqlcGuyzPc52hj
 z+I8RkEQSzjV51DfYYq12yScMe9Uy8TNuXEz/CgNMadMimtL12pXp1dT8yxNYsjw9XOh
 9HDmty1bZyw8EvYV9XbuSYdiup4+GqcTWCGjX4wer1L3zM0K7fjla0Bzrd95oRF4NYVc
 vS+gcaIqrpbw4ZUAN70ItwRamIjFLa5mdM0sPnfHnccZqoB8apCg3PFQtpMGGx/lbytN
 /X7w==
X-Gm-Message-State: AGi0PubUQ6FvBQbPfduVvQkrCwaqyK8w5pmeMT2bJjnn+xAM0utb9Cdd
 LACsXORxcWxYTI9c6SMccvcT6j+gdkxzYDQrgymYpQ==
X-Google-Smtp-Source: APiQypIcsdGYB8kMa8Ef+QUbCPlWkfdqxPhfOwVS4UVzcXSmpGcF+MidhHbAyxQF165SEW5wUu6EYFT0GGPRKs8fm9c=
X-Received: by 2002:a02:90cd:: with SMTP id c13mr21792999jag.83.1587501096755; 
 Tue, 21 Apr 2020 13:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200421110520.197930-1-evanbenn@chromium.org>
 <20200421210403.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
In-Reply-To: <20200421210403.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 21 Apr 2020 13:31:25 -0700
Message-ID: <CAODwPW9MtDLSL_up9W0TO1PcjyA_9cUtNo3No7XXusiwqKBLDw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_133141_058405_6EAA843D 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> +static int smcwd_call(unsigned long smc_func_id, enum smcwd_call call,
> +                     unsigned long arg, struct arm_smccc_res *res)

I think you should just take a struct watchdog_device* here and do the
drvdata unpacking inside the function.

> +static int smcwd_probe(struct platform_device *pdev)
> +{
> +       struct watchdog_device *wdd;
> +       int err;
> +       struct arm_smccc_res res;
> +       u32 *smc_func_id;
> +
> +       smc_func_id =
> +               devm_kzalloc(&pdev->dev, sizeof(*smc_func_id), GFP_KERNEL);
> +       if (!smc_func_id)
> +               return -ENOMEM;

nit: Could save the allocation by just casting the value itself to a
pointer? Or is that considered too hacky?

> +static const struct of_device_id smcwd_dt_ids[] = {
> +       { .compatible = "mediatek,mt8173-smc-wdt" },
> +       {}
> +};
> +MODULE_DEVICE_TABLE(of, smcwd_dt_ids);

So I'm a bit confused about this... I thought the plan was to either
use arm,smc-id and then there'll be no reason to put platform-specific
quirks into the driver, so we can just use a generic "arm,smc-wdt"
compatible string on all platforms; or we put individual compatible
strings for each platform and use them to hardcode platform-specific
differences (like the SMC ID) in the driver. But now you're kinda
doing both by making the driver code platform-independent but still
using a platform-specific compatible string, that doesn't seem to fit
together. (If the driver can be platform independent, I think it's
nicer to have a generic compatible string so that future platforms
which support the same interface don't have to land code changes in
order to just use the driver.)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
