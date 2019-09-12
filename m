Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A543B087B
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 07:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aa0B0cMG9FYZw55C/hN/rlZC2uP8e1wV+BxkJGmIcsM=; b=n8MRZjVHX0Z7ZK
	oa/9WU1x3RRsz0JulcWmZgS/B9Qu2qzwjgBm3RbMn5x2w/9F9M8YqbFyX+3QV9aHrX8Qpp1AShW8n
	u50Pcayh0uAx/yehITz3ho9obY63ooucZ4U7942FT7KqpMdKVugsebUCaOqavca1upXur4U+jlLKL
	tqZdlFigw7HlrqguI0CbJ0OQ3w2faBvkBI3zeN64VsJiRUcdIjV1lw2QYepOvS8fe/yXXO2lnTPw7
	G+/2fQfmDirM+jgACqNl3KOFvSDf+oQ4/kKeYFkEQxVy/+Tjy4qGFaryIf0/97QxDswY2aYJOpZpM
	qJZFty8NLsSu9PKaPPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8I7d-00010k-Ms; Thu, 12 Sep 2019 05:58:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8I7Z-00010G-Fc
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 05:58:23 +0000
Received: by mail-ed1-x542.google.com with SMTP id o9so22863922edq.0
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 22:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LjfYgHrvdyzdbJpnHRyIqrQrXL2lINOVqcLX3oIlaCA=;
 b=lkpp3OLLxsJt6BJd9FydWcE47w5MQsJS0CgcGvyto3A+ZTBhX9yHJXy35kJKMmztr8
 mmtG+W5yWb5Xm9uFOY4sPakw9xfa4dvT+PcfVCMn3cUCpCMnSqA1oyfkcKIZYKe9Q6Md
 ky6Uy00Is2RTb8FrnjPyktCVLhAl+XizQFHCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LjfYgHrvdyzdbJpnHRyIqrQrXL2lINOVqcLX3oIlaCA=;
 b=gIB2slnYKsZXKuZlq2okifZLFf8PYx7zJ+F8p9mh/5mVYM0LY268qckitRVAbWsLt5
 lLK98zSG+lp3ntqC/0T/9QGZEq9dpRWtOtjPbwt0+zW1Iq+AmBng7xPJwTXsd1OCO+nW
 N8WBfq/jPTxYjo758YVqWoU3aN3ibyabnIv7QP9/eKwn19rQ0yL7wlKydmIy/sgsbVyj
 WK+wABZplFJ0nhT7dKmYz3Vs4C2hjg4NPUGltn0Q38+DHcgQRo9R7gLeyXUEoXw9GKsi
 SGzOGlkJojH/0N+RCI7jCK5MXfOwkmO2Py91oa+1T69mNbzjUbcjvZ3GMenokONtRWBa
 A3eQ==
X-Gm-Message-State: APjAAAUaPmSZWZwlgWugcUv9qN5vLtZyL0DF5NM7U9rAKPw1gX+LPCfy
 MwY0WFneQ8XR7spSI+Xu9XwEhmt9q0pDaw==
X-Google-Smtp-Source: APXvYqyfiA9fpZW7blYZ8vay8+Hum4+IKJeIbLA7b3ZTJNhAQQFLSXczSnYkUdAfQk+nlkylYm59EQ==
X-Received: by 2002:a50:e691:: with SMTP id z17mr40291038edm.84.1568267899332; 
 Wed, 11 Sep 2019 22:58:19 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id d24sm4633454edp.88.2019.09.11.22.58.17
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Sep 2019 22:58:17 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id d17so14219329wrq.13
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 22:58:17 -0700 (PDT)
X-Received: by 2002:adf:dec2:: with SMTP id i2mr17316890wrn.92.1568267896913; 
 Wed, 11 Sep 2019 22:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
 <20190909192244.9367-5-frederic.chen@mediatek.com>
 <CAAFQd5DEn_N26M7B4X7fKHVA=XBtWJN=Y4VF7D9B=TkgXf_i+Q@mail.gmail.com>
 <1568223671.19171.12.camel@mtksdccf07>
In-Reply-To: <1568223671.19171.12.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 12 Sep 2019 14:58:05 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Cd2-dyQnMEy0LBwaajn7UfzEbHiJp7AkDy=T8Zy6t_=A@mail.gmail.com>
Message-ID: <CAAFQd5Cd2-dyQnMEy0LBwaajn7UfzEbHiJp7AkDy=T8Zy6t_=A@mail.gmail.com>
Subject: Re: [RFC PATCH V3 4/5] platform: mtk-isp: Add Mediatek DIP driver
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225821_548576_E8A4511E 
X-CRM114-Status: GOOD (  27.58  )
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
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?QWxsYW4gWWFuZyAo5qWK5pm66YieKQ==?= <Allan.Yang@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, zwisler@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 2:41 AM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> I appreciate your helpful comments.
>
>
> On Tue, 2019-09-10 at 13:04 +0900, Tomasz Figa wrote:
> > Hi Frederic,
> >
> > On Tue, Sep 10, 2019 at 4:23 AM <frederic.chen@mediatek.com> wrote:
> > >
> > > From: Frederic Chen <frederic.chen@mediatek.com>
> > >
> > > This patch adds the driver of Digital Image Processing (DIP)
> > > unit in Mediatek ISP system, providing image format
> > > conversion, resizing, and rotation features.
> > >
> > > The mtk-isp directory will contain drivers for multiple IP
> > > blocks found in Mediatek ISP system. It will include ISP
> > > Pass 1 driver(CAM), sensor interface driver, DIP driver and
> > > face detection driver.
> > >
> > > Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> > > ---
> > >  drivers/media/platform/mtk-isp/Makefile       |    7 +
> > >  .../media/platform/mtk-isp/isp_50/Makefile    |    7 +
> > >  .../platform/mtk-isp/isp_50/dip/Makefile      |   18 +
> > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.c |  650 +++++
> > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.h |  566 +++++
> > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-hw.h  |  156 ++
> > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-sys.c |  521 ++++
> > >  .../mtk-isp/isp_50/dip/mtk_dip-v4l2.c         | 2255 +++++++++++++++++
> > >  8 files changed, 4180 insertions(+)
> > >  create mode 100644 drivers/media/platform/mtk-isp/Makefile
> > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
> > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/Makefile
> > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.c
> > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.h
> > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-hw.h
> > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-v4l2.c
> > >
> >
> > Thanks for sending v3!
> >
> > I'm going to do a full review a bit later, but please check one
> > comment about power handling below.
> >
> > Other than that one comment, from a quick look, I think we only have a
> > number of style issues left. Thanks for the hard work!
> >
> > [snip]
> > > +static void dip_runner_func(struct work_struct *work)
> > > +{
> > > +       struct mtk_dip_request *req = mtk_dip_hw_mdp_work_to_req(work);
> > > +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> > > +       struct img_config *config_data =
> > > +               (struct img_config *)req->working_buf->config_data.vaddr;
> > > +
> > > +       /*
> > > +        * Call MDP/GCE API to do HW excecution
> > > +        * Pass the framejob to MDP driver
> > > +        */
> > > +       pm_runtime_get_sync(dip_dev->dev);
> > > +       mdp_cmdq_sendtask(dip_dev->mdp_pdev, config_data,
> > > +                         &req->img_fparam.frameparam, NULL, false,
> > > +                         dip_mdp_cb_func, req);
> > > +}
> > [snip]
> > > +static void dip_composer_workfunc(struct work_struct *work)
> > > +{
> > > +       struct mtk_dip_request *req = mtk_dip_hw_fw_work_to_req(work);
> > > +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> > > +       struct img_ipi_param ipi_param;
> > > +       struct mtk_dip_hw_subframe *buf;
> > > +       int ret;
> > > +
> > > +       down(&dip_dev->sem);
> > > +
> > > +       buf = mtk_dip_hw_working_buf_alloc(req->dip_pipe->dip_dev);
> > > +       if (!buf) {
> > > +               dev_err(req->dip_pipe->dip_dev->dev,
> > > +                       "%s:%s:req(%p): no free working buffer available\n",
> > > +                       __func__, req->dip_pipe->desc->name, req);
> > > +       }
> > > +
> > > +       req->working_buf = buf;
> > > +       mtk_dip_wbuf_to_ipi_img_addr(&req->img_fparam.frameparam.subfrm_data,
> > > +                                    &buf->buffer);
> > > +       memset(buf->buffer.vaddr, 0, DIP_SUB_FRM_SZ);
> > > +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.config_data,
> > > +                                       &buf->config_data);
> > > +       memset(buf->config_data.vaddr, 0, DIP_COMP_SZ);
> > > +
> > > +       if (!req->img_fparam.frameparam.tuning_data.present) {
> > > +               /*
> > > +                * When user enqueued without tuning buffer,
> > > +                * it would use driver internal buffer.
> > > +                */
> > > +               dev_dbg(dip_dev->dev,
> > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > +                       __func__, req->img_fparam.frameparam.frame_no);
> > > +
> > > +               mtk_dip_wbuf_to_ipi_tuning_addr
> > > +                               (&req->img_fparam.frameparam.tuning_data,
> > > +                                &buf->tuning_buf);
> > > +               memset(buf->tuning_buf.vaddr, 0, DIP_TUNING_SZ);
> > > +       }
> > > +
> > > +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.self_data,
> > > +                                       &buf->frameparam);
> > > +       memcpy(buf->frameparam.vaddr, &req->img_fparam.frameparam,
> > > +              sizeof(req->img_fparam.frameparam));
> > > +       ipi_param.usage = IMG_IPI_FRAME;
> > > +       ipi_param.frm_param.handle = req->id;
> > > +       ipi_param.frm_param.scp_addr = (u32)buf->frameparam.scp_daddr;
> > > +
> > > +       mutex_lock(&dip_dev->hw_op_lock);
> > > +       atomic_inc(&dip_dev->num_composing);
> > > +       ret = scp_ipi_send(dip_dev->scp_pdev, SCP_IPI_DIP, &ipi_param,
> > > +                          sizeof(ipi_param), 0);
> >
> > We're not holding the pm_runtime enable count here
> > (pm_runtime_get_sync() wasn't called), so rproc_shutdown() might have
> > been called. Wouldn't that affect the ability for this IPI to run?
> >
> > We had a related discussion with Jerry on the FD series and I think
> > the conclusion is:
> > a) if there is any state that needs to be preserved between jobs, that
> > would be cleared by rproc_shutdown() then we need to call
> > rproc_boot/shutdown() when we start/stop streaming.
> > b) it there is no such state, we can keep them inside runtime PM
> > callbacks, but we need to call pm_runtime_get_sync() before sending an
> > IPI and pm_runtime_mark_last_busy() + pm_runtime_put_autosuspend()
> > after the SCP signals completion. In this case the runtime PM
> > autosuspend delay should be set to around 2-3 times the delay needed
> > for rproc_shutdown() + rproc_boot() to complete.
>
> Since each IMG_IPI_FRAME command is stateless, I would like to
> use pm_runtime_get_sync()/ pm_runtime_mark_last_busy()/
> pm_runtime_put_autosuspend() to fix this issue (solution b).

What does IMG_IPI_INIT do then? Do we need it at all?

I'm worried about the fact that we call rproc_boot(), IMG_IPI_INIT and
then rproc_shutdown(). The latter can completely shutdown the SCP and
clear any state there. How would the effects of IMG_IPI_INIT be
preserved until IMG_IPI_FRAME is called?

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
