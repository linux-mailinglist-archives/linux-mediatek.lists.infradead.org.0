Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16B43C590
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 10:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+FJm6PPagnVJL/mntDsobih+Real47PRv7jBBkYr/w=; b=dTSqBXMMWoAbIl
	aINMPFpM7wTEN2/rZNE6+lGbsKKH5xN3bR3QFgZGx99eplBQ5eYYHgAI8bOqXwzvPEq+AlY+goL3N
	lIDC6SCWpjk7ZL4h81nwy8x3FqfU/OM3ECqAIB0q+2UAKRm3Yie39ClguLucEVPXbNeG0zQKOOkuW
	6fBnjUdQrNnFs6/drHKXzGEaWpdAhY4unVBe8p142PzlDDtStXnabbXJrgeDo+SBymJsxQPT7ITDT
	32zRA1XxR26njO7HobY8e+LQ+nQGMNrm4t6aKGbe+P3TgNDQz1qkJXtnK/7s80tl7bsjuei7268Gq
	OvNJtdOmR9hU0sMohnwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habme-0000W1-I3; Tue, 11 Jun 2019 08:05:32 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habmL-0008Tt-Kh; Tue, 11 Jun 2019 08:05:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 01:05:08 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2019 01:05:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] drm/connector: Split out orientation quirk detection
In-Reply-To: <20190611040350.90064-5-dbasehore@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 11:08:03 +0300
Message-ID: <87zhmoy270.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_010513_691907_5A14321A 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Hans de Goede <j.w.r.degoede@gmail.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Derek Basehore <dbasehore@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019, Derek Basehore <dbasehore@chromium.org> wrote:
> This removes the orientation quirk detection from the code to add
> an orientation property to a panel. This is used only for legacy x86
> systems, yet we'd like to start using this on devicetree systems where
> quirk detection like this is not needed.

Not needed, but no harm done either, right?

I guess I'll defer judgement on this to Hans and Ville (Cc'd).

Side note, I'm about to apply some (minor) conflicting changes in our
-next as soon as I get CI results on it.


BR,
Jani.


>
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_connector.c | 16 ++++------------
>  drivers/gpu/drm/i915/intel_dp.c | 14 +++++++++++---
>  drivers/gpu/drm/i915/vlv_dsi.c  | 14 ++++++++++----
>  include/drm/drm_connector.h     |  2 +-
>  4 files changed, 26 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index e17586aaa80f..58a09b65028b 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1894,31 +1894,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
>   * drm_connector_init_panel_orientation_property -
>   *	initialize the connecters panel_orientation property
>   * @connector: connector for which to init the panel-orientation property.
> - * @width: width in pixels of the panel, used for panel quirk detection
> - * @height: height in pixels of the panel, used for panel quirk detection
>   *
>   * This function should only be called for built-in panels, after setting
>   * connector->display_info.panel_orientation first (if known).
>   *
> - * This function will check for platform specific (e.g. DMI based) quirks
> - * overriding display_info.panel_orientation first, then if panel_orientation
> - * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
> - * "panel orientation" property to the connector.
> + * This function will check if the panel_orientation is not
> + * DRM_MODE_PANEL_ORIENTATION_UNKNOWN. If not, it will attach the "panel
> + * orientation" property to the connector.
>   *
>   * Returns:
>   * Zero on success, negative errno on failure.
>   */
>  int drm_connector_init_panel_orientation_property(
> -	struct drm_connector *connector, int width, int height)
> +	struct drm_connector *connector)
>  {
>  	struct drm_device *dev = connector->dev;
>  	struct drm_display_info *info = &connector->display_info;
>  	struct drm_property *prop;
> -	int orientation_quirk;
> -
> -	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
> -	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> -		info->panel_orientation = orientation_quirk;
>  
>  	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
> index b099a9dc28fd..72ab090ea97a 100644
> --- a/drivers/gpu/drm/i915/intel_dp.c
> +++ b/drivers/gpu/drm/i915/intel_dp.c
> @@ -40,6 +40,7 @@
>  #include <drm/drm_edid.h>
>  #include <drm/drm_hdcp.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_utils.h>
>  #include <drm/i915_drm.h>
>  
>  #include "i915_debugfs.h"
> @@ -7281,9 +7282,16 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	intel_connector->panel.backlight.power = intel_edp_backlight_power;
>  	intel_panel_setup_backlight(connector, pipe);
>  
> -	if (fixed_mode)
> -		drm_connector_init_panel_orientation_property(
> -			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
> +	if (fixed_mode) {
> +		int orientation = drm_get_panel_orientation_quirk(
> +				fixed_mode->hdisplay, fixed_mode->vdisplay);
> +
> +		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> +			connector->display_info.panel_orientation =
> +				orientation;
> +
> +		drm_connector_init_panel_orientation_property(connector);
> +	}
>  
>  	return true;
>  
> diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
> index bfe2891eac37..27f86a787f60 100644
> --- a/drivers/gpu/drm/i915/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/vlv_dsi.c
> @@ -30,6 +30,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_utils.h>
>  
>  #include "i915_drv.h"
>  #include "intel_atomic.h"
> @@ -1650,6 +1651,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
>  
>  	if (connector->panel.fixed_mode) {
>  		u32 allowed_scalers;
> +		int orientation;
>  
>  		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
>  		if (!HAS_GMCH(dev_priv))
> @@ -1660,12 +1662,16 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
>  
>  		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>  
> -		connector->base.display_info.panel_orientation =
> -			vlv_dsi_get_panel_orientation(connector);
> -		drm_connector_init_panel_orientation_property(
> -				&connector->base,
> +		orientation = drm_get_panel_orientation_quirk(
>  				connector->panel.fixed_mode->hdisplay,
>  				connector->panel.fixed_mode->vdisplay);
> +		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> +			connector->base.display_info.panel_orientation = orientation;
> +		else
> +			connector->base.display_info.panel_orientation =
> +				vlv_dsi_get_panel_orientation(connector);
> +
> +		drm_connector_init_panel_orientation_property(&connector->base);
>  	}
>  }
>  
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 47e749b74e5f..c2992f7a0dd5 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1370,7 +1370,7 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
>  void drm_connector_set_vrr_capable_property(
>  		struct drm_connector *connector, bool capable);
>  int drm_connector_init_panel_orientation_property(
> -	struct drm_connector *connector, int width, int height);
> +	struct drm_connector *connector);
>  int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
>  					  int min, int max);

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
