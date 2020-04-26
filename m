Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE8F1B91F9
	for <lists+linux-mediatek@lfdr.de>; Sun, 26 Apr 2020 19:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSQohu1F9nwi2kTqo9pqVbg27nBVxTS/ShwfeXldJm4=; b=ZYZV/zJqAwenyW
	hX24gbVx+z4CxnWo6yqMW2zRIyzeM0IQdw5tgwk52QqvYcvmc6gPseQVY45reF0h1Rwb/qBIWDUxc
	yfI1s4seitI+QywUh039xDuLcc69F0dNtJMqSuYjdlttD0e2b3vwj6FZC+jyeKWrKyjdkWcWhD8EL
	WabEnoQ2vxMcMtB5p7d7XyIQZTQbyFyqRCX/uO2b3/eec9CMoMC9kobKYIy/CBxUxJD7lA+Y0HaFo
	Z+/RDRKDC8CHieT7Gfg18+8C9vpPfX9E49AubirWlqrS9AjEXZFT3wPXjUjWs/Skl0I7zKv9wmvm5
	gIj1V0eaWYivSZR1aa6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSkkk-0003yM-Bg; Sun, 26 Apr 2020 17:07:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSkkX-0003pM-JP; Sun, 26 Apr 2020 17:07:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2538206DD;
 Sun, 26 Apr 2020 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587920843;
 bh=m/VKesCt+bSjvJbxbM7RgCA5iwVllI10bgTkvbJ77BQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cFGxIVfTY+0wzn3ctsM/1XSTavz4OoQyJ5MhlQ4Rzl2/13oTi9RZdwPSiNXCsa8/Y
 /6yS6AGbt96EmBEuySmvWZL+AKEiEqclFAE3N8TtUNTjz5/NyYiqzCjiSy8eBlkIS2
 7FcDVl6aBxlifq9E4BrpnKPbmaaI9n3AppCpTEIs=
Date: Sun, 26 Apr 2020 19:07:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH] Staging: mt7621-dma: mtk-hsdma.c: Fix Missing a blank
 line after declarations
Message-ID: <20200426170719.GA2138855@kroah.com>
References: <20200426161319.23941-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426161319.23941-1-john.oldman@polehill.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_100725_659364_CE0DDCA0 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 05:13:19PM +0100, John Oldman wrote:
> Fixed coding style issue

No you didn't :)

> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 14592ed9ce98..dd35d0bce6ca 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
>  	struct device_dma_parameters dma_parms;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;
>  
>  	struct mtk_hsdma_chan chan[1];

This file seems to be the "does the submitter look at the patch they are
sending" litmus test.

Does that really do what you think it does?

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
