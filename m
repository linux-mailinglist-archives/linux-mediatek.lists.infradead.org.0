Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5218182F00
	for <lists+linux-mediatek@lfdr.de>; Tue,  6 Aug 2019 11:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pE+Wd9HulED75KXmZQuIqWMux5iGg2pchASwJ1rIBE=; b=RebtjM+1Pl3xFw
	Y2+kjqTPlRUS6eA/wyt6DKUHfCe5o/8TttNnCPi3MwGa++Sl1onR5kUFRsKCphmXBy8jGZL7xGOaH
	kAQBW8TVjJ7FS8etW16NoHQV/GxdfIbLvKz2ACNTUWKf7pVmJkY7APlcmhPqP1ZhZIMnSPxO0d+lJ
	i/3JkbCiq6aomtVZrCcJzoOM2T9TJy8xmeufZTfhU31J12lsHYSVnuFHGt9V71pYRwhlVpsQgDqz8
	Wie572wKuyWnRkuui7pE4wty9/pNm3wrFZ98W2pTBxDmWY1SYATXoZrV/Arj0kbgkHk25SEMtysu0
	0yw7+fG4xmmkHMLbzmig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huw4d-0006DQ-QO; Tue, 06 Aug 2019 09:48:07 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huw4I-0005ye-Mw
 for linux-mediatek@lists.infradead.org; Tue, 06 Aug 2019 09:47:49 +0000
Received: by mail-ed1-x533.google.com with SMTP id w13so81793856eds.4
 for <linux-mediatek@lists.infradead.org>; Tue, 06 Aug 2019 02:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YnDklnDxsMdy8TqPu3IT9ws5xouvgwzZjnezqbD7QlM=;
 b=H1aHGlaZVYvu7UI97XYzm8cHhGAMzU0x37vjFAHRL1+zL2htGbVZTNX9qMNUsmQ6hp
 qWn5rMNL7TSsmtEslGlK1H/1Rca+IgzA5MF33ehs9/0Kg8RxhJsFoVLiWQ210LB4g7Tj
 Zwk5OuDiQC0uDQfArsC9eAHXb77uVMegLPmd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YnDklnDxsMdy8TqPu3IT9ws5xouvgwzZjnezqbD7QlM=;
 b=e96pAnogCj7l1i74jhqHdoouIeyCOYHCPh8s2Qq0H1T/YUdPNl010yN0leC9327N3g
 d5x36nstsqeIFDzELRN2Qlu/4uo8As4X5Exdids4VmEC862aX3jC8ut4NqDyLD5AaIGS
 dZkFyeezq2lIGROQYMfR1zF3Zinez+g4dyz+efi9ImJGi79220h1Sd2X+rWb7QkEsx8N
 UgxYAwQNnhQnVGjtW0RAvwooOKtcMkVKLNx5ELi7FOrMc8vMFnuxVBN/y99hw/sNXqwq
 wj6H9r5mYX1emPeJW6l988Ypus6MfGQ/c5b/o8fQZG1NjORntFXOsxuJ7T+awbi5fohw
 nLDA==
X-Gm-Message-State: APjAAAXkebVf97u81+qFz/hJkr6EkLKdGXIiHX3Mm+K3Fh+lAy6pUUsi
 Gtv2cFq/DI1vSz8uj+4s4XdLVjBiJjzF7A==
X-Google-Smtp-Source: APXvYqxGR5mKHmU3B4RK650CBtRrf83he8zkM+WVJ5QaEzyQJAjpY05s70IXgU6fi587+qs4X7moQg==
X-Received: by 2002:a17:906:19cc:: with SMTP id
 h12mr2254373ejd.304.1565084862757; 
 Tue, 06 Aug 2019 02:47:42 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id w14sm20569142eda.69.2019.08.06.02.47.41
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 02:47:41 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id n9so87338283wru.0
 for <linux-mediatek@lists.infradead.org>; Tue, 06 Aug 2019 02:47:41 -0700 (PDT)
X-Received: by 2002:adf:ed41:: with SMTP id u1mr3538569wro.162.1565084861063; 
 Tue, 06 Aug 2019 02:47:41 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-8-jungo.lin@mediatek.com>
 <20190710095646.GB181405@chromium.org>
 <1563616681.1212.386.camel@mtksdccf07>
 <CAAFQd5AmAXm1T0eLPiUTFLv9qiKxe-wZGyXxk0jvge+EanZ3FQ@mail.gmail.com>
 <1564125828.1212.600.camel@mtksdccf07>
In-Reply-To: <1564125828.1212.600.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 6 Aug 2019 18:47:28 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D5m=gGViSY++r5uUS1+91y9=Gpcss1dEXrin_T07H+uQ@mail.gmail.com>
Message-ID: <CAAFQd5D5m=gGViSY++r5uUS1+91y9=Gpcss1dEXrin_T07H+uQ@mail.gmail.com>
Subject: Re: [RFC,v3 7/9] media: platform: Add Mediatek ISP P1 device driver
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_024746_755196_1C168839 
X-CRM114-Status: GOOD (  33.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, ddavenport@chromium.org,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jungo,

On Fri, Jul 26, 2019 at 4:24 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi, Tomasz:
>
> On Thu, 2019-07-25 at 18:23 +0900, Tomasz Figa wrote:
> > .Hi Jungo,
> >
> > On Sat, Jul 20, 2019 at 6:58 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > >
> > > Hi, Tomasz:
> > >
> > > On Wed, 2019-07-10 at 18:56 +0900, Tomasz Figa wrote:
> > > > Hi Jungo,
> > > >
> > > > On Tue, Jun 11, 2019 at 11:53:42AM +0800, Jungo Lin wrote:
[snip]
> > > > > +
> > > > > +   err_status = irq_status & INT_ST_MASK_CAM_ERR;
> > > > > +
> > > > > +   /* Sof, done order check */
> > > > > +   if ((irq_status & SOF_INT_ST) && (irq_status & HW_PASS1_DON_ST)) {
> > > > > +           dev_dbg(dev, "sof_done block cnt:%d\n", isp_dev->sof_count);
> > > > > +
> > > > > +           /* Notify IRQ event and enqueue frame */
> > > > > +           irq_handle_notify_event(isp_dev, irq_status, dma_status, 0);
> > > > > +           isp_dev->current_frame = hw_frame_num;
> > > >
> > > > What exactly is hw_frame_num? Shouldn't we assign it before notifying the
> > > > event?
> > > >
> > >
> > > This is a another spare register for frame sequence number usage.
> > > It comes from struct p1_frame_param:frame_seq_no which is sent by
> > > SCP_ISP_FRAME IPI command. We will rename this to dequeue_frame_seq_no.
> > > Is it a better understanding?
> >
> > I'm sorry, unfortunately it's still not clear to me. Is it the
> > sequence number of the frame that was just processed and returned to
> > the kernel or the next frame that is going to be processed from now
> > on?
> >
>
> It is the next frame that is going to be proceed.
> We simplify the implementation of isp_irq_cam function. The hw_frame_num
> is renamed to dequeue_frame_seq_no and saved this value from HW at
> SOF_INT_ST. Since it is obtained in SOF_INI_ST event, it means it is
> next frame to be processed. If there is SW_PASS1_DON_ST, it means this
> frame is processed done. We use this value to de-queue the frame request
> and return buffers to VB2.
>
> The normal IRQ sequence is SOF_INT_ST => SW_PASS1_DON_ST &
> HW_PASS1_DON_ST.
>
> a. SW_PASS_DON_ST is designed for DMAs done event.
> If there is no available DMA buffers en-queued into HW, there is no
> SW_PADD_DON_ST.
>
> b. HW_PASS_DON_ST is designed to trigger CQ buffer load procedure.
> It is paired with SOF IRQ event, even if there is no available DMA
> buffers.
>
> static void isp_irq_handle_sof(struct mtk_isp_p1_device *p1_dev,
>                                unsigned int dequeue_frame_seq_no)
> {
>         dma_addr_t base_addr = p1_dev->composer_iova;
>         int composed_frame_seq_no =
> atomic_read(&p1_dev->composed_frame_seq_no);
>         unsigned int addr_offset;
>
>         /* Send V4L2_EVENT_FRAME_SYNC event */
>         mtk_cam_dev_event_frame_sync(&p1_dev->cam_dev, dequeue_frame_seq_no);
>
>         p1_dev->sof_count += 1;
>         /* Save dequeue frame information */
>         p1_dev->dequeue_frame_seq_no = dequeue_frame_seq_no;
>
>         /* Update CQ base address if needed */
>         if (composed_frame_seq_no <= dequeue_frame_seq_no) {
>                 dev_dbg(p1_dev->dev,
>                         "SOF_INT_ST, no update, cq_num:%d, frame_seq:%d",
>                         composed_frame_seq_no, dequeue_frame_seq_no);
>                 return;
>         }
>         addr_offset = MTK_ISP_CQ_ADDRESS_OFFSET *
>                 (dequeue_frame_seq_no % MTK_ISP_CQ_BUFFER_COUNT);
>         writel(base_addr + addr_offset, p1_dev->regs + REG_CQ_THR0_BASEADDR);
>         dev_dbg(p1_dev->dev,
>                 "SOF_INT_ST, update next, cq_num:%d, frame_seq:%d cq_addr:0x%x",
>                 composed_frame_seq_no, dequeue_frame_seq_no, addr_offset);
> }
>
> void mtk_cam_dev_dequeue_req_frame(struct mtk_cam_dev *cam,
>                                    unsigned int frame_seq_no)
> {
>         struct mtk_cam_dev_request *req, *req_prev;
>         unsigned long flags;
>
>         spin_lock_irqsave(&cam->running_job_lock, flags);
>         list_for_each_entry_safe(req, req_prev, &cam->running_job_list, list) {
>                 dev_dbg(cam->dev, "frame_seq:%d, de-queue frame_seq:%d\n",
>                         req->frame_params.frame_seq_no, frame_seq_no);
>
>                 /* Match by the en-queued request number */
>                 if (req->frame_params.frame_seq_no == frame_seq_no) {
>                         atomic_dec(&cam->running_job_count);
>                         /* Pass to user space */
>                         mtk_cam_dev_job_done(cam, req, VB2_BUF_STATE_DONE);
>                         list_del(&req->list);
>                         break;
>                 } else if (req->frame_params.frame_seq_no < frame_seq_no) {
>                         atomic_dec(&cam->running_job_count);
>                         /* Pass to user space for frame drop */
>                         mtk_cam_dev_job_done(cam, req, VB2_BUF_STATE_ERROR);
>                         dev_warn(cam->dev, "frame_seq:%d drop\n",
>                                  req->frame_params.frame_seq_no);
>                         list_del(&req->list);
>                 } else {
>                         break;
>                 }
>         }
>         spin_unlock_irqrestore(&cam->running_job_lock, flags);
>
> static irqreturn_t isp_irq_cam(int irq, void *data)
> {
>         struct mtk_isp_p1_device *p1_dev = (struct mtk_isp_p1_device *)data;
>         struct device *dev = p1_dev->dev;
>         unsigned int dequeue_frame_seq_no;
>         unsigned int irq_status, err_status, dma_status;
>         unsigned long flags;
>
>         spin_lock_irqsave(&p1_dev->spinlock_irq, flags);
>         irq_status = readl(p1_dev->regs + REG_CTL_RAW_INT_STAT);
>         err_status = irq_status & INT_ST_MASK_CAM_ERR;
>         dma_status = readl(p1_dev->regs + REG_CTL_RAW_INT2_STAT);
>         dequeue_frame_seq_no = readl(p1_dev->regs + REG_FRAME_SEQ_NUM);
>         spin_unlock_irqrestore(&p1_dev->spinlock_irq, flags);
>
>         /*
>          * In normal case, the next SOF ISR should come after HW PASS1 DONE
> ISR.
>          * If these two ISRs come together, print warning msg to hint.
>          */
>         if ((irq_status & SOF_INT_ST) && (irq_status & HW_PASS1_DON_ST))
>                 dev_warn(dev, "sof_done block cnt:%d\n", p1_dev->sof_count);
>
>         /* De-queue frame */
>         if (irq_status & SW_PASS1_DON_ST) {
>                 mtk_cam_dev_dequeue_req_frame(&p1_dev->cam_dev,
>                                               dequeue_frame_seq_no);
>                 mtk_cam_dev_req_try_queue(&p1_dev->cam_dev);
>         }
>
>         /* Save frame info. & update CQ address for frame HW en-queue */
>         if (irq_status & SOF_INT_ST)
>                 isp_irq_handle_sof(p1_dev, dequeue_frame_seq_no);
>
>         /* Check ISP error status */
>         if (err_status) {
>                 dev_err(dev, "int_err:0x%x 0x%x\n", irq_status, err_status);
>                 /* Show DMA errors in detail */
>                 if (err_status & DMA_ERR_ST)
>                         isp_irq_handle_dma_err(p1_dev);
>         }
>
>         dev_dbg(dev, "SOF:%d irq:0x%x, dma:0x%x, frame_num:%d",
>                 p1_dev->sof_count, irq_status, dma_status,
>                 dequeue_frame_seq_no);
>
>         return IRQ_HANDLED;
> }

I think I understand this now and the code above also looks good to
me. Thanks a lot!

>
> > >
> > > Below is our frame request handling in current design.
> > >
> > > 1. Buffer preparation
> > > - Combined image buffers (IMGO/RRZO) + meta input buffer (Tuining) +
> > > other meta histogram buffers (LCSO/LMVO) into one request.
> > > - Accumulated one unique frame sequence number to each request and send
> > > this request to the SCP composer to compose CQ (Command queue) buffer
> > > via SCP_ISP_FRAME IPI command.
> > > - CQ buffer is frame registers set. If ISP registers should be updated
> > > per frame, these registers are configured in the CQ buffer, such as
> > > frame sequence number, DMA addresses and tuning ISP registers.
> > > - One frame request will be composed into one CQ buffer.Once CQ buffer
> > > is composed done and kernel driver will receive ISP_CMD_FRAME_ACK with
> > > its corresponding frame sequence number. Based on this, kernel driver
> > > knows which request is ready to be en-queued and save this with
> > > p1_dev->isp_ctx.composed_frame_id.
> >
> > Hmm, why do we need to save this in p1_dev->isp_ctx? Wouldn't we
> > already have a linked lists of requests that are composed and ready to
> > be enqueued? Also, the request itself would contain its frame ID
> > inside the driver request struct, right?
> >
>
> Below is current implementation for frame request en-queued.
> Before en-queued into HW by CQ, the request should be composed by SCP
> composer.
>
> a. mtk_cam_dev_req_try_queue()
> - Insert the request into p1_dev->running_job_list
> b. mtk_isp_req_enqueue()
> - Assign new next frame ID to this request.
> - Sending to SCP by workqueue
> - This request is ready to compose
> c. isp_tx_frame_worker()
> - Send request to SCP with sync. mode. by SCP_IPI_ISP_FRAME command
> - SCP composer will compose the buffer CQ for this request frame based
> on struct mtk_p1_frame_param which includes frame ID.
> - If scp_ipi_send() is returned, it means the request is composed done.
> Or
> d. isp_composer_handler()
> - If we received the ISP_CMD_FRAME_ACK for SCP_IPI_ISP_FRAME, we save
> the frame ID in p1_dev->composed_frame_seq_no which is sent in step C.
> - The request is composed done here.
> e. isp_irq_handle_sof()
> - In SOF timing, we will check there is any available composed CQ
> buffers by comparing composed & current de-queued frame ID.
>
> For p1_dev->running_job_list, we can't guarantee the requests are
> composed until the end of step c. For step e, we need to know how many
> available composed requests are ready to en-queued.
>
> Do you suggest we add another new link-list to save these requests in
> step c or we could update p1_dev->composed_frame_seq_no in step c and
> remove the implementation in step d[1]?

Okay, thanks to your explanation above I think I understood how the
hardware flow behaves and so I think we can indeed keep the
composed_frame_seq counter. Thanks!

>
> [1]. isp_composer_handler() is mandatory callback function for SCP
> sending API with sync mode design.
>
> static void isp_composer_handler(void *data, unsigned int len, void
> *priv)
> {
>         struct mtk_isp_p1_device *p1_dev = (struct mtk_isp_p1_device *)priv;
>         struct mtk_isp_scp_p1_cmd *ipi_msg;
>
>         ipi_msg = (struct mtk_isp_scp_p1_cmd *)data;
>
>         if (ipi_msg->cmd_id != ISP_CMD_ACK)
>                 return;
>
>         if (ipi_msg->ack_info.cmd_id == ISP_CMD_FRAME_ACK) {
>                 atomic_set(&p1_dev->composed_frame_seq_no,
>                            ipi_msg->ack_info.frame_seq_no);
>                 dev_dbg(p1_dev->dev, "ack frame_num:%d\n",
>                         p1_dev->composed_frame_seq_no);
>         }
> }
>
> > > - The maximum number of CQ buffers in SCP is 3.
> > >
> > > 2. Buffer en-queue flow
> > > - In order to configure correct CQ buffer setting before next SQF event,
> > > it is depended on by MTK ISP P1 HW CQ mechanism.
> > > - The basic concept of CQ mechanism is loaded ISP CQ buffer settings
> > > when HW_PASS1_DON_ST is received which means DMA output is done.
> > > - Btw, the pre-condition of this, need to tell ISP HW which CQ buffer
> > > address is used. Otherwise, it will loaded one dummy CQ buffer to
> > > bypass.
> > > - So we will check available CQ buffers by comparing composed frame
> > > sequence number & dequeued frame sequence from ISP HW in SOF event.
> > > - If there are available CQ buffers, update the CQ base address to the
> > > next CQ buffer address based on current de-enqueue frame sequence
> > > number. So MTK ISP P1 HW will load this CQ buffer into HW when
> > > HW_PASS1_DON_ST is triggered which is before the next SOF.
> > > - So in next SOF event, ISP HW starts to output DMA buffers with this
> > > request until request is done.
> > > - But, for the first request, it is loaded into HW manually when
> > > streaming is on for better performance.
> > >
> > > 3. Buffer de-queue flow
> > > - We will use frame sequence number to decide which request is ready to
> > > de-queue.
> > > - We will save some important register setting from ISP HW when SOF is
> > > received. This is because the ISP HW starts to output the data with the
> > > corresponding settings, especially frame sequence number setting.
> >
> > Could you explain a bit more about these important register settings?
> > When does the hardware update the values in the register to new ones?
> > At SOF?
> >
>
> Sorry about my words.
> In the current implementation, we just save frame ID.
>

Ah, okay, makes sense. No worries. :)

>
> > > - When receiving SW_PASS1_DON_ST IRQ event, it means the DMA output is
> > > done. So we could call isp_deque_request_frame with frame sequence
> > > number to de-queue frame to VB2
> >
> > What's the difference between HW_PASS1_DON_ST and SW_PASS1_DON_ST?
> >
>
> This is explained above.
>
> > > - For AAO/AFO buffers, it has similar design concept. Sometimes, if only
> > > AAO/AFO non-request buffers are en-queued without request buffers at the
> > > same time, there will be no SW P1 done event for AAO/AFO DMA done.
> > > Needs to depend on other IRQ events, such as AAO/AFO_DONE_EVENT.
> >
> > Do we have a case like this? Wouldn't we normally always want to
> > bundle AAO/AFO buffers with frame buffers?
> >
>
> For upstream driver, we will remove non-request design.
>

I think we also talked about a thing related to this in the thread for
another patch from this series. Basically on Chrome OS we want to use
the upstream driver, so corresponding userspace changes might be
needed as well.

> > > - Due to CQ buffer number limitation, if we receive SW_PASS1_DONT_ST,
> > > we may try to send another request to SCP for composing.
> >
> > Okay, so basically in SW_PASS1_DONT_ST the CQ completed reading the CQ
> > buffers, right?
> >
>
> We expected the the life cycle of CQ buffer is same as frame request.
> So SW_PASS1_DON_ST is good timing to re-queue the next request to
> compose.
> For the CQ operations, we will explain later.
>
> > >
> > > Hopefully, my explanation is helpful for better understanding our
> > > implementation. If you still have any questions, please let me know.
> > >
> >
> > Yes, it's more clear now, thanks. Still some more comments above, though.
> >
> > > > > +           isp_dev->meta0_vb2_index = meta0_vb2_index;
> > > > > +           isp_dev->meta1_vb2_index = meta1_vb2_index;
> > > > > +   } else {
> > > > > +           if (irq_status & SOF_INT_ST) {
> > > > > +                   isp_dev->current_frame = hw_frame_num;
> > > > > +                   isp_dev->meta0_vb2_index = meta0_vb2_index;
> > > > > +                   isp_dev->meta1_vb2_index = meta1_vb2_index;
> > > > > +           }
> > > > > +           irq_handle_notify_event(isp_dev, irq_status, dma_status, 1);
> > > > > +   }
> > > >
> > > > The if and else blocks do almost the same things just in different order. Is
> > > > it really expected?
> > > >
> > >
> > > If we receive HW_PASS1_DON_ST & SOF_INT_ST IRQ events at the same time,
> > > the correct sequence should be handle HW_PASS1_DON_ST firstly to check
> > > any de-queued frame and update the next frame setting later.
> > > Normally, this is a corner case or system performance issue.
> >
> > So it sounds like HW_PASS1_DON_ST means that all data from current
> > frame has been written, right? If I understand your explanation above
> > correctly, that would mean following handling of each interrupt:
> >
> > HW_PASS1_DON_ST:
> >  - CQ executes with next CQ buffer to prepare for next frame. <- how
> > is this handled? does the CQ hardware automatically receive this event
> > from the ISP hadware?
> >  - return VB2 buffers,
> >  - complete requests.
> >
> > SOF_INT_ST:
> >  - send VSYNC event to userspace,
> >  - program next CQ buffer to CQ,
> >
> > SW_PASS1_DON_ST:
> >  - reclaim CQ buffer and enqueue next frame to composing if available
> >
>
> Sorry for our implementation of HW_PASS1_DON_ST.
> It is confusing.
> Below is the revised version based on your conclusion.
> So in our new implemmenation, we just handle SOF_INT_ST &
> SW_PASS1_DON_ST events. We just add one warning message for
> HW_PASS1_DON_ST
>
> HW_PASS1_DON_ST:
> - CQ executes with next CQ buffer to prepare for next frame.
>
> SOF_INT_ST:
> - send VSYNC event to userspace,
> - program next CQ buffer to CQ,
>
> SW_PASS1_DON_ST:
> - reclaim CQ buffer and enqueue next frame to composing if available
> - return VB2 buffers,
> - complete requests.
>
> For CQ HW operations, it is listed below:
>
> a. The CQ buffer has two kinds of information
>  - Which ISP registers needs to be updated.
>  - Where the corresponding ISP register data to be read.
> b. The CQ buffer loading procedure is triggered by HW_PASS1_DONT_ST IRQ
> event periodically.
>  - Normally, if the ISP HW receives the completed frame and it will
> trigger W_PASS1_DONT_ST IRQ and perform CQ buffer loading immediately.
> -  So the CQ buffer loading is performed by ISP HW automatically.
> c. The ISP HW will read CQ base address register(REG_CQ_THR0_BASEADDR)
> to decide which CQ buffer is loaded.
>    - So we configure the next CQ base address in SOF.
> d. For CQ buffer loading, CQ will read the ISP registers from CQ buffer
> and update the ISP register values into HW.
>    - SCP composer will compose one dummy CQ buffer and assign it to
> REG_CQ_THR0_BASEADDR of each CQ buffer.
>    - Dummy CQ buffer has no updated ISP registers comparing with other
> CQ buffers.
>    - With this design, if there is no updated new CQ buffer by driver
> which may be caused no en-queue frames from user space. The CQ HW will
> load dummy CQ buffer and do nothing.

Does the set of registers programmed by CQ include destination buffer
addresses to? If yes, we would end up overwriting previous frames if
no new buffers are provided.

> f. The CQ buffer loading is guaranteed by HW to finish before the next
> SOF.
>

Okay, thanks a lot for the explanation. This is much more clear now.

[snip]
> > > > > +static const struct dev_pm_ops mtk_isp_pm_ops = {
> > > > > +   SET_SYSTEM_SLEEP_PM_OPS(mtk_isp_suspend, mtk_isp_resume)
> > > > > +   SET_RUNTIME_PM_OPS(mtk_isp_suspend, mtk_isp_resume, NULL)
> > > >
> > > > For V4L2 drivers system and runtime PM ops would normally be completely
> > > > different. Runtime PM ops would be called when the hardware is idle already
> > > > or is about to become active. System PM ops would be called at system power
> > > > state change and the hardware might be both idle or active. Please also see
> > > > my comments to mtk_isp_suspend() and mtk_isp_resume() above.
> > > >
> > >
> > > Here is the new implementation. It should be clear to show the
> > > difference between system and runtime PM ops.
> > >
> > > static const struct dev_pm_ops mtk_isp_pm_ops = {
> > >         SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> > >                                 pm_runtime_force_resume)
> > >         SET_RUNTIME_PM_OPS(mtk_isp_runtime_suspend, mtk_isp_runtime_resume,
> > > NULL)
> > > };
> >
> > That's still not correct. In runtime suspend/resume ops we already are
> > not streaming anymore, because we call pm_runtime_get/put_*() when
> > starting and stopping streaming. In system suspend/resume ops we might
> > be streaming and that's when we need to stop the hardware and wait for
> > it to finish. Please implement these ops separately.
> >
> > Best regards,
> > Tomasz
>
>
> Ok, got your point.
> Below is the new implementation for your review.
>
> static int mtk_isp_pm_suspend(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>         u32 val;
>         int ret;
>
>         dev_dbg(dev, "- %s\n", __func__);
>
>         /* Check ISP is streaming or not */
>         if (!p1_dev->cam_dev.streaming)
>                 goto done;

We would normally check here for pm_runtime_suspended(). Although they
both should be equivalent. Still, there is no need to call
pm_runtime_force_suspend() if the latter is true, so we could just
return 0 instantly.

>
>         /* Disable ISP's view finder and wait for TG idle */
>         dev_dbg(dev, "Cam suspend, disable VF\n");
>         val = readl(p1_dev->regs + REG_TG_VF_CON);
>         writel(val & (~TG_VF_CON_VFDATA_EN), p1_dev->regs + REG_TG_VF_CON);
>         ret = readl_poll_timeout_atomic(p1_dev->regs + REG_TG_INTER_ST, val,
>                                         (val & TG_CS_MASK) == TG_IDLE_ST,
>                                         USEC_PER_MSEC, MTK_ISP_STOP_HW_TIMEOUT);
>         if (ret)
>                 dev_warn(dev, "can't stop HW:%d:0x%x\n", ret, val);
>
>         /* Disable CMOS */
>         val = readl(p1_dev->regs + REG_TG_SEN_MODE);
>         writel(val & (~TG_SEN_MODE_CMOS_EN), p1_dev->regs + REG_TG_SEN_MODE);
>
> done:
>         /* Force ISP HW to idle */
>         ret = pm_runtime_force_suspend(dev);
>         if (ret)
>                 return ret;
>
>         return 0;
> }
>
> static int mtk_isp_pm_resume(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>         u32 val;
>         int ret;
>
>         dev_dbg(dev, "- %s\n", __func__);
>
>         /* Force ISP HW to resume if needed */
>         ret = pm_runtime_force_resume(dev);
>         if (ret)
>                 return ret;

We should do this conditionally based on what pm_runtime_suspended()
returns. If it's non-zero then we can just return 0 instantly.

>
>         if (!p1_dev->cam_dev.streaming)
>                 return 0;
>
>         /* Enable CMOS */
>         dev_dbg(dev, "Cam resume, enable CMOS/VF\n");
>         val = readl(p1_dev->regs + REG_TG_SEN_MODE);
>         writel(val | TG_SEN_MODE_CMOS_EN, p1_dev->regs + REG_TG_SEN_MODE);
>
>         /* Enable VF */
>         val = readl(p1_dev->regs + REG_TG_VF_CON);
>         writel(val | TG_VF_CON_VFDATA_EN, p1_dev->regs + REG_TG_VF_CON);
>
>         return 0;
> }
>
> static int mtk_isp_runtime_suspend(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>
>         dev_dbg(dev, "- %s\n", __func__);
>
>         if (pm_runtime_suspended(dev))
>                 return 0;

Sorry, I guess I wasn't clear in my reply. It's not possible to get
this callback called if the device is already runtime suspended.

>
>         dev_dbg(dev, "%s:disable clock\n", __func__);
>         clk_bulk_disable_unprepare(p1_dev->num_clks, p1_dev->clks);
>
>         return 0;
> }
>
> static int mtk_isp_runtime_resume(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>         int ret;
>
>         dev_dbg(dev, "- %s\n", __func__);
>
>         if (pm_runtime_suspended(dev))
>                 return 0;

In this case the above call would always return non-zero, so the
behavior wouldn't be very good.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
