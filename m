Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5C1A2F79
	for <lists+linux-mediatek@lfdr.de>; Fri, 30 Aug 2019 08:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKDcPOrNY1G7KkxntI6sOm66UvCOyL9+Vy4rC60Vbec=; b=vBktcJO18OyTQn
	ItcAPhJTRUtkqE50uICcBG1PfFE2GJTiZ8FLztKbLejqNduezfZUIM8w4kfqx7MgHlzvPOIG/yZVa
	pGI27zqPxpApxdajbfoUtT9wuy3rdCdajHdMiJgidaSFQNoyYcJ3dteda224ECbufcC8ogfC64zyb
	swdTh6OOXm4kg23VT9lzpawVqqAkY8RUDHutcmK+HYfGQBym0Zbd9tZCoELOK9QDk3kyAcK9sILhJ
	+rtm3NRZBdcGcVnK1FmcMo06EU2yI1fC2LmPFXIFVxNZttZmBoni7W18ho9kBEGGvJsiZPXd9mpJV
	fUpaxU3bJXLDgU8LNQ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3a8z-0003nE-Ap; Fri, 30 Aug 2019 06:12:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3a8Y-0003fu-FM; Fri, 30 Aug 2019 06:11:55 +0000
X-UUID: eed4a1e83d1044e290f8ac74bfc50415-20190829
X-UUID: eed4a1e83d1044e290f8ac74bfc50415-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 130981944; Thu, 29 Aug 2019 22:11:52 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:11:50 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 14:11:47 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:11:47 +0800
Message-ID: <1567145502.5942.15.camel@mtksdaap41>
Subject: Re: [PATCH v5, 24/32] drm/mediatek: add clock property check before
 get it
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 30 Aug 2019 14:11:42 +0800
In-Reply-To: <1567090254-15566-25-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-25-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AC63B56FAA0B5FFE3064F062EFE487F75FF6A0918ACADC649B94CFF7E07E14872000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_231154_514047_77CCCBB6 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add clock property check before get it
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index a5a6689..effc24a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -657,10 +657,12 @@ static int mtk_ddp_probe(struct platform_device *pdev)
>  	for (i = 0; i < 10; i++)
>  		ddp->mutex[i].id = i;
>  
> -	ddp->clk = devm_clk_get(dev, NULL);
> -	if (IS_ERR(ddp->clk)) {
> -		dev_err(dev, "Failed to get clock\n");
> -		return PTR_ERR(ddp->clk);
> +	if (of_find_property(dev->of_node, "clocks", &i)) {
> +		ddp->clk = devm_clk_get(dev, NULL);
> +		if (IS_ERR(ddp->clk)) {
> +			dev_err(dev, "Failed to get clock\n");
> +			return PTR_ERR(ddp->clk);
> +		}

Only "mediatek,mt8133-disp-mutex" has no clock property. For other SoC,
clock property is required. So I think this exception is just for
mt8183.

Regards,
CK

>  	}
>  
>  	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
