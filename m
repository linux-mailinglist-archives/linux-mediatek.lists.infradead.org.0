Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE94A52912
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 12:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72LeIAWnbXP930av7OypdM/bB8t1ynkaxJM2+N0APXc=; b=KcxoZ+qUkEMV0l
	v+tYfqT7Jxrh6uAKfIy6y2p33ZaW8UwBck1Go0YDsBETtiuqdwumqm1ajwLJb3S4KNx2uXBaGUwgl
	R2EW/P6nLmFhSoGKpl9rMsjt2limc690TIVHKft1JvJilmpJ0mQ+Z62RS5mbmrG+7oiAkJyQ0hXfr
	UPCQ07EubMwd9B/GqpN8vW1AvsL8JnkF/Ez4/ifFiY0jHYYUOUT26Gz1J7yKWLNsgmM0kdBjx0AwN
	gSi0z8/V5+oK2Eqw4PtYNF3rqZdobUAT2aw4MfCXb8TGCU/l88j01o1M9syVA6TQPgm0+YtCdvPH/
	scwJh58OrdmWyUw9Ds4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiOU-0004To-Ga; Tue, 25 Jun 2019 10:09:42 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiOP-0004TD-Kg
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 10:09:40 +0000
Received: by mail-ed1-x544.google.com with SMTP id e3so26257401edr.10
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 03:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rsc2noBXi+ouaRgHG7tYe3JLZf2Hj02lZr0FVWLF4yE=;
 b=j/IM/oJcNq09Rg7+qaoHfggYIE4L/miONSCnqFOqa9VyptS9Gt414vH90gSFhfSGwP
 jH6xOXp6+tzs8RyFfG81zazHixjRiuGBP7fejdODY9fN9mP1CYsAyx5dzKkeUPca/qMF
 j41S6jUfIwtHYHCXTyq/aLBPn6e1eBvhhHHCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rsc2noBXi+ouaRgHG7tYe3JLZf2Hj02lZr0FVWLF4yE=;
 b=N7CLsPxtKIRbRyleGQI9bAA/EbGIhhFhPcC++lQyR8OdjL+y7m0hVMUrjGuFYU4joJ
 fY7VWqOIWzkQJC2e+I6TqpcjTFG5sjh02q4ZKLohmdMocHgzaUT5d/2ejS1JQold9E58
 psQebOS2WA8SjGS5TjR82CtWCtY/Wljk9XbhYk/M9OFrdB9eXOxDFkHjQ9s3p1FXqJpU
 r0H1hylqNcxFaIqweH5Y53AtxcWX8jhDgcn7l0wtNxz5x8ZPiL3WKZAz/tTLXBeiuXG6
 S9RFaMWpBc9/2kwnKSpERFIefZNzbLRksLHlKTv4Xz3ZkfUZ8MOOd4eLGYErVWXISMnX
 Mw8Q==
X-Gm-Message-State: APjAAAXHWTp/l41m92wwf1lB47wuryyj/5wD1RKzQvTnQaiDfOiXlFaY
 02RFEve0Y5liIEexcARygnzCI93sqO8EQA==
X-Google-Smtp-Source: APXvYqyK+vUhZn0DD7/dLvFsc0w4d1LKSAjLHR7yILtAC+PhsxKJLdlYO2sb+Jgu4fJ7LbX0Iococw==
X-Received: by 2002:a17:907:2091:: with SMTP id
 pv17mr19088214ejb.152.1561457372160; 
 Tue, 25 Jun 2019 03:09:32 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id n15sm4674708edd.49.2019.06.25.03.09.30
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 03:09:31 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id c2so17156433wrm.8
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 03:09:30 -0700 (PDT)
X-Received: by 2002:a5d:4810:: with SMTP id l16mr2006838wrq.48.1561457370130; 
 Tue, 25 Jun 2019 03:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190423104505.38778-1-Jerry-Ch.chen@mediatek.com>
 <20190423104505.38778-7-Jerry-Ch.chen@mediatek.com>
 <20190606104347.GA107267@chromium.org>
 <1561386122.15267.223.camel@mtksdccf07>
 <CAAFQd5BWbtPtNG29ULF==jCGOes=ob-NFcnOX8_DH=GhZRZGrA@mail.gmail.com>
 <1561452912.15267.261.camel@mtksdccf07>
In-Reply-To: <1561452912.15267.261.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 25 Jun 2019 19:09:18 +0900
X-Gmail-Original-Message-ID: <CAAFQd5B92Vx96nZD7NQzVHByQEspdprLpTTOsqrUbjvUf2jxug@mail.gmail.com>
Message-ID: <CAAFQd5B92Vx96nZD7NQzVHByQEspdprLpTTOsqrUbjvUf2jxug@mail.gmail.com>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_030938_147970_60005E7E 
X-CRM114-Status: GOOD (  40.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 =?UTF-8?B?UG8tWWFuZyBIdWFuZyAo6buD5p+P6Zm9KQ==?= <po-yang.huang@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
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

On Tue, Jun 25, 2019 at 5:55 PM Jerry-ch Chen
<Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Tue, 2019-06-25 at 11:39 +0800, Tomasz Figa wrote:
> > Hi Jerry,
> >
> > On Mon, Jun 24, 2019 at 11:22 PM Jerry-ch Chen
> > <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Thu, 2019-06-06 at 18:43 +0800, Tomasz Figa wrote:
> > > > Hi Jerry,
> > > >
> > > > On Tue, Apr 23, 2019 at 06:45:05PM +0800, Jerry-ch Chen wrote:
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
> > > >
> > > > Thanks for the patch.
> > > >
> > > > First of all a general comment about the design:
> > > >
> > > > My understanding is that this is a relatively straightforward
> > > > memory-to-memory device that reads a video frame and detects faces on it.
> > > > Such devices should be implemented as normal V4L2 memory-to-memory devices,
> > > > with contexts (instances; pipes) represented by v4l2_fh.
> > > >
> > > > Also, please replace the META_OUTPUT queue with proper V4L2 controls, as I
> > > > don't think there is anything that we couldn't model using controls here.
> > > >
> > > > The end result should be a V4L2 m2m driver (using the m2m helpers), where
> > > > you get a new context (instance; pipe) whenever you open the video node,
> > > > similar to codecs, video processors (like MTK MDP) and so on.
> > > >
> > > > Also please see my comments inline.
> > > >
> > > I appreciate your comments,
> > > sorry for sending the previous two unfinished mail...
> > >
> > > FD driver will be implemented as a normal V4L2 m2m driver which has an
> > > IMAGE_OUTPUT queue and a META_CAPTURE queue(face result).
> > >
> > > We will use the following properties.
> > > /* Is a video mem-to-mem device that supports multiplanar formats */
> > > #define V4L2_CAP_VIDEO_M2M_MPLANE    0x00004000
> > >
> > > The original META_OUTPUT queue contains the following structure will be
> > > replaced by V4L2 controls,
> > >
> > > /* FD_SCALE_NUM is 15. */
> > > struct fd_user_param {
> > >         uint8_t rip_feature;
> > >         uint8_t gfd_skip;
> > >         uint8_t dynamic_change_model;
> > >         uint8_t scale_num_from_user;
> > >         uint16_t source_img_width[FD_SCALE_NUM];
> > >         uint16_t source_img_height[FD_SCALE_NUM];
> > > } __packed; //share with co-processor
> > >
> > > However, we found that testM2MFormats() in the V4L2 compliance test will
> > > assume the capture queue has the same format as output queue has,
> > > therefore, FD driver's capture queue wouldn't be able to use META format
> > > or the v4l2 test will be failed.
> > >
> > > reference: v4l2-compliance/v4l2-test-formats.cpp
> > > // m2m devices are special in that the format is often per-filehandle.
> > > // But colorspace information should be passed from output to capture,
> > > // so test that.
> > >         if (node->is_m2m)
> > >                 return testM2MFormats(node);
> > >
> > > May we ask for your suggestions about this part?
> > >
> >
> > Ah, I didn't mean mem-to-mem device specifically as per
> > V4L2_CAP_VIDEO_M2M_MPLANE, because that one implies the regular
> > VIDEO_OUTPUT -> VIDEO_CAPTURE processing indeed. We should expose just
> > VIDEO_OUTPUT_MPLANE and META_CAPTURE in the capabilities, but all the
> > rest would still behave like a mem-to-mem device, i.e. v4l2_fh for
> > contexts/instances, v4l2_m2m helpers and so on.
> >
> I Appreciate for your reply,
>
> Sorry I didn't mention the question clearly, we have included these two
> capabilities, but we get the following v4l2 test failure:
> fail: v4l2-test-formats.cpp(784): fmt_cap.g_colorspace() !=
> fmt_out.g_colorspace()

My point is that we shouldn't set V4L2_CAP_VIDEO_M2M(_MPLANE) in the
capabilities, because FD is mem-to-mem in terms of the mode of
operation, not in terms of the definition of
V4L2_CAP_VIDEO_M2M(_MPLANE). That would make testM2MFormats() not
called at all.

Best regards,
Tomasz

>
> Which is caused by the following code testing the m2m buffers'
> capabilities, FD driver have fmt_cap with V4L2_BUF_TYPE_META_CAPTURE and
> fmt_out with V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, therefore, our fmt_cap
> won't have colorspace information.
>
> Reference:
> https://github.com/gjasny/v4l-utils/blob/master/utils/v4l2-compliance/v4l2-test-formats.cpp#L774
> fail_on_test(fmt_cap.g_colorspace() != fmt_out.g_colorspace());
> fail_on_test(fmt_cap.g_ycbcr_enc() != fmt_out.g_ycbcr_enc());
> fail_on_test(fmt_cap.g_quantization() != fmt_out.g_quantization());
> fail_on_test(fmt_cap.g_xfer_func() != fmt_out.g_xfer_func());
>
> Not sure if the maintainer of v4l2 test would consider modifying here to
> allow the use case of FD driver?
>
> > [snip]
> >
> > > > > +
> > > > > +   return 0;
> > > > > +}
> > > > > +
> > > > > +static int mtk_fd_suspend(struct device *dev)
> > > > > +{
> > > > > +   struct mtk_fd_dev *fd_dev;
> > > > > +   int ret;
> > > > > +
> > > > > +   if (pm_runtime_suspended(dev))
> > > > > +           return 0;
> > > > > +
> > > > > +   fd_dev = dev_get_drvdata(dev);
> > > > > +
> > > > > +   if (atomic_read(&fd_dev->fd_hw.fd_user_cnt) > 0) {
> > > > > +           ret = pm_runtime_put_sync(fd_dev->fd_hw.larb_dev);
> > > > > +           clk_disable_unprepare(fd_dev->fd_hw.fd_clk);
> > > > > +           return ret;
> > > > > +   }
> > > >
> > > > This isn't going to work, because the hardware may be still processing a
> > > > frame at this point. You need a way to ensure that the hardware goes idle
> > > > here first and then in resume, you need to make the hardware continue when
> > > > it left before suspend.
> > > >
> > > For this part, I would like to do as following:
> > > when suspend, it should set the driver power state as idle or suspended
> > > to stop further enqueue jobs, should be judged in mtk_fd_hw_job_exec()
> > > or somewhere, then wait for the unfinished job return or timeout, and
> > > finally close the clock.
> > > When resume, we set the driver power state as resumed and let the new
> > > jobs to be enqueued.
> > >
> > > Or another way is to create a wait queue or work queue to store the jobs
> > > from user. When suspend, we change the driver status to restrict the new
> > > jobs joining to work queue and close the clock. When resume, driver
> > > continue execute the jobs from the work queue.
> > >
> >
> > I wouldn't introduce a workqueue only for handling suspend/resume. If
> > we end up in a need to use a workqueue for some other purposes too,
> > then a freezable workqueue could work for blocking further requests
> > during suspend indeed. If we don't need a workqueue for anything else,
> > then a simple boolean flag set and wait for last job to finish in
> > suspend and flag reset and call to schedule a next job in resume
> > should be good enough.
> >
> > Best regards,
> > Tomasz
>
> Ok, we got it.
>
> Sincerely,
> Jerry
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
