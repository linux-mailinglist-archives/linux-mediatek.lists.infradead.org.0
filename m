Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC6A4FB7C
	for <lists+linux-mediatek@lfdr.de>; Sun, 23 Jun 2019 14:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ArLQWIeHtMix8bskIwiPTgGjGAbReD1HLQjXGgMO0w=; b=dAFBt2j1Wgh9By78ia1SkG+R0
	llFWa2YrQ9qFsMjLM+K7iblE9nQpCMSXtKaFOSgCufKVVf1ublVnbfgNR6OU+qciOOMFqZ/1IRkZS
	VS+liid4nXqgtbm7pu20/ePtmVbx/kw6SU6NJ5ScWua/dvgGqR1Ho6jSmkCx9YIgfVlKt3M0bGoSt
	YqZMq+LeqW4N4lCiNt5vJ+NtqdVbnbq0mVVOTwwSJwAvGmKYwm9W+tEtLMp8Lk55ELBCZg2xd/rfN
	1lS8cmiBf3Kngjb7VD2t1hoogNBPTaPZgwaEvOg0GP3AeZE39CdmBk21nr/f+Y06Z+HE2KzuEwSZ1
	ZEXFbBvbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf1L1-0007C8-IV; Sun, 23 Jun 2019 12:11:15 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf1Kv-0007BV-TE
 for linux-mediatek@lists.infradead.org; Sun, 23 Jun 2019 12:11:11 +0000
Received: by mail-ed1-f65.google.com with SMTP id w20so9493415edd.2
 for <linux-mediatek@lists.infradead.org>; Sun, 23 Jun 2019 05:11:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nakBwI4sZGx37gf/nqQhnhkTTc4nH7gPn8eeyN2vS8M=;
 b=dUXUn9gXmLtCpfv1lXH+Fmh6HlJQzfb1F+8X1uhzmSKimTfkLHML8yVHatZk/377h4
 TeuC70qFgrYRqf00VBDix2jRBM8bXNbfdSJ7LIP0yItoIdIXEZT/4R3Y+BnwRk8W0mSF
 iSfRPnvBZ+CH1h+cYFNK+xphDiKWsDE8x+DAM4neWQbVjdW4boyf3Piw7QEjafUMHyV4
 kOON6un5Ek8Di14W2AP8ngk6bucdF8tEOgdcKw9KRrrjKVOdkaqg1Jzc310KDOFdSSyY
 xrfp+Wg3QyqzbuVakxX+sMtzIBcty5PRNc4sWe7JvKjOCl9a8BJ/iDbe8vLX16Ht0Zoz
 Vhlg==
X-Gm-Message-State: APjAAAXgOvfm3RxpdkNFLpiEfivF0RhfKL53iHwPkG0Ale0I2hjV8m4T
 lRmS+SXiyWIZ9GgHIqdqiimfJA==
X-Google-Smtp-Source: APXvYqyZ6F4Gqyf1cneAQ+IhpWxmyuyOUQ4oEoz0is6nrggMhomfTzXpIIkJ0JA2pB63Ppiz79GlZw==
X-Received: by 2002:a50:f781:: with SMTP id h1mr90781547edn.240.1561291868076; 
 Sun, 23 Jun 2019 05:11:08 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id y3sm2661992edr.27.2019.06.23.05.11.07
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 05:11:07 -0700 (PDT)
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/connector: Split out orientation
 quirk detection
To: Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org
References: <20190622034105.188454-1-dbasehore@chromium.org>
 <20190622034105.188454-4-dbasehore@chromium.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ff551bd8-ab2b-a89f-281b-5b3d3c285efc@redhat.com>
Date: Sun, 23 Jun 2019 14:11:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190622034105.188454-4-dbasehore@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_051109_960250_C004BFC5 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On 22-06-19 05:41, Derek Basehore wrote:
> Not every platform needs quirk detection for panel orientation, so
> split the drm_connector_init_panel_orientation_property into two
> functions. One for platforms without the need for quirks, and the
> other for platforms that need quirks.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>   drivers/gpu/drm/drm_connector.c | 45 ++++++++++++++++++++++++---------
>   drivers/gpu/drm/i915/intel_dp.c |  4 +--
>   drivers/gpu/drm/i915/vlv_dsi.c  |  5 ++--
>   include/drm/drm_connector.h     |  2 ++
>   4 files changed, 39 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index e17586aaa80f..c4b01adf927a 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1894,31 +1894,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
>    * drm_connector_init_panel_orientation_property -
>    *	initialize the connecters panel_orientation property
>    * @connector: connector for which to init the panel-orientation property.
> - * @width: width in pixels of the panel, used for panel quirk detection
> - * @height: height in pixels of the panel, used for panel quirk detection
>    *
>    * This function should only be called for built-in panels, after setting
>    * connector->display_info.panel_orientation first (if known).
>    *
> - * This function will check for platform specific (e.g. DMI based) quirks
> - * overriding display_info.panel_orientation first, then if panel_orientation
> - * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
> - * "panel orientation" property to the connector.
> + * This function will check if the panel_orientation is not
> + * DRM_MODE_PANEL_ORIENTATION_UNKNOWN. If not, it will attach the "panel
> + * orientation" property to the connector.
>    *
>    * Returns:
>    * Zero on success, negative errno on failure.
>    */
>   int drm_connector_init_panel_orientation_property(
> -	struct drm_connector *connector, int width, int height)
> +	struct drm_connector *connector)
>   {
>   	struct drm_device *dev = connector->dev;
>   	struct drm_display_info *info = &connector->display_info;
>   	struct drm_property *prop;
> -	int orientation_quirk;
> -
> -	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
> -	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> -		info->panel_orientation = orientation_quirk;
>   
>   	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>   		return 0;
> @@ -1941,6 +1933,35 @@ int drm_connector_init_panel_orientation_property(
>   }
>   EXPORT_SYMBOL(drm_connector_init_panel_orientation_property);
>   
> +/**
> + * drm_connector_init_panel_orientation_property_quirk -
> + *	initialize the connecters panel_orientation property with a quirk
> + *	override
> + * @connector: connector for which to init the panel-orientation property.
> + * @width: width in pixels of the panel, used for panel quirk detection
> + * @height: height in pixels of the panel, used for panel quirk detection
> + *
> + * This function will check for platform specific (e.g. DMI based) quirks
> + * overriding display_info.panel_orientation first, then if panel_orientation
> + * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
> + * "panel orientation" property to the connector.
> + *
> + * Returns:
> + * Zero on success, negative errno on failure.
> + */
> +int drm_connector_init_panel_orientation_property_quirk(
> +	struct drm_connector *connector, int width, int height)
> +{
> +	int orientation_quirk;
> +
> +	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
> +	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> +		connector->display_info.panel_orientation = orientation_quirk;
> +
> +	return drm_connector_init_panel_orientation_property(connector);
> +}
> +EXPORT_SYMBOL(drm_connector_init_panel_orientation_property_quirk);
> +
>   int drm_connector_set_obj_prop(struct drm_mode_object *obj,
>   				    struct drm_property *property,
>   				    uint64_t value)
> diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
> index b099a9dc28fd..7d4e61cf5463 100644
> --- a/drivers/gpu/drm/i915/intel_dp.c
> +++ b/drivers/gpu/drm/i915/intel_dp.c
> @@ -7282,8 +7282,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>   	intel_panel_setup_backlight(connector, pipe);
>   
>   	if (fixed_mode)
> -		drm_connector_init_panel_orientation_property(
> -			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
> +		drm_connector_init_panel_orientation_property_quirk(connector,
> +				fixed_mode->hdisplay, fixed_mode->vdisplay);
>   
>   	return true;
>   
> diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
> index bfe2891eac37..fa9833dbe359 100644
> --- a/drivers/gpu/drm/i915/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/vlv_dsi.c
> @@ -1650,6 +1650,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
>   
>   	if (connector->panel.fixed_mode) {
>   		u32 allowed_scalers;
> +		int orientation;
>   
>   		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
>   		if (!HAS_GMCH(dev_priv))

The above chunk seems to be a leftover from the previous version of this series.

Otherwise this patch looks good, with this fixed you can add my:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> @@ -1660,9 +1661,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
>   
>   		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>   
> -		connector->base.display_info.panel_orientation =
> -			vlv_dsi_get_panel_orientation(connector);
> -		drm_connector_init_panel_orientation_property(
> +		drm_connector_init_panel_orientation_property_quirk(
>   				&connector->base,
>   				connector->panel.fixed_mode->hdisplay,
>   				connector->panel.fixed_mode->vdisplay);
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 47e749b74e5f..0468fd9a4418 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1370,6 +1370,8 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
>   void drm_connector_set_vrr_capable_property(
>   		struct drm_connector *connector, bool capable);
>   int drm_connector_init_panel_orientation_property(
> +	struct drm_connector *connector);
> +int drm_connector_init_panel_orientation_property_quirk(
>   	struct drm_connector *connector, int width, int height);
>   int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
>   					  int min, int max);
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
