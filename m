Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6105B1AB3D2
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 00:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJM+pdH2Lj6/K7d9AMR/BB2NhGwokrsXCgIKHdJlCic=; b=fsaiaKaeS/Y6+3
	M87RY7SwohSpYSZbPvuZ2mNDtlso+npBo5U/KGOhOVGOLVBfAywzgtb1aSepFLzrCEn+aiqRO2nUy
	cT1Oz/UdLvTPZea8Dl6bIPAMaNhoJRrhdYv0ASgsN3v345PG8qOuSzt/IV9jTHJvjodXTR7yU2iSa
	KO1c0hCvLD2Qvi/wNlNJvuItKhI1wetShy8Ru0lnAI/KMvCges4YYOSoIe9ni004utDqN3ifBALBQ
	/tto1imBeF32uwlf2e0zyd0Wf3PnwomW4Hmpy9K7h4arEkyeaRThrB450bJo+d8v2eoGBtRaOISST
	wU2cbUf5AagVcKFXTzBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOqXU-0005xI-Es; Wed, 15 Apr 2020 22:29:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOqXQ-0005w5-9v
 for linux-mediatek@lists.infradead.org; Wed, 15 Apr 2020 22:29:46 +0000
Received: by mail-io1-xd43.google.com with SMTP id h6so18904959iok.11
 for <linux-mediatek@lists.infradead.org>; Wed, 15 Apr 2020 15:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PVtGYrIeBI2+9xVgD4LCkJpnGBHTWG+8tKFXeAJgTRU=;
 b=gXSGbTR09MscBjxHvvT6Zy0GE7nYGjJ8nQRhWPJMjuaPZPTM411vSTxLoPH1wb/lRH
 E6Z4jtglLRMXQKommS2CbxodCJi11rjz7cgYPRAWFMxtk1Sc3UXB1U2xuagdbDr83VUY
 5gnHcn+7SSgE8W9/iOMJ1SOy7cFoMYxBGg8EM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PVtGYrIeBI2+9xVgD4LCkJpnGBHTWG+8tKFXeAJgTRU=;
 b=DEQXRXwJvmhUUtb2IFhj4i9xKDJc5/jVQ0hJJQ/iaoli3Q7SSZvLni0GXRgIi+PXhu
 r5C5fULwMuEVK7ny3lzjS1rqVukVo2QD3ncY1qTiOoSbuBt1pKXOgKFN1P/DY2t0hCuP
 GCu2RQ8yrjCqxIuLSa8PCa4gifpGjrZdKeTGwL3HaXiuNjAeRUpx8wUtQRmXac2uQ6oi
 PORv3762E2e8yWSVsQFaDghB7hugWlLE3Y8uGUUGH1pdOoZxCL0em5IMLis9W++nrjw8
 gv9CMUDv631Zayn4aLsKw5MxklXYvHqydbCXPsCNew0ygakyKTf+XXNb3S3qR3sJcjck
 O6kg==
X-Gm-Message-State: AGi0PuZTN3Ej/ag7OnlKMHSPlPwOD9oKcZZXCLEjlkCAYWpdGwljd1fN
 fUyAGZmRsuOH361yuX77epdPV2PW+Uc06x09XG748A==
X-Google-Smtp-Source: APiQypJ3eoCymVEhOWkVktr1qddf2Xa0knAtkx0Gy+/ySRR66TTx2i5h4oQ94XSCgON3AJO5/Bo8xzGkGGc86wd33Kk=
X-Received: by 2002:a05:6602:1302:: with SMTP id
 h2mr28555486iov.186.1586989781796; 
 Wed, 15 Apr 2020 15:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
In-Reply-To: <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 15 Apr 2020 15:29:29 -0700
Message-ID: <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Xingyu Chen <xingyu.chen@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_152944_356354_957A0E3F 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Evan Benn <evanbenn@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> In addition, It looks more reasonable to use the "msec" as the unit of
> timeout parameter for the ATF fw interface with SMCWD_SET_TIMEOUT:
>
> - The fw interface will compatible with the uboot generic watchdog
> interface at [0], and there is no need to convert timeout from msec
> to sec.

I think we're trying hard to keep this compatible to a Trusted
Firmware counterpart that we have already shipped, so we would prefer
to keep it at seconds if possible. That's what the Linux watchdog core
uses as well after all, so it just seems natural. I don't really see
how what U-Boot does would have anything to do with this.

> - Some vendor's watchdog may be not support the "wdt_trigger_reset"
> reset operation, but they can use the method below to reset the system
> by the watchdog right now.
>
> watchdog_set_time(1);  //1ms
> watchdog_enable();

They can still do that but they should do that on the Trusted Firmware
side. Emulating a missing reset functionality should be handled by the
hardware abstraction layer (in this case Trusted Firmware), not at the
Linux API level. So Linux would still send a PSCI_SYSTEM_RESET SMC,
but then Trusted Firmware can choose to implement that by setting the
watchdog to the smallest possible timeout (which it can because it's
accessing it directly, not through this SMC interface) and letting it
expire.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
