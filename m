Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD4D3C075
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 02:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUBSXQEya2PP99ic5WhM0fIoq81JwIVWYSKKPdYTLwc=; b=X5JnTMTqlGeeZL
	6MsvMSPWd7V7PwxgreyTAta1HPFaE5p/6Dw45UxEc0JxdzmJHmhYjqpZYCzdXICLXDMSIR9pD8SyT
	Iya4FXKPQQCDQ1uv8Vr+a+wRUV70mfgiAWiSXVLaDtC59BJ9MJaVWya6wLI2YpTXSTt/DNzd00mfb
	t5X65HELa02nJY0YwBrRx5bXOmBd3u4TWA7/KfShxYRY5iSTmBItyNuVsMZzaEO/Be2++GE2MyaAF
	IMcxLoxNVG8JBxX8IEFHhQh9rAZVc7RrpBXnjU4BLqvaIRthkB3kla6w3G4NXn4XmbZ4WHIjvx0bj
	KDZr6Z0lEuutl45UiNIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUau-0005wL-4e; Tue, 11 Jun 2019 00:24:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZC-0004OL-NE
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 00:23:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so2947561pfp.7
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 17:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SbGlBPyajmgb9CaueSzIfrgJlhnAGN7+8e2UjE2WPGs=;
 b=QMTcan/tAguair4X5N96kBUhDCQmzcPQ8o33atawGY8VZu4nSq4tzlWDtJGd+W/JpQ
 nl1W7EVIj+azFgH5SC++A+b3c6obUjjID0u/wvWW7dT4ASZmLXG0PkwC7/eoU1mQCkOK
 myUpXIrOD1SQJe+dlbHElyIEz85++rjSgwYnw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SbGlBPyajmgb9CaueSzIfrgJlhnAGN7+8e2UjE2WPGs=;
 b=KBumyUhMM0jXNG3lkAeo3cNi5R8gzX2roK7AllI7+mQCTRewoVvJtEBYuU+zLoP+Tn
 St0RAqBOvfkZmZ1AheRCIk3NHA346m/jBur8qBTBos0md4UbwgB3ZIv4VpWRQwyFVwhQ
 /RfEOYTvpURjgUvv7DIKtjWa11y27M9WLiFWUWVeVqoBSlx/ZbWUMiwn9aGEz47OSr0c
 fW3SwcKz3sFrnnrIt4uoVjNyoo58gWCL/6c4ETTT2+JFsFNKWWOqzjWgRaAGEuFgw5+b
 GDmvlQhfG15ywMm1S6JQDFYIdgW3VN9vzmMqpD9OYc0maZ/4jUIiuYZlQAOxLArJLDts
 RSQQ==
X-Gm-Message-State: APjAAAUFOMCsZUbNGibFrCM96as0ws7zVvYmZV6BePcim9DKK9MciAf6
 +Vypv+Zbsxu4iPxyb78pIeMs6A==
X-Google-Smtp-Source: APXvYqwi56JXscBKRHfQoGNMBePzYhFMyyTHJGvp9aFG+ez3Y7Dba8/6WvJUku8BN9epZSypI5eOvQ==
X-Received: by 2002:a63:ee12:: with SMTP id e18mr18316371pgi.412.1560212589668; 
 Mon, 10 Jun 2019 17:23:09 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:09 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] drm/connector: Split out orientation quirk detection
Date: Mon, 10 Jun 2019 17:22:55 -0700
Message-Id: <20190611002256.186969-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611002256.186969-1-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172310_792624_B8E5FE15 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This removes the orientation quirk detection from the code to add
an orientation property to a panel. This is used only for legacy x86
systems, yet we'd like to start using this on device tree systems
where quirk detection like this is not needed.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_connector.c | 16 ++++------------
 drivers/gpu/drm/i915/vlv_dsi.c  | 13 +++++++++----
 include/drm/drm_connector.h     |  2 +-
 3 files changed, 14 insertions(+), 17 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/vlv_dsi.c b/drivers/gpu/drm/i915/vlv_dsi.c
index bfe2891eac37..113129996530 100644
--- a/drivers/gpu/drm/i915/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/vlv_dsi.c
@@ -1650,6 +1650,7 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 	if (connector->panel.fixed_mode) {
 		u32 allowed_scalers;
+		int orientation;
 
 		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
 		if (!HAS_GMCH(dev_priv))
@@ -1660,12 +1661,16 @@ static void intel_dsi_add_properties(struct intel_connector *connector)
 
 		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-		connector->base.display_info.panel_orientation =
-			vlv_dsi_get_panel_orientation(connector);
-		drm_connector_init_panel_orientation_property(
-				&connector->base,
+		orientation = drm_get_panel_orientation_quirk(
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
+		if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+			connector->display_info.panel_orientation = orientation;
+		else
+			connector->display_info.panel_orientation =
+				intel_dsi_get_panel_orientation(connector);
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
