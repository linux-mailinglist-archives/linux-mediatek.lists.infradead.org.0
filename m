Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D700ECE967
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 18:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+saRXKwM2tkNTO43ONr4/zoiET4Q+cqcX6Q3ViVfiLI=; b=SRcp2V1s6SZ9AA
	k5Uj0kIh8wQ2Q/aPYRMqK57cTcLJiES+T/c/Sr3BVHVkTxKPzD3VrUV6y/FFDJNparL9N+MRd7P7I
	3t+NHKczVE+ovoGE/HCuP1EJyJe9TK4gzPY76UHn0wyect6nIWTAVPKI+vbX602VOVCoAAJkA19pX
	Xd61NYYlP+dMTssQuKh0UTc9keehcP+puOOPp/iPWCXWGG1GsnLlRHBtrbcSipdxgGYsWqgEaY2B1
	zE5RMuylX9O+RF4wGMiCfJl6cHU8klwfoPzoptDkPH0+HyOG0edp0vnRdHNAOwnFEkJ4AOZ0tjiGd
	gtnoYxTGDanL65ZhFs6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHW1y-0008Iy-IF; Mon, 07 Oct 2019 16:38:42 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHW1h-00082n-NH
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 16:38:27 +0000
Received: by mail-yb1-xb44.google.com with SMTP id m1so4901040ybm.1
 for <linux-mediatek@lists.infradead.org>; Mon, 07 Oct 2019 09:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FzqVNr7tcxlwpcYADlhda0qZOie+lz7LOX/589zfMus=;
 b=fxB9cPqg4HqUGdYDivJJPdLacJmb3vp4VEHC//Z5ObTlsNu+ii6NbHEEOfwrQeRYHX
 rk9Jb8c/1D5BKy/LV/oDJUA6MnC9WVmwmt3fSMpUNLRxWG7ZP3rRNW4/ClVWqlZbovZy
 As3Gj9d4k//dQ6J9KSx8hENX+9aQYBCkzmyixVJHF7sf7hj6lmE9pUqAM43YZOgedk1y
 eawFwM01quT63JTy3IF4txAahS6VVT4G3O1ZwheamhN+J4JnEqmVqpUwPmZxqwgvAOzM
 I7psY1x+jCMxZFFJuHBb0X2S9SPae9WZjlXUS1+DbdH7W4YHGmcjuUR0yuC9HHwjsVvw
 tZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FzqVNr7tcxlwpcYADlhda0qZOie+lz7LOX/589zfMus=;
 b=n1DG8Qi6mG0UEnvDX6Wr838LSTHFkRN3fHhiAOG+7+YT6G36btbOqESSdS+K9eRABv
 nQjIOuYxHWtmDb5XAvcxmpCSL/+P2r02WH2oXUZsglsWuBGtamtWPd73Qehoo248h0hT
 PIsdSvhJutuvUXruTd+kin0FAQ/F3SQVugeHkKWll/Gi1bs58IgLDT+MSXL4fhXqN85I
 QQSIHayrIZZ5Aom/HmYJKMK2T7pD67G6NbG+ndD3cShIx8c70gq+E/Gt2Gem+HQ1CyeS
 C0hLIcV4GD170o3Clq//u5BG3Nrx5t5gqSwP+2yj7Z7+h7bDRwB453/rTWKZe+m8iI1M
 UENg==
X-Gm-Message-State: APjAAAUytDBlX2vFUyBtt2frvSmpOtzPFEUG74HJk0SMm3/B5A9Buw3w
 1zpGyNZ/+KZAThrIl3GReQqblw==
X-Google-Smtp-Source: APXvYqww9OLyqPatL8zc7IngE43C3NP4GfhRl0dthKOPI8ogAAGGRmA5omVo9qg/Jiq5DILIRaCmMg==
X-Received: by 2002:a25:bfc3:: with SMTP id q3mr4652388ybm.507.1570466303991; 
 Mon, 07 Oct 2019 09:38:23 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id g20sm3932702ywe.98.2019.10.07.09.38.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:38:23 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:38:22 -0400
From: Sean Paul <sean@poorly.run>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH v8 1/4] drm/panel: Add helper for reading DT rotation
Message-ID: <20191007163822.GA126146@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-2-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925225833.7310-2-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_093825_830258_57FD2E9F 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 03:58:30PM -0700, Derek Basehore wrote:
> This adds a helper function for reading the rotation (panel
> orientation) from the device tree.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

The patch LGTM, but I don't see it used anywhere later in the patch? Is there a
panel driver incoming?

Sean

> ---
>  drivers/gpu/drm/drm_panel.c | 43 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     |  9 ++++++++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 6b0bf42039cf..0909b53b74e6 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -264,6 +264,49 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  	return ERR_PTR(-EPROBE_DEFER);
>  }
>  EXPORT_SYMBOL(of_drm_find_panel);
> +
> +/**
> + * of_drm_get_panel_orientation - look up the orientation of the panel through
> + * the "rotation" binding from a device tree node
> + * @np: device tree node of the panel
> + * @orientation: orientation enum to be filled in
> + *
> + * Looks up the rotation of a panel in the device tree. The orientation of the
> + * panel is expressed as a property name "rotation" in the device tree. The
> + * rotation in the device tree is counter clockwise.
> + *
> + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> + * rotation property doesn't exist. -EERROR otherwise.
> + */
> +int of_drm_get_panel_orientation(const struct device_node *np,
> +				 enum drm_panel_orientation *orientation)
> +{
> +	int rotation, ret;
> +
> +	ret = of_property_read_u32(np, "rotation", &rotation);
> +	if (ret == -EINVAL) {
> +		/* Don't return an error if there's no rotation property. */
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> +		return 0;
> +	}
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	if (rotation == 0)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
> +	else if (rotation == 90)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
> +	else if (rotation == 180)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
> +	else if (rotation == 270)
> +		*orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
> +	else
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(of_drm_get_panel_orientation);
>  #endif
>  
>  MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 624bd15ecfab..d16158deacdc 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -34,6 +34,8 @@ struct drm_device;
>  struct drm_panel;
>  struct display_timing;
>  
> +enum drm_panel_orientation;
> +
>  /**
>   * struct drm_panel_funcs - perform operations on a given panel
>   *
> @@ -165,11 +167,18 @@ int drm_panel_get_modes(struct drm_panel *panel);
>  
>  #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
>  struct drm_panel *of_drm_find_panel(const struct device_node *np);
> +int of_drm_get_panel_orientation(const struct device_node *np,
> +				 enum drm_panel_orientation *orientation);
>  #else
>  static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
>  {
>  	return ERR_PTR(-ENODEV);
>  }
> +static inline int of_drm_get_panel_orientation(const struct device_node *np,
> +		enum drm_panel_orientation *orientation)
> +{
> +	return -ENODEV;
> +}
>  #endif
>  
>  #endif
> -- 
> 2.23.0.351.gc4317032e6-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
