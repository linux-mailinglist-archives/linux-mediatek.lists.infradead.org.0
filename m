Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17EC3C1EC
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 06:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBCoajuD5qWgNIdc7SinVBPQG4gTd4oPF+prm0BcmLc=; b=O6cQY8OSmUREU4
	jcCvPu3ayyf9iPFPYXcu96cJCxI/wVoOdJBCWcyZllCMJmQ1r6+tYZJ+JmiZqrP5rCTgkTjH8nR0p
	140MwP25Q/4KjXSqTXPnu3jwyDfiW1347bzGBHkIjgJXRKlQlXMJJpYygxbFZ4MnDW5bHDDv0Y3/X
	ti2Hh8fGf0FDLlJKshInGHVaXopcBdoQJjvQNsUYKm9wT9TsxBs5cRC5d2u8Gmw+yjg2Xs4lJHvBm
	PWU7weu9h3R0U3cW5YaUjHFz5Rnp435Cqcc3aq+/9j8kqu1mLCXGEdGpVS1abHqpbs0I/230+x24C
	I4xAijOdHrEyIaI0ZTlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haY1X-0006HD-Cb; Tue, 11 Jun 2019 04:04:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haY0s-0005h8-2M
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 04:03:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so651878pfl.3
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 21:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=NpIiYZAZ293e5siqen5Oz27pVJuQEiqx/skxzzgF9MmBRxj1DCy5igwLq3xQY5fLt4
 6ijSQMHl5nqD2CEkVoKO7bNwFt2FMABbPicsIoQ+6XGy1CrK43ONHRMIiygoP/GBi1Tx
 mpT3cNIEtjV+ei2btpQJ+tOS5TF+m8OjwvjZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ys0DSil+WvCMaDGevz2dSiLwFPZR4jwAs4InRe1vZNA=;
 b=SRxa0FpKbBMfh9ih2wRlHqcfC3LA2DouNnkTLEGOE7MEoUlizGmrepNU6l3aNNxCd2
 wLKcjJBTjoMzx3oKyJEpPlt/ahBWZ+zP6BlW25mgIkvfsIBK2KMWjuBcjBBLFYUt9uRB
 qkF9oavL9D7IcRK+ApOjfPOzxsP0BWG/hb2e+6PgcToiJg9bwD26tR04wd46BiOq0sEf
 1GJFEdtxZxgT98PkI54W+CP1IY/0uSeapMbYJvisIxe47nuZKnEzNc43KOEmLub2PHrd
 DerUg0BOqWUXxxzALk7S9tkKRW8Zrz8Yh/3LewGzBfug5WgqYENRxOsLYf4BkLfBDuhD
 qPOA==
X-Gm-Message-State: APjAAAUA8YzKxyiQkZqYKbaK7ZzFE+CTgcfjztoFHKkRlLDn57HgMxGt
 u6vquC9476c66VAAtlTnQ9L07Q==
X-Google-Smtp-Source: APXvYqztkWgDwmpShVmNY3JX/yoLvhlQG+pv1dg44RWOiGpLZ5kd7o3wLJ474CqYq7S74tPbVuKsCw==
X-Received: by 2002:aa7:825a:: with SMTP id e26mr79303252pfn.255.1560225837698; 
 Mon, 10 Jun 2019 21:03:57 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:57 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: display/panel: Expand rotation documentation
Date: Mon, 10 Jun 2019 21:03:47 -0700
Message-Id: <20190611040350.90064-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_210358_115573_4AF81F43 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This adds to the rotation documentation to explain how drivers should
use the property and gives an example of the property in a devicetree
node.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 .../bindings/display/panel/panel.txt          | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel.txt b/Documentation/devicetree/bindings/display/panel/panel.txt
index e2e6867852b8..f35d62d933fc 100644
--- a/Documentation/devicetree/bindings/display/panel/panel.txt
+++ b/Documentation/devicetree/bindings/display/panel/panel.txt
@@ -2,3 +2,35 @@ Common display properties
 -------------------------
 
 - rotation:	Display rotation in degrees counter clockwise (0,90,180,270)
+
+Property read from the device tree using of of_drm_get_panel_orientation
+
+The panel driver may apply the rotation at the TCON level, which will
+make the panel look like it isn't rotated to the kernel and any other
+software.
+
+If not, a panel orientation property should be added through the SoC
+vendor DRM code using the drm_connector_init_panel_orientation_property
+function.
+
+Example:
+	panel: panel@0 {
+		compatible = "boe,himax8279d8p";
+		reg = <0>;
+		enable-gpios = <&pio 45 0>;
+		pp33-gpios = <&pio 35 0>;
+		pp18-gpios = <&pio 36 0>;
+		pinctrl-names = "default", "state_3300mv", "state_1800mv";
+		pinctrl-0 = <&panel_pins_default>;
+		pinctrl-1 = <&panel_pins_3300mv>;
+		pinctrl-2 = <&panel_pins_1800mv>;
+		backlight = <&backlight_lcd0>;
+		rotation = <180>;
+		status = "okay";
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
