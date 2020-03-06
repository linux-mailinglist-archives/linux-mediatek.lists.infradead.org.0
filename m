Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B083F17C7C2
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Mar 2020 22:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNfgR0tluWLYa/++wz1a1kjsPE7KoDbxpwi0yS2Ub3M=; b=e0DoVJGbuDz6MW
	yzZJ0QM27ZvI81TRpjFLBQ4oRXsXqc4r0QhhwWyO8VXuwgVge3ChPsG+xSYZ5OxLGyU0naOz9V8qn
	Cl2LYx+t0W4jfs3vpjwQfZcmtm4XXmjDR1wTQc9uCrCP28DPqLIQB7HI7tXHclf/X4Y3/DOhR4sPS
	4nyMHxCptbe8Z+zQKiy9cP+42uZTmIPOm+6mR4siW2mKhArobATltdGxP8PqVZe3SozA2Ae5/+AuW
	QcoN4SzUyTnJK9ZJLSFJgcO6lhm84ApI6rwoibkplvKt6eZ352uE6+S2Ynwyk9EPfzqWHlC7mMFMU
	IPGgcqvlPjvaBaPmmnSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAKMW-0007PI-Cz; Fri, 06 Mar 2020 21:18:28 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKMR-0007Oe-Up; Fri, 06 Mar 2020 21:18:26 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 92F132001E;
 Fri,  6 Mar 2020 22:18:04 +0100 (CET)
Date: Fri, 6 Mar 2020 22:18:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 01/22] drm/arc: Use simple encoder
Message-ID: <20200306211802.GA17369@ravnborg.org>
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305155950.2705-2-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=rqCPFu_3IIfdMowE660A:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_131824_356669_E65758E1 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 eric@anholt.net, thierry.reding@gmail.com, krzk@kernel.org, festevam@gmail.com,
 sebastian.reichel@collabora.com, linux-samsung-soc@vger.kernel.org,
 jy0922.shim@samsung.com, hjc@rock-chips.com, tomi.valkeinen@ti.com,
 abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 ck.hu@mediatek.com, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 inki.dae@samsung.com, john.stultz@linaro.org, jsarha@ti.com,
 matthias.bgg@gmail.com, wens@csie.org, kernel@pengutronix.de,
 jernej.skrabec@siol.net, kraxel@redhat.com, rodrigosiqueiramelo@gmail.com,
 bbrezillon@kernel.org, jingoohan1@gmail.com, dri-devel@lists.freedesktop.org,
 sw0312.kim@samsung.com, nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 04:59:29PM +0100, Thomas Zimmermann wrote:
> The arc driver uses empty implementations for its encoders. Replace
> the code with the generic simple encoder.

We should , as a follow-up patch, embed the encoder in
arcgpu_drm_private.
Then we drop the kzalloc() and avoid that life-time challenge.

This patch looks good for what it does.

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/arc/arcpgu_hdmi.c | 10 +++-------
>  drivers/gpu/drm/arc/arcpgu_sim.c  |  8 ++------
>  2 files changed, 5 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/arc/arcpgu_hdmi.c b/drivers/gpu/drm/arc/arcpgu_hdmi.c
> index 52839934f2fb..780911765e2e 100644
> --- a/drivers/gpu/drm/arc/arcpgu_hdmi.c
> +++ b/drivers/gpu/drm/arc/arcpgu_hdmi.c
> @@ -7,15 +7,12 @@
>  
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_crtc.h>
> -#include <drm/drm_encoder.h>
>  #include <drm/drm_device.h>
> +#include <drm/drm_encoder.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "arcpgu.h"
>  
> -static struct drm_encoder_funcs arcpgu_drm_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np)
>  {
>  	struct drm_encoder *encoder;
> @@ -34,8 +31,7 @@ int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np)
>  
>  	encoder->possible_crtcs = 1;
>  	encoder->possible_clones = 0;
> -	ret = drm_encoder_init(drm, encoder, &arcpgu_drm_encoder_funcs,
> -			       DRM_MODE_ENCODER_TMDS, NULL);
> +	ret = drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/arc/arcpgu_sim.c b/drivers/gpu/drm/arc/arcpgu_sim.c
> index 37d961668dfe..66ca2c26e339 100644
> --- a/drivers/gpu/drm/arc/arcpgu_sim.c
> +++ b/drivers/gpu/drm/arc/arcpgu_sim.c
> @@ -8,6 +8,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  
>  #include "arcpgu.h"
>  
> @@ -50,10 +51,6 @@ static const struct drm_connector_funcs arcpgu_drm_connector_funcs = {
>  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>  };
>  
> -static struct drm_encoder_funcs arcpgu_drm_encoder_funcs = {
> -	.destroy = drm_encoder_cleanup,
> -};
> -
>  int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
>  {
>  	struct arcpgu_drm_connector *arcpgu_connector;
> @@ -68,8 +65,7 @@ int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
>  	encoder->possible_crtcs = 1;
>  	encoder->possible_clones = 0;
>  
> -	ret = drm_encoder_init(drm, encoder, &arcpgu_drm_encoder_funcs,
> -			       DRM_MODE_ENCODER_VIRTUAL, NULL);
> +	ret = drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_VIRTUAL);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.25.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
