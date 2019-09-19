Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB14B76B2
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 11:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sO2LwDTk1dmJRDC+Q+/JPqTtflaUMDfvNBSS0j+Ige4=; b=Hj1Ymzs2ZqNjvO
	xZIBDah+wPe+6vFEcVZKddM4HdyRR2c6sVJNdqWaM13sJJtIfXd/EUXfPvw2+Ewc3IT9QGNfVGMCM
	ubXU3WayoJPETffvHnnCVICnHKxWDd+EfW3LZ+BpmaDdghhHXBw2oMvoHQ8acNPiR/Ql6kjlU2SxQ
	T5oc05aNMj9oOnbEnX25mvwptO8WJ1d2BbjuTGe0zc4wPN9igzDl/1D6iYr12bjsL0BRWVtFHf2Ca
	YwUnWQ9XMeaRbdbvMILCGduAXof6eF82ZUEKjUR2Vo+st+S4NWyOyUzrBDKxhQyhx/ARUcwbRqLOC
	TaPGmPsrnM/37N0DN0Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAt5X-0005uP-G3; Thu, 19 Sep 2019 09:50:59 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAt5T-0005u0-EQ
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 09:50:57 +0000
Received: by mail-ed1-x541.google.com with SMTP id p10so2636058edq.1
 for <linux-mediatek@lists.infradead.org>; Thu, 19 Sep 2019 02:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x+n4lCgot+6z/yJEq2Koj577geXvlfzM3+LhYlkJWVM=;
 b=OGuAwxmvSGPKJmnOcso5b85IhrbgLEB6QX1KBeNjwAvwa1dHCD7QQqIkfaJEo4gzO2
 DR+AS0p7lwwNdZ1hoAqr9wgaU7mUJPRlPfn+3j0op/gIKCrSVmMje6zQsUJop+mwpo4Q
 sCQRzeHlg2GYwYg6ig64Gz/6H+VLsLoMIGqEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x+n4lCgot+6z/yJEq2Koj577geXvlfzM3+LhYlkJWVM=;
 b=BORgTe3AGC0+5ZfBoX20OWGQ2LzLk13xFrv+iEpt7jDZ3Jvw+Iko5JKttGsn0XiJUH
 +fQgNDeP8FP0ljCy/o5AGbwzNL6EA6sQD86uzGrX2KLqPS7BEnsfA4KGptypvc2eis/X
 WmCx+4ZKuw/DXKmprE5Z57qTChcP40B0nSR7D+m2fAqHy/9WeZ2m46a1aA0x6c7kzYmV
 x2FU8ALmGCsCWQm4Eosmt8SnTGcWa2IHUWBqd5e2xUeF/AEqw9DlQMgAgzfJdTU6Qap0
 ZwY1+zY5+Qt3gddJ39Wve5KoyYiNC6ehJQZJbupME627IAw/Jpu3oAtnjzSIiG9Sh7La
 VQeQ==
X-Gm-Message-State: APjAAAUpe3ZeW5Ecp7GAlqOyhr87WqAdvsAiSkz6Q1Cr3kjjHjPo5Yui
 wjYarSRFyA5y30LRvqOhlXVzCVQfVM9Ojg==
X-Google-Smtp-Source: APXvYqxFCjxCLVBV/EGt5RyFbgORNA4vbuJb7d2rh4rWecYFZuOK1zNSPRaUdLiFkY7ymdeQBvfmow==
X-Received: by 2002:a17:906:34d0:: with SMTP id
 h16mr5873558ejb.190.1568886653310; 
 Thu, 19 Sep 2019 02:50:53 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id d2sm1548294eda.20.2019.09.19.02.50.53
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 02:50:53 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id y21so3207198wmi.0
 for <linux-mediatek@lists.infradead.org>; Thu, 19 Sep 2019 02:50:53 -0700 (PDT)
X-Received: by 2002:a7b:c956:: with SMTP id i22mr2184516wml.90.1568886289132; 
 Thu, 19 Sep 2019 02:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
 <20190909192244.9367-5-frederic.chen@mediatek.com>
 <CAAFQd5DEn_N26M7B4X7fKHVA=XBtWJN=Y4VF7D9B=TkgXf_i+Q@mail.gmail.com>
 <1568223671.19171.12.camel@mtksdccf07>
 <CAAFQd5Cd2-dyQnMEy0LBwaajn7UfzEbHiJp7AkDy=T8Zy6t_=A@mail.gmail.com>
 <1568886066.19171.16.camel@mtksdccf07>
In-Reply-To: <1568886066.19171.16.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 19 Sep 2019 18:44:37 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DL9NjNFFiEUxWL-D3o_BNakx70fQym4bOST+wjm75ZkQ@mail.gmail.com>
Message-ID: <CAAFQd5DL9NjNFFiEUxWL-D3o_BNakx70fQym4bOST+wjm75ZkQ@mail.gmail.com>
Subject: Re: [RFC PATCH V3 4/5] platform: mtk-isp: Add Mediatek DIP driver
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_025055_496949_EF482B80 
X-CRM114-Status: GOOD (  33.05  )
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

On Thu, Sep 19, 2019 at 6:41 PM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Dear Tomasz,
>
>
> On Thu, 2019-09-12 at 14:58 +0900, Tomasz Figa wrote:
> > On Thu, Sep 12, 2019 at 2:41 AM Frederic Chen
> > <frederic.chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > I appreciate your helpful comments.
> > >
> > >
> > > On Tue, 2019-09-10 at 13:04 +0900, Tomasz Figa wrote:
> > > > Hi Frederic,
> > > >
> > > > On Tue, Sep 10, 2019 at 4:23 AM <frederic.chen@mediatek.com> wrote:
> > > > >
> > > > > From: Frederic Chen <frederic.chen@mediatek.com>
> > > > >
> > > > > This patch adds the driver of Digital Image Processing (DIP)
> > > > > unit in Mediatek ISP system, providing image format
> > > > > conversion, resizing, and rotation features.
> > > > >
> > > > > The mtk-isp directory will contain drivers for multiple IP
> > > > > blocks found in Mediatek ISP system. It will include ISP
> > > > > Pass 1 driver(CAM), sensor interface driver, DIP driver and
> > > > > face detection driver.
> > > > >
> > > > > Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> > > > > ---
> > > > >  drivers/media/platform/mtk-isp/Makefile       |    7 +
> > > > >  .../media/platform/mtk-isp/isp_50/Makefile    |    7 +
> > > > >  .../platform/mtk-isp/isp_50/dip/Makefile      |   18 +
> > > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.c |  650 +++++
> > > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.h |  566 +++++
> > > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-hw.h  |  156 ++
> > > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-sys.c |  521 ++++
> > > > >  .../mtk-isp/isp_50/dip/mtk_dip-v4l2.c         | 2255 +++++++++++++++++
> > > > >  8 files changed, 4180 insertions(+)
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/Makefile
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/Makefile
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.c
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.h
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-hw.h
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-v4l2.c
> > > > >
> > > >
> > > > Thanks for sending v3!
> > > >
> > > > I'm going to do a full review a bit later, but please check one
> > > > comment about power handling below.
> > > >
> > > > Other than that one comment, from a quick look, I think we only have a
> > > > number of style issues left. Thanks for the hard work!
> > > >
> > > > [snip]
> > > > > +static void dip_runner_func(struct work_struct *work)
> > > > > +{
> > > > > +       struct mtk_dip_request *req = mtk_dip_hw_mdp_work_to_req(work);
> > > > > +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> > > > > +       struct img_config *config_data =
> > > > > +               (struct img_config *)req->working_buf->config_data.vaddr;
> > > > > +
> > > > > +       /*
> > > > > +        * Call MDP/GCE API to do HW excecution
> > > > > +        * Pass the framejob to MDP driver
> > > > > +        */
> > > > > +       pm_runtime_get_sync(dip_dev->dev);
> > > > > +       mdp_cmdq_sendtask(dip_dev->mdp_pdev, config_data,
> > > > > +                         &req->img_fparam.frameparam, NULL, false,
> > > > > +                         dip_mdp_cb_func, req);
> > > > > +}
> > > > [snip]
> > > > > +static void dip_composer_workfunc(struct work_struct *work)
> > > > > +{
> > > > > +       struct mtk_dip_request *req = mtk_dip_hw_fw_work_to_req(work);
> > > > > +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> > > > > +       struct img_ipi_param ipi_param;
> > > > > +       struct mtk_dip_hw_subframe *buf;
> > > > > +       int ret;
> > > > > +
> > > > > +       down(&dip_dev->sem);
> > > > > +
> > > > > +       buf = mtk_dip_hw_working_buf_alloc(req->dip_pipe->dip_dev);
> > > > > +       if (!buf) {
> > > > > +               dev_err(req->dip_pipe->dip_dev->dev,
> > > > > +                       "%s:%s:req(%p): no free working buffer available\n",
> > > > > +                       __func__, req->dip_pipe->desc->name, req);
> > > > > +       }
> > > > > +
> > > > > +       req->working_buf = buf;
> > > > > +       mtk_dip_wbuf_to_ipi_img_addr(&req->img_fparam.frameparam.subfrm_data,
> > > > > +                                    &buf->buffer);
> > > > > +       memset(buf->buffer.vaddr, 0, DIP_SUB_FRM_SZ);
> > > > > +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.config_data,
> > > > > +                                       &buf->config_data);
> > > > > +       memset(buf->config_data.vaddr, 0, DIP_COMP_SZ);
> > > > > +
> > > > > +       if (!req->img_fparam.frameparam.tuning_data.present) {
> > > > > +               /*
> > > > > +                * When user enqueued without tuning buffer,
> > > > > +                * it would use driver internal buffer.
> > > > > +                */
> > > > > +               dev_dbg(dip_dev->dev,
> > > > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > > > +                       __func__, req->img_fparam.frameparam.frame_no);
> > > > > +
> > > > > +               mtk_dip_wbuf_to_ipi_tuning_addr
> > > > > +                               (&req->img_fparam.frameparam.tuning_data,
> > > > > +                                &buf->tuning_buf);
> > > > > +               memset(buf->tuning_buf.vaddr, 0, DIP_TUNING_SZ);
> > > > > +       }
> > > > > +
> > > > > +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.self_data,
> > > > > +                                       &buf->frameparam);
> > > > > +       memcpy(buf->frameparam.vaddr, &req->img_fparam.frameparam,
> > > > > +              sizeof(req->img_fparam.frameparam));
> > > > > +       ipi_param.usage = IMG_IPI_FRAME;
> > > > > +       ipi_param.frm_param.handle = req->id;
> > > > > +       ipi_param.frm_param.scp_addr = (u32)buf->frameparam.scp_daddr;
> > > > > +
> > > > > +       mutex_lock(&dip_dev->hw_op_lock);
> > > > > +       atomic_inc(&dip_dev->num_composing);
> > > > > +       ret = scp_ipi_send(dip_dev->scp_pdev, SCP_IPI_DIP, &ipi_param,
> > > > > +                          sizeof(ipi_param), 0);
> > > >
> > > > We're not holding the pm_runtime enable count here
> > > > (pm_runtime_get_sync() wasn't called), so rproc_shutdown() might have
> > > > been called. Wouldn't that affect the ability for this IPI to run?
> > > >
> > > > We had a related discussion with Jerry on the FD series and I think
> > > > the conclusion is:
> > > > a) if there is any state that needs to be preserved between jobs, that
> > > > would be cleared by rproc_shutdown() then we need to call
> > > > rproc_boot/shutdown() when we start/stop streaming.
> > > > b) it there is no such state, we can keep them inside runtime PM
> > > > callbacks, but we need to call pm_runtime_get_sync() before sending an
> > > > IPI and pm_runtime_mark_last_busy() + pm_runtime_put_autosuspend()
> > > > after the SCP signals completion. In this case the runtime PM
> > > > autosuspend delay should be set to around 2-3 times the delay needed
> > > > for rproc_shutdown() + rproc_boot() to complete.
> > >
> > > Since each IMG_IPI_FRAME command is stateless, I would like to
> > > use pm_runtime_get_sync()/ pm_runtime_mark_last_busy()/
> > > pm_runtime_put_autosuspend() to fix this issue (solution b).
> >
> > What does IMG_IPI_INIT do then? Do we need it at all?
> >
> > I'm worried about the fact that we call rproc_boot(), IMG_IPI_INIT and
> > then rproc_shutdown(). The latter can completely shutdown the SCP and
> > clear any state there. How would the effects of IMG_IPI_INIT be
> > preserved until IMG_IPI_FRAME is called?
> >
>
> The command IMG_IPI_INIT is to initialize the DIP hardware. Although the
> DIP hardware status is not cleared when SCP is powered off, it can still
> be cleared after mtk_dip_runtime_suspend() is called (it means that DIP
> is going to be powered off).

Great, that's exactly what I wanted to confirm. Thanks. :)

>
> I would like to re-initialize the DIP with IMG_IPI_INIT in
> mtk_dip_runtime_resume() to handle this case. Is is OK?
>

Makes sense.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
