Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321E67847B
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 07:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1AoMRJYI0u3QaL2nKEeTtp6tzmvdkurWv5lif6Boc0=; b=aXesdWE9DvVsIV
	jpIxKhOQbaq+7xVHbC/77uvCfD/bHBowcngf7D5E5s4w1u6ZVo97n1pbSW+NacVND+dvW4hFK8a8M
	bDsnaoBvzaQHNARJbBgJ7mZnwZWiM0s7B8235SojyKZnSCA5XRVysRPHt9S/GUOgaPJiazN6lJiJ6
	1KHgtfuKp1JporNHwUayhtVDWeTabOEeudP8NDQRKLA++Vk/r7lR8Ik/z8CjdYV/FmqVyrzWZKyhy
	oc5Rg9uz96BhvjRijX/nrqDhtAVDDcp31Q2hABDu/Y3a0ZXg1DRGpnQGoCsQqgUWXB3b+y0ZNRrdf
	vlaaHcOAbAWadz6W8G3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryJd-0006Lp-Pp; Mon, 29 Jul 2019 05:35:21 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hryIv-0004dJ-Sb
 for linux-mediatek@lists.infradead.org; Mon, 29 Jul 2019 05:34:39 +0000
Received: by mail-oi1-x244.google.com with SMTP id w79so44440512oif.10
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Jul 2019 22:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JaGp3kgEFZq5TRVhS/gSVCfAQk/B2Vhh2rMW5DZxtGU=;
 b=WmXswO1gqiSorGC4ip/zmQ4EJYLWz1GfFiJ7rsQn0fda4gOodSPR13eNYXLeVP8gI6
 TiItkjpeVAYZ9jPzIra+ug8Zd6QizwTno1TIvdOMHE5FM0LIJ6lw7a/Msw5J6QFW18FT
 4MVE2zcS/4P7OVuELVoX5VlLzqKO/4Uu7FD3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JaGp3kgEFZq5TRVhS/gSVCfAQk/B2Vhh2rMW5DZxtGU=;
 b=izFbyoZvkgtMoLoR1BGIiqIDffQ1aIXAGq4sivpKRNiLyZBW5w7rdL35Co+Zg7kb44
 gB4QIHQ4oe4Vx08nkJb1LJtTjfBPs0gpmybsAQuFEUBZiJtTBnaF1XELzrDUgSukEPFL
 BISh9/l5AC48m5uhmT0BJMNvgerFLQ77lUZ/P8R59wUslKusZwIw3eTOL5XOeUKZknxh
 OMlqWqCrCwjDkUc1is3KB4TTyEYZhcsrmh1JJArzDVhOdvMwtoW1q0Kt6b6d0i5YJ8YE
 j3yhh/lKGkoF2RZy4apYY2Pla5d8AUQyf6AZD803Zd0tLvsJYiTj1LYCuxtWC3M55Vfp
 zBUA==
X-Gm-Message-State: APjAAAUmWpFKtFJGOganRcHA5bRFIG+Ryth3ECKlg8y1wyotr4lfXaCs
 2RXpStstVwUCV/fOKSDz9VyVvm6ccAQ=
X-Google-Smtp-Source: APXvYqwSBLYFYULrS9T4RF9wU8u2r5dGTL4PD67qrOSRCjAjj+IiFb6YUHdZQkIgqB2REZUAF9ICpg==
X-Received: by 2002:aca:191a:: with SMTP id l26mr53772607oii.4.1564378476506; 
 Sun, 28 Jul 2019 22:34:36 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id 68sm21246249otg.78.2019.07.28.22.34.35
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 22:34:35 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id l15so61309271otn.9
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Jul 2019 22:34:35 -0700 (PDT)
X-Received: by 2002:a9d:30c3:: with SMTP id r3mr77017546otg.141.1564378474946; 
 Sun, 28 Jul 2019 22:34:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190723053421.179679-1-acourbot@chromium.org>
 <1563947367.1070.7.camel@mtksdaap41>
In-Reply-To: <1563947367.1070.7.camel@mtksdaap41>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Mon, 29 Jul 2019 14:34:22 +0900
X-Gmail-Original-Message-ID: <CAPBb6MV1_7PfvxhGFHQsTSh24gLTHyZWVG4ZXKsLCEqWDQb8-A@mail.gmail.com>
Message-ID: <CAPBb6MV1_7PfvxhGFHQsTSh24gLTHyZWVG4ZXKsLCEqWDQb8-A@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: make imported PRIME buffers contiguous
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_223438_108997_C773E698 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Tomasz Figa <tfiga@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 2:49 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Alexandre:
>
> On Tue, 2019-07-23 at 14:34 +0900, Alexandre Courbot wrote:
> > This driver requires imported PRIME buffers to appear contiguously in
> > its IO address space. Make sure this is the case by setting the maximum
> > DMA segment size to a better value than the default 64K on the DMA
> > device, and use said DMA device when importing PRIME buffers.
> >
> > Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 47 ++++++++++++++++++++++++--
> >  drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
> >  2 files changed, 46 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> > index 95fdbd0fbcac..4ad4770fab13 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> > @@ -213,6 +213,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
> >       struct mtk_drm_private *private = drm->dev_private;
> >       struct platform_device *pdev;
> >       struct device_node *np;
> > +     struct device *dma_dev;
> >       int ret;
> >
> >       if (!iommu_present(&platform_bus_type))
> > @@ -275,7 +276,27 @@ static int mtk_drm_kms_init(struct drm_device *drm)
> >               goto err_component_unbind;
> >       }
> >
> > -     private->dma_dev = &pdev->dev;
> > +     dma_dev = &pdev->dev;
> > +     private->dma_dev = dma_dev;
> > +
> > +     /*
> > +      * Configure the DMA segment size to make sure we get contiguous IOVA
> > +      * when importing PRIME buffers.
> > +      */
> > +     if (!dma_dev->dma_parms) {
> > +             private->dma_parms_allocated = true;
> > +             dma_dev->dma_parms =
> > +                     devm_kzalloc(drm->dev, sizeof(*dma_dev->dma_parms),
> > +                                  GFP_KERNEL);
> > +     }
> > +     if (!dma_dev->dma_parms)
> > +             goto err_component_unbind;
>
> return with ret = 0?

Oops, indeed.

>
> > +
> > +     ret = dma_set_max_seg_size(dma_dev, (unsigned int)DMA_BIT_MASK(32));
> > +     if (ret) {
> > +             dev_err(dma_dev, "Failed to set DMA segment size\n");
> > +             goto err_unset_dma_parms;
> > +     }
> >
> >       /*
> >        * We don't use the drm_irq_install() helpers provided by the DRM
> > @@ -285,13 +306,16 @@ static int mtk_drm_kms_init(struct drm_device *drm)
> >       drm->irq_enabled = true;
> >       ret = drm_vblank_init(drm, MAX_CRTC);
> >       if (ret < 0)
> > -             goto err_component_unbind;
> > +             goto err_unset_dma_parms;
> >
> >       drm_kms_helper_poll_init(drm);
> >       drm_mode_config_reset(drm);
> >
> >       return 0;
> >
> > +err_unset_dma_parms:
> > +     if (private->dma_parms_allocated)
> > +             dma_dev->dma_parms = NULL;
> >  err_component_unbind:
> >       component_unbind_all(drm->dev, drm);
> >  err_config_cleanup:
> > @@ -302,9 +326,14 @@ static int mtk_drm_kms_init(struct drm_device *drm)
> >
> >  static void mtk_drm_kms_deinit(struct drm_device *drm)
> >  {
> > +     struct mtk_drm_private *private = drm->dev_private;
> > +
> >       drm_kms_helper_poll_fini(drm);
> >       drm_atomic_helper_shutdown(drm);
> >
> > +     if (private->dma_parms_allocated)
> > +             private->dma_dev->dma_parms = NULL;
> > +
> >       component_unbind_all(drm->dev, drm);
> >       drm_mode_config_cleanup(drm);
> >  }
> > @@ -320,6 +349,18 @@ static const struct file_operations mtk_drm_fops = {
> >       .compat_ioctl = drm_compat_ioctl,
> >  };
> >
> > +/*
> > + * We need to override this because the device used to import the memory is
> > + * not dev->dev, as drm_gem_prime_import() expects.
> > + */
> > +struct drm_gem_object *mtk_drm_gem_prime_import(struct drm_device *dev,
> > +                                             struct dma_buf *dma_buf)
> > +{
> > +     struct mtk_drm_private *private = dev->dev_private;
> > +
> > +     return drm_gem_prime_import_dev(dev, dma_buf, private->dma_dev);
> > +}
> > +
>
> I think this part should be an independent patch which fixup
> 119f5173628aa ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")

I have split this patch and sent a v2.

Thanks,
Alex.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
