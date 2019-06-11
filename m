Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0683C1F8
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 06:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VWdEJhfrpUnEaiShQxQFpcASr8j0n4ZMz8N2cly8fs=; b=NQ1oHHvCmMyR1M
	HozEQN7hsIPPH7n+JVa18LzTIc5tIZD71NC6SXsqdoypUoQUGYvlgnbPMMm/QzzUS0ZwLuD5WAKrv
	CWLHSdYD5K5LTdwpIvq+hE6qvuz9n+sC0tjPe4VGBujyD19J3Ba+m7Ebz8C1IqvA41fRQ6pq42pHC
	pvpXIhAC9AdUI7DLzhvrGgYJfOWG6wt84Im/fYcFldxI1lIMv6kXyWBVWz7mmMjsBqvXFd2Vk/b87
	2Sj9Yrqlhc2sRGZcbQLYd3zN2sIZNiorLM2kClWYC5gkajEeOBhvyM8KyobtG0n8bQ31S+oO+Zqof
	EUZySt7vVC/THlucZxKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haY2O-00086F-6b; Tue, 11 Jun 2019 04:05:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haY0u-0005jy-JR
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 04:04:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id l19so3555982pgh.9
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 21:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PRf5zwh2omhJlMBygQXOHV94QlDCvtVP6qLo6sclvew=;
 b=hBI5kWhyOvyp1E+jRaOMnfLP/satVRSFRP8f6NRNyVUCGpgshs8WxNVYT2q0NV/2gj
 wPweK/9YAhTa7JtVa4YtP2wEqtfpY4oObASG+1jPXLuAcs6ScW9XvYt1hu3mmb1W4mC3
 qnv5BgzYpqfI2qcra266da1Q0lOBymxK6SKqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PRf5zwh2omhJlMBygQXOHV94QlDCvtVP6qLo6sclvew=;
 b=WV1FZXYxxLhMrYAo861ONsZ9QxvJMchH+COLtLC2FwYHIbsLUzUbL1vba/gozALUNA
 EPlHRI6P1/a22wzqdVY88iVEqL9Gqa/ei76BqQS8fL1A60+5z+v1v0cXPtkJOzhsOkav
 BfeGjkROErspztMbhDu2NLWFwY6HR4rFDBGZJ6s7bDpwoA3Zj5JOxpx+qCNc0wXTIorW
 sP7PVaOLJIB1y2qxn2q6VtAMI8ob3HhDhS4wYr9kGJZN6YJYhtb1P5a1UXi34QxUEYVA
 Rg6SeOSYb7lDmliwVZLkTs7JcSnlI6ymk21P338tgmxoKTNxKuxPQ0MpppDZoEP8qIeF
 qoow==
X-Gm-Message-State: APjAAAXS+2ZtBBZKvjaNlmt6mqOiP21nL/Irw+GvOyFqTjdedIAmfAbA
 o43bQ79hXCQkretRfZpdWk01mg==
X-Google-Smtp-Source: APXvYqzw8Zl9pN/Pa5y81l8eb8hfV6D4yF7M05gc2/1u6/QOO7gYQ1T3DU+QBeRduFts4YBZE+xKeg==
X-Received: by 2002:a62:6303:: with SMTP id x3mr62758208pfb.261.1560225840106; 
 Mon, 10 Jun 2019 21:04:00 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:59 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] drm/connector: Split out orientation quirk detection
Date: Mon, 10 Jun 2019 21:03:49 -0700
Message-Id: <20190611040350.90064-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_210400_713144_8D43F501 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This removes the orientation quirk detection from the code to add
an orientation property to a panel. This is used only for legacy x86
systems, yet we'd like to start using this on devicetree systems where
quirk detection like this is not needed.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_connector.c | 16 ++++------------
 drivers/gpu/drm/i915/intel_dp.c | 14 +++++++++++---
 drivers/gpu/drm/i915/vlv_dsi.c  | 14 ++++++++++----
 include/drm/drm_connector.h     |  2 +-
 4 files changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index e17586aaa80f..58a09b65028b 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1894,31 +1894,23 @@ EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
  * drm_connector_init_panel_orientation_property -
  *	initialize the connecters panel_orientation property
  * @connector: connector for which to init the panel-orientation property.
- * @width: width in pixels of the panel, used for panel quirk detection
- * @height: height in pixels of the panel, used for panel quirk detection
  *
  * This function should only be called for built-in panels, after setting
  * connector->display_info.panel_orientation first (if known).
  *
- * This function will check for platform specific (e.g. DMI based) quirks
- * overriding display_info.panel_orientation first, then if panel_orientation
- * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
- * "panel orientation" property to the connector.
+ * This function will check if the panel_orientation is not
+ * DRM_MODE_PANEL_ORIENTATION_UNKNOWN. If not, it will attach the "panel
+ * orientation" property to the connector.
  *
  * Returns:
  * Zero on success, negative errno on failure.
  */
 int drm_connector_init_panel_orientation_property(
-	struct drm_connector *connector, int width, int height)
+	struct drm_connector *connector)
 {
 	struct drm_device *dev = connector->dev;
 	struct drm_display_info *info = &connector->display_info;
 	struct drm_property *prop;
-	int orientation_quirk;
-
-	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
-	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
-		info->panel_orientation = orientation_quirk;
 
 	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return 0;
diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
index b099a9dc28fd..72ab090ea97a 100644
--- a/drivers/gpu/drm/i915/intel_dp.c
+++ b/drivers/gpu/drm/i915/intel_dp.c
@@ -40,6 +40,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_hdcp.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_utils.h>
 #include <drm/i915_drm.h>
 
 #include "i915_debugfs.h"
@@ -7281,9 +7282,16 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_connector->panel.backlight.power = intel_edp_backlight_power;
 	intel_panel_setup_backlight(connector, pipe);
 
-	if (fixed_mode)
-		drm_connector_init_panel_orientation_property(
-			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
+	if (fixed_mode) {
+		int orientation = drm_get_panel_orientation_quirk(
+				fixed_mode->hdisplay, fixed_mode->vdisplay);
+
+		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+			connector->display_info.panel_orientation =
+				orientation;
+
+		drm_connector_init_panel_orientation_property(connector);
+	}
 
 	return true;
 
diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
index bfe2891eac37..27f86a787f60 100644
--- a/drivers/gpu/drm/i915/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/vlv_dsi.c
@@ -30,6 +30,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_utils.h>
 
 #include "i915_drv.h"
 #include "intel_atomic.h"
@@ -1650,6 +1651,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 	if (connector->panel.fixed_mode) {
 		u32 allowed_scalers;
+		int orientation;
 
 		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
 		if (!HAS_GMCH(dev_priv))
@@ -1660,12 +1662,16 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-		connector->base.display_info.panel_orientation =
-			vlv_dsi_get_panel_orientation(connector);
-		drm_connector_init_panel_orientation_property(
-				&connector->base,
+		orientation = drm_get_panel_orientation_quirk(
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
+		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+			connector->base.display_info.panel_orientation = orientation;
+		else
+			connector->base.display_info.panel_orientation =
+				vlv_dsi_get_panel_orientation(connector);
+
+		drm_connector_init_panel_orientation_property(&connector->base);
 	}
 }
 
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 47e749b74e5f..c2992f7a0dd5 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1370,7 +1370,7 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
 void drm_connector_set_vrr_capable_property(
 		struct drm_connector *connector, bool capable);
 int drm_connector_init_panel_orientation_property(
-	struct drm_connector *connector, int width, int height);
+	struct drm_connector *connector);
 int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
