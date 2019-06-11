Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F57E3C076
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 02:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1f7i+ndFpksKLCrEB2JDOG/dP+ESTQjK5Qlc+zMnEw=; b=R7Ro+1kwdhpG0Y
	LtEkKc9EeQOEZPWhTKxIXh8BSbZSdeKNKobSGbxc8D+k9i/KtLN4GFe2z9o6HTiFZF4cFActG+Ctz
	1W0nMXvKFd03JoYuVHq6IcNzBZA3oGRmQwIXp+HI2laCG56srXxrqSICfk1E43itXyJN8Ca4ha1a6
	UjGkC24cOqp+lEZ3LpJVWYEfk94M2ZjWaejFzcR+Zy+4rWh0Om1MpwR55qMzvj7h2+6/+DYyfbbM+
	WX0tp3o/v2Ift49oioRdjK6/7fXKN6ZCK/o975i1/fNxmPiNxavgscV1V+I+3HjrX+Iz8edLc0QbP
	5TJFmHVzWZo8RdZNhzuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUaw-0005yx-El; Tue, 11 Jun 2019 00:24:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZD-0004Pw-FP
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 00:23:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id d30so5886415pgm.7
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 17:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M8dK47yPhynvSehskkuhR0uoKpp2uUP0x/D6+OPbrUg=;
 b=f8RsE3S/kfdDH6v5icBqkYxG44gp7sMpthCwyaqeVVv/htgQ5HpcDI6Wv0iU/zWNcb
 oatVGJ4axZtIjvktwE9gYtDNHp4sChejjwJoasvq2NwX71M8H6s0JQby/OGPhBngYau6
 PLZre9cxMKoOn5+neuim6KE3BHgm+44DhuGtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M8dK47yPhynvSehskkuhR0uoKpp2uUP0x/D6+OPbrUg=;
 b=K7a1YYbWo7vsCViGysDRD2lRo32Qg3Po+B+lcTyonRle1SECsBZj7MGIa/HqHHIZaF
 w5o4FoF0UMq4WfAxCn4FV6/TFAuxOHKm7201FZ/2nNRMnMmgo8GlGEhXt661oTOxbcqE
 fjXHUYR55yOGWgVTHi1gAp+MQnTwNRdODaFukeNF0maoq6fKmLbjH7qhwxFg7XwmemLc
 hhpC0j6uy4XVuhbE6sK/8AaxtMfz5k+jfs7n2cT4N/0+yM47Zd8gsk+L9FtaBXaz3Vs+
 uIYesa8Y/1yreUgf+ogYWhLSArc8id8Ys3AMEc5PPGfN7b29eh5Os9knb5vbMb0lNO86
 wGGA==
X-Gm-Message-State: APjAAAU0xcgENJt0tfcg0BCE8VO8p87OEi5NrFRdJJ+Y08bM4P/A18/W
 LKpxfK8TtrgEeFCjpkj6SB75Yw==
X-Google-Smtp-Source: APXvYqxgskg5maq+JeiMbuvV7nLdRyi6nn4eQ55SV9Rs1d3bhqZcPjSw0Twk7BzvTbHKQzN5RyBSvg==
X-Received: by 2002:a63:8249:: with SMTP id w70mr15859377pgd.33.1560212590903; 
 Mon, 10 Jun 2019 17:23:10 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:10 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] drm/mtk: add panel orientation property
Date: Mon, 10 Jun 2019 17:22:56 -0700
Message-Id: <20190611002256.186969-6-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611002256.186969-1-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172311_618348_ED4D3BC2 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
