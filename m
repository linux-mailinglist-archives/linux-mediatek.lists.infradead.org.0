Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668AAE2D2A
	for <lists+linux-mediatek@lfdr.de>; Thu, 24 Oct 2019 11:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2woH7l2casQuPou90YH2qSY1qmNq1U9eejZ6V/HQos4=; b=doPR2QsYkH7DxN
	FlsQzteGW+Xonvx1+RLQaEWWZpysVrZDMMHbRBk4DgLTBAQpk+JTHEIQv4bjk1TA1leDm57a5CBT9
	5YDiEnLvuflTVkqP5b4eDpxff7ONlCGu5zRhdmPtiLcw/iJWtNVXdaMOab41ZmBBNq8BM5uPJm/w4
	WZPDpgdFTG5DNDSISUYfUBVCjD1sEAdeod4xfSAacmLzcTwpe4Vf6ZovNWZykzlyY0ZVQ6DARUIl8
	YHyXQqIliaNFFjDIa/8xe/xapeADJWXYqY/WQRgUg9i5CDmdgwVfrb+GxQ2HKH1gyIidsjArKyhiA
	Qyj6IRU3kPJ/HkhrBZ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZLq-00032D-Cv; Thu, 24 Oct 2019 09:24:14 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZLb-0002sU-Lt
 for linux-mediatek@lists.infradead.org; Thu, 24 Oct 2019 09:24:01 +0000
Received: by mail-ed1-x544.google.com with SMTP id r4so18093882edy.4
 for <linux-mediatek@lists.infradead.org>; Thu, 24 Oct 2019 02:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2Fg4OORdS56GYlEdlxxKyHlR08HjtyPW5mXDJkHAU3c=;
 b=LErg4eJHixvsMHo3T4UdsdOcjyo5lbO9XudSeZq6rpgNnkVpGr/b0G90t4XOSP66/E
 yPiEP9VtvxDCkUlH7d1janZhA4XnWhbkjvm/cOE2ToCJXuDoxd+uba3V89MU7eceWGgo
 3dPD97YPgwTyy5neIrYaAT8SNNB8krsO2ClP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2Fg4OORdS56GYlEdlxxKyHlR08HjtyPW5mXDJkHAU3c=;
 b=Anug0kdawyKJVshafeENiADZuW1GeVWBwa1DBO5ij/PmSEWLJC5NE+f/gF1Ho0/jQ2
 yLdnLeZJsHCwYbGz5h6BelIFpLPDM0knxWesoBGoaGtzo9d4Hg6bUzGGugJggDOF8J9m
 AdNDwLgq1QzAdmqwmDFg+AE22xoVgY78nA6OfmdWD8A1a5YDhaQNffoANuakicm/RmB6
 KNeN8oxRcTs0SNwjiYC4zIbKV1KPHlr6PIk5uCPPYmG+GL6w66ghm6CutwXu7QIVK6Gd
 HQSYuu1aoOU7KsMRXrz9cg81ZSBQ3YWuP9S5GgInuWnm18RAQy/RYlElLudeXnLdJNrz
 eGxA==
X-Gm-Message-State: APjAAAXStUx3VrQUTiS9C4j2LLvlmKQFb1opfw38YPaiKvnIuGgmdP09
 g7s0R1uBL48BXINGdhHSHk+OPeJeqqldPg==
X-Google-Smtp-Source: APXvYqwkVmTK9yyzxdVwi0o3cyX3S+BaKIaVr0QTkl7RfgyYCzoalOteITHgjeuO3/8/i+AcU3W/RA==
X-Received: by 2002:a50:9269:: with SMTP id j38mr24064109eda.5.1571909038154; 
 Thu, 24 Oct 2019 02:23:58 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id f6sm815664edr.12.2019.10.24.02.23.55
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Oct 2019 02:23:56 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id o28so25201701wro.7
 for <linux-mediatek@lists.infradead.org>; Thu, 24 Oct 2019 02:23:55 -0700 (PDT)
X-Received: by 2002:a5d:6a42:: with SMTP id t2mr2809593wrw.155.1571909035112; 
 Thu, 24 Oct 2019 02:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191017084033.28299-1-xia.jiang@mediatek.com>
 <20191017084033.28299-6-xia.jiang@mediatek.com>
 <20191023103945.GA41089@chromium.org>
 <1571906317.6254.64.camel@mhfsdcap03>
In-Reply-To: <1571906317.6254.64.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 24 Oct 2019 18:23:43 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DUF90daBAe96Vu46z9HD43AYG+9rK-_r_aWYey8GxpmQ@mail.gmail.com>
Message-ID: <CAAFQd5DUF90daBAe96Vu46z9HD43AYG+9rK-_r_aWYey8GxpmQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] media: platform: Add jpeg dec/enc feature
To: Xia Jiang <xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_022359_843476_B4206445 
X-CRM114-Status: GOOD (  29.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Rick Chang <rick.chang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 5:38 PM Xia Jiang <xia.jiang@mediatek.com> wrote:
>
> On Wed, 2019-10-23 at 19:39 +0900, Tomasz Figa wrote:
> > Hi Xia,
> >
> > On Thu, Oct 17, 2019 at 04:40:38PM +0800, Xia Jiang wrote:
> > > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > > decode and encode have great similarities with function operation.
> > >
> > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > ---
> > > v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,
> > >     one for decoder.
> > >     split mtk_jpeg_set_default_params() to two functions, one for
> > >     encoder, one for decoder.
> > >     add cropping support for encoder in g/s_selection ioctls.
> > >     change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.
> > >     change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by
> > >     specification.
> > >     move width shifting operation behind aligning operation in
> > >     mtk_jpeg_try_enc_fmt_mplane() for bug fix.
> > >     fix user abuseing data_offset issue for DMABUF in
> > >     mtk_jpeg_set_enc_src().
> > >     fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT
> > >                         and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from
> > >                         'int' type to 'unsigned int' type.
> > >                         fix msleadingly indented of 'else'.
> > >
> > > v3: delete Change-Id.
> > >     only test once handler->error after the last v4l2_ctrl_new_std().
> > >     seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.
> > >
> > > v2: fix compliance test fail, check created buffer size in driver.
> > > ---
> > >  drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
> > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 731 +++++++++++++++---
> > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 123 ++-
> > >  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
> > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 +++++
> > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
> > >  .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
> > >  7 files changed, 1004 insertions(+), 146 deletions(-)
> > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
> > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
> > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
> > >
> >
> > First of all, thanks for the patch!
> >
> > Please check my comments below.
> >
> > My general feeling about this code is that the encoder hardware block is
> > completely orthogonal from the decoder block and there is very little code
> > reuse from the original decoder driver.
> >
> > Moreover, a lot of existing code now needs if (decoder) { ... } else {... }
> > segments, which complicates the code.
> >
> > Would it perhaps make sense to instead create a separate mtk-jpeg-enc
> > driver?
> >
> Dear Tomasz,
>
> Thanks for your comments.
>
> My reasons about the architecture of jpeg enc driver are as follows:
>
> The first internal design and realization of jpeg enc driver was a
> separate driver, but found that mtk_jpeg_core.c and mtk_jpeg_enc_core.c
> have lots of reuse.Because that  the core.c mainly contains realization
> of v4L2 ioctl functions and some logic which are high similarity between
> encoder and decoder.
>
> The jpeg encoder and decoder are two independent hardwares exactly, so
> the code about hardware specification(register setting) are
> separated(mtk_jpeg_enc_hw.c and mtk_jpeg_dec_hw.c).
>
> As for 17 existing code segments contain if(decoder){} else {}, they are
> not complicated IMHO.The complicated(multilayer nested) functions are
> separated in V4 version as Hans recommendation.
>
> By the way,the upstreamed module s5p-jpeg
> (https://elixir.bootlin.com/linux/latest/source/drivers/media/platform/s5p-jpeg/jpeg-core.c#L1998) also use encoder and decoder mode in the common core.c, but their encoder and decoder are the same hardware.Maybe our jpeg enc and dec are designed into one hardware in the future.In that case the current architecture is more compatible.
>
> So I prefer the current design.
>

Would you be able to give some numbers to show the code reuse to
justify using the same driver? From my observation, a new driver would
result in a significantly cleaner code. If there is a further hardware
architecture change, that would likely require another driver, because
it wouldn't be compatible with existing programming model anyway.

Regardless of that, if we end up with reusing the same driver, I'd
like you to fix the issues existing in the current base before adding
the encoder functionality.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
