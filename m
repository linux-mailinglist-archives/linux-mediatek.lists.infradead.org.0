Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AF1A795A
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Sep 2019 05:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kS+HwNUKSkgIa/nACOAd80WR1FqVq2c+EK99S6pIf0A=; b=CrV3a3gk+ay6Pd
	ojQcbVSRov8AXSUD1iNrExd4fudrf9B1kaqrC2uaXN1HFxfi2INhJ2HwDzpyMMGEYv2lpqJEhGwuK
	xijSbuBNL2T40St6ASQ2QUPSlo+4k8P/cRlnj2k4L/CEY7Zzg3gVIzqTTepFhgiSWeIVzq1ANpv65
	5DrsochN3g07BU6Gowh2cJx6FZSv/iLmh9Jlx5L5/tPF7MseZ/QWxnSP21QtwKAh+slF+9Umd4mvd
	uwVzun4rS/qHg2J6//KPfyB731tJn9pCfu0owqiaVtAFH2X+omSGdGfveD/xwDQRU8wt3RRqPFQzd
	jSuAl9tGc0X8BEsmVgSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5M7h-00087k-4r; Wed, 04 Sep 2019 03:38:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5M7c-00087K-OW; Wed, 04 Sep 2019 03:38:18 +0000
X-UUID: bfba9cbb55ca44e0a307c1e4c03a0e68-20190903
X-UUID: bfba9cbb55ca44e0a307c1e4c03a0e68-20190903
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1218975379; Tue, 03 Sep 2019 19:38:11 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 20:38:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 11:38:01 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 11:38:01 +0800
Message-ID: <1567568281.18318.80.camel@mtksdccf07>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 4 Sep 2019 11:38:01 +0800
In-Reply-To: <CAAFQd5DiPcUxd+R-v_-BdRx+QqZ35Riii_jpgbqr5mc3BnQvDw@mail.gmail.com>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org>
 <1566724680.20680.8.camel@mtksdccf07>
 <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
 <1566957625.20680.33.camel@mtksdccf07>
 <CAAFQd5D-Yg1FjUE_rwmqfS1gvfE0=MZ=r-ziueU_37-uo9QTbw@mail.gmail.com>
 <1567424859.18318.32.camel@mtksdccf07>
 <CAAFQd5AGgeFbto6V1KkL0dp1QPziOKV3pWQDU2OJ+S1QKvnBdg@mail.gmail.com>
 <1567493081.18318.49.camel@mtksdccf07>
 <CAAFQd5DWM=R7sFHYGhhR_rXrzgRnc4xtH_t8Pig-4tcP9KTSYg@mail.gmail.com>
 <1567511169.18318.65.camel@mtksdccf07>
 <CAAFQd5DiPcUxd+R-v_-BdRx+QqZ35Riii_jpgbqr5mc3BnQvDw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_203816_808167_23C2881F 
X-CRM114-Status: GOOD (  35.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>, "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Po-Yang Huang =?UTF-8?Q?=28=E9=BB=83=E6=9F=8F=E9=99=BD=29?=
 <po-yang.huang@mediatek.com>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Tomasz,

On Tue, 2019-09-03 at 20:05 +0800, Tomasz Figa wrote:
> On Tue, Sep 3, 2019 at 8:46 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Tue, 2019-09-03 at 15:04 +0800, Tomasz Figa wrote:
> > > On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > >
> > > > On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > > > > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > >
> > > > > > Hi Tomasz,
> > > > > >
> > > > > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > >
> > > > > > > > Hi Tomasz,
> > > > > > > >
> > > > > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > > > > Hi Jerry,
> > > > > > > > >
> > > > > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > >
> > > > > > > > > > Hi Tomasz,
> > > > > > > > > >
> > > > > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > > > > Hi Jerry,
> > > > > > > > > > >
> > > > > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
[snip]
> > > > > > > > > [snip]
> > > > > > > > >
> > > > > > > > > > > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > > > > > > +{
> > > > > > > > > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > > > > > > +   struct vb2_buffer *vb;
> > > > > > > > > > >
> > > > > > > > > > > How do we guarantee here that the hardware isn't still accessing the buffers
> > > > > > > > > > > removed below?
> > > > > > > > > > >
> > > > > > > > > > Maybe we can check the driver state flag and aborting the unfinished
> > > > > > > > > > jobs?
> > > > > > > > > > (fd_hw->state == FD_ENQ)
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Yes, we need to either cancel or wait for the currently processing
> > > > > > > > > job. It depends on hardware capabilities, but cancelling is generally
> > > > > > > > > preferred for the lower latency.
> > > > > > > > >
> > > > > > > > Ok, it the state is ENQ, then we can disable the FD hw by controlling
> > > > > > > > the registers.
> > > > > > > >
> > > > > > > > for example:
> > > > > > > >         writel(0x0, fd->fd_base + FD_HW_ENABLE);
> > > > > > > >         writel(0x0, fd->fd_base + FD_INT_EN);
> > > > > > > >
> > > > > > >
> > > > > > > What's exactly the effect of writing 0 to FD_HW_ENABLE?
> > > > > > >
> > > > > > Sorry, my last reply didn't solve the question,
> > > > > > we should implement a mtk_fd_job_abort() for v4l2_m2m_ops().
> > > > > >
> > > > > > which is able to readl_poll_timeout_atomic()
> > > > > > and check the HW busy bits in the register FD_INT_EN;
> > > > > >
> > > > > > if they are not cleared until timeout, we could handle the last
> > > > > > processing job.
> > > > > > Otherwise, the FD irq handler should have handled the last processing
> > > > > > job and we could continue the stop_streaming().
> > > > > >
> > > > > > For job_abort():
> > > > > > static void mtk_fd_job_abort(void *priv)
> > > > > > {
> > > > > >         struct mtk_fd_ctx *ctx = priv;
> > > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > > >         u32 val;
> > > > > >         u32 ret;
> > > > > >
> > > > > >         ret = readl_poll_timeout_atomic(fd->fd_base + MTK_FD_REG_OFFSET_INT_EN,
> > > > > >                                         val,
> > > > > >                                         (val & MTK_FD_HW_BUSY_MASK) ==
> > > > > >                                         MTK_FD_HW_STATE_IS_BUSY,
> > > > > >                                         USEC_PER_MSEC, MTK_FD_STOP_HW_TIMEOUT);
> > > > >
> > > > > Hmm, would it be possible to avoid the busy wait by having a
> > > > > completion that could be signalled from the interrupt handler?
> > > > >
> > > > > Best regards,
> > > > > Tomasz
> > > >
> > > > I suppose that would be wakeup a wait queue in the interrupt handler,
> > > > the the wait_event_interrupt_timeout() will be used in here and system
> > > > suspend e.g. mtk_fd_suspend().
> > >
> > > Yes, that should work.
> > >
> > > > Or do you suggest to wait_event_interrupt_timeout() every frame in the
> > > > mtk_fd_ipi_handler()?
> > >
> > > Nope, we shouldn't need that.
> > >
> > > > I think maybe the readl_poll_timeout_atomic would be good enough.
> > > >
> > >
> > > Not really. Busy waiting should be avoided as much as possible. What's
> > > the point of entering suspend if you end up burning the power by
> > > spinning the CPU for some milliseconds?
> > >
> > Ok, I see, busy waiting is not a good idea, I will use the wait queue
> > instead. the job abort will refine as following:
> >
> > static void mtk_fd_job_abort(void *priv)
> > {
> >         struct mtk_fd_ctx *ctx = priv;
> >         struct mtk_fd_dev *fd = ctx->fd_dev;
> >         u32 ret;
> >
> >         ret = wait_event_interruptible_timeout
> >                 (fd->wq, (fd->fd_irq_result & MTK_FD_HW_IRQ_MASK),
> >                  usecs_to_jiffies(50000));
> >         if (ret)
> >                 mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
> >         dev_dbg(fd->dev, "%s, ret:%d\n", __func__, ret);
> >
> >         fd->fd_irq_result = 0;
> > }
> >
> > static struct v4l2_m2m_ops fd_m2m_ops = {
> >         .device_run = mtk_fd_device_run,
> >         .job_abort = mtk_fd_job_abort,
> 
> I'm not sure we should be using the functon above as the .job_abort
> callback. It's expected to abort the job, but we're just waiting for
> it to finish. I think we should just call mtk_fd_job_abort() manually
> from .stop_streaming.
> 

Ok, I will fix it.

> > };
> >
> > and we could use it in suspend.
> > static int mtk_fd_suspend(struct device *dev)
> > {
> >         struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> >
> >         if (pm_runtime_suspended(dev))
> >                 return 0;
> >
> >         if (fd->fd_stream_count)
> >                 mtk_fd_job_abort(fd->ctx);
> >
> >         /* suspend FD HW */
> >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> >         clk_disable_unprepare(fd->fd_clk);
> >         dev_dbg(dev, "%s:disable clock\n", __func__);
> >
> >         return 0;
> > }
> >
> > static irqreturn_t mtk_fd_irq(int irq, void *data)
> > {
> >         struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;
> >
> >         fd->fd_irq_result = readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
> >         wake_up_interruptible(&fd->wq);
> 
> The wake up should be done at the very end of this function. Otherwise
> we end up with m2m framework racing with the mtk_fd_hw_job_finish()
> below.
> 
> Also, I'd use a completion here rather than an open coded wait and
> wake-up. The driver could reinit_completion() before queuing a job to
> the hardware and the IRQ handler would complete(). There would be no
> need to store the IRQ flags in driver data anymore.
Ok, It will be refined as following:

suspend and stop streaming will call mtk_fd_job_abort()

static void mtk_fd_job_abort(struct mtk_fd_dev *fd)
{
	u32 ret;

	ret = wait_for_completion_timeout(&fd->fd_irq_done,
					  msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
	if (ret)
		mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
}

complete at irq handler

static irqreturn_t mtk_fd_irq(int irq, void *data)
{
	struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;

	/* must read this register otherwise HW will keep sending irq */
	readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
	fd->output->number = readl(fd->fd_base + MTK_FD_REG_OFFSET_RESULT);
	dev_dbg(fd->dev, "mtk_fd_face_num:%d\n", fd->output->number);

	pm_runtime_put((fd->dev));
	mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_DONE);
	complete(&fd->fd_irq_done);
	return IRQ_HANDLED;
}

and reinit_completion before time before sending a job to HW

static int mtk_fd_hw_job_exec(struct mtk_fd_dev *fd,
			      struct fd_enq_param *fd_param)
{
	struct ipi_message fd_ipi_msg;
	int ret;

	pm_runtime_get_sync((fd->dev));

	reinit_completion(&fd->fd_irq_done);
	fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_ENQUEUE;
	memcpy(&fd_ipi_msg.fd_enq_param, fd_param, sizeof(struct
fd_enq_param));
	ret = scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
			   sizeof(fd_ipi_msg), MTK_FD_IPI_SEND_TIMEOUT);
	if (ret) {
		pm_runtime_put((fd->dev));
		mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
		return ret;
	}
	return 0;
}

> 
> >         fd->output->number = readl(fd->fd_base + MTK_FD_REG_OFFSET_RESULT);
> >         dev_dbg(fd->dev, "mtk_fd_face_num:%d\n", fd->output->number);
> >
> >         pm_runtime_put((fd->dev));
> >         mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_DONE);
> >         return IRQ_HANDLED;
> > }
> > > >
> > > > One more thing, for the mtk_fd_video_device_register()
> > > > Sorry that I would need to use intermediate variable here since the 80
> > > > columns check.
> > > >
> > > >         function = MEDIA_ENT_F_PROC_VIDEO_STATISTICS;
> > > >         ret = v4l2_m2m_register_media_controller(m2m_dev, vfd, function);
> > >
> > > Why not just make it like this:
> > >
> > > ret = v4l2_m2m_register_media_controller(m2m_dev,
> > >                 MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
> > >
> > > The above line is aligned using tabs so that its end is as close to
> > > the 80 character boundary as possible.
> > >
> > I tried but the checkpatch script still gave me a check saying align to
> > the scope, I will refine as following:
> >
> >         ret = v4l2_m2m_register_media_controller
> >                 (m2m_dev, vfd, MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
> 
> Please ignore that checkpatch warning, it sometimes gives false
> positives. The above looks clearly worse and less consistent with
> kernel coding style than what I suggested.
> 
Ok, I see, I will fix it.

Thanks and best regards,
Jerry

> Best regards,
> Tomasz



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
