Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B0C5E925
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 18:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5uZrtFd4CNBcYjiqDheKL7yWxjHSvE5oDqLsx251LM=; b=bSC0bA8C42OPq1
	afn8Bpq50zsEzs9SsdXjxGLEjzbp0okhn3GmQPlci/OvGEBC5ef0xi0wO1DSzQX0fF73LuOjhUCre
	mhs2yZILmcB6zx2mv3HKMT0AZnvP+s64EGm15JYbZRHxdI8F1JFw5ha7I77YUwGBAV4BgATD6RfHu
	clVePC72dmhO44wCcD7lojegxEb8IojiXHB0Od8lj9CbPwDdSSkvfIrrYC1GbD+Ve2D+9fuUTy9cs
	ZEUkiN3H3D3nPoQkuwMB4Uiq5Iu4FjOTX/KtX8/fWAezlY0/lN+4pNEl1v/Ijnm+MkRae437A242g
	WbtTAdT2hsj3VvNsWRdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiBi-0001Cq-5p; Wed, 03 Jul 2019 16:32:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiBP-00011O-V0; Wed, 03 Jul 2019 16:32:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FB002187F;
 Wed,  3 Jul 2019 16:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562171554;
 bh=8hkx9D6cVHuLlyuoRR6plS3cZoqyazckirKKEEaVDhc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HlXDW6vx8wTFxhwAjRJH4wSDIXbJZ3SjmBvcvttiyLCS63EFVOW8+dJPOytcTUxD4
 dIv7CTcdJKQrr2CVJHK32yAfvGXwaHezOLLG7CvxC4ztyPsXl7CsCKC3nJ3+MiTBtk
 vwyZ4dKaKJ/Y08WQBFNAg/BcSzS9zX0nRZy79KOk=
Date: Wed, 3 Jul 2019 18:32:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: fatihaltinpinar@gmail.com
Subject: Re: [PATCH] Staging: mt7621-dma: mtk-hsdma: fix a coding style issue
Message-ID: <20190703163232.GA29325@kroah.com>
References: <20190702080632.27470-1-fatihaltinpinar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702080632.27470-1-fatihaltinpinar@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_093236_018288_E2CB893E 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: matthias.bgg@gmail.com, devel@driverdev.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 11:06:32AM +0300, fatihaltinpinar@gmail.com wrote:
> From: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
> 
> Fixed a coding style issue. Removed curly brackets of an one
> line if statement.
> 
> Signed-off-by: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 0fbb9932d6bb..a58725dd2611 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -664,9 +664,8 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  
>  	hsdma = devm_kzalloc(&pdev->dev, sizeof(*hsdma), GFP_KERNEL);
> -	if (!hsdma) {
> +	if (!hsdma)
>  		return -EINVAL;
> -	}
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	base = devm_ioremap_resource(&pdev->dev, res);

This change is already in my tree, always be sure to work against the
proper kernel tree for doing new development.

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
