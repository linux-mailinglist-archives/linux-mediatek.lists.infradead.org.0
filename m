Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B623C6A7
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 10:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k36E6J6e07Ap6NHCErxTO3tAjaINGMb/4GMkeU91hGY=; b=IXI8GnGp1WkyxOtcdwSzfYE9A
	cTXg8ImCy1f8UjSI5caMKUIwmiHXlicpF+LN8kM6wNsbmvx9wyw3jGO+3xcj1AXisEBkRO3RuvwMZ
	ipYRWytTuTF8w3oyCnEtuVsQQEewToqxuk61JE23ehq15LVL/0o+L2J4cf2aByOoUQV2YaNlyCGGM
	7737Yq/VDz0AiLcU8eLmXoqCBUCkKx9tEVCrCmW6Mtv1nlZ3sw76TN4JZI0SgIAIBlOIOdtS+pLXa
	jcOxFITcmZrNst6hFj64J3j+VkFsZhYXr5JvvtU1nJBZZZhgMQohR08TRWjUIypkCbFRuOX8zjcwC
	Btb4KmwkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacYE-0001ih-4r; Tue, 11 Jun 2019 08:54:42 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacYA-0001he-6y
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 08:54:40 +0000
Received: by mail-ed1-f68.google.com with SMTP id c26so18894199edt.1
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 01:54:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3uzcEie+Ohpl02QogzO6HKa3vZkAr6RMtmIQE/ajIxY=;
 b=IQnr1DUL+OwCJ6ZX7QSEXStiKQKWQGHjALt4VIWZVTeiBrMDbLWImSsXQz6gQaVyXJ
 79DkKAUnzQaTI9LF46BwznRYw0ghp3UzuCe9A3ZdMkv4P7EMZDShvz+pe2+Wa/xVBwKq
 mWv5CZpoAKN4Uj2KdF2XylJ0cusb+tR/WwL1VTAb002q4xQ/Qt+TRYqsgXRX7GD4flrk
 22Yi8crNwJ8SSra9HAR1FuwCAVBUertsAKZUS+74l0HRt7/gL+l+E07YnKKIBSJr8V4j
 6DTCLUphw0CFwvEaVdG3NVTB+zCEgHGk3MXvNRGm8mF7aqs+6KR6SDyGwZqcTLRXd8i1
 fF+Q==
X-Gm-Message-State: APjAAAWimi8qQhpFXv59j9/ydkmDh2Nn4bQf4wxt+82WP88YZDCYZ3Ak
 YS5ggTcouA6BHgMuP2hzIQN9CA==
X-Google-Smtp-Source: APXvYqyAHxRrGS3STysulUcExa6+FqtFwDiyuJoWwkEl0mB62VVXi/OtKmiTQYlXkcIRTDwF1yQQ4g==
X-Received: by 2002:a50:a935:: with SMTP id l50mr79217474edc.198.1560243275828; 
 Tue, 11 Jun 2019 01:54:35 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id e19sm769255eja.91.2019.06.11.01.54.34
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 01:54:35 -0700 (PDT)
Subject: Re: [PATCH 4/5] drm/connector: Split out orientation quirk detection
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
Date: Tue, 11 Jun 2019 10:54:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87zhmoy270.fsf@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015438_260462_99B7628E 
X-CRM114-Status: GOOD (  25.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On 11-06-19 10:08, Jani Nikula wrote:
> On Mon, 10 Jun 2019, Derek Basehore <dbasehore@chromium.org> wrote:
>> This removes the orientation quirk detection from the code to add
>> an orientation property to a panel. This is used only for legacy x86
>> systems, yet we'd like to start using this on devicetree systems where
>> quirk detection like this is not needed.
> 
> Not needed, but no harm done either, right?
> 
> I guess I'll defer judgement on this to Hans and Ville (Cc'd).

Hmm, I'm not big fan of this change. It adds code duplication and as
other models with the same issue using a different driver or panel-type
show up we will get more code duplication.

Also I'm not convinced that devicetree based platforms will not need
this. The whole devicetree as an ABI thing, which means that all
devicetree bindings need to be set in stone before things are merged
into the mainline, is done solely so that we can get vendors to ship
hardware with the dtb files included in the firmware.

I'm 100% sure that there is e.g. ARM hardware out there which uses
non upright mounted LCD panels (I used to have a few Allwinner
tablets which did this). And given my experience with the quality
of firmware bundled tables like ACPI tables I'm quite sure that
if we ever move to firmware included dtb files that we will need
quirks for those too.

Also calling this "used only for legacy x86 systems" is a bit
unfair IMHO, new UEFI models are still being added to the quirk list
today, for hardware which does not even ship yet. Actually 99%
of the models in the quirk list are UEFI only models, which do
not even support classic PC BIOS booting, so those systems are
anything but legacy.

I believe the only reason we have only had to deal with this on x86
so far is because the OOTB support for most ARM systems is less polished
then that for x86 systems and on ARM systems there are still more
important issues to tackle first.

Regards,

Hans






> 
> Side note, I'm about to apply some (minor) conflicting changes in our
> -next as soon as I get CI results on it.
> 
> 
> BR,
> Jani.
> 
> 
>>
>> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
>> ---
>>   drivers/gpu/drm/drm_connector.c | 16 ++++------------
>>   drivers/gpu/drm/i915/intel_dp.c | 14 +++++++++++---
>>   drivers/gpu/drm/i915/vlv_dsi.c  | 14 ++++++++++----
>>   include/drm/drm_connector.h     |  2 +-
>>   4 files changed, 26 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
>> index e17586aaa80f..58a09b65028b 100644
>> --- a/drivers/gpu/drm/drm_connector.c
>> +++ b/drivers/gpu/drm/drm_connector.c
>> @@ -1894,31 +1894,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
>>    * drm_connector_init_panel_orientation_property -
>>    *	initialize the connecters panel_orientation property
>>    * @connector: connector for which to init the panel-orientation property.
>> - * @width: width in pixels of the panel, used for panel quirk detection
>> - * @height: height in pixels of the panel, used for panel quirk detection
>>    *
>>    * This function should only be called for built-in panels, after setting
>>    * connector->display_info.panel_orientation first (if known).
>>    *
>> - * This function will check for platform specific (e.g. DMI based) quirks
>> - * overriding display_info.panel_orientation first, then if panel_orientation
>> - * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
>> - * "panel orientation" property to the connector.
>> + * This function will check if the panel_orientation is not
>> + * DRM_MODE_PANEL_ORIENTATION_UNKNOWN. If not, it will attach the "panel
>> + * orientation" property to the connector.
>>    *
>>    * Returns:
>>    * Zero on success, negative errno on failure.
>>    */
>>   int drm_connector_init_panel_orientation_property(
>> -	struct drm_connector *connector, int width, int height)
>> +	struct drm_connector *connector)
>>   {
>>   	struct drm_device *dev = connector->dev;
>>   	struct drm_display_info *info = &connector->display_info;
>>   	struct drm_property *prop;
>> -	int orientation_quirk;
>> -
>> -	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
>> -	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>> -		info->panel_orientation = orientation_quirk;
>>   
>>   	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>>   		return 0;
>> diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
>> index b099a9dc28fd..72ab090ea97a 100644
>> --- a/drivers/gpu/drm/i915/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/intel_dp.c
>> @@ -40,6 +40,7 @@
>>   #include <drm/drm_edid.h>
>>   #include <drm/drm_hdcp.h>
>>   #include <drm/drm_probe_helper.h>
>> +#include <drm/drm_utils.h>
>>   #include <drm/i915_drm.h>
>>   
>>   #include "i915_debugfs.h"
>> @@ -7281,9 +7282,16 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>   	intel_connector->panel.backlight.power = intel_edp_backlight_power;
>>   	intel_panel_setup_backlight(connector, pipe);
>>   
>> -	if (fixed_mode)
>> -		drm_connector_init_panel_orientation_property(
>> -			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
>> +	if (fixed_mode) {
>> +		int orientation = drm_get_panel_orientation_quirk(
>> +				fixed_mode->hdisplay, fixed_mode->vdisplay);
>> +
>> +		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>> +			connector->display_info.panel_orientation =
>> +				orientation;
>> +
>> +		drm_connector_init_panel_orientation_property(connector);
>> +	}
>>   
>>   	return true;
>>   
>> diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
>> index bfe2891eac37..27f86a787f60 100644
>> --- a/drivers/gpu/drm/i915/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/vlv_dsi.c
>> @@ -30,6 +30,7 @@
>>   #include <drm/drm_crtc.h>
>>   #include <drm/drm_edid.h>
>>   #include <drm/drm_mipi_dsi.h>
>> +#include <drm/drm_utils.h>
>>   
>>   #include "i915_drv.h"
>>   #include "intel_atomic.h"
>> @@ -1650,6 +1651,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
>>   
>>   	if (connector->panel.fixed_mode) {
>>   		u32 allowed_scalers;
>> +		int orientation;
>>   
>>   		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
>>   		if (!HAS_GMCH(dev_priv))
>> @@ -1660,12 +1662,16 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
>>   
>>   		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>>   
>> -		connector->base.display_info.panel_orientation =
>> -			vlv_dsi_get_panel_orientation(connector);
>> -		drm_connector_init_panel_orientation_property(
>> -				&connector->base,
>> +		orientation = drm_get_panel_orientation_quirk(
>>   				connector->panel.fixed_mode->hdisplay,
>>   				connector->panel.fixed_mode->vdisplay);
>> +		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>> +			connector->base.display_info.panel_orientation = orientation;
>> +		else
>> +			connector->base.display_info.panel_orientation =
>> +				vlv_dsi_get_panel_orientation(connector);
>> +
>> +		drm_connector_init_panel_orientation_property(&connector->base);
>>   	}
>>   }
>>   
>> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
>> index 47e749b74e5f..c2992f7a0dd5 100644
>> --- a/include/drm/drm_connector.h
>> +++ b/include/drm/drm_connector.h
>> @@ -1370,7 +1370,7 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
>>   void drm_connector_set_vrr_capable_property(
>>   		struct drm_connector *connector, bool capable);
>>   int drm_connector_init_panel_orientation_property(
>> -	struct drm_connector *connector, int width, int height);
>> +	struct drm_connector *connector);
>>   int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
>>   					  int min, int max);
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
