Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD6C17EEB2
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Mar 2020 03:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvWFKbNSkOovS29wOXlR0/Zzu8CKEOag3Uv3HGKH5XM=; b=OdqlULayj/iIwm
	6KUO/5tHhOEN64MxZQXYWg6zo/waOdCGDs0Rd/rO49xDPK7ktjQ2gw5Rk/h3/Yq31hZjktp9PbacR
	nDAuzIilfJWrOvnRPr4LHBKnUwek7O4vPU1NN2bCVIEffDrsKogaBXfipXKeEndmlbZ9NJubOnQjO
	Tg29w2f+DA3zE6B2f2CXYTNe5DpstdeF99klALIAt4S46dui4yOdNiXdw58N1Gk7i5b6XfoOTDjSj
	8dJsQ685CEkSSUj08OPafeQKG220YYLady/kKYznPSUccEIhg7GXkV7v7sLT4zIIqVJpQStT2vryt
	wIavs1ZfYhoCQ0pYhQyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBUm5-0003YY-BV; Tue, 10 Mar 2020 02:37:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBUm1-0003Xm-CS; Tue, 10 Mar 2020 02:37:38 +0000
X-UUID: 9b391288617f47d1b1a7a568dfb0cd4f-20200309
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hLjlW65hQN7C6KTZ0z09rF1NUbZS3I5Rt9C9E6AC1dM=; 
 b=G4KZOYec4ghBtwfsRhvrArSWXtZAwYe4JjBpGHXb9+7rCrAdo9glAWfc+rs29ZiVD/VFgnBHP5+ZyGA5D5YH/qzIflNEDnMJiZqom53+YHdzLinubIkWdcK9EtM/HqZHjASUg19eGgFkpWhXt+M8gLjkwl1HyaMN2aF1avXJQpA=;
X-UUID: 9b391288617f47d1b1a7a568dfb0cd4f-20200309
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1070353517; Mon, 09 Mar 2020 18:37:28 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 19:37:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 10:36:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Mar 2020 10:36:31 +0800
Message-ID: <1583807844.30143.0.camel@mtksdaap41>
Subject: Re: [PATCH 10/22] drm/mediatek: Use simple encoder
From: CK Hu <ck.hu@mediatek.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Date: Tue, 10 Mar 2020 10:37:24 +0800
In-Reply-To: <20200305155950.2705-11-tzimmermann@suse.de>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-11-tzimmermann@suse.de>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_193737_443045_982F6089 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, heiko@sntech.de,
 airlied@linux.ie, stefan@agner.ch, linux@armlinux.org.uk, paul@crapouillou.net,
 eric@anholt.net, thierry.reding@gmail.com, krzk@kernel.org, sam@ravnborg.org,
 sebastian.reichel@collabora.com, linux-samsung-soc@vger.kernel.org,
 jy0922.shim@samsung.com, hjc@rock-chips.com, festevam@gmail.com,
 abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 linux-rockchip@lists.infradead.org, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, p.zabel@pengutronix.de, puck.chen@hisilicon.com,
 s.hauer@pengutronix.de, alison.wang@nxp.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, inki.dae@samsung.com, john.stultz@linaro.org,
 jsarha@ti.com, matthias.bgg@gmail.com, wens@csie.org, kernel@pengutronix.de,
 jernej.skrabec@siol.net, kraxel@redhat.com, rodrigosiqueiramelo@gmail.com,
 tomi.valkeinen@ti.com, bbrezillon@kernel.org, jingoohan1@gmail.com,
 dri-devel@lists.freedesktop.org, sw0312.kim@samsung.com,
 nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Thomas:

On Thu, 2020-03-05 at 16:59 +0100, Thomas Zimmermann wrote:
> The mediatak driver uses empty implementations for its encoders. Replace
> the code with the generic simple encoder.
> 

Acked-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/mediatek/mtk_dpi.c | 14 +++-----------
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 14 +++-----------
>  2 files changed, 6 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index 14fbe1c09ce9..9c90c58e5acd 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -20,6 +20,7 @@
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_of.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "mtk_dpi_regs.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -509,15 +510,6 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
>  	return 0;
>  }
>  
> -static void mtk_dpi_encoder_destroy(struct drm_encoder *encoder)
> -{
> -	drm_encoder_cleanup(encoder);
> -}
> -
> -static const struct drm_encoder_funcs mtk_dpi_encoder_funcs = {
> -	.destroy = mtk_dpi_encoder_destroy,
> -};
> -
>  static bool mtk_dpi_encoder_mode_fixup(struct drm_encoder *encoder,
>  				       const struct drm_display_mode *mode,
>  				       struct drm_display_mode *adjusted_mode)
> @@ -596,8 +588,8 @@ static int mtk_dpi_bind(struct device *dev, struct device *master, void *data)
>  		return ret;
>  	}
>  
> -	ret = drm_encoder_init(drm_dev, &dpi->encoder, &mtk_dpi_encoder_funcs,
> -			       DRM_MODE_ENCODER_TMDS, NULL);
> +	ret = drm_simple_encoder_init(drm_dev, &dpi->encoder,
> +				      DRM_MODE_ENCODER_TMDS);
>  	if (ret) {
>  		dev_err(dev, "Failed to initialize decoder: %d\n", ret);
>  		goto err_unregister;
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 0ede69830a9d..a9a25087112f 100644
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
> @@ -787,15 +788,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
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
>  static bool mtk_dsi_encoder_mode_fixup(struct drm_encoder *encoder,
>  				       const struct drm_display_mode *mode,
>  				       struct drm_display_mode *adjusted_mode)
> @@ -888,8 +880,8 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
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

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
