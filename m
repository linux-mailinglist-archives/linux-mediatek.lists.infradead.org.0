Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C86F88AC
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 07:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJrPHfajJGaFpj2ZgUUcAAdcMdf1GhPr9fxhfvYLQZw=; b=RknatyvgMunez5
	ae4S41rNLo4O6X54O24Muafr2hc6vh8/8Jp2iPL66GpGBBJc7KqYCg4k8yrEdZDWhEIZzWGEGaFWG
	RFiKpWWdL+C5e08ta9UZOjqSHNai9/R799FvJ/LTuyNvumdwwfLD4pmnm90+O/lN5wVZ0GoMMrneQ
	jvsEK52Z0yJwOSatCU598f9tp8UxCfgqSMIXN28eUecGKgvocyQkLEFXN5cR9Xxbq/D0uCXH3BZOT
	Q8YFW+Oz+xY4enffsUOpW+eLsrrji2YZsY8y6AnMTRA3zzPKIPlg+hVixxpsWTAjQYpB01Z2Yc/7z
	hmuS0m8qfltjJJlf7I6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPtn-0007xg-7w; Tue, 12 Nov 2019 06:43:35 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPte-0007pJ-3B
 for linux-mediatek@lists.infradead.org; Tue, 12 Nov 2019 06:43:27 +0000
Received: by mail-ed1-x542.google.com with SMTP id a24so10336074edt.0
 for <linux-mediatek@lists.infradead.org>; Mon, 11 Nov 2019 22:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6gu94hk6ViXZU/1pF57c89Mz0JcKl1j3IzzPZmTPjtQ=;
 b=LDDUyvLAAr/FgJFV0ODv1fscc3tceNs7i1JvEsFi9SbeCOxeMyJWafdRgYIlNqWV49
 ro79eCq++su+3IaTvSt6MwgL4SEwWPUZp7cEzIY5lMEh0+Vi4K+fFmiFNMR56+eI/hDL
 YUlIauWUKVBysNq/DieSbYjanJaQapqZXiAkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6gu94hk6ViXZU/1pF57c89Mz0JcKl1j3IzzPZmTPjtQ=;
 b=ZosyFDiFfXLftVZAIhs7Rw4G0MNJLYlrnrg2L8pVF1ieu38AZpx5NgTokiYBXrl31S
 jdTgYjnImu5DRGgJ0FamOCcuwBauHqTCXY2Uz7ihWhNzfcXS0S7YGnRw7BJsNRWveIt7
 RusMptrdVJFQBeYu6qvMbF7pHtLvveFYxMxh8BrrNb2PW8JDpvk0JDYvf2SlBldBD5k2
 9gIvzYT6HtzIWudsV0Bmd6rcXOTYrHzjNrIOBzDsKjFvk3KOIMCxfDycCr23djjNYqZ3
 jqLLv5NxIHA/TnoOKkBJx1NP/n0GRBPaY66tzBWQworRHX3gVyjErOjfjQ5aOK6Pyx3Z
 ITmQ==
X-Gm-Message-State: APjAAAVXx5MOPKtOekPCtjLCxq78nd4dGU9Oo0b/r0oKdEXRY2MqN7nT
 G+mHaUXyx2bff1RKSwJoTminYz30eaAPR76KCy0eSA==
X-Google-Smtp-Source: APXvYqyMbA5YJasNK6lBrgNGRtM92Nacpnn0WpqptPvJ7NjQkzN/92o6yJP/Cb/7QkIhQbV5cTyTR309VkTgVeCpFuI=
X-Received: by 2002:a17:906:1d19:: with SMTP id
 n25mr25947734ejh.151.1573541003705; 
 Mon, 11 Nov 2019 22:43:23 -0800 (PST)
MIME-Version: 1.0
References: <20191014075812.181942-1-pihsun@chromium.org>
 <20191014075812.181942-4-pihsun@chromium.org>
 <20191111231023.GD3108315@builder>
In-Reply-To: <20191111231023.GD3108315@builder>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Tue, 12 Nov 2019 14:42:47 +0800
Message-ID: <CANdKZ0frU9+dRYeMaJjjKm6emxj41c_jBk_RX3G7bXn_oXKp4g@mail.gmail.com>
Subject: Re: [PATCH v20 3/4] rpmsg: add rpmsg support for mt8183 SCP.
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_224326_161833_10D16EF0 
X-CRM114-Status: GOOD (  15.07  )
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,
Thanks for the review, I'll address them in the next version. Some
inline comment below.

On Tue, Nov 12, 2019 at 7:10 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Mon 14 Oct 00:58 PDT 2019, Pi-Hsun Shih wrote:
>
> > Add a simple rpmsg support for mt8183 SCP, that use IPI / IPC directly.
> >
>
> Hi Pi-Hsun,
>
> Sorry for not reviewing this in a timely manner! This looks good, just
> some very minor comments below.
>
> > Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> [..]
> > diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> > index f2e5e70a58f2..7896cefb2dc0 100644
> > --- a/drivers/remoteproc/mtk_scp.c
> > +++ b/drivers/remoteproc/mtk_scp.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/remoteproc.h>
> >  #include <linux/remoteproc/mtk_scp.h>
> > +#include <linux/rpmsg/mtk_rpmsg.h>
> >
> >  #include "mtk_common.h"
> >  #include "remoteproc_internal.h"
> > @@ -407,6 +408,31 @@ static void scp_unmap_memory_region(struct mtk_scp *scp)
> >       of_reserved_mem_device_release(scp->dev);
> >  }
> >
> > +static struct mtk_rpmsg_info mtk_scp_rpmsg_info = {
> > +     .send_ipi = scp_ipi_send,
> > +     .register_ipi = scp_ipi_register,
> > +     .unregister_ipi = scp_ipi_unregister,
>
> These are exported symbols, so unless you see a need to support
> alternative implementations in the near future just skip the function
> pointers and call them directly.
>

Yes there is request from MTK that they do want to reuse the mtk_rpmsg
driver for things other than mtk_scp, so there's a need to support
alternative implementations for this.

> > +                struct rpmsg_device *rpdev, rpmsg_rx_cb_t cb, void *priv,
> > +                u32 id)
> > +{
>
> Regards,
> Bjorn

Regards,
Pi-Hsun

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
