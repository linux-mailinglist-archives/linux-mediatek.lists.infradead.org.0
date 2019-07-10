Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEF663F34
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 04:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOttsZ48zoCOjGGDLrpF5LMDhZnNzAScJY4I0ARjFlM=; b=HhtBinMBzCKY9z
	IoIQ4GImAkZYMMMeXATW/gBwu6DQcW2dGZZt7l+/LmFYh+fi6vACA7+MDsnYIZw3vRtlXgGQjIMA2
	gvNqRKPH1GyFVr0NhplNtzPnYMPp76hIDQUy4i4B+SfZOw9FWA+6K6mLn2UTWUrA1GH/IYYWELEko
	QLuELg+pDKO4gnswVSJpng+WNS2niui66dD/T+AoMOeR4Lsxyz/JbWCCqTJUovJkKP7A+6mNY6gOw
	yq1FLBBXeYC5nAfzIF0D44OmbwZZ/kAOJqrbJVjylo1wiiHAuFUYKfUcFctUJAfB6QtRqJSWIDnw+
	TGm3oKyD+a/1Wj//hfxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2Aw-0004be-4Z; Wed, 10 Jul 2019 02:17:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2AL-00046g-Jw
 for linux-mediatek@lists.infradead.org; Wed, 10 Jul 2019 02:17:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so357473plr.11
 for <linux-mediatek@lists.infradead.org>; Tue, 09 Jul 2019 19:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rpikIMJnjn17ow7nT90ZsAW62vVzq/828AzyTgXxFns=;
 b=KDpUaR2GTnyrc5bMH+RZ/Ty7EpO7D4yGQhOPGklSvXA9LczGYZw1cMR+dqYMR5AAdG
 ZbEaUkfCibKP8V3y0H0AWCmawTAQw5ugJghD1xH7RRRwlvMMGZYwabADa4uDkEe4MDuF
 obGD2zMEp0B0zxe1cgmuCzYJCFFvIeiP12Fqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rpikIMJnjn17ow7nT90ZsAW62vVzq/828AzyTgXxFns=;
 b=sPDN7mXD2vZx1SvMzDS1Zzcv09f9MA0LgTbmdHG37oJu+ZiuuZTvGST7LZ+K+xYNn5
 c7Jy8acUL9oN6jWir3a5ryfNH9l5AQecFP7F/a4Q168FtgZIufJ67l0qWjmUixKQWImE
 UcfnVZZfp3Ks3WmGqVoV/hX2M9BdkS+IzuIoKKdn6ha3fZmQia46btdRXphFZqoHxbQU
 YPNwVQLfw/RjZI//FOUINLY37ODTFZE3Xqk0CdgmdK40psrVovFAPSjutBDj5+o9wyyz
 aXzctLDee/X2ZiSB3rI4BNlMo4hJSTXP2f4U1ppvRfJAFis1c81D1Y8NsjULHyusRi1x
 9M+w==
X-Gm-Message-State: APjAAAUqmnGksqiInH8CbbCqLSTcZ9uH2mwNussCHqHZX+UWH5EfQ1X7
 FZn5IZYmoH3cWoxBUBvmEdOCQg==
X-Google-Smtp-Source: APXvYqy+kaD+8WCvx1z34bavMVVvQyXcArFU8CdZkcpUOI22pNIsEQGjP5EZMCNZD72F1EBpskCOOg==
X-Received: by 2002:a17:902:788e:: with SMTP id
 q14mr36255101pll.234.1562725024955; 
 Tue, 09 Jul 2019 19:17:04 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id f17sm326296pgv.16.2019.07.09.19.17.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 19:17:04 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/4] drm/panel: Add helper for reading DT rotation
Date: Tue,  9 Jul 2019 19:16:56 -0700
Message-Id: <20190710021659.177950-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190710021659.177950-1-dbasehore@chromium.org>
References: <20190710021659.177950-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_191705_651024_ADEE48AC 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds a helper function for reading the rotation (panel
orientation) from the device tree.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_panel.c | 43 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_panel.h     |  9 ++++++++
 2 files changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index dbd5b873e8f2..169bab54d52d 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -172,6 +172,49 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
 	return ERR_PTR(-EPROBE_DEFER);
 }
 EXPORT_SYMBOL(of_drm_find_panel);
+
+/**
+ * of_drm_get_panel_orientation - look up the orientation of the panel through
+ * the "rotation" binding from a device tree node
+ * @np: device tree node of the panel
+ * @orientation: orientation enum to be filled in
+ *
+ * Looks up the rotation of a panel in the device tree. The orientation of the
+ * panel is expressed as a property name "rotation" in the device tree. The
+ * rotation in the device tree is counter clockwise.
+ *
+ * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
+ * rotation property doesn't exist. -EERROR otherwise.
+ */
+int of_drm_get_panel_orientation(const struct device_node *np,
+				 enum drm_panel_orientation *orientation)
+{
+	int rotation, ret;
+
+	ret = of_property_read_u32(np, "rotation", &rotation);
+	if (ret == -EINVAL) {
+		/* Don't return an error if there's no rotation property. */
+		*orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
+		return 0;
+	}
+
+	if (ret < 0)
+		return ret;
+
+	if (rotation == 0)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
+	else if (rotation == 90)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
+	else if (rotation == 180)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
+	else if (rotation == 270)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
+	else
+		return -EINVAL;
+
+	return 0;
+}
+EXPORT_SYMBOL(of_drm_get_panel_orientation);
 #endif
 
 MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 8c738c0e6e9f..fc7da55f41d9 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -33,6 +33,8 @@ struct drm_device;
 struct drm_panel;
 struct display_timing;
 
+enum drm_panel_orientation;
+
 /**
  * struct drm_panel_funcs - perform operations on a given panel
  * @disable: disable panel (turn off back light, etc.)
@@ -197,11 +199,18 @@ int drm_panel_detach(struct drm_panel *panel);
 
 #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
 struct drm_panel *of_drm_find_panel(const struct device_node *np);
+int of_drm_get_panel_orientation(const struct device_node *np,
+				 enum drm_panel_orientation *orientation);
 #else
 static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
 {
 	return ERR_PTR(-ENODEV);
 }
+static inline int of_drm_get_panel_orientation(const struct device_node *np,
+		enum drm_panel_orientation *orientation)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
