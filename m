Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5804EA32C4
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 10:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCanyWI8SVOiX0iqHCt1EYQsREO0SWgegNg1Fhp5yXk=; b=HCFuIpmiPRhxSN
	mex87chspbBM6aeDA84idF3P4wLOfCpESkS1vJ7QyYEwDo1iEsBLsf4N46Ov99URIghuMY/K83ZOY
	lyXh/o4OzvHiaZMBCwsG6hPVS7t1yLjbjNma0fNTS9HDxUPHuI9A8pTA9+K3DjbYJs+SqmPlFwGr0
	dv0OjCY9ZM7EHsx1KvMGcHYICMoo/4fGxC9qHqrjoL/3UUHd66KvQ40hlKEFjwCFA9jPaYeQmPLZ/
	aeezY2BWZ+r737voh3uepfTL+A3Ek6BTZS4YwaFvcgJVIo6AVMSNE3pcEbtKIHVXvnbbher7l7vMr
	XLkAF5o2z9rWL9/cTeVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cRf-0006P6-Nt; Fri, 30 Aug 2019 08:39:47 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cRX-0006If-AB
 for linux-mediatek@lists.infradead.org; Fri, 30 Aug 2019 08:39:41 +0000
Received: by mail-ed1-x542.google.com with SMTP id l26so6504782edr.0
 for <linux-mediatek@lists.infradead.org>; Fri, 30 Aug 2019 01:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MGj+QywDGNf8RU3nCUVn2rf2R0NrS9Bl2cO6UU8tnf4=;
 b=PcpUATAZqIbcoiaTwXtDmO79nO8QPwiLKkXhTdCUd+g/ecm3aSuMclMb5g6Lvo05Wd
 ljsTYFTC1jeYre6R42iRA/ldxSqG6Rdy1Ql1kdT8ZE/p5Lgth47Oo8BlJbiDzUdMMarf
 JiNVgF3T/M0BgRvufmGswlA8JGLWAkaPgtB0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MGj+QywDGNf8RU3nCUVn2rf2R0NrS9Bl2cO6UU8tnf4=;
 b=LaOUfSaNC22fjNbaqPLqOx9aHmj1mt79GUKB4tmMSXRlgBkxIrrrxksHLMw7SXjzr0
 f8KK03/rfgrbZOKloKXCWJmhJH7fayAqvJaDvL0h3oawF4KeKdA7h9b7iHk//dKuJZVY
 Io9YGyAbkulK/0FP4MFlk55GzIEeuDWDVKL5n6U2rdbYpeC6HnBsdlx+CiRo8Q6gB9SR
 An63Zkh7Rzt5il/6NWNxEF0YIjx6vyMgnqgIizo8pA5kgvC2Ik4nbTFGYJ8c3kVUow/L
 6uqV6w/awIXYol58mau5Ck+fMrlBuw/IhgwY2pwv3X5xvwCnDKse55eHKHgTwTwR6x6J
 5iAw==
X-Gm-Message-State: APjAAAV6j8KgMWbE37ocdTgthaaR8dVSBlQRAHrrLdNp/bTB3zDBsKan
 OhUBetdu6kb4IWyuurCCJxaV3EmHjMU=
X-Google-Smtp-Source: APXvYqynAR2ZjQlKYVLVhI7mwQzcbZD1KeCganY0JcFwj0snV7FijYOa9A+qAwrYP/LgtGBWVT46hA==
X-Received: by 2002:aa7:d799:: with SMTP id s25mr14425590edq.172.1567154377562; 
 Fri, 30 Aug 2019 01:39:37 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id a14sm674636eju.32.2019.08.30.01.39.37
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 01:39:37 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 10so6378573wmp.3
 for <linux-mediatek@lists.infradead.org>; Fri, 30 Aug 2019 01:39:37 -0700 (PDT)
X-Received: by 2002:a1c:cf88:: with SMTP id f130mr16973336wmg.10.1567154046354; 
 Fri, 30 Aug 2019 01:34:06 -0700 (PDT)
MIME-Version: 1.0
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org> <1566724680.20680.8.camel@mtksdccf07>
 <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
 <1566957625.20680.33.camel@mtksdccf07>
In-Reply-To: <1566957625.20680.33.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 30 Aug 2019 17:33:53 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D-Yg1FjUE_rwmqfS1gvfE0=MZ=r-ziueU_37-uo9QTbw@mail.gmail.com>
Message-ID: <CAAFQd5D-Yg1FjUE_rwmqfS1gvfE0=MZ=r-ziueU_37-uo9QTbw@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_013939_591816_65BC21EC 
X-CRM114-Status: GOOD (  36.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?UG8tWWFuZyBIdWFuZyAo6buD5p+P6Zm9KQ==?= <po-yang.huang@mediatek.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <Frederic.Chen@mediatek.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
<Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > Hi Jerry,
> >
> > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > Hi Jerry,
> > > >
> > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> > > > > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > > > >
> > > > > This patch adds the driver of Face Detection (FD) unit in
> > > > > Mediatek camera system, providing face detection function.
> > > > >
> > > > > The mtk-isp directory will contain drivers for multiple IP
> > > > > blocks found in Mediatek ISP system. It will include ISP Pass 1
> > > > > driver (CAM), sensor interface driver, DIP driver and face
> > > > > detection driver.
> > > > >
> > > > > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > > > > ---
> > > > >  drivers/media/platform/Makefile               |    2 +
> > > > >  drivers/media/platform/mtk-isp/fd/Makefile    |    5 +
> > > > >  drivers/media/platform/mtk-isp/fd/mtk_fd.h    |  157 +++
> > > > >  drivers/media/platform/mtk-isp/fd/mtk_fd_40.c | 1259 +++++++++++++++++++++++++
> > > > >  include/uapi/linux/v4l2-controls.h            |    4 +
> > > > >  5 files changed, 1427 insertions(+)
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
> > > > >
> > > >
> > > > Thanks for the patch! I finally got a chance to fully review the code. Sorry
> > > > for the delay. Please check my comments inline.
> > > >
> > > I appreciate your comments.
> > > I've fixed most of the comments and verifying them,
> > > Sorry for the delay, here is the reply.
> > >
> >
> > Thanks for replying to all the comments, it's very helpful. I'll snip
> > the parts that I don't have any further comments.
> >
> > [snip]
> >
> > > > > +   if (usercount == 1) {
> > > > > +           pm_runtime_get_sync(&fd_dev->pdev->dev);
> > > > > +           if (mtk_fd_hw_enable(fd_hw)) {
> > > > > +                   pm_runtime_put_sync(&fd_dev->pdev->dev);
> > > > > +                   atomic_dec_return(&fd_hw->fd_user_cnt);
> > > > > +                   mutex_unlock(&fd_hw->fd_hw_lock);
> > > > > +                   return -EINVAL;
> > > > > +           }
> > > > > +   }
> > > >
> > > > This is a simple mem-to-mem device, so there is no reason to keep it active
> > > > all the time it's streaming. Please just get the runtime PM counter when
> > > > queuing a job to the hardware and release it when the job finishes.
> > > >
> > > > I guess we might still want to do the costly operations like rproc_boot()
> > > > when we start streaming, though.
> > > >
> > > Do you mean by moving the pm_runtime_get/put stuff to the job execution
> > > and job finish place?
> >
> > Yes.
> >
> > > the rproc_boot() operation will be done here.
> > >
> >
> > How much time does the rproc_boot() operation take?
> >
>
> About 0.7~1.3ms, average 0.8ms (14 measurements)
>

Okay, I think we may want to call it when we start streaming then.

[snip]

> > > > > +static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > > > > +                             unsigned int *num_buffers,
> > > > > +                             unsigned int *num_planes,
> > > > > +                             unsigned int sizes[],
> > > > > +                             struct device *alloc_devs[])
> > > > > +{
> > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > +   struct device *dev = ctx->dev;
> > > > > +   unsigned int size;
> > > > > +
> > > > > +   switch (vq->type) {
> > > > > +   case V4L2_BUF_TYPE_META_CAPTURE:
> > > > > +           size = ctx->dst_fmt.buffersize;
> > > > > +           break;
> > > > > +   case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > > > > +           size = ctx->src_fmt.plane_fmt[0].sizeimage;
> > > > > +           break;
> > > > > +   default:
> > > > > +           dev_err(dev, "invalid queue type: %d\n", vq->type);
> > > >
> > > > We should need to handle this.
> > > >
> > > Do you mean by giving a size instead of return -EINVAL?
> > >
> >
> > Sorry, typo. I meant we shouldn't need to handle it, because we can't
> > get any other queue type here.
> >
>
> Ok, I see, I will remove it.
> also, this function will be updated as following due to the 2 plane
> case.
>
> static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
>                                   unsigned int *num_buffers,
>                                   unsigned int *num_planes,
>                                   unsigned int sizes[],
>                                   struct device *alloc_devs[])
> {
>         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
>         struct device *dev = ctx->dev;
>         unsigned int size[2];
>
>         switch (vq->type) {
>         case V4L2_BUF_TYPE_META_CAPTURE:
>                 size[0] = ctx->dst_fmt.buffersize;
>                 break;
>         case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
>                 size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
>                 if (*num_planes == 2)
>                         size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
>                 break;
>         }
>
>         if (*num_planes == 1) {
>                 if (sizes[0] < size[0])
>                         return -EINVAL;
>         } else if (*num_planes == 2) {
>                 if ((sizes[0] < size[0]) && (sizes[1] < size[1]))
>                         return -EINVAL;

Can we just use a loop here and combine the 2 cases above?

Also, we need to fail with -EINVAL if *num_planes is > 2.

>         } else {
>                 *num_planes = 1;
>                 sizes[0] = size[0];

This should be the case if *num_planes == 0 and the number of planes
and sizes should match the currently active format.

>         }
>
>         return 0;
> }
>
> > [snip]
> >
> > > > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > +{
> > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > +   struct vb2_buffer *vb;
> > > >
> > > > How do we guarantee here that the hardware isn't still accessing the buffers
> > > > removed below?
> > > >
> > > Maybe we can check the driver state flag and aborting the unfinished
> > > jobs?
> > > (fd_hw->state == FD_ENQ)
> > >
> >
> > Yes, we need to either cancel or wait for the currently processing
> > job. It depends on hardware capabilities, but cancelling is generally
> > preferred for the lower latency.
> >
> Ok, it the state is ENQ, then we can disable the FD hw by controlling
> the registers.
>
> for example:
>         writel(0x0, fd->fd_base + FD_HW_ENABLE);
>         writel(0x0, fd->fd_base + FD_INT_EN);
>

What's exactly the effect of writing 0 to FD_HW_ENABLE?

[snip]

> > > > > +}
> > > > > +
> > > > > +static void mtk_fd_vb2_request_complete(struct vb2_buffer *vb)
> > > > > +{
> > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
> > > > > +
> > > > > +   v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->hdl);
> > > > > +}
> > > > > +
> > > > > +static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
> > > > > +                             const struct v4l2_pix_format_mplane *sfmt)
> > > > > +{
> > > > > +   dfmt->width = sfmt->width;
> > > > > +   dfmt->height = sfmt->height;
> > > > > +   dfmt->pixelformat = sfmt->pixelformat;
> > > > > +   dfmt->field = sfmt->field;
> > > > > +   dfmt->colorspace = sfmt->colorspace;
> > > > > +   dfmt->num_planes = sfmt->num_planes;
> > > > > +
> > > > > +   /* Use default */
> > > > > +   dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > > > +   dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> > > > > +   dfmt->xfer_func =
> > > > > +           V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
> > > > > +   dfmt->plane_fmt[0].bytesperline = dfmt->width * 2;
> > > > > +   dfmt->plane_fmt[0].sizeimage =
> > > > > +           dfmt->height * dfmt->plane_fmt[0].bytesperline;
> > > > > +   memset(dfmt->reserved, 0, sizeof(dfmt->reserved));
> > > > > +}
> > > >
> > > > Could we unify this function with mtk_fd_m2m_try_fmt_out_mp()? That function
> > > > should be almost directly reusable for the default format initialization +/-
> > > > the arguments passed to it.
> > > >
> > > Ok, I will try to reuse it as following:
> > >
> > > static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
> > >   const struct v4l2_pix_format_mplane *sfmt)
> > > {
> > > dfmt->field = V4L2_FIELD_NONE;
> > > dfmt->colorspace = V4L2_COLORSPACE_BT2020;
> > > dfmt->num_planes = sfmt->num_planes;
> > > dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> > > dfmt->xfer_func =
> > > V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
> > >
> > > /* Keep user setting as possible */
> > > dfmt->width = clamp(dfmt->width,
> > >     MTK_FD_OUTPUT_MIN_WIDTH,
> > >     MTK_FD_OUTPUT_MAX_WIDTH);
> > > dfmt->height = clamp(dfmt->height,
> > >      MTK_FD_OUTPUT_MIN_HEIGHT,
> > >      MTK_FD_OUTPUT_MAX_HEIGHT);
> > >
> > > if (sfmt->num_planes == 2) {
> > > /* NV16M and NV61M has 1 byte per pixel */
> > > dfmt->plane_fmt[0].bytesperline = dfmt->width;
> > > dfmt->plane_fmt[1].bytesperline = dfmt->width;
> > > } else {
> > > /* 2 bytes per pixel */
> > > dfmt->plane_fmt[0].bytesperline = dfmt->width * 2;
> > > }
> > >
> > > dfmt->plane_fmt[0].sizeimage =
> > > dfmt->height * dfmt->plane_fmt[0].bytesperline;
> > > }
> >
> > How would the implementation of TRY_FMT look in this case?
> >
>
> It will be looked like:
>
> static int mtk_fd_try_fmt_out_mp(struct file *file,
>                                      void *fh,
>                                      struct v4l2_format *f)
> {
>         struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
>         const struct v4l2_pix_format_mplane *fmt;
>
>         fmt = mtk_fd_find_fmt(pix_mp->pixelformat);
>         if (!fmt)
>                 fmt = &mtk_fd_img_fmts[0];      /* Get default img fmt */
>
>         mtk_fd_fill_pixfmt_mp(pix_mp, fmt);
>         return 0;
> }
>

Okay, thanks!

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
