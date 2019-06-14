Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B5C46B26
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 22:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ps7Q7ijxvq4xY+R7kzv8BUJfoXACYaS1CTgeyunjzs=; b=fk42O1+RXCwZeD
	HdqYD3AfZ2mG4iDwBoo/RkNI5L6c9zJv6gAKiM1Nk6OApyLBhxL5c589OgiHdAw1Ey8cSzn8GAbf1
	WrDGqWfMuhRic5oF+3lvmY2Z9Wa6nPHK4VTmfpYGgpvigqsZFylusObwXYmsT35TEMylIVRy5yKTB
	Hr9Xq6EHrhwo77VVd/YTRsxlUIsOro55ABCA40tHN6wQPe3DjhhOaold8EVFMH40Qo5V5D2/w+gmm
	v9zkxEOBC3U+uUkg2n+xEZn8ZrwUZY1O6e1hlafE3SDRSyYWLK0GqdfAC0oXv8d4rtGkZGBa+I/hi
	4HsBncFez9CFF1NXV7HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt15-0000ur-7j; Fri, 14 Jun 2019 20:41:43 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswj-0004EC-OH
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 20:37:30 +0000
Received: by mail-ed1-x542.google.com with SMTP id i11so5286067edq.0
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 13:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i7b4aMzWB/WvLzJyM0068ZKDt/gpd+E2Uf4LQesfRzU=;
 b=dhOuzubKjdkfVoKkTkm4N8ahWcM2rt9CH14I1ODo7taD5BPCyYx9bAaW/IT/qORDBW
 hr6eYBnUIPye8r8viclR8ATjtqBJ5ZS8tehHQJjKJnkMG8gmCTLNuFZefjCZVjUBB8j3
 a7GBO1OmXKoRFszfKKq7zXvp0D7e+fPIFYppw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i7b4aMzWB/WvLzJyM0068ZKDt/gpd+E2Uf4LQesfRzU=;
 b=UQmA/ozyntBwJdyIO9hN0SrV9rsIqVNIs1LoEiv2uZed7qE03IXXwqzabkP+l5Fdk7
 5ImGvtLNuoxMf8JNbBfI3hOlhkYaR9h7pou/KwjkUxtaOdcPKuSPq/zMHVwC30fmQN3B
 r3vg9oRg1Pfam4n85zpzay09Egp3Rs4yXS+oS4uS/NJIDF2X6WTFJmYdlQ6C3EfXMiAE
 dc4kKHZ4sO3MJodWqGN9wCjwuksISrZuKFn9C1OaKhMoSSCBbIC3CRCeuOJfpMBhRFP7
 lQECqeYKohg1zFArfEQp5OUFRWpk4CnmMIlfotZGuTaBLY5NsZfLFAcRPowOWQTrvks7
 mpuQ==
X-Gm-Message-State: APjAAAUZlsRzHZvXfJauLfPiV0SD4I6VU5WQfgVCwr8LmciqyrLITfYg
 TQ+PTRvdP3Kv46IO4Svd7bPvPw==
X-Google-Smtp-Source: APXvYqySRtB5ypeTVjemu40jrdWCCaj2w1io7c4tI6zuzHrCcLQMW4wp/TXRntYVXffkcA5jyRKbAw==
X-Received: by 2002:a50:e619:: with SMTP id y25mr20408830edm.247.1560544632521; 
 Fri, 14 Jun 2019 13:37:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 44/59] drm/mediatek: Use drm_atomic_helper_wait_for_fences
Date: Fri, 14 Jun 2019 22:36:00 +0200
Message-Id: <20190614203615.12639-45-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133713_973653_866EA7CA 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

If we use the gem fb helper as the prepare_fb hook, plus the
drm_prime.c import helpers now automatically setting obj->resv, we can
use the shared helpers to wait for fences instead of rolling our own.
Note that this relies on mtk setting drm_fb->obj, which is already
done in mtk_drm_framebuffer_init().

Aside: Probably can use the default commit_tail with this again, but I
didn't check for that.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 12 +---------
 drivers/gpu/drm/mediatek/mtk_drm_fb.c    | 28 ------------------------
 drivers/gpu/drm/mediatek/mtk_drm_fb.h    |  1 -
 drivers/gpu/drm/mediatek/mtk_drm_plane.c |  2 ++
 4 files changed, 3 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index dd8dab562500..2d5caf532431 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -38,22 +38,12 @@ static void mtk_atomic_schedule(struct mtk_drm_private *private,
 	schedule_work(&private->commit.work);
 }
 
-static void mtk_atomic_wait_for_fences(struct drm_atomic_state *state)
-{
-	struct drm_plane *plane;
-	struct drm_plane_state *new_plane_state;
-	int i;
-
-	for_each_new_plane_in_state(state, plane, new_plane_state, i)
-		mtk_fb_wait(new_plane_state->fb);
-}
-
 static void mtk_atomic_complete(struct mtk_drm_private *private,
 				struct drm_atomic_state *state)
 {
 	struct drm_device *drm = private->drm;
 
-	mtk_atomic_wait_for_fences(state);
+	drm_atomic_helper_wait_for_fences(drm, state, false);
 
 	/*
 	 * Mediatek drm supports runtime PM, so plane registers cannot be
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
index 4c3ad7de2d3b..396ba497986d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
@@ -49,34 +49,6 @@ static struct drm_framebuffer *mtk_drm_framebuffer_init(struct drm_device *dev,
 	return fb;
 }
 
-/*
- * Wait for any exclusive fence in fb's gem object's reservation object.
- *
- * Returns -ERESTARTSYS if interrupted, else 0.
- */
-int mtk_fb_wait(struct drm_framebuffer *fb)
-{
-	struct drm_gem_object *gem;
-	struct reservation_object *resv;
-	long ret;
-
-	if (!fb)
-		return 0;
-
-	gem = fb->obj[0];
-	if (!gem || !gem->dma_buf || !gem->dma_buf->resv)
-		return 0;
-
-	resv = gem->dma_buf->resv;
-	ret = reservation_object_wait_timeout_rcu(resv, false, true,
-						  MAX_SCHEDULE_TIMEOUT);
-	/* MAX_SCHEDULE_TIMEOUT on success, -ERESTARTSYS if interrupted */
-	if (WARN_ON(ret < 0))
-		return ret;
-
-	return 0;
-}
-
 struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
 					       struct drm_file *file,
 					       const struct drm_mode_fb_cmd2 *cmd)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.h b/drivers/gpu/drm/mediatek/mtk_drm_fb.h
index 6b80c28e33cf..eb64d26001c6 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_fb.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.h
@@ -6,7 +6,6 @@
 #ifndef MTK_DRM_FB_H
 #define MTK_DRM_FB_H
 
-int mtk_fb_wait(struct drm_framebuffer *fb);
 struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
 					       struct drm_file *file,
 					       const struct drm_mode_fb_cmd2 *cmd);
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index f2ef83aed6f9..42cc9823eaaa 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -8,6 +8,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_plane_helper.h>
+#include <drm/drm_gem_framebuffer_helper.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
@@ -146,6 +147,7 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
+	.prepare_fb = drm_gem_fb_prepare_fb,
 	.atomic_check = mtk_plane_atomic_check,
 	.atomic_update = mtk_plane_atomic_update,
 	.atomic_disable = mtk_plane_atomic_disable,
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
