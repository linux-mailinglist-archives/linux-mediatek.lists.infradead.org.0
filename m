Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0118FAE29B
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Sep 2019 05:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6FL7HAulbZ7id7UnECroTOjwZ18FZSXF2Wrn022IyI=; b=FM7XGDz00IJyVl
	Ic+BNv0bYwvDvSbyX4SJw7qbkb5vm8VvoB1+Phf511RafK9wKhTlCpg0gh3KMguwsLTD2DhBRkgm3
	nisb/gtyqqpaj4G+g+aVx+sFYQHm1x2MH2CU6Xah1O52l0RBsJcY30fmWLA/W18OS1z4+u4Dj99zQ
	Gy8v8795ljE/U3NKNhqmpn2zynCr2CoXjYgqDQOOacX7J1Ec/ChMrSkpNicimPOH2xi/Mzp56nDwS
	jsKG1peaWgCCE7zq7BPNN3nGu0eAwbu9RF/JLKI8bBWyzyZAzZkpDsU2nRyDCmqEd6UVKL1mA8IK6
	XtaSO5VblahIESqqGP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7X64-0005wU-2k; Tue, 10 Sep 2019 03:45:40 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7X5x-0005vb-SZ
 for linux-mediatek@lists.infradead.org; Tue, 10 Sep 2019 03:45:35 +0000
Received: by mail-ed1-x543.google.com with SMTP id y91so15493450ede.9
 for <linux-mediatek@lists.infradead.org>; Mon, 09 Sep 2019 20:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UZhgKEyeg4/ZhgBIdE78gdGAld/LMbipU+2onAGgOQ0=;
 b=lOJx4trdPZVd8ndaXDUwVuK1vy4dAcAM2Um+GGllKMWNH7QMsGZ7z2k0QQOYu14t+U
 uRudc6Fp6L3jIkdviQRjw8jU5HS2L4ds1Nq9hvtt2qUz/48Inn2KQRbfZ3OJlrlE327E
 EtKkCmckIwJF42LWLCmxzQqLFvDARU4MzTTsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UZhgKEyeg4/ZhgBIdE78gdGAld/LMbipU+2onAGgOQ0=;
 b=rrULbYQEKaqC76gosOd4ZG6+vEgdN6NUSgb5n+cQXPZycuUfReJhDHgQP7EQjz44Pa
 t9hvNfYIUJEaJ6rmqy9QvaTsUrFyClF3OUTu1qLt6aXPlvSbpvxr4beZRKW4I7V7+sgI
 vvQNdWHaSTfP4vc8knHzfJhXiOU+qmPNTC4hH/UrheYKUM80qrpH30zDZIdSD9dWIZCp
 WCEW8AJUrWcs0TPgQXP2m2CBb3T2GqbdMMZSoQK+kipLs42djymm7Aezc+6V3ekAZGcr
 x/w/SqWt6fgiWuEtvxpPUa7x8wad+FfctJ2q2Lc6fpbouyX+PtWFSlvObzwKYDY+5HYr
 z2gQ==
X-Gm-Message-State: APjAAAXcgE81yDKbcHnn22XRYr5hvLJN88Vbga6AQVqO8C+JKqx2aRlb
 69xMDKYl0i13+wA1rO+hyrxhjObU30UZYA==
X-Google-Smtp-Source: APXvYqyZvp02tUrk2Ck/ifyAFdG7d5d9Wob1SrhKIYYOSgE9dNKJB8GZ8B0JzqeIQfNj0LekATushw==
X-Received: by 2002:a17:906:3293:: with SMTP id
 19mr22426462ejw.265.1568087132192; 
 Mon, 09 Sep 2019 20:45:32 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id sb11sm1954966ejb.57.2019.09.09.20.45.30
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Sep 2019 20:45:31 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id g7so17101374wrx.2
 for <linux-mediatek@lists.infradead.org>; Mon, 09 Sep 2019 20:45:30 -0700 (PDT)
X-Received: by 2002:a5d:6585:: with SMTP id q5mr21692014wru.162.1568087130450; 
 Mon, 09 Sep 2019 20:45:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190708110500.7242-1-frederic.chen@mediatek.com>
 <20190708110500.7242-5-frederic.chen@mediatek.com>
 <20190731071014.GA43159@chromium.org>
 <1566875772.10064.99.camel@mtksdccf07>
 <CAAFQd5B7WM-uExpo-qpEyDMNXLQkvqO=qBDrkpNvERr+iXVhtw@mail.gmail.com>
 <1567761407.31117.12.camel@mtksdccf07>
In-Reply-To: <1567761407.31117.12.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 10 Sep 2019 12:45:18 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BKxg9xhJLfM_xqbo-tGihr==PzrPvVScaj89s8HY=FMQ@mail.gmail.com>
Message-ID: <CAAFQd5BKxg9xhJLfM_xqbo-tGihr==PzrPvVScaj89s8HY=FMQ@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/6] platform: mtk-isp: Add Mediatek DIP driver
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_204533_952909_D54DA77D 
X-CRM114-Status: GOOD (  34.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 6:17 PM Frederic Chen <frederic.chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> Thank you for your comments.
>
>
> On Fri, 2019-08-30 at 16:14 +0900, Tomasz Figa wrote:
> > Hi Frederic,
> >
> > On Tue, Aug 27, 2019 at 12:16 PM Frederic Chen
> > <frederic.chen@mediatek.com> wrote:
> > >
> > > Dear Tomasz,
> > >
> > > I appreciate your comment. I will collaborate more closely with Jungo
> > > to solve the common issues in DIP and Pass 1(CAM) drivers.
> > >
> >
> > Thank you!
> >
> > Also thanks for replying to all the comments, it's very helpful.
> > Please check my replies inline. I've snipped out the parts that I
> > don't have further comments on.
> >
> > >
> > > On Wed, 2019-07-31 at 15:10 +0800, Tomasz Figa wrote:
> > > > Hi Frederic,
> > > >
> > > > On Mon, Jul 08, 2019 at 07:04:58PM +0800, frederic.chen@mediatek.com wrote:
> >
> > [snip]
> >
> > > >
> > > > > +                   dev_buf->vbb.vb2_buf.timestamp =
> > > > > +                           in_buf->vbb.vb2_buf.timestamp;
> > > > > +
> > > > > +           vb2_buffer_done(&dev_buf->vbb.vb2_buf, vbf_state);
> > > > > +
> > > > > +           node = mtk_dip_vbq_to_node(dev_buf->vbb.vb2_buf.vb2_queue);
> > > > > +           spin_lock(&node->buf_list_lock);
> > > > > +           list_del(&dev_buf->list);
> > > > > +           spin_unlock(&node->buf_list_lock);
> > > > > +
> > > > > +           dev_dbg(&pipe->dip_dev->pdev->dev,
> > > > > +                   "%s:%s: return buf, idx(%d), state(%d)\n",
> > > > > +                   pipe->desc->name, node->desc->name,
> > > > > +                   dev_buf->vbb.vb2_buf.index, vbf_state);
> > > > > +   }
> > > >
> > > > This looks almost the same as what's being done inside
> > > > mtk_dip_hw_streamoff(). Could we just call this function from the loop
> > > > there?
> > >
> > > I would like to call the function from mtk_dip_hw_streamoff(). The only
> > > difference is mtk_dip_pipe_job_finish() also remove the buffer from the
> > > node's internal list.
> > >
> >
> > Would anything wrong happen if we also remove the buffer from the
> > node's internal list in mtk_dip_hw_streamoff()?
> >
> > Actually, do we need that internal node list? If we have a list of
> > requests and each request stores its buffer, wouldn't that be enough?
> >
>
> We use the buffer list in the following cases:
> 1. media_pipeline_start() failed when streaming on video device
> 2. Video device stream off
>
> If the some video device is streamed on ,but the entire pipe has not
> started streaming (for example, MDP 0 is streamed on, but RAW input has
> not been streamed on), we use the list to return the buffers.
>
> Should we handle this cases? or we expect that the user will request
> buffers again to ensure all buffers are removed from the video device in
> this error case.
>

However, if we only support the Request API, there wouldn't be any
buffers outside of any request. For a request that isn't queued, the
buffers are not passed to the driver, so it doesn't need to do
anything. The only thing left to handle is when there are some
requests queued and those requests already include the buffer request
objects inside, so we can handle them without a separate internal
buffer list.

> > > > > +/* Plane size that is accepted by MDP HW */
> > > > > +static u32
> > > > > +dip_mdp_fmt_get_plane_size(const struct mtk_dip_dev_format *fmt,
> > > > > +                      u32 stride, u32 height,
> > > > > +                      unsigned int plane)
> > > > > +{
> > > > > +   enum mdp_color c = fmt->mdp_color;
> > > > > +   u32 bytesperline;
> > > > > +
> > > > > +   bytesperline = (stride * fmt->row_depth[0])
> > > > > +           / MDP_COLOR_BITS_PER_PIXEL(c);
> > > >
> > > > Hmm, stride and bytesperline should be exactly the same thing. Could you
> > > > explain what's happening here?
> > >
> > > The stride here is specific for MDP hardware (which uses the same MDP
> > > stride setting for NV12 and NV12M):
> > >
> > >         bytesperline = width * row_depth / 8
> > >         MDP stride   = width * MDP_COLOR_BITS_PER_PIXEL /8
> > >
> > > Therfore,
> > >
> > >         bytesperline = MDP stride * row_depth / MDP_COLOR_BITS_PER_PIXEL
> > >         MDP stride   = bytesperline * MDP_COLOR_BITS_PER_PIXEL/ row_depth
> > >
> >
> > I'm sorry I'm still confused. Is there an intermediate buffer between
> > DIP and MDP that has stride of |MDP stride| and then MDP writes to the
> > final buffer that has the stride of |bytesperline|?
> >
>
> No, there is no intermediate buffer between DIP and MDP that has stride
> of |MDP stride|. DIP connects to MDP in hardware level, so MDP writes
> the buffer with |MDP stride|.
>
> As I know, V4L2's bytesperline means bytes per line of the first
> plane(*), but mdp hw needs y, u, v stride (it is different from V4L2).
> Therefore we calculate the |MDP stride| here.
>
> *:
> https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/pixfmt-v4l2.html#c.v4l2_pix_format
> "When the image format is planar the bytesperline value applies to the
> first plane and is divided by the same factor as the width field for the
> other planes."

However, we're using v4l2_pix_fmt_mplane, not v4l2_pix_format. If the
pixelformat is the M variant (e.g. V4L2_PIX_FMT_NV12M), the
v4l2_pix_fmt_mplane::planes[] contains bytesperline and sizeimage for
each plane separately. That's the reason I'm strongly suggesting
abandoning the non-M formats and supporting only the M ones.

>
> > [snip]
> >
> > > >
> > > > > +           u32 sizeimage;
> > > > > +
> > > > > +           if (bpl < min_bpl)
> > > > > +                   bpl = min_bpl;
> > > > > +
> > > > > +           sizeimage = (bpl * mfmt_to_fill->height * dev_fmt->depth[i])
> > > > > +                   / dev_fmt->row_depth[i];
> > > >
> > > > Shouldn't this be bpl * fmt->height?
> > >
> > > Row_depth is the bits of the pixel.
> > > Depth means the bytes per pixel of the image format.
> > >
> > > For example,
> > > Image: 640 * 480
> > > YV12: row_depth = 8, depth = 12
> >
> > YV12 has 3 planes of 8 bits per pixel. Not sure where does this 12 come from.
> >
>
> Let me elaborate more about the 12 depth.
>
> depth: pixel bit number
>
> For 420,
>
> y = w * h
> u = (w/2) * (h/2)
> v = (w/2) * (h/2)
>
> Therefore,
>
> y = 8,
> u = 8/2/2 = 2
> v = 8/2/2 = 2
>
> depth (y + u + v) = 8 + 2 + 2 = 12
>

Yes, that's what I understood, but it is by no means associated with
any physical depth. It's more like "total_bits_per_pixel". That's
however a very error prone way to express pixel formats, as for
example it can't handle the case when plane strides alignments are not
proportional.

Please see the v4l2_format_info struct for the recommended way of
describing pixel formats. Actually, the struct itself could be reused
in this driver, even if we don't end up using the helpers for some
reason.

>
> > > Bytes per line = width * row_depth / 8 = 640 * 8/ 8 = 640
> > > Image size = Bytes per line * height * (depth/ row_depth)
> > >            = 640 * 480 * 1.5
> > >
> >
> > I think we might be having some terminology issue here. "row" is
> > normally the same as "line", which consists of |width| pixels +
> > padding, which is |bytesperline| bytes in total.
> >
> > Perhaps you want to store a bits_per_pixel[] and vertical and
> > horizontal subsampling arrays for all planes of the formats in the
> > format descriptor.
> >
> > By the way, have you considered using the V4L2 format helpers [1]?
> >
> > [1] https://elixir.bootlin.com/linux/v5.3-rc6/source/drivers/media/v4l2-core/v4l2-common.c#L561
>
> Would it be possible to keep row_depth and depth? It is already used in
> MDP drivers.
>
> https://elixir.bootlin.com/linux/v5.3-rc6/source/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c
>

I'd suggest cleaning up the MDP driver instead. :)
(Could be done as a follow up later, of course.)

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
