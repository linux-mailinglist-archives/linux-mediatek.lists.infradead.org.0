Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7671ACEB4
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 19:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IVOJ5Y3cDkzobjynvajBVuc4b93bxWSD2gRB+BIjBU=; b=LvDBA+l0cIbIhh
	5wdzov+WmVwkLgU35zFu3TaoTotrIl5Sm6h2t4/Mr2RpqwMgYOp+2f2MRF345eUK7waiCZsDdauN5
	jqkMQhIwuK8owHFVpojpW7XcYjsbMeYjaEEB0TX5exJzYBIIbEyonJHRRgzGt22H8s0hhbuJCxCQT
	LXX+8Ewodx3jL8T7C/0LdVVuIvQp9qqCfjfJyFK9ZTI446ZfrUljKmrpOsZfBiPsGVTepwRFMwkdw
	9AkU11CvG7395IbV1+B9GeeEC1Qt+vHGBVurnqev8571u2dh4N4BztmUM5cQpJX9KGtXTxPKE0Inz
	HV7yKSh4xk/h7fYC3rDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8Ja-0001GR-Dk; Thu, 16 Apr 2020 17:28:38 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8JP-00018s-SL; Thu, 16 Apr 2020 17:28:29 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 29D80B23;
 Thu, 16 Apr 2020 19:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587058097;
 bh=Oj91pC7/IRNpYTXN/WrbzyvLhGtWtBnGpXvUxA3rjhU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WJJpZV91WJIj81TCMas3zaNzfZosA6cV7RHUTnTfipprXlKhlvW0TVhcoN7l2Z4o4
 Ro6rLjJ+vZZ8FhBEEG50GRmoWXCzcnkAM7920YQ658Pf9+N6EqvBc3044kjGsyQjiV
 k6xDTRGgRCRl2N+WB1hIeLZ7yRPBhx+8rPZEN4vA=
Date: Thu, 16 Apr 2020 20:28:05 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v2 5/7] drm/mediatek: mtk_dsi: Use simple encoder
Message-ID: <20200416172805.GO4796@pendragon.ideasonboard.com>
References: <20200416155720.2360443-1-enric.balletbo@collabora.com>
 <20200416155720.2360443-6-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416155720.2360443-6-enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_102828_062660_17EA1C3C 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Enric,

Thank you for the patch.

On Thu, Apr 16, 2020 at 05:57:17PM +0200, Enric Balletbo i Serra wrote:
> The mtk_dsi driver uses an empty implementation for its encoder. Replace
> the code with the generic simple encoder.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> 
> Changes in v2: None
> 
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 3400d6686c85..48361c1e9f34 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -22,6 +22,7 @@
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "mtk_drm_ddp_comp.h"
>  
> @@ -788,15 +789,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
>  	dsi->enabled = false;
>  }
>  
> -static void mtk_dsi_encoder_destroy(struct drm_encoder *encoder)
> -{
> -	drm_encoder_cleanup(encoder);
> -}
> -
> -static const struct drm_encoder_funcs mtk_dsi_encoder_funcs = {
> -	.destroy = mtk_dsi_encoder_destroy,
> -};
> -
>  static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi);
>  static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi);
>  
> @@ -1126,8 +1118,8 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
>  {
>  	int ret;
>  
> -	ret = drm_encoder_init(drm, &dsi->encoder, &mtk_dsi_encoder_funcs,
> -			       DRM_MODE_ENCODER_DSI, NULL);
> +	ret = drm_simple_encoder_init(drm, &dsi->encoder,
> +				      DRM_MODE_ENCODER_DSI);
>  	if (ret) {
>  		DRM_ERROR("Failed to encoder init to drm\n");
>  		return ret;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
