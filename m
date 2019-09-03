Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08DFA5FE9
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Sep 2019 05:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2InCt6WwJTlH/MuIxSpPuFbx7BfIDDvhH7hVmdZau8g=; b=iFnMeWA0Gf3L16
	80yONIxEzCVD0ZZS8NwNfJNtPb7UjJTQclE6yqDTba/8WgA/eeYvGVIEtZwRpMq9mT2EdCGkOorSV
	fTtSBvtjTeTQpxTQLlHmI+wHnMvU1AyvrMMe45mnUJdG+TVDLgWmv8CIh5jC5rc9/YH8RCv8ZylIm
	VZuHvOmnvI22lN3lSq5JqvBFEY3zLOzuCf9xHT9DeZtG3VNj8xvnG6+VaDf88UkpwzjIt+CumudFc
	Mv6rL1+50ik3wn2gtjSiB38zLaFfCP1BlxNWpZw+lN/dVgyhZmUyQksIO/wqoY6f/ip23WsC7QElM
	6nmlCX64AZ8rnThmEmuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zq4-000208-70; Tue, 03 Sep 2019 03:50:40 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zq1-0001zh-1u
 for linux-mediatek@lists.infradead.org; Tue, 03 Sep 2019 03:50:38 +0000
Received: by mail-ed1-x541.google.com with SMTP id z9so11904021edq.8
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 20:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bERm9aosiUF/erxQGsOJQyA7y7i++Xkui77JsOdtACI=;
 b=eh39WEjYZ/TVREn6cDg0rilIJuu6Poeea3tHxjoQhPtzOhO5fXgh4Ass1e/NaK0Zyx
 OsYmSUUme3ZiGtHuUo7ytVrq6bDXgl/NEd0YeynBJaRLFJLtvnfoF9VynpwWhDBXhBbA
 2a6pKAMXImbYcaSI3SGsyXCZaV7ny8HRU+K5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bERm9aosiUF/erxQGsOJQyA7y7i++Xkui77JsOdtACI=;
 b=f7Nb9BNm5yjIKAFDYeV0Meqfyg6maiIRxVPzMZ1/eNxQWkwjdX6fFQlI9GJqgjVab7
 XWQqnbVbVleAmWIMKboMrbmni0TItBb1cY9/J3GCTMBlBgo26t4qdJrn/2iXn7WhvpgD
 zSPWAKNZdGgoh3PB7ElCL+vW2t8vFFY5Y37BBmXUh3Eacg0dp/t7wQTysKCyMaXXbGTk
 N7MvlKtAL8EllGRcCEE7hDLg16lMnRPdY4otk9mBCt4/pXbVQHJ+yU3ZMIP3t0PlE2qv
 1T7kycP1jAGy5G4b6ObWZI7CPlzXoYdIjv5RCU2CCWC2A2dm8vo38fVMDc8oUSFWnwG7
 YHjg==
X-Gm-Message-State: APjAAAV2+zo2pLh68wngsErVZoev2Eb1RDfuHVN+NV4OxXDbq7Y04bQS
 uaODLoZcKabRV2gi8KQ4cuwg1fVMU+yacg==
X-Google-Smtp-Source: APXvYqzlDz0gBx17yZ/0hB2YOgNyfPzQtS5RL0kk+kXcBZXuud7bHmNzEJHeUlNr95SZKjUAo5Fsfw==
X-Received: by 2002:a50:e68d:: with SMTP id z13mr33638608edm.142.1567482633817; 
 Mon, 02 Sep 2019 20:50:33 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id n93sm3113057edc.5.2019.09.02.20.50.31
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Sep 2019 20:50:32 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id y8so15742768wrn.10
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 20:50:31 -0700 (PDT)
X-Received: by 2002:adf:fc03:: with SMTP id i3mr33237705wrr.48.1567482631483; 
 Mon, 02 Sep 2019 20:50:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
 <20190708100641.2702-3-dongchun.zhu@mediatek.com>
 <20190823081723.GA33937@chromium.org>
 <1567436507.21623.83.camel@mhfsdcap03>
In-Reply-To: <1567436507.21623.83.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 3 Sep 2019 12:50:19 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AWBFVF5Fh0OWpfkPid1wXYdi=MDdVukxaAKQg2dABnCA@mail.gmail.com>
Message-ID: <CAAFQd5AWBFVF5Fh0OWpfkPid1wXYdi=MDdVukxaAKQg2dABnCA@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: i2c: dw9768: Add DW9768 VCM driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_205037_117877_2D221B88 
X-CRM114-Status: GOOD (  26.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dongchun,

On Tue, Sep 3, 2019 at 12:02 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Fri, 2019-08-23 at 17:17 +0900, Tomasz Figa wrote:
> > Hi Dongchun,
> >
> > On Mon, Jul 08, 2019 at 06:06:41PM +0800, dongchun.zhu@mediatek.com wrote:
> > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > >
> > > This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> > > and provides control to set the desired focus.
> > >
> > > The DW9807 is a 10 bit DAC from Dongwoon, designed for linear
> > > control of voice coil motor.
> > >
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  MAINTAINERS                |   1 +
> > >  drivers/media/i2c/Kconfig  |  10 +
> > >  drivers/media/i2c/Makefile |   1 +
> > >  drivers/media/i2c/dw9768.c | 458 +++++++++++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 470 insertions(+)
> > >  create mode 100644 drivers/media/i2c/dw9768.c
> > >
> >
> > Thanks for the patch! Please see my comments inline.
> >
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 8f6ac93..17152d7 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -4877,6 +4877,7 @@ M:    Dongchun Zhu <dongchun.zhu@mediatek.com>
> > >  L: linux-media@vger.kernel.org
> > >  T: git git://linuxtv.org/media_tree.git
> > >  S: Maintained
> > > +F: drivers/media/i2c/dw9768.c
> > >  F: Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
> > >
> > >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > index 7793358..8ff6c95 100644
> > > --- a/drivers/media/i2c/Kconfig
> > > +++ b/drivers/media/i2c/Kconfig
> > > @@ -1014,6 +1014,16 @@ config VIDEO_DW9714
> > >       capability. This is designed for linear control of
> > >       voice coil motors, controlled via I2C serial interface.
> > >
> > > +config VIDEO_DW9768
> > > +   tristate "DW9768 lens voice coil support"
> > > +   depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > +   depends on VIDEO_V4L2_SUBDEV_API
> > > +   help
> > > +     This is a driver for the DW9768 camera lens voice coil.
> > > +     DW9768 is a 10 bit DAC with 100mA output current sink
> > > +     capability. This is designed for linear control of
> > > +     voice coil motors, controlled via I2C serial interface.
> > > +
> > >  config VIDEO_DW9807_VCM
> > >     tristate "DW9807 lens voice coil support"
> > >     depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> > > index d8ad9da..944fbf6 100644
> > > --- a/drivers/media/i2c/Makefile
> > > +++ b/drivers/media/i2c/Makefile
> > > @@ -24,6 +24,7 @@ obj-$(CONFIG_VIDEO_SAA6752HS) += saa6752hs.o
> > >  obj-$(CONFIG_VIDEO_AD5820)  += ad5820.o
> > >  obj-$(CONFIG_VIDEO_AK7375)  += ak7375.o
> > >  obj-$(CONFIG_VIDEO_DW9714)  += dw9714.o
> > > +obj-$(CONFIG_VIDEO_DW9768)  += dw9768.o
> > >  obj-$(CONFIG_VIDEO_DW9807_VCM)  += dw9807-vcm.o
> > >  obj-$(CONFIG_VIDEO_ADV7170) += adv7170.o
> > >  obj-$(CONFIG_VIDEO_ADV7175) += adv7175.o
> > > diff --git a/drivers/media/i2c/dw9768.c b/drivers/media/i2c/dw9768.c
> > > new file mode 100644
> > > index 0000000..f5b5591
> > > --- /dev/null
> > > +++ b/drivers/media/i2c/dw9768.c
> > > @@ -0,0 +1,458 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Copyright (c) 2018 MediaTek Inc.
> > > + */
> > > +
> > > +#include <linux/delay.h>
> > > +#include <linux/i2c.h>
> > > +#include <linux/module.h>
> > > +#include <linux/regulator/consumer.h>
> > > +#include <linux/pm_runtime.h>
> > > +#include <media/v4l2-ctrls.h>
> > > +#include <media/v4l2-device.h>
> > > +#include <media/v4l2-subdev.h>
> > > +
> > > +#define DW9768_VOLTAGE_ANALOG                      2800000
> >
> > This is a platform detail and should be defined in the platform data, for
> > example DTS on platforms using DT.
> >
>
> Thanks for your reminder.
> This would be fixed in next release.
>
> > > +#define DW9768_NAME                                "dw9768"
> >
> > The chip we seem to be using this driver for is called gt9769. Shouldn't we
> > call the driver the same?
> >
>
> It is also called DW9768 from camera module specification, which was
> initially confirmed with vendor.
>

Okay, thanks for clarifying.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
