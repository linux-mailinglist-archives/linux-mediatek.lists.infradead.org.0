Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3781BE89D
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Sep 2019 00:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fI79y8pYkaAprE5yGuJsq67E4/biS3R+waVQToks4BE=; b=MwdL0k5MPb8uCG
	H1UuWRqELsUkfd02avY7GPQvoqwhk/i6Wd6MejcLjf04+PLr9/uX2HfkmsMhVc/t2cZDJXUYjET5i
	VR3ap+FzS5RKL0gP5dwQkUqbvsqTagzZA0+yf48B11kHkdFch1qMCRPbz2ZoHtkJYj3qsEQMAbA4l
	zcW//zYywu/soT84/jYFKx9pC7JQ9rVYWsrpOv85ns06wkQoRhLCusOI3jwRSlvMrklFcxNsUTDbV
	gstAES4KxRh+OtY3mad+hNePna0zSt4K1BxjpvPkA2RiFvz4hrJREmMVFgOiCxTwaGfsK10tUDXxD
	Kp56mviLFcz/B3ygrIGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGFj-0003Ma-Jj; Wed, 25 Sep 2019 22:59:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGF7-0002nj-1N
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 22:58:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id x10so204932pgi.5
 for <linux-mediatek@lists.infradead.org>; Wed, 25 Sep 2019 15:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8RLpwKs4I/KTJ32MS45zoaSBUWPxrYYP2TJ+BhJ7dIo=;
 b=lX625GkSWQhcn3jHGAe6xWSr0MrR/xtQ2yTUKlx5cgk/atVv5K7Kc50LuoUY675HjQ
 Y8b+UWDk8muJoMytA0w5+vX8OLmFKLu/+beCXViUfxS6zK4zo/TzqMNEAAa/VdGnvPYT
 Jq1YeEDWdMlDsRJCeFLex/1KV68Gz4c6ISl1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8RLpwKs4I/KTJ32MS45zoaSBUWPxrYYP2TJ+BhJ7dIo=;
 b=l+DJx51gcvHaftcVoyVcDE7mKSdXjaEKfrtdZiEqP3JYGg6eVSjodeGy4zYg+tbMer
 FkTM/VDq9XAtEWu0AkdJnpbG3AEXq7fZNUvN2RBnmYH1wqDXzO3IJ1LiVER1Lk3RVftz
 axm5G5EDOVrEsOezXZC5N8y5O950/pZ3Qd7S0hteU5Vyx4jHCyUTacQykdQYqYUB/XqZ
 +5+cCXE1YD90MA7GrkpyLQ8BXbM7wwnnu+rhPi7byzE3YU6wD4ZqU3+sA03MrbMi+PQm
 ePbXTtF6Ga1bX3ynLHmibwKoGW9bS2IuZjPUs/8YXzYVMAXjuEMvu13nSTej0R9kwmrs
 p+wQ==
X-Gm-Message-State: APjAAAXmEKBKKyM2YcqY483yP6AsZdzOKlhROsKvyF5HzDXhbvr6QYPi
 jBAvvJj8XJbK9VrBRX+Z42O31A==
X-Google-Smtp-Source: APXvYqx+h6o8pAcbo6iFSgBiXzuTlpI1jzN3uzMrVMTvyDHl+CmzEswng7j99czxoZvuaSQhXljYkw==
X-Received: by 2002:a63:67c2:: with SMTP id b185mr278299pgc.436.1569452320464; 
 Wed, 25 Sep 2019 15:58:40 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:39 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/4] drm/panel: Add helper for reading DT rotation
Date: Wed, 25 Sep 2019 15:58:30 -0700
Message-Id: <20190925225833.7310-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
In-Reply-To: <20190925225833.7310-1-dbasehore@chromium.org>
References: <20190925225833.7310-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155841_511451_75465304 
X-CRM114-Status: GOOD (  14.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/drm_panel.c | 43 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_panel.h     |  9 ++++++++
 2 files changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 6b0bf42039cf..0909b53b74e6 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -264,6 +264,49 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
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
index 624bd15ecfab..d16158deacdc 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -34,6 +34,8 @@ struct drm_device;
 struct drm_panel;
 struct display_timing;
 
+enum drm_panel_orientation;
+
 /**
  * struct drm_panel_funcs - perform operations on a given panel
  *
@@ -165,11 +167,18 @@ int drm_panel_get_modes(struct drm_panel *panel);
 
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
2.23.0.351.gc4317032e6-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
