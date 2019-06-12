Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B84941962
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 02:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdbtFxZaNwTMuzizEw+6q5luevmrfntueMdz2Ri8kUE=; b=bxFDmO4x1BpMpe
	S5Cqa2RuuM1JOzca8MMR2zamyV6Sqaw9prbHzLvChy76CvD5hEk2XtiUmaP+FxzOS3hEq7Na34afG
	ffAyOEUZbPcq53Wrj8nl7qtK/12+05uVM0XeYMFYlaZIWjt19g4wPEiaWLYZD65sz5Oz5JIh0RtMD
	b4M/KVCvzBrCvui0Iwu0S8mAN6SMp4xRm2m8VRTZevk5GNYWljrbbB5qHJSV3tl7kiNzWGQvtctNZ
	wV2o2y8amkLDkX0kxEFxPzj7B1imKz+WY2qKQYutjPfpA51Je1XxHhIgVzpIPORlOJwkIncF06TP5
	yV803Oare7iHWF6iwbJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haqwi-00036u-Gb; Wed, 12 Jun 2019 00:16:56 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haqwe-00036E-Sr
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 00:16:54 +0000
Received: by mail-vs1-xe44.google.com with SMTP id l20so9141296vsp.3
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 17:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SfO9F8KZrr8f2zYzYCRkN8MSxrGxIaN330Tf5LK87fo=;
 b=bz8o81L6+cYm2ngvHqapE8gu1XLoSuCnuYhH0SUdUtpksRCuF2SsLGGes/2mwR9s2S
 RM6CKjQmDnezF8ApAw0fUBxHfpZUgPHC2pLNBvJvyZMVy7pv167DASrNvojG8XTA8BZy
 F4JG4+AytDmmTtNdNUxLuH24pkHO8bPHRfy5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SfO9F8KZrr8f2zYzYCRkN8MSxrGxIaN330Tf5LK87fo=;
 b=OOwEw73ru2ZCe9SbpV/f5HbbsmY0/1a2iL2ES1qbE474B5OORn55oPyAdFof7xGIEZ
 xl3rETSo0A+aaMsRo9xK/BLjfAOOfrWrH5up+7IltrliM6VqcrbJMDiAaVxlskolY78d
 6vdm/Kr0CLthamA1ApKGw+Op89GP/bGjZCmovVEAEPL4vrtRK3ciSOnnUvZfs/p9xh9Z
 AcY0nEl284Q3MTZ2OWc+REgRK3ayjanGtRwOboau3yWu3z/WKyFbdt81C8cdF+4sbn7M
 wM84MqHXvdRlYvpROchOt8UU00cprmz5+GD7w1/933XAwWwTdUQC1nfmjgnhTkec9l00
 9xAg==
X-Gm-Message-State: APjAAAXKW3zSRr5H2NQkrbloTfWEByqE5ZQL/NYM7eI4D6R2liUy/YAo
 L3U8AVqqMYCIWntifhi23UsIQpsAEyUV90/kQZB09w==
X-Google-Smtp-Source: APXvYqxUOzD8AqvvcWDf7lhY9Uveg285+W4sY5GBDN/I9hYwTGaKY8nKDHt/xqKW6AbgISVYKcf5oBcbdbGd+wCWdEY=
X-Received: by 2002:a67:8e01:: with SMTP id q1mr44148432vsd.1.1560298611160;
 Tue, 11 Jun 2019 17:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
 <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
In-Reply-To: <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 17:16:40 -0700
Message-ID: <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
Subject: Re: [PATCH 4/5] drm/connector: Split out orientation quirk detection
To: Hans de Goede <hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_171652_956876_19E36738 
X-CRM114-Status: GOOD (  31.88  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 David Airlie <airlied@linux.ie>, CK Hu <ck.hu@mediatek.com>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 1:54 AM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 11-06-19 10:08, Jani Nikula wrote:
> > On Mon, 10 Jun 2019, Derek Basehore <dbasehore@chromium.org> wrote:
> >> This removes the orientation quirk detection from the code to add
> >> an orientation property to a panel. This is used only for legacy x86
> >> systems, yet we'd like to start using this on devicetree systems where
> >> quirk detection like this is not needed.
> >
> > Not needed, but no harm done either, right?
> >
> > I guess I'll defer judgement on this to Hans and Ville (Cc'd).
>
> Hmm, I'm not big fan of this change. It adds code duplication and as
> other models with the same issue using a different driver or panel-type
> show up we will get more code duplication.
>
> Also I'm not convinced that devicetree based platforms will not need
> this. The whole devicetree as an ABI thing, which means that all
> devicetree bindings need to be set in stone before things are merged
> into the mainline, is done solely so that we can get vendors to ship
> hardware with the dtb files included in the firmware.

We've posted fixes to the devicetree well after the initial merge into
mainline before, so I don't see what you mean about the bindings being
set in stone. I also don't really see the point. The devicetree is in
the kernel. If there's some setting in the devicetree that we want to
change, it's effectively the same to make the change in the devicetree
versus some quirk setting. The only difference seems to be that making
the change in the devicetree is cleaner.

>
> I'm 100% sure that there is e.g. ARM hardware out there which uses
> non upright mounted LCD panels (I used to have a few Allwinner
> tablets which did this). And given my experience with the quality
> of firmware bundled tables like ACPI tables I'm quite sure that
> if we ever move to firmware included dtb files that we will need
> quirks for those too.

Is there a timeline to start using firmware bundled tables? Since the
quirk code only uses DMI, it will need to be changed anyways for
firmware bundled devicetree files anyways.

We could consolidate the duplicated code into another function that
calls drm_get_panel_orientation_quirks too. The only reason it's like
it is is because I initially only had the call to
drm_get_panel_orientation_quirk once in the code.


>
> Also calling this "used only for legacy x86 systems" is a bit
> unfair IMHO, new UEFI models are still being added to the quirk list
> today, for hardware which does not even ship yet. Actually 99%
> of the models in the quirk list are UEFI only models, which do
> not even support classic PC BIOS booting, so those systems are
> anything but legacy.
>
> I believe the only reason we have only had to deal with this on x86
> so far is because the OOTB support for most ARM systems is less polished
> then that for x86 systems and on ARM systems there are still more
> important issues to tackle first.

ARM just handles it in a different way. I'm not exactly sure how more
of the Android tablets do this, but it might just be handled entirely
in userspace with rotated splash screens on boot (so a device with a
180 degree panel has an upside down splash screen).

>
> Regards,
>
> Hans
>
>
>
>
>
>
> >
> > Side note, I'm about to apply some (minor) conflicting changes in our
> > -next as soon as I get CI results on it.
> >
> >
> > BR,
> > Jani.
> >
> >
> >>
> >> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> >> ---
> >>   drivers/gpu/drm/drm_connector.c | 16 ++++------------
> >>   drivers/gpu/drm/i915/intel_dp.c | 14 +++++++++++---
> >>   drivers/gpu/drm/i915/vlv_dsi.c  | 14 ++++++++++----
> >>   include/drm/drm_connector.h     |  2 +-
> >>   4 files changed, 26 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> >> index e17586aaa80f..58a09b65028b 100644
> >> --- a/drivers/gpu/drm/drm_connector.c
> >> +++ b/drivers/gpu/drm/drm_connector.c
> >> @@ -1894,31 +1894,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
> >>    * drm_connector_init_panel_orientation_property -
> >>    * initialize the connecters panel_orientation property
> >>    * @connector: connector for which to init the panel-orientation property.
> >> - * @width: width in pixels of the panel, used for panel quirk detection
> >> - * @height: height in pixels of the panel, used for panel quirk detection
> >>    *
> >>    * This function should only be called for built-in panels, after setting
> >>    * connector->display_info.panel_orientation first (if known).
> >>    *
> >> - * This function will check for platform specific (e.g. DMI based) quirks
> >> - * overriding display_info.panel_orientation first, then if panel_orientation
> >> - * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
> >> - * "panel orientation" property to the connector.
> >> + * This function will check if the panel_orientation is not
> >> + * DRM_MODE_PANEL_ORIENTATION_UNKNOWN. If not, it will attach the "panel
> >> + * orientation" property to the connector.
> >>    *
> >>    * Returns:
> >>    * Zero on success, negative errno on failure.
> >>    */
> >>   int drm_connector_init_panel_orientation_property(
> >> -    struct drm_connector *connector, int width, int height)
> >> +    struct drm_connector *connector)
> >>   {
> >>      struct drm_device *dev = connector->dev;
> >>      struct drm_display_info *info = &connector->display_info;
> >>      struct drm_property *prop;
> >> -    int orientation_quirk;
> >> -
> >> -    orientation_quirk = drm_get_panel_orientation_quirk(width, height);
> >> -    if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> >> -            info->panel_orientation = orientation_quirk;
> >>
> >>      if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> >>              return 0;
> >> diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
> >> index b099a9dc28fd..72ab090ea97a 100644
> >> --- a/drivers/gpu/drm/i915/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/intel_dp.c
> >> @@ -40,6 +40,7 @@
> >>   #include <drm/drm_edid.h>
> >>   #include <drm/drm_hdcp.h>
> >>   #include <drm/drm_probe_helper.h>
> >> +#include <drm/drm_utils.h>
> >>   #include <drm/i915_drm.h>
> >>
> >>   #include "i915_debugfs.h"
> >> @@ -7281,9 +7282,16 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >>      intel_connector->panel.backlight.power = intel_edp_backlight_power;
> >>      intel_panel_setup_backlight(connector, pipe);
> >>
> >> -    if (fixed_mode)
> >> -            drm_connector_init_panel_orientation_property(
> >> -                    connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
> >> +    if (fixed_mode) {
> >> +            int orientation = drm_get_panel_orientation_quirk(
> >> +                            fixed_mode->hdisplay, fixed_mode->vdisplay);
> >> +
> >> +            if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> >> +                    connector->display_info.panel_orientation =
> >> +                            orientation;
> >> +
> >> +            drm_connector_init_panel_orientation_property(connector);
> >> +    }
> >>
> >>      return true;
> >>
> >> diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
> >> index bfe2891eac37..27f86a787f60 100644
> >> --- a/drivers/gpu/drm/i915/vlv_dsi.c
> >> +++ b/drivers/gpu/drm/i915/vlv_dsi.c
> >> @@ -30,6 +30,7 @@
> >>   #include <drm/drm_crtc.h>
> >>   #include <drm/drm_edid.h>
> >>   #include <drm/drm_mipi_dsi.h>
> >> +#include <drm/drm_utils.h>
> >>
> >>   #include "i915_drv.h"
> >>   #include "intel_atomic.h"
> >> @@ -1650,6 +1651,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
> >>
> >>      if (connector->panel.fixed_mode) {
> >>              u32 allowed_scalers;
> >> +            int orientation;
> >>
> >>              allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
> >>              if (!HAS_GMCH(dev_priv))
> >> @@ -1660,12 +1662,16 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
> >>
> >>              connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
> >>
> >> -            connector->base.display_info.panel_orientation =
> >> -                    vlv_dsi_get_panel_orientation(connector);
> >> -            drm_connector_init_panel_orientation_property(
> >> -                            &connector->base,
> >> +            orientation = drm_get_panel_orientation_quirk(
> >>                              connector->panel.fixed_mode->hdisplay,
> >>                              connector->panel.fixed_mode->vdisplay);
> >> +            if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
> >> +                    connector->base.display_info.panel_orientation = orientation;
> >> +            else
> >> +                    connector->base.display_info.panel_orientation =
> >> +                            vlv_dsi_get_panel_orientation(connector);
> >> +
> >> +            drm_connector_init_panel_orientation_property(&connector->base);
> >>      }
> >>   }
> >>
> >> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> >> index 47e749b74e5f..c2992f7a0dd5 100644
> >> --- a/include/drm/drm_connector.h
> >> +++ b/include/drm/drm_connector.h
> >> @@ -1370,7 +1370,7 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
> >>   void drm_connector_set_vrr_capable_property(
> >>              struct drm_connector *connector, bool capable);
> >>   int drm_connector_init_panel_orientation_property(
> >> -    struct drm_connector *connector, int width, int height);
> >> +    struct drm_connector *connector);
> >>   int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
> >>                                        int min, int max);
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
