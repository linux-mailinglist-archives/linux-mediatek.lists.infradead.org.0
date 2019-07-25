Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535BC74C62
	for <lists+linux-mediatek@lfdr.de>; Thu, 25 Jul 2019 13:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShdpEJxWsZlzgr9B+BhrDVdG9zzmBJP4qXsvMSSwdl0=; b=m7rM7eyVT+1Mof
	o8flOyQNXkf11HSRZA4Vb9akvb/OYufvo6+LT6OlhnGmQssIiB8nxEz47UOJs6CRhL0i1SAqAJt2i
	tfzOlBRUAA9dPWntnYoRVvHe0B2Qq+XRqVj7oOGeK0EJe4/bYG1RgYh0gP5rAKI5vvHfZ5xsxoW4c
	VZweodXDiV00rzf4oba/nvCcCRbERjfHq/2qfwD9n7t1VzL8Pb3AC9uuD789bV7uPLqEBtYwNijMB
	jxlRosCDyPDeUOyYjlWv6l/7hj728Yocyygwc/k3CbH+PT4SYLE8atyWXP2v07kU4oGo0TF++XWnp
	tZhw4uE7pCLSRz0UbTng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqbVU-0006ze-2M; Thu, 25 Jul 2019 11:01:56 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqbVN-0006zH-Kq
 for linux-mediatek@lists.infradead.org; Thu, 25 Jul 2019 11:01:52 +0000
Received: by mail-ed1-x541.google.com with SMTP id x19so43914283eda.12
 for <linux-mediatek@lists.infradead.org>; Thu, 25 Jul 2019 04:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k+VmJx2qHC6IoWcUVPga9JSh1E7Qu0Q0gAer0TQntYM=;
 b=Bv3+Nes2Q+ALJZRs1cdOeFsomrNoG29LQ9rzUKD8y5Jq4FvKKXDIX6u7vGvo4j5Ydh
 RDNNXZq1byNAJhYlWdmZcIDxxxqAf8WrYk9w4nFlhcn9LVk1iuezwnnsm8eqrgDKKipT
 5G5ReK1RMANSGUYwwKf1BIOtYh+nKwBnzg6lk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k+VmJx2qHC6IoWcUVPga9JSh1E7Qu0Q0gAer0TQntYM=;
 b=VPuYEtOOmXZGRWyG8KLuSq8d6xynFZrSXa9GzEY6pWlZc27Os8Q/PyKMFxJ+L3y75x
 JVqDN4zwSWcPupqHQP2Oqw98mG6eR/WB2CDXlVjVR8OgXMeM57wgzU2fF3tPPLCm4882
 IbNoA+xwVGftkVzLimBOUYuuSZ3E9TjFqoQK0U90FIvFIIyhHY2PZ1P3orwsQCA9J8qW
 cLrqo8A/1lc9Rp+tFl4Y6XIHxxG0gUzp8q1Hfm1t7wu7nHWdXGkWSIz1+Krov9bb70OE
 TQekf4Ra4ElSf1lYI/AedSGoIkAD4pfrbteIh7+2gxF8wsqkGCWcdqWmujqy8qUT/uNF
 dGQg==
X-Gm-Message-State: APjAAAXoTxi6WOyUMQW8bmpj2qjJDVUiFfjnHz7pmEgpFXPLAiWhe+0V
 KiT399KT0gH13tS+KZ1BnXEWyDORgP+kkg==
X-Google-Smtp-Source: APXvYqxOAgL0IPdPhfTtrCSlSjIufS/aSWDjVS9oHyYqdruN6fLHaaq5/5k8ODrvk/y4t4rUT6dosw==
X-Received: by 2002:a17:906:244c:: with SMTP id
 a12mr65555563ejb.288.1564052507541; 
 Thu, 25 Jul 2019 04:01:47 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id l2sm12899413edn.59.2019.07.25.04.01.47
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 04:01:47 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id n4so50362092wrs.3
 for <linux-mediatek@lists.infradead.org>; Thu, 25 Jul 2019 04:01:47 -0700 (PDT)
X-Received: by 2002:adf:ed41:: with SMTP id u1mr89782001wro.162.1564052200774; 
 Thu, 25 Jul 2019 03:56:40 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-9-jungo.lin@mediatek.com>
 <20190710095827.GC181405@chromium.org>
 <1563675513.1212.444.camel@mtksdccf07>
In-Reply-To: <1563675513.1212.444.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 25 Jul 2019 19:56:28 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BT7M425AbFicYuX+wr-twgS_cxQ937+Rgxo6Y2fA6_gA@mail.gmail.com>
Message-ID: <CAAFQd5BT7M425AbFicYuX+wr-twgS_cxQ937+Rgxo6Y2fA6_gA@mail.gmail.com>
Subject: Re: [RFC,
 v3 8/9] media: platform: Add Mediatek ISP P1 SCP communication
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_040149_711316_1CC48FB8 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Sun, Jul 21, 2019 at 11:18 AM Jungo Lin <jungo.lin@mediatek.com> wrote:
[snip]
> > > +           wake_up_interruptible(&isp_ctx->composer_tx_thread.wq);
> > > +           isp_ctx->composer_tx_thread.thread = NULL;
> > > +   }
> > > +
> > > +   if (isp_ctx->composer_deinit_thread.thread) {
> > > +           wake_up(&isp_ctx->composer_deinit_thread.wq);
> > > +           isp_ctx->composer_deinit_thread.thread = NULL;
> > > +   }
> > > +   mutex_unlock(&isp_ctx->lock);
> > > +
> > > +   pm_runtime_put_sync(&p1_dev->pdev->dev);
> >
> > No need to use the sync variant.
> >
>
> We don't get this point. If we will call pm_runtime_get_sync in
> mtk_isp_hw_init function, will we need to call
> pm_runtime_put_sync_autosuspend in mtk_isp_hw_release in next patch?
> As we know, we should call runtime pm functions in pair.
>

My point is that pm_runtime_put_sync() is only needed if one wants the
runtime count to be decremented after the function returns. Normally
there is no need to do so and one would call pm_runtime_put(), or if
autosuspend is used, pm_runtime_put_autosuspend() (note there is no
"sync" in the name).

[snip]
> > +static void isp_composer_handler(void *data, unsigned int len, void *priv)
> > > +{
> > > +   struct mtk_isp_p1_ctx *isp_ctx = (struct mtk_isp_p1_ctx *)priv;
> > > +   struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
> > > +   struct device *dev = &p1_dev->pdev->dev;
> > > +   struct mtk_isp_scp_p1_cmd *ipi_msg;
> > > +
> > > +   ipi_msg = (struct mtk_isp_scp_p1_cmd *)data;
> >
> > Should we check that len == sizeof(*ipi_msg)? (Or at least >=, if data could
> > contain some extra bytes at the end.)
> >
>
> The len parameter is the actual sending bytes from SCP to kernel.
> In the runtime, it is only 6 bytes for isp_ack_info command
> However, sizeof(*ipi_msg) is large due to struct mtk_isp_scp_p1_cmd is
> union structure.
>

That said we still should check if len is enough to cover the data
we're accessing below.

> > > +
> > > +   if (ipi_msg->cmd_id != ISP_CMD_ACK)
> > > +           return;
> > > +
> > > +   if (ipi_msg->ack_info.cmd_id == ISP_CMD_FRAME_ACK) {
> > > +           dev_dbg(dev, "ack frame_num:%d",
> > > +                   ipi_msg->ack_info.frame_seq_no);
> > > +           atomic_set(&isp_ctx->composed_frame_id,
> > > +                      ipi_msg->ack_info.frame_seq_no);
> >
> > I suppose we are expecting here that ipi_msg->ack_info.frame_seq_no would be
> > just isp_ctx->composed_frame_id + 1, right? If not, we probably dropped some
> > frames and we should handle that somehow.
> >
>
> No, we use isp_ctx->composed_frame_id to save which frame sequence
> number are composed done in SCP. In new design, we will move this from
> isp_ctx to p1_dev.

But we compose the frames in order, don't we? Wouldn't every composed
frame would be just previous frame ID + 1?

[snip]
> > > +void isp_composer_hw_init(struct device *dev)
> > > +{
> > > +   struct mtk_isp_scp_p1_cmd composer_tx_cmd;
> > > +   struct isp_p1_device *p1_dev = get_p1_device(dev);
> > > +   struct mtk_isp_p1_ctx *isp_ctx = &p1_dev->isp_ctx;
> > > +
> > > +   memset(&composer_tx_cmd, 0, sizeof(composer_tx_cmd));
> > > +   composer_tx_cmd.cmd_id = ISP_CMD_INIT;
> > > +   composer_tx_cmd.frameparam.hw_module = isp_ctx->isp_hw_module;
> > > +   composer_tx_cmd.frameparam.cq_addr.iova = isp_ctx->scp_mem_iova;
> > > +   composer_tx_cmd.frameparam.cq_addr.scp_addr = isp_ctx->scp_mem_pa;
> >
> > Should we also specify the size of the buffer? Otherwise we could end up
> > with some undetectable overruns.
> >
>
> The size of SCP composer's memory is fixed to 0x200000.
> Is it necessary to specify the size of this buffer?
>
> #define MTK_ISP_COMPOSER_MEM_SIZE 0x200000
>
> ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
>                         MTK_ISP_COMPOSER_MEM_SIZE, &addr, GFP_KERNEL);
>

Okay, but please add a comment saying that this is an implicit
requirement of the firmware.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
