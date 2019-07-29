Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99B678931
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 12:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ea5fKVEA3HzNrjMLC9FJkvDlyaAB8xjQc2y7QdtT4CA=; b=X4O6E5II3mwBwq
	zCtyj4ylnYtTCOeH48KGosbglUi5P3BsI2hURNYaWEbAL4bHCT3CsxzmwlfSrR4kHqa//Xczi/xVS
	3DkqXo+7hUzH6ydYV2vW1uTcNj13lvMa+FRICX/pOYhddnrUdnunzipQLfJGNcmWEM8Yn7OJts0s4
	u7bfzbgKORqlJ4oCtGaHpeIqYMJYYM4ZdRfiKS47fbsh5AL46Dt5PUj9bS0dpLtOSyYlNe6IbgNrY
	BOPTAAjlFXOcO+w267Joo6umeKK8u32AFsrdfEjFZcSd4k3e2fY1z08W3zRROS4RncVV4NzRP0keC
	HquT30c5nzWlS0l4PamA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2Wu-00073y-Px; Mon, 29 Jul 2019 10:05:20 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2Vu-000543-4V
 for linux-mediatek@lists.infradead.org; Mon, 29 Jul 2019 10:04:20 +0000
Received: by mail-ed1-x541.google.com with SMTP id p15so58746916eds.8
 for <linux-mediatek@lists.infradead.org>; Mon, 29 Jul 2019 03:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BuGv9mCdiFGsr2/aU0TRRsCbu+bBVd92bSRQXh+qKoY=;
 b=cAC9vA1WzP7wEkgiMvdLyiKgruKKv4ZnjNuRve1TY9887obLYXBAbg8MOgcgRTNeEZ
 S1uerLNW/hOLtEC/W09eiyKTP84oZV1KJzien/avQoU0Uj1Z34YIicEcENwWaYUE3kYS
 v3xUCf6OAkD8Y9Aw3J6yQsOt49ZRuJIF8L9Y8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BuGv9mCdiFGsr2/aU0TRRsCbu+bBVd92bSRQXh+qKoY=;
 b=cfnfM+mJC6fLUllk2EeJNKYSNvxpaMMEKXiFjcX5rT+MxQ4eXvB0XWa8xmevWTpg2l
 wpLdE1a+qZ+05aIlLXvc+ET23tMvj5D+bUHC7LsLV44CdQUd1wlZDehckyHyBQagWjYD
 IOIadhzSuJJT4brb8lvW0JC2P+uY1fEVbFMVLssNs0fyQ+9dM0ay5ufWc4jZ74Qcabz9
 6RuevO3ozCPOMb30FZjJ+UkCK3vbUTu4oelsU7CVIqQLBx0jCwsbHOpHuDkMkEcxCFbS
 Do6n++ydP539NfuuQ9aU91GUHmjz2l0tnJIqL2T1fdyRqRhpJ45Yy1CcamPCrTuknPA/
 To4g==
X-Gm-Message-State: APjAAAWcieIJld+F3KqLeX9YWyshIlImoPGh3XT8poM8L7CcISkhcY94
 LR3n2igwzfT0FfXIBbZWF6LwYTFvZqk4BA==
X-Google-Smtp-Source: APXvYqw6WZAKnOBeeUvHP3xkvanIOWLZ4I0aoNfAXfDN7avnnMHgAD5t6WUEhi3Yu77qlrP/Hs8hIQ==
X-Received: by 2002:a17:906:401a:: with SMTP id
 v26mr85286731ejj.62.1564394655401; 
 Mon, 29 Jul 2019 03:04:15 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id o21sm15308171edt.26.2019.07.29.03.04.13
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 03:04:14 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id f9so61109830wre.12
 for <linux-mediatek@lists.infradead.org>; Mon, 29 Jul 2019 03:04:13 -0700 (PDT)
X-Received: by 2002:a5d:5012:: with SMTP id e18mr17574578wrt.166.1564394653548; 
 Mon, 29 Jul 2019 03:04:13 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-7-jungo.lin@mediatek.com>
 <20190710095429.GA181405@chromium.org>
 <1563424741.1212.212.camel@mtksdccf07>
 <CAAFQd5CXeQv74RtqDxYYLVEpsnFbsm0m-kUBDpY_AFmCBO0PyA@mail.gmail.com>
 <1563942689.1212.494.camel@mtksdccf07>
 <CAAFQd5A8zW9s8cewmHnr9HFmrkxDnEqjrTiwLF2m8sKp0619hA@mail.gmail.com>
 <1564363089.1212.636.camel@mtksdccf07>
In-Reply-To: <1564363089.1212.636.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 29 Jul 2019 19:04:02 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D4Roc05H1NnXSp=W+L1RN7LEPHY0EA0mRhpHAcZ3wvMg@mail.gmail.com>
Message-ID: <CAAFQd5D4Roc05H1NnXSp=W+L1RN7LEPHY0EA0mRhpHAcZ3wvMg@mail.gmail.com>
Subject: Re: [RFC,v3 6/9] media: platform: Add Mediatek ISP P1 V4L2 functions
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_030418_248117_B9D742EF 
X-CRM114-Status: GOOD (  31.74  )
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:18 AM Jungo Lin <jungo.lin@mediatek.com> wrote:
> On Fri, 2019-07-26 at 14:49 +0900, Tomasz Figa wrote:
> > On Wed, Jul 24, 2019 at 1:31 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > On Tue, 2019-07-23 at 19:21 +0900, Tomasz Figa wrote:
> > > > On Thu, Jul 18, 2019 at 1:39 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > > > On Wed, 2019-07-10 at 18:54 +0900, Tomasz Figa wrote:
> > > > > > On Tue, Jun 11, 2019 at 11:53:41AM +0800, Jungo Lin wrote:
[snip]
> > >                 dev_dbg(cam->dev, "jobs are full\n");
> > >                 spin_unlock_irqrestore(&cam->pending_job_lock, flags);
> > >                 return;
> > >         }
> > >         list_for_each_entry_safe(req, req_prev, &cam->pending_job_list, list) {
> >
> > Could we instead check the counter here and break if it's >=
> > MTK_ISP_MAX_RUNNING_JOBS?
> > Then we could increment it here too to simplify the code.
> >
>
> Thanks for your advice.
> We simplified this function as below:
>
> void mtk_cam_dev_req_try_queue(struct mtk_cam_dev *cam)
> {
>         struct mtk_cam_dev_request *req, *req_prev;
>         unsigned long flags;
>
>         if (!cam->streaming) {
>                 dev_dbg(cam->dev, "stream is off\n");
>                 return;
>         }
>
>         spin_lock_irq(&cam->pending_job_lock);
>         spin_lock_irqsave(&cam->running_job_lock, flags);

Having the inner call spin_lock_irqsave() doesn't really do anything
useful, because the outer spin_lock_irq() disables the IRQs and flags
would always have the IRQ disabled state. Please use irqsave for the
outer call.

[snip]
> > > > > > > +
> > > > > > > +static struct v4l2_subdev *
> > > > > > > +mtk_cam_cio_get_active_sensor(struct mtk_cam_dev *cam_dev)
> > > > > > > +{
> > > > > > > +   struct media_device *mdev = cam_dev->seninf->entity.graph_obj.mdev;
> > > > > > > +   struct media_entity *entity;
> > > > > > > +   struct device *dev = &cam_dev->pdev->dev;
> > > > > > > +   struct v4l2_subdev *sensor;
> > > > > >
> > > > > > This variable would be unitialized if there is no streaming sensor. Was
> > > > > > there no compiler warning generated for this?
> > > > > >
> > > > >
> > > > > No, there is no compiler warning.
> > > > > But, we will assign sensor to NULL to avoid unnecessary compiler warning
> > > > > with different compiler options.
> > > > >
> > > >
> > > > Thanks. It would be useful if you could check why the compiler you're
> > > > using doesn't show a warning here. We might be missing other
> > > > uninitialized variables.
> > > >
> > >
> > > We will feedback to your project team to check the possible reason about
> > > compiler warning issue.
> > >
> >
> > Do you mean that it was the Clang toolchain used on Chromium OS (e.g.
> > emerge chromeos-kernel-4_19)?
>
> > [snip]
>
> Yes, I checked this comment in the Chromium OS build environment.
> But, I think I have made the mistake here. I need to check the build
> status in the Mediatek's kernel upstream environment. I will pay
> attention in next path set upstream.
>

Thanks a lot. I will recheck this in the Chromium OS toolchain too.

> > > > > > > +
> > > > > > > +   dev_dbg(dev, "%s: node:%d fd:%d idx:%d\n",
> > > > > > > +           __func__,
> > > > > > > +           node->id,
> > > > > > > +           buf->vbb.request_fd,
> > > > > > > +           buf->vbb.vb2_buf.index);
> > > > > > > +
> > > > > > > +   /* For request buffers en-queue, handled in mtk_cam_req_try_queue */
> > > > > > > +   if (vb->vb2_queue->uses_requests)
> > > > > > > +           return;
> > > > > >
> > > > > > I'd suggest removing non-request support from this driver. Even if we end up
> > > > > > with a need to provide compatibility for non-request mode, then it should be
> > > > > > built on top of the requests mode, so that the driver itself doesn't have to
> > > > > > deal with two modes.
> > > > > >
> > > > >
> > > > > The purpose of non-request function in this driver is needed by
> > > > > our camera middle-ware design. It needs 3A statistics buffers before
> > > > > image buffers en-queue. So we need to en-queue 3A statistics with
> > > > > non-request mode in this driver. After MW got the 3A statistics data, it
> > > > > will en-queue the images, tuning buffer and other meta buffers with
> > > > > request mode. Based on this requirement, do you have any suggestion?
> > > > > For upstream driver, should we only consider request mode?
> > > > >
> > > >
> > > > Where does that requirement come from? Why the timing of queuing of
> > > > the buffers to the driver is important?
> > > >
> > > > [snip]
> > >
> > > Basically, this requirement comes from our internal camera
> > > middle-ware/3A hal in user space. Since this is not generic requirement,
> > > we will follow your original suggestion to keep the request mode only
> > > and remove other non-request design in other files. For upstream driver,
> > > it should support request mode only.
> > >
> >
> > Note that Chromium OS will use the "upstream driver" and we don't want
> > to diverge, so please make the userspace also use only requests. I
> > don't see a reason why there would be any need to submit any buffers
> > outside of a request.
> >
> > [snip]
>
> Ok, I have raised your concern to our colleagues and let him to discuss
> with you in another communication channel.
>

Thanks!

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
