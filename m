Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E50F1D80FE
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 19:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irbSC0H5h0Fk4BHxiRSLuUJJ5jwtnpVHQepKhvdAKzw=; b=jfjrx3KYkcihdc
	Kr/ulqSSeck3BO89ruo48pF/ksiMZUYLISCT7qPNQSaaypRcetKidiN+MCeY75sUdBRzcCJHc+nuR
	4wnzrsPSwAekTsrgMnfX6WEtGXGIprKO70MoDxXBOupi4Yafai1mc7M/Upe3YBTpHjEjTomcQpLt7
	mute0HrLSYuDwMjiJOHUP2IliMF268GxyLITW1F459dq0iWUvklYCylF62HPjoKfAqJ6pYi69VZo1
	scMxEyyr2G4PoY+z0yUr1yOXDjF/qlF6IZfWah1Lq55lfZXxBgkF/Y5qA7TIxezK1EEreUJf0nuU0
	I+OQHYP7UysoQnhbpb9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajoV-00056Y-QT; Mon, 18 May 2020 17:44:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajoL-0004x1-Rw; Mon, 18 May 2020 17:44:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id D2B0B2A1089
Subject: Re: [PATCH] drm/mediatek: Delete not used of_device_get_match_data
To: matthias.bgg@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
 airlied@linux.ie, daniel@ffwll.ch
References: <20200518112254.23692-1-matthias.bgg@kernel.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <0b80dd39-a1b8-48db-61a6-631de41ad293@collabora.com>
Date: Mon, 18 May 2020 19:44:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200518112254.23692-1-matthias.bgg@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_104422_031921_CBD12772 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Matthias,

On 18/5/20 13:22, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <matthias.bgg@gmail.com>
> 
> The driver will be loaded by via a platform device. So we
> will need to get the device_node from the parent device.
> Depending on this we will set the driver data.
> As all this is done later already, just delete the call to
> of_device_get_match_data.
> 
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index e2bb0d19ef99..63ec92ba0e92 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -447,7 +447,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  	if (!private)
>  		return -ENOMEM;
>  
> -	private->data = of_device_get_match_data(dev);
>  	private->mmsys_dev = dev->parent;
>  	if (!private->mmsys_dev) {
>  		dev_err(dev, "Failed to get MMSYS device\n");
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
