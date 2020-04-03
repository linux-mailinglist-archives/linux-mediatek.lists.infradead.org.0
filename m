Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC4D19E134
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 Apr 2020 00:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/TrnITiHdcPq0Q4vRJM12t0DRLsX+RvbZ05ud2axHk=; b=YqFIyCL4RmPF6u
	hvvmqfz/b4YSW5Gzs9RJO3P4RnznbEW0NF+omgBVYpeexbFYvEYyWCQcJGtRwzi/oWzLNTQ7FlC8D
	QGExrIggSknfH86xxk/YuRV0ZUNLppxSt10prCJulfv8VqmzwLQS0/+I5WuUI/WCwoEQRIDCUbEz6
	HJG6yCIkSEkdpuEBQdkwp7NEAkxYLTkiCo/RO+jS2w/t7kaqrLOXPj2HwAyc71gnCtBKFAOwuZMRl
	Tx2ITUK4Hx7ZqBGBjeA6hlIvLe9QvVXiBEOj0Sdt+K2xOxi11TKeMq9H3ZWiLb6KU/ViEpPDI3eMz
	lJUczIjt9/XNh0k2SfQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKVFE-0006B8-1D; Fri, 03 Apr 2020 22:57:00 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKVFA-0006AK-KN
 for linux-mediatek@lists.infradead.org; Fri, 03 Apr 2020 22:56:58 +0000
Received: by mail-il1-x144.google.com with SMTP id n13so9033759ilm.5
 for <linux-mediatek@lists.infradead.org>; Fri, 03 Apr 2020 15:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AqKl27V7RFNmyor6QW5xd8i8kAV8SFQrhYdOkxkJcC8=;
 b=WPiy5e7K8C3QPMOUC92RgkkaI6mdprM/z4x2IEncYmEy/d6KK7jUOHmCmetCMsnqVc
 kBUsXiMJ5CPk89GqAtdkTRa9LsdaBYEp/cpn3fJHtLs0/2nM49F6CjWMe6UupK/IYTAT
 rhxUvgs+Xgt7OFNKBYmzA2qIcnYwH6wRp3tqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AqKl27V7RFNmyor6QW5xd8i8kAV8SFQrhYdOkxkJcC8=;
 b=fa0OgMEiOve26Y51SyLHI+Lfi+XCrhA16IluVsC8qDvnQ5as6W1WVaqC+JRfpMaFyu
 +URfdBwhzYL+/tUFwI+8C3wjKwC/bLqwKvXDYe8eGYNesl+ZXhrApvNueoKZQpNGnUrI
 cajLS5Ze0s9UhOv067lZpnvc0vzE1F36upXnUXefz1BVL5o2QSMoJ2g13FYewINpthqq
 8jAfdPrKre9bmG6b1isIkfhndak3d7oRrMAcjoKCK+g4vUiAl+6ImiTNPBxPjfAHIaI8
 RdjdEAjJ0k5k4n0cPm5mkNF4nprWWfVhwm2gJcov3Q3ttf8EMylUCw3lIEpAJ0F9BQfI
 XCXQ==
X-Gm-Message-State: AGi0PuYM349UV0Zmtoyadbvg1CK/ZVgTc1EuLyq6AOpbsIYabWOjuXwY
 IorIaGkl40uKB1QNoKp1xznJ14FS4sgj6RTqEkP6QQ==
X-Google-Smtp-Source: APiQypL/sgMRDscOesM/zrdL1QTRF5Nh56tikQdrdQDMkREU9bHS6EGHPKDF0BFGjrApSU6HGaGpCM0nXaMias8jAvA=
X-Received: by 2002:a92:cb49:: with SMTP id f9mr10827666ilq.193.1585954612585; 
 Fri, 03 Apr 2020 15:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <20200403162742.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
In-Reply-To: <20200403162742.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
From: Julius Werner <jwerner@chromium.org>
Date: Fri, 3 Apr 2020 15:56:40 -0700
Message-ID: <CAODwPW_iSK_d6EHCk7QUVF7=bHVLuUYHX5mfapf+yeyuHHdNZA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] watchdog: Add new arm_smd_wdt watchdog driver
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_155656_670809_2BDB2F50 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> +       wdd->info = &smcwd_info;
> +       /* get_timeleft is optional */
> +       if (smcwd_call(SMCWD_GET_TIMELEFT, 0, NULL))

How is this supposed to work? A firmware that implements this call
would return the time left here which may not be 0 (maybe the watchdog
was already primed by the bootloader or whatever), so smcwd_call()
would interpret it as an error.

I think the cleanest solution would be to stick to the same return
codes in a0 and use a1 to report the time left when a0 is
PSCI_SUCCESS. This is more consistent with SMCWD_INIT too.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
