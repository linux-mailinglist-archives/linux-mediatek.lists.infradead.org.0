Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05948166C
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 12:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1ryBdJHi3avp3v66fqCJakcfJI6qzbGg0vCv1pxFk8=; b=uMuxpBfikK79RP
	tC/epie76LQ0lI2pmyCovRz+CPvIVTP1cRb6fS3lzYpVIodLP0l3UAZMLKKuFJrykfKOvFLb3CnR/
	Ab/Y9BAD5zdN8Yfw7i5Tm3KMMW3dQV6UQxPNx+2qKQ9VPH1WB9SkmSKWLzVYJPTj9D4R5aJjebUod
	5T2TobF342js/dYR5s45VF86wRErzzkXc2TkjJJZM1sqwszL/mft+LUVba8GEEMlV8Hfzko+gOcx9
	XrBz9IWnh9/AYGq+DaX5q0rN3L1WYawG65AD8YFX2szfcytrIfSis1+3ns71wS8qHaAGcOu8Xdzli
	nEA8XOKEZ/JH7FgFOofQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZto-0007lt-8N; Mon, 05 Aug 2019 10:07:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZtX-0007WJ-F9
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 10:07:14 +0000
Received: by mail-ed1-x544.google.com with SMTP id e3so78127368edr.10
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wjg3An6g6rq9jyoAy9XejRIo5MdOt8OaZv07jbbBozE=;
 b=PrT5zzBQ2ANbtMmVxjpQ5lb8jB/eUO4fT2D+8f/MhrSwoTta8UNQfpbziADbssapcu
 Rn5giFrSS8yY9Z6qIcwmAwHtj53dl2928FRT1kCYRHn6nUtjSmynaR7FnEMjxo4fqSDq
 UdrZ24MS+ul1GR9JO7bXAr4zVdmKAK80Bidg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wjg3An6g6rq9jyoAy9XejRIo5MdOt8OaZv07jbbBozE=;
 b=kt6IDWYP0RfxUWNpHarYFdSJoEL1PWi9E+0Z4TNo6KarP1/E4gQfddohqcVyRBMkyR
 bQT4j8HBnoGFtWNN+WDpPNozoOPkpyzMHJXEeIng00GhVVwyd86TDp8uZ+jCq1RWMUyf
 F+lh2sD2Qng5O62V17tFUSPFlUenLTKdU/aW0OOlpXjawMnaaQF+20dWRUjBW+fY9uq4
 39RJHVDLYz85f3tDBTzRrmOED51vXlrOrmZCfKlnBbUWZLPvESjsphVNkc//slq8uZjz
 PcQjIWMvqHNU/eqcd6RHDxOYDj8Mt9QgHUqPHB3EAD8LFvxF5ff7Gs7Ve1pN/iEZJxLl
 L3Pg==
X-Gm-Message-State: APjAAAXopu70Y4YdX8zoamX6BuaXWLGzBfOS2oi00Bh+GJL3pPQ+V2Ue
 D0xb3mNjxK6rfPqMK9Eu7KydF9uGWxNbcw==
X-Google-Smtp-Source: APXvYqxQIwPJi0Vcu6fpNV8LIMD37MEiyc1RVGYsLTew9c1+lV5iCfO6C13EqTCZdQFeTmQLkwssIQ==
X-Received: by 2002:a50:eb96:: with SMTP id y22mr25353355edr.211.1564999629189; 
 Mon, 05 Aug 2019 03:07:09 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id 17sm20058816edu.21.2019.08.05.03.07.09
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 03:07:09 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id s15so51053705wmj.3
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:07:09 -0700 (PDT)
X-Received: by 2002:a1c:343:: with SMTP id 64mr18771116wmd.116.1564999171311; 
 Mon, 05 Aug 2019 02:59:31 -0700 (PDT)
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
 <CAAFQd5D4Roc05H1NnXSp=W+L1RN7LEPHY0EA0mRhpHAcZ3wvMg@mail.gmail.com>
 <1564451089.1212.649.camel@mtksdccf07>
In-Reply-To: <1564451089.1212.649.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 5 Aug 2019 18:59:19 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BUUtndb76+3CJeYFxk+=6mefXDb3F9KBpyTXkCJnF2aw@mail.gmail.com>
Message-ID: <CAAFQd5BUUtndb76+3CJeYFxk+=6mefXDb3F9KBpyTXkCJnF2aw@mail.gmail.com>
Subject: Re: [RFC,v3 6/9] media: platform: Add Mediatek ISP P1 V4L2 functions
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030711_530306_B862F359 
X-CRM114-Status: GOOD (  26.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Jungo,

On Tue, Jul 30, 2019 at 10:45 AM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> On Mon, 2019-07-29 at 19:04 +0900, Tomasz Figa wrote:
> > On Mon, Jul 29, 2019 at 10:18 AM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > On Fri, 2019-07-26 at 14:49 +0900, Tomasz Figa wrote:
> > > > On Wed, Jul 24, 2019 at 1:31 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > > > On Tue, 2019-07-23 at 19:21 +0900, Tomasz Figa wrote:
> > > > > > On Thu, Jul 18, 2019 at 1:39 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > > > > > On Wed, 2019-07-10 at 18:54 +0900, Tomasz Figa wrote:
> > > > > > > > On Tue, Jun 11, 2019 at 11:53:41AM +0800, Jungo Lin wrote:
[snip]
> > > > > > > > > +
> > > > > > > > > +   dev_dbg(dev, "%s: node:%d fd:%d idx:%d\n",
> > > > > > > > > +           __func__,
> > > > > > > > > +           node->id,
> > > > > > > > > +           buf->vbb.request_fd,
> > > > > > > > > +           buf->vbb.vb2_buf.index);
> > > > > > > > > +
> > > > > > > > > +   /* For request buffers en-queue, handled in mtk_cam_req_try_queue */
> > > > > > > > > +   if (vb->vb2_queue->uses_requests)
> > > > > > > > > +           return;
> > > > > > > >
> > > > > > > > I'd suggest removing non-request support from this driver. Even if we end up
> > > > > > > > with a need to provide compatibility for non-request mode, then it should be
> > > > > > > > built on top of the requests mode, so that the driver itself doesn't have to
> > > > > > > > deal with two modes.
> > > > > > > >
> > > > > > >
> > > > > > > The purpose of non-request function in this driver is needed by
> > > > > > > our camera middle-ware design. It needs 3A statistics buffers before
> > > > > > > image buffers en-queue. So we need to en-queue 3A statistics with
> > > > > > > non-request mode in this driver. After MW got the 3A statistics data, it
> > > > > > > will en-queue the images, tuning buffer and other meta buffers with
> > > > > > > request mode. Based on this requirement, do you have any suggestion?
> > > > > > > For upstream driver, should we only consider request mode?
> > > > > > >
> > > > > >
> > > > > > Where does that requirement come from? Why the timing of queuing of
> > > > > > the buffers to the driver is important?
> > > > > >
> > > > > > [snip]
> > > > >
> > > > > Basically, this requirement comes from our internal camera
> > > > > middle-ware/3A hal in user space. Since this is not generic requirement,
> > > > > we will follow your original suggestion to keep the request mode only
> > > > > and remove other non-request design in other files. For upstream driver,
> > > > > it should support request mode only.
> > > > >
> > > >
> > > > Note that Chromium OS will use the "upstream driver" and we don't want
> > > > to diverge, so please make the userspace also use only requests. I
> > > > don't see a reason why there would be any need to submit any buffers
> > > > outside of a request.
> > > >
> > > > [snip]
> > >
> > > Ok, I have raised your concern to our colleagues and let him to discuss
> > > with you in another communication channel.
> > >
> >
> > Thanks!
> >
> > Best regards,
> > Tomasz
>
> Our colleague is preparing material to explain the our 3A/MW design. If
> he is ready, he will discuss this with you.

Thanks!

>
> In the original plan, we will deliver P1 v4 patch set tomorrow (31th
> Jul.). But, there are some comments waiting for other experts' input.
> Do you suggest it is better to resolve all comments before v4 patch set
> submitting or continue to discuss these comments on v4?

For the remaining v4l2-compliance issues, we can postpone them and
keep on a TODO list in the next version.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
