Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE611AB4F7
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 02:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9w3Jg7GLoBhy+mWTZYoeOULrn1Ok3QiBNgfP31A0uc=; b=WBsr10KdWElMFm
	Y0lVxGL3azgDvuBmKyQiveVhfoJgosWu9APtUlGZouV1fWIL1MA6pVGULoLNciqhIxuXPF6HeJ6fB
	mLQ7pTOlfOQhgsBT6G87QSrZFNR1d0XutbUOF67Vk22mge1Zs4ds2U5/sE6kOWAP6MeKvHK7uUsZt
	S0JO7/0n/rFWiSakW4RcOaqgysc0nnziV3txk3rZXmu1JApKuq5mlwKZnrHbHz8F7j2+ryRw5q2EU
	x5j+aPgms6vje4IUz1kkgYV4jGlUo/yIOewBJdDqxwqJW84QZcDpADRYyZzuYj5eO3XGRwH0B9cWy
	/gO7HnEie2dNRoK3KaBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOspu-0001FH-6T; Thu, 16 Apr 2020 00:56:58 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOspo-0001Cl-P4
 for linux-mediatek@lists.infradead.org; Thu, 16 Apr 2020 00:56:55 +0000
Received: by mail-io1-xd44.google.com with SMTP id w1so19270018iot.7
 for <linux-mediatek@lists.infradead.org>; Wed, 15 Apr 2020 17:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0pi57Yw1CcnU/t5xDRYzAtYW33asqFUBaWgZbJ3tOfE=;
 b=Zxz39exVNPQUoC5oC7KxutI6O9HlznMuRYa653fUmfYsyaTRiTIZKuc9pujiaQLdn/
 6CTSitD7ypenyMARA3xWa1qvKF/8ZZRmHFyZAj3U7hHkFWoLTv1Vjvem8/AWPxPWGYRd
 9YsDvAZ0l32UROX6xPE8XcQ0FNYxiVvtWNDvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0pi57Yw1CcnU/t5xDRYzAtYW33asqFUBaWgZbJ3tOfE=;
 b=b5dHaVKvsQ2Jaj6zjChWO9+mRLVida+3NF4Ol/p2Xf1M7cBjBZjwnO5dZbmscb74Fn
 FnWGmqIVkf2IiMieY7Wj3t+7L98A3RvyPnhIc0rpIJjZ+3u6/dYezaOSTaD21UGSCoLS
 oxPBTbm2EkNGU9dylOhm47qrnE6Sa2a8LP9YcwI62YZt0IJVjNLVWawwXQerF1S0EwAB
 Tq2gv/josNN2rQ+/bTAsZqO6XI49Ninq+JBoSJ2s8HcWnnlp9e7okmu40J1/VApW82P7
 UnMMhEEZC4B+UcLBSE4Hl/vv0MXvneat+9qiylCGzahCU7CjdZiNvQliuRO+5kxU2X18
 AtAA==
X-Gm-Message-State: AGi0Pua0RBC/KAVn001R7PFf+tqKEZB+MxHPS52Nr3JQgg4J4FaCDi3V
 6Ca+tOYO/S/yA7YgDkeqx2p5+yP1btFOAjzP6U06Jg==
X-Google-Smtp-Source: APiQypLaV14jW6zqGw/DJyeFplem0IPQuVzPs6SMj5UQP5j6yl5Y9t8lEAsFhz+mS6nRLGgdHeSVWyjl3NF1UNgldr0=
X-Received: by 2002:a6b:491a:: with SMTP id u26mr28900283iob.30.1586998611518; 
 Wed, 15 Apr 2020 17:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
 <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
 <20200415231215.GA182398@roeck-us.net>
 <CAKz_xw0+gKBM1jp-Avnd+4j9vSxUix67RZBX-NNbStb0+ri4+Q@mail.gmail.com>
In-Reply-To: <CAKz_xw0+gKBM1jp-Avnd+4j9vSxUix67RZBX-NNbStb0+ri4+Q@mail.gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 15 Apr 2020 17:56:39 -0700
Message-ID: <CAODwPW9Vt7TcWfKYDmRgLndb2-+5HoNvA6XMJJznXCudQDngqw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_175652_834531_F357F61F 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
 Will Deacon <will@kernel.org>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Anson Huang <Anson.Huang@nxp.com>,
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Can anyone provide advice about making SMCWD_FUNC_ID a device tree
> param directly, vs using the compatible to select from a table.

Sounds like most people prefer the way with using different compatible
strings? (Personally I don't really care either way.)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
