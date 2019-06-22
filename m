Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08424F36B
	for <lists+linux-mediatek@lfdr.de>; Sat, 22 Jun 2019 05:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x08cH2kcXXUY7vqYW8JAO4K8Z4BbVwcULa0yOyEKdwQ=; b=fV22q5hxjlN7Y1
	84ysIEOEUYvMr1rKLIUw+auPt43nXZSuQP0oKTVpeI8tlrODD0mmavpzcMsP53+bNGCYJC8+EVqaj
	O37uuXdHJdwyopAXTQJWuu5/nky/251sH0Bddtaq9F3nQ+2IL2mNxWwYdzmt0THOAJNipgBp3zcJr
	uGEloHA5ABkQb7IJP4oZ9UTfPG+XuIFEW5aC3M6ZSBt+x7DlSCwmRtVc+NfzE7AEWhm3HcT4aKQkm
	C753ySrnMvPxuG2pXFdGAkJL1uJ72w4wqVRF413jvYTnJSu6VTGyn0DhSb6k+IHyeRa8MgJucwBMf
	I0rHi1Jc03D30qa+MJzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heWuC-0001z2-BM; Sat, 22 Jun 2019 03:41:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heWtw-0001mZ-BA
 for linux-mediatek@lists.infradead.org; Sat, 22 Jun 2019 03:41:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so4512851pfe.11
 for <linux-mediatek@lists.infradead.org>; Fri, 21 Jun 2019 20:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=niGTS4FI/C687+sa3kKLIMPE58L7G7E5nctX9I6CtYN8GELqO1dmYNy3W+bytP3lM2
 7jJLiBQxNMTmWuycDio83VjqRBYXENo40QGJV77eJIpEvs05teclhe/XR8ex/VpLgaDx
 lNQopJYpNYfOR+08BHj2q1c/NuSF1p8+Ua8Lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=OTMOQKdW+hUhE5QFM4cyUes6Kb6shWaZ4z3YXfOeKjWJlJAKbXDXTrYRYhSRY9+HR5
 Sl2e5nJwv2bMzPJ9E0xzUZc4UiAGk5uds82wXDJAePgjx9tRN23yVVM8+VBmB5fTw40j
 AiccxBEYjwsmuV2uuYqao0I/fyM0OF2W0lTCD9Ag/Wc+vFSMWU72Bq53KgsQQLPZfjOp
 stnvUJ8po42tH4W9kWwQ3QeyEDJO+U7FgXQWRJN6UgNpCPUUwSYN3YRx61vclhn32UCD
 a8yQW7KTllbKdsDtYQNCaow8PlL1vg26TWk7B2aCZ5PZYkmU6estC5rHLMDRWRig9JrB
 5eXQ==
X-Gm-Message-State: APjAAAXGnK7vpSCy/nERMZ7AjRswxdxP3YYnEzfcJTBCn7vmaxfkhrGi
 TaVIjnFPwa32OAIbG+kKb+hgsA==
X-Google-Smtp-Source: APXvYqzslQDI58gAtC55+8w+gQS8zY9PascQUVg5lYBeYsEo3d9ImRfo5a3yRY89wZxYrkoWlqCAMQ==
X-Received: by 2002:a17:90b:d8f:: with SMTP id
 bg15mr10778249pjb.65.1561174875712; 
 Fri, 21 Jun 2019 20:41:15 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:15 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] drm/mtk: add panel orientation property
Date: Fri, 21 Jun 2019 20:41:05 -0700
Message-Id: <20190622034105.188454-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190622034105.188454-1-dbasehore@chromium.org>
References: <20190622034105.188454-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_204116_413021_340CB9F6 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This inits the panel orientation property for the mediatek dsi driver
if the panel orientation (connector.display_info.panel_orientation) is
not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 4a0b9150a7bb..08ffdc7526dd 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -782,10 +782,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
 			DRM_ERROR("Failed to attach panel to drm\n");
 			goto err_connector_cleanup;
 		}
+
+		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
+		if (ret) {
+			DRM_ERROR("Failed to init panel orientation\n");
+			goto err_panel_detach;
+		}
 	}
 
 	return 0;
 
+err_panel_detach:
+	drm_panel_detach(dsi->panel);
 err_connector_cleanup:
 	drm_connector_cleanup(&dsi->conn);
 	return ret;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
