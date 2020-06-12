Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900341F7D05
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jun 2020 20:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWIE4IEScdIae3ij2KX+v16Cd1YbhIgBdIXpSjXNLBs=; b=Upskv8wv6o0+o0
	z+isJdxngMhEiwKGrPRH5VvUkgQWrHbW0QZLI0mcc2ovdBFZsEKumEXwhpSxagN2QfBNmaoW9DUlf
	LuDw3d178eo7Gd+wUJEUqFhl2SLD2XI0B8Qo7mcvyszAH/Ym+xYK+J57BQIgfQ9OtsVebEFMD7KNs
	iy9HEQEeJHfcTg/jM0PVbqqOf+f2/GZ/gPOPxJyWIg6RFSL5RvxLpomn6zgz+YfPCWCr2OdY4SLjx
	NAPlfmUtKsHv7BfJG0vAVm2D8FhZ4uYqGFzM756ef7K5DbTi/feV78HoIKarSPE/VBg160XYAnpxs
	/KfTJKGBoVkuGluHvCvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjoak-00059I-8h; Fri, 12 Jun 2020 18:39:50 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjoah-00058o-6c
 for linux-mediatek@lists.infradead.org; Fri, 12 Jun 2020 18:39:49 +0000
Received: by mail-ej1-x644.google.com with SMTP id o15so11035594ejm.12
 for <linux-mediatek@lists.infradead.org>; Fri, 12 Jun 2020 11:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P8sNBYcte/zk1gJm2YzOJRDjejnEUqN/A2ieuNyUweg=;
 b=bRJxS+Q2KQuM54a8erBJ8qt32TXVRsXhyMB8WWOq3eNmxwrN4tec98hY1I3dgRAadb
 ts7ymaPP/cxcISqUJMVR1rg0hvz0g6hLj31QBZ2Q4wp8U7XtRblQESknjGvBDfox0Z06
 uKeyun3azaUw4eFf03EUYyLAv5q0HMR3PsF8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P8sNBYcte/zk1gJm2YzOJRDjejnEUqN/A2ieuNyUweg=;
 b=Jv0PB10/VFdSITNJGygdzETG5DABmxIqbfQqm3gWg5KvPNDGyAnEXZM7lWaMU+yVjC
 CAm//+UCer3p0Lr7oAO78q0trotSLM3Bu116f5sA/sUJifaN6lnjSaxo2X/w0m3FLxI6
 VfYLDEErfBj1keer5wD5MQxGVi+ivbRb+mMcYjPc67NGbZaBv8eQEtPkHVcmLVZ/xIqK
 x4LP7mmGNkKbcbUe4CZwUir6Aoz4l0wHYeLHwvya5ngUusNHksGhrqE12966r1nxyMEB
 qP6J2AiDD/CRPjCyA2IL7QWn2YCz0LdZkQWU+tlFfPDkASIabHp3I6kabxKQv1XsS/oE
 uYdg==
X-Gm-Message-State: AOAM530R9t/HqzgFrSej6t97ZXSI9X9LWzFFxW7XmnbV58MI7B/GTM0O
 Jzp/50Vyw+SwOVigyf3zLGcXxMcbi3iePA==
X-Google-Smtp-Source: ABdhPJxcoJNNfsGUJzJjYFRkkJDhZlX56nYQ9SgUSwYO61sYXO50hokwMysN3KC9KtrKkfBAminKQw==
X-Received: by 2002:a17:906:11c4:: with SMTP id
 o4mr15045780eja.163.1591987184710; 
 Fri, 12 Jun 2020 11:39:44 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id e20sm3051509ejh.22.2020.06.12.11.39.43
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 11:39:43 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id l26so9035289wme.3
 for <linux-mediatek@lists.infradead.org>; Fri, 12 Jun 2020 11:39:43 -0700 (PDT)
X-Received: by 2002:a1c:2e0e:: with SMTP id u14mr257126wmu.55.1591987183150;
 Fri, 12 Jun 2020 11:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
 <1591958798.8804.660.camel@mhfsdcap03>
In-Reply-To: <1591958798.8804.660.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 12 Jun 2020 20:39:30 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Bcb4A+HAivA-jrczK+OMxwZk3w0GYoh-DU=6gmTZBWnQ@mail.gmail.com>
Message-ID: <CAAFQd5Bcb4A+HAivA-jrczK+OMxwZk3w0GYoh-DU=6gmTZBWnQ@mail.gmail.com>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_113947_236699_3FC52B18 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
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

On Fri, Jun 12, 2020 at 12:49 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Wed, 2020-06-10 at 19:44 +0000, Tomasz Figa wrote:
> > Hi Dongchun,
> >
> > On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > >
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  MAINTAINERS                 |    1 +
> > >  drivers/media/i2c/Kconfig   |   13 +
> > >  drivers/media/i2c/Makefile  |    1 +
> > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 1040 insertions(+)
> > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > >
> >
> > Thank you for the patch. Please see my comments inline.
> >
> > [snip]
> > > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > > new file mode 100644
> > > index 0000000..160a0b5
> > > --- /dev/null
> > > +++ b/drivers/media/i2c/ov02a10.c
> > [snip]
> > > +static const char * const ov02a10_test_pattern_menu[] = {
> > > +   "Disabled",
> > > +   "Color Bar",
> >
> > nit: We should normalize this to one of the standard names. What is the
> > pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> >
>
> Yes. It is one kind of 'Eight Vertical Colour Bars'.
> This pattern is called as 'MIPI color bar' per the datasheet.
> Can we here use 'Vertical Color Bar' or 'MIPI Color Bar'?
>

We should try to stick to the names as exposed by existing drivers.
There was an attempt to unify the naming of some Sony sensors some
time ago [1]. Perhaps one of the names there matches the pattern of
this sensor?

[1] https://patchwork.kernel.org/patch/10711777/

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
