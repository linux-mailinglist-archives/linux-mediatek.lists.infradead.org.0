Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB275EF74
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 01:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bas+h8VL9+lab4WfIhKMU1D9PIYoTRTjcToRu9eaiBg=; b=qjIyclP2/Wt6fE
	yynPozC0ZQjvD+k4kMeDGPVke0Hvw7i6Y97RkLDFkDsBFNu6QRd+lvev/qckvxud+IP3MaWQytpMF
	KKDiXOVmvdpyO+DTu5nPx9ff7iott8r7qlX+DqPQqEfGQXNgfI2g7Hs4nt3e6xs5rSVFKCa9SdOMk
	1XOICs8OFvhxgfRVXti7gSgVoO+MOgU7HDTPYBW2L3b5ubOJeovg7avnNJkVKV2Esa1pzp6SgJ+uv
	iqsCxW7OUFUk36QWax07kAEHNpVayrPasg8cbqw4RcvWOtDNhtGy5SNlJzwDVqArtB7f2G8VZ9lQE
	J64bQ2gLKZOTXILRabOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hioIN-000084-Ti; Wed, 03 Jul 2019 23:04:11 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hioGc-00074J-Oe
 for linux-mediatek@lists.infradead.org; Wed, 03 Jul 2019 23:02:24 +0000
Received: by mail-pg1-f195.google.com with SMTP id s27so1946079pgl.2
 for <linux-mediatek@lists.infradead.org>; Wed, 03 Jul 2019 16:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=KoFbuYFaOMgz+CA9HtkLNTvAr+pabLlsPrLFWh8/CDrvglaCWGGLw4Pnxd6skHFk9D
 q3Vow7aYTiXXFCeiDRL8qO677+a7piMs8y1uZhje39FRkVgbfJ0BDZ+RweMNQAxf5gWi
 dXTZ2iVaBDwYMJGt3iTUEcM1C9Zfdf2BI1S3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vxC6cpJeD3A10tWWsNE37FjIALjzLREnlwwa6KDygFo=;
 b=Xa+oB/duyJJnaEyqhFaErXzr/YFDVyDd9Nm7QSs+Miy/QdZEXlji8VZt0Wlq9Bpixv
 pxvxY4n8m6aoGiehuDbtSm6FUnNEgQkrV5bZEa4ojesYlrz4QIAcgbtoc301yNOpkowc
 uviUewA1OVWZOU2mut+RvDxQiLK6J2DjO865U5gpnKrX/g0z5k5fvtd8Gy/nQpH5E+Jr
 3VQyUnltk+lFVgYy0ozZ8xu2L+o7a+QjKXDoAhk8F5c6wjCfUiXYwW0DoGsDVFk4Xatd
 zs6ePb4LxDlkvFPwUDxOQGGCNjTRe5+IhnnOVO7Rcz+ZQscKKkbQtfRqmbHYHMoxEGuw
 rxmw==
X-Gm-Message-State: APjAAAWs4Y8MDThXukXnkb243AG+pXJ1WixQF/984RmbaFYnf83C2O6v
 Z8mY2yhvo0Bmcufbh+wwGUUNnA==
X-Google-Smtp-Source: APXvYqyG7F1sqItbURwJvHhS/2DarvFHk2VbgTA5dTpR7guaFyZ6mbPUxyay/cbBh1DPeX4KcfiwJA==
X-Received: by 2002:a17:90a:cf8f:: with SMTP id
 i15mr14955387pju.110.1562194939953; 
 Wed, 03 Jul 2019 16:02:19 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t8sm4245171pfq.31.2019.07.03.16.02.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 16:02:19 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4] drm/mtk: add panel orientation property
Date: Wed,  3 Jul 2019 16:02:10 -0700
Message-Id: <20190703230210.85342-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190703230210.85342-1-dbasehore@chromium.org>
References: <20190703230210.85342-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_160222_812250_89D2D927 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
index b91c4616644a..2920458ae2fb 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -790,10 +790,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
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
