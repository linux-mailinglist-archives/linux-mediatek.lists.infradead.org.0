Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C9F5D877
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 01:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x08cH2kcXXUY7vqYW8JAO4K8Z4BbVwcULa0yOyEKdwQ=; b=L5J+vE1fkXaoxh
	IWlwldVw3EN6hACNiV3Mlf4WABvNsT8dJT9yfxT60UJLAehJSsL+RaijX0kooSGumivhII6Kgo2/n
	Nvenudy9fTwIVd/2AfeHYznx2nKggBygPVUfvawXrU7OcdizVSKYuVHt6dgB4wTgR2xrPL5b5UJLg
	hTI79OWquYrrJtH5Is2zvCg5fT2TP6LAQ/CaLOwhXT0LB4FKjybymn2nFgriKmtTdZ/nz5jBJVc7y
	IPoRU2JIvni8d4O74ydUMquy5AfPWmwPzMrEI7l2lFW/0DpQ/Ct4m7+yl0sgSf74IFCycoXytAKDi
	LKwbmeTLFtiPd11CJMaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSSA-0002rC-UD; Tue, 02 Jul 2019 23:44:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSQW-0001Ui-4O
 for linux-mediatek@lists.infradead.org; Tue, 02 Jul 2019 23:43:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so124481plr.11
 for <linux-mediatek@lists.infradead.org>; Tue, 02 Jul 2019 16:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=Io3EmwopeQFUFFj8MfEzOz6LKA/W7AncRHgVvChAu8QUpuD2E3VyZqA3FencbnOFjh
 2QFw9FLfiNtoaQSXDSpIrLmj9mPRkqNM1rG/RbcVTya+m+LG3+XUPQhtEIJJBTQunsuR
 e06bOaadoY8m6HPWLWiI4UJBNkFke7GWAqs9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4i2YSPugXI0nrqp33kMy8Y944Y94lb5ecy4lCGMxEsQ=;
 b=i3nhrcrO5n3iFQNJBS0grpvFobt2PRjHhCqIzFAy5Kz0yp5HRLv4iI1z2Zrw//Q+92
 AYYW5g/nBWgrxfG+xD4k02OLB5IFS3X5w7yI4H8wX12rvNtpcMTrJ3iJlMGQ1v46sULj
 vA6MZ8L17qIf1nZ2FWCxnZdbFMU45xnkfG+YBXzP+AbJrmZJOZ0A5jmMj/qTRS+zYinj
 ryif/wChXNFbF0neHVUHQ/dqMERhWuNAcdPLIdBKtk027Y9OBhR31dvPVkavy1Hq/kCM
 P0Uj7U6Mug3dfNnOrk9lBQSftoCiP/TsljfnD0btXMNH7JuPdeQb18fLBiYH+P2AgUx6
 xI+A==
X-Gm-Message-State: APjAAAWguDoh9Oc5IrflVlmKVcfld4iin2inICqwOcUdYG0hUaall/tA
 n+wTIkPd5XDarDjiT73vFbnmCw==
X-Google-Smtp-Source: APXvYqy+RvIO2JXddSoisK2cCLcCMjrjCtG7tr4jDoamQP7WMz2EiFnqn53/HRa3MYDHB3+s9NQu5Q==
X-Received: by 2002:a17:902:2bc5:: with SMTP id
 l63mr39458967plb.30.1562110987634; 
 Tue, 02 Jul 2019 16:43:07 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id c26sm167611pfr.172.2019.07.02.16.43.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 16:43:07 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] drm/mtk: add panel orientation property
Date: Tue,  2 Jul 2019 16:42:58 -0700
Message-Id: <20190702234258.136349-5-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190702234258.136349-1-dbasehore@chromium.org>
References: <20190702234258.136349-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_164308_200186_1DAA1CFB 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
