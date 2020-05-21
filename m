Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07D11DD1EC
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 17:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bN3KpoQy4sUgydDuQ/Yq+Y5XfFd6+BC8aoS9wYE0cQw=; b=H3L/hhz/ojd3J8
	HzHhpGtgkmFoEqusCOj4/eEJFD5ffXhZHWDy1w73a81XUPG71peNESAxl6AiYBIDMs3MBRIT2LdL4
	HhS37UGu7ZpHfv3Js3pPmS0xrJ/emWAnh44kxYrHyFMX3kuOGLxsqleSqFdaRCwKNdJGn+lu4qtyE
	vQmhgDXSbeJnp7j93/ULK/oM0MIfAbi24Qh7T0nWqfD3ZP0Jw5sF7HyX45/x2e0vJj91cg5cq8S/y
	Xf5JPS5B2P8TAoyzsnetMgrC/spcI4agMpr4yAyjEUCimin9FD3TLMjqVFxrq35EKrS9ZX439vO2j
	yQnSUL/fvTOh8aub6BdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnBx-0002pe-Mu; Thu, 21 May 2020 15:33:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnBu-0002oe-7r
 for linux-mediatek@lists.infradead.org; Thu, 21 May 2020 15:33:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id w64so6767025wmg.4
 for <linux-mediatek@lists.infradead.org>; Thu, 21 May 2020 08:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a+XGEo7RdRLWXaBT5I1D5SW4Aa/jygWE9YUzvCS9gvI=;
 b=C6QnsephZ4AXYbZbM1y/Cghfe4u+luUWsgG6OhW+RMXWdsfoZHD3nxlNwa1hYOht3T
 WTfDVrMB9YUP/UOKUCF8OVzgeCtW2v5g8iWYm18a9M2nlHg/NnB8Ir6MPtJ5w+UhTuNZ
 xvN1sB6mgklbOCg7LJog22flxrih0eY9gDBhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a+XGEo7RdRLWXaBT5I1D5SW4Aa/jygWE9YUzvCS9gvI=;
 b=FvJBidhdCcqVog68HfGPqOcs1d0Z2nVZZudCmJjefirV15uOza0mdtHDotLwk+Apem
 cCMR9o970eo/M9KeycUoVevbTLcjCVPIN5Ke+XSxkH3C41cDK9Z+u/YSoPwSKMWYkfQ2
 bvMkBK22Q2zEj6nmGM0EBqDL7sQMT7Cpm+dLuRkPH5e5n1a+7og3SCOY5yT2uNNEezsF
 Kzu3FoHtwLarz9nCn4bF5xmpY7Se9K1feCiHQ5npQp6s7KUze+LD2PUJOEdr3D+9yT1L
 /vByLgq6TUz7o+BCGGPtSSDGHROon377SUvllGAsVuOVwF3ZRG+Z/VQJOa+nRpRK1V4v
 pAEQ==
X-Gm-Message-State: AOAM532SSTBrSBrAF0J266dFMVhgz4PZNTOsVjqKUjDT7jPTkZvJJdxI
 5n+a6/KiYi3UyO6k6+BH+gKdgw==
X-Google-Smtp-Source: ABdhPJx2S+yj9zmPBMi83WiNn64bblaOIC/n37oVO4cTDq4iHNfMT2oRcmN73GTSL9Yc4JsMWCaKAA==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr9202139wmk.168.1590075179928; 
 Thu, 21 May 2020 08:32:59 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id i11sm7245926wrc.35.2020.05.21.08.32.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 08:32:59 -0700 (PDT)
Date: Thu, 21 May 2020 15:32:57 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 06/14] media: platform: Improve the implementation of
 the system PM ops
Message-ID: <20200521153257.GF209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-7-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-7-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_083302_300136_B6F583C4 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Xia,

On Fri, Apr 03, 2020 at 05:40:25PM +0800, Xia Jiang wrote:
> Cancel reset hw operation in suspend and resume function because this
> will be done in device_run().

This and...

> Add spin_lock and unlock operation in irq and resume function to make
> sure that the current frame is processed completely before suspend.

...this are two separate changes. Please split.

> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index dd5cadd101ef..2fa3711fdc9b 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> @@ -911,6 +911,8 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
>  	u32 dec_ret;
>  	int i;
>  
> +	spin_lock(&jpeg->hw_lock);
> +

nit: For consistency, it is recommended to always use the same, i.e. the
strongest, spin_(un)lock_ primitives when operating on the same spinlock.
In this case it would be the irqsave(restore) variants.

>  	dec_ret = mtk_jpeg_dec_get_int_status(jpeg->dec_reg_base);
>  	dec_irq_ret = mtk_jpeg_dec_enum_result(dec_ret);
>  	ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);
> @@ -941,6 +943,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
>  	v4l2_m2m_buf_done(src_buf, buf_state);
>  	v4l2_m2m_buf_done(dst_buf, buf_state);
>  	v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
> +	spin_unlock(&jpeg->hw_lock);
>  	pm_runtime_put_sync(ctx->jpeg->dev);
>  	return IRQ_HANDLED;
>  }
> @@ -1191,7 +1194,6 @@ static __maybe_unused int mtk_jpeg_pm_suspend(struct device *dev)
>  {
>  	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
>  
> -	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
>  	mtk_jpeg_clk_off(jpeg);
>  
>  	return 0;
> @@ -1202,19 +1204,24 @@ static __maybe_unused int mtk_jpeg_pm_resume(struct device *dev)
>  	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
>  
>  	mtk_jpeg_clk_on(jpeg);
> -	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
>  
>  	return 0;
>  }
>  
>  static __maybe_unused int mtk_jpeg_suspend(struct device *dev)
>  {
> +	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
> +	unsigned long flags;
>  	int ret;
>  
>  	if (pm_runtime_suspended(dev))
>  		return 0;
>  
> +	spin_lock_irqsave(&jpeg->hw_lock, flags);

What does this spinlock protect us from? I can see that it would prevent
the interrupt handler from being called, but is it okay to suspend the
system without handling the interrupt?

> +
>  	ret = mtk_jpeg_pm_suspend(dev);
> +

Looking at the implementation of mtk_jpeg_pm_suspend(), all it does is
disabling the clock. How do we make sure that there is no frame currently
being processed by the hardware?

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
