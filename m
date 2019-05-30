Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A892C2EA97
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 04:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yc22XjQDfC5vqFP69QZCUye8qy68Fu3jlX8Q+osnntI=; b=BbQxM+LP6NchDW
	DSGgPeTAZC/0cUUc4xYaep5MOtsmh+Fu7egJP4z/Ts2rl5pMIwHXrx13Qw+jQTqGVSLEGffbRlS89
	ql2bN08PY1aQ9TaNTNTsi0zucQb4TRyjgePfaPGlRr6Hgs+iKlrVI0X/mUC5HnEi6oJB2/almm5vp
	G+yvbjLe3Kkq6TyAh/DGPxvucCCAChEy3zOI6idlYXvhW2Ku1U3Lo5iFMXEW2QYjn+h022rzDY3SD
	naLj0MtkSYE1Exp9AhYvUSBUQGrIdN6gmOqnD4JrQ038D9+nBzYUDivrZohvRCj71zI0iSK99mWvR
	3yEhm/XZB0N51TcLiR1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWAe2-0004bd-FD; Thu, 30 May 2019 02:18:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWAdz-0004av-Gl; Thu, 30 May 2019 02:18:17 +0000
X-UUID: ee8d1cd616734772bdf83e4cbe556714-20190529
X-UUID: ee8d1cd616734772bdf83e4cbe556714-20190529
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 204975671; Wed, 29 May 2019 18:18:01 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 19:17:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 10:17:58 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 10:17:58 +0800
Message-ID: <1559182678.6868.1.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/4] drm: mediatek: unbind components in
 mtk_drm_unbind()
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 10:17:58 +0800
In-Reply-To: <20190529102555.251579-3-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
 <20190529102555.251579-3-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_191815_565432_4627F314 
X-CRM114-Status: GOOD (  14.63  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Wed, 2019-05-29 at 18:25 +0800, Hsin-Yi Wang wrote:
> Unbinding components (i.e. mtk_dsi and mtk_disp_ovl/rdma/color) will
> trigger master(mtk_drm)'s .unbind(), and currently mtk_drm's unbind
> won't actually unbind components. During the next bind,
> mtk_drm_kms_init() is called, and the components are added back.
> 
> .unbind() should call mtk_drm_kms_deinit() to unbind components.
> 
> And since component_master_del() in .remove() will trigger .unbind(),
> which will also unregister device, it's fine to remove original functions
> called here.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v1->v2:
> * separate another 2 fixes to other patches.
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 57ce4708ef1b..e7362bdafa82 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -397,6 +397,7 @@ static void mtk_drm_unbind(struct device *dev)
>  	struct mtk_drm_private *private = dev_get_drvdata(dev);
>  
>  	drm_dev_unregister(private->drm);
> +	mtk_drm_kms_deinit(private->drm);
>  	drm_dev_put(private->drm);
>  	private->drm = NULL;
>  }
> @@ -568,13 +569,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  static int mtk_drm_remove(struct platform_device *pdev)
>  {
>  	struct mtk_drm_private *private = platform_get_drvdata(pdev);
> -	struct drm_device *drm = private->drm;
>  	int i;
>  
> -	drm_dev_unregister(drm);
> -	mtk_drm_kms_deinit(drm);
> -	drm_dev_put(drm);
> -
>  	component_master_del(&pdev->dev, &mtk_drm_ops);
>  	pm_runtime_disable(&pdev->dev);
>  	of_node_put(private->mutex_node);



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
