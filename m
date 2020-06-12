Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1908B1F7B54
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jun 2020 18:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tY2Ihh/vEz3R5UV7kBGJY3R+h23KSnf2+k7S5BfOTM=; b=AhqTvkgfjRDqsj
	I1j5e6djQIrf51a3YmFvP4dhOlM9hR2m7FGn6fwp1H6R3wWpjWm6N7PnVIIIFO/4RIl0DRYEvEzHG
	2E3fKj1E/YnW2vHLptZMNuOg78nN9PDHwE7m5ca2QAp62WGufyLg+ztcyOXnJrjrsrUy4amJ1Ym2v
	36dBWfPg2TAw0uBRHfSHzFuIL8sR4fAtppI543tgYfvdSdeOLsG9fc0i3aTIE+wWtheenBk/+ZY7/
	4hVGDxClT1g6oBQ/v1lhdXwEP1+U/3ol4mbIOu3GiDrZ9bTVRNv1IE2yNk3YOBdZSqbGJP9rh4/lb
	4WPWIzEK0n/5hLJUDYYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjm7W-0001kA-Jg; Fri, 12 Jun 2020 16:01:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjm7A-0001MT-BN
 for linux-mediatek@lists.infradead.org; Fri, 12 Jun 2020 16:01:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id k26so8768986wmi.4
 for <linux-mediatek@lists.infradead.org>; Fri, 12 Jun 2020 09:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9edpO/0nDjw8MbHtkOLQlTMXtNF/bFvFcs1wCzvqaNE=;
 b=RmdKYYVAB0MwG5SuaGWDL0n378xqj0UKR2ugbyV34AEb89kM51e9b9HRJZ0ikKdBuc
 B9C0JTVT88c3OToaO0mWw/TXYqK9UBckZWDC7aOkCwPdotyoZMBd4oZwoZrBkUuGnZOS
 JYbrXB49RsrMh7/PlWYkJBxYIQzV0K9XbCg+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9edpO/0nDjw8MbHtkOLQlTMXtNF/bFvFcs1wCzvqaNE=;
 b=k4IiuP6u0ZXRgWB42HmZgs1Byi8lYqsRBKHXtF36F2ZNY2li74tPoOlAS6U1cDtSol
 Kdn+oEWBu3fJTQNen1KJtsHIOJgK+gQlPjcSoyFvilT2PDb0E5spBuHq2bkm51AxBku1
 /OAKn8fea59wy0ftwFNWKjxVRKzCppccxuYlaanhwIrosLa30GtZXrYi2o34EnxW3FiU
 3aumV4ED81s/lqR/AdIKhxsiID1rw1d9QMxGZlYKvT8PCg0ZfFlxtdlsSGX7/QC7NBs5
 9KAzolbHDGhVlIxjx+Qxk2ISi03nFBsnL/SqGBhmW7Ur26vORlV9klED9dcVbJlXpL3P
 97KQ==
X-Gm-Message-State: AOAM530ttknG+AuI8ZwSuaj3N1ri+uRpm/BXLq9ppJYUz5Oy+CTtCt3U
 F03GUb6AJrtrZPGQQcnjSZhNKQ==
X-Google-Smtp-Source: ABdhPJyRA5JCt10uM462WYchlysJDh14QJpSPAUPgz+E7dH/E3C15TB4JYTTvqcYM2l4Duif233pBw==
X-Received: by 2002:a1c:1f85:: with SMTP id
 f127mr13454795wmf.163.1591977667256; 
 Fri, 12 Jun 2020 09:01:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 4/8] drm/mtk: Use __drm_atomic_helper_crtc_reset
Date: Fri, 12 Jun 2020 18:00:52 +0200
Message-Id: <20200612160056.2082681-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_090108_391902_F7AAA032 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index a7dba4ced902..d654c7d514bd 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -112,19 +112,15 @@ static void mtk_drm_crtc_reset(struct drm_crtc *crtc)
 {
 	struct mtk_crtc_state *state;
 
-	if (crtc->state) {
+	if (crtc->state)
 		__drm_atomic_helper_crtc_destroy_state(crtc->state);
 
-		state = to_mtk_crtc_state(crtc->state);
-		memset(state, 0, sizeof(*state));
-	} else {
-		state = kzalloc(sizeof(*state), GFP_KERNEL);
-		if (!state)
-			return;
-		crtc->state = &state->base;
-	}
+	kfree(to_mtk_crtc_state(crtc->state));
+	crtc->state = NULL;
 
-	state->base.crtc = crtc;
+	state = kzalloc(sizeof(*state), GFP_KERNEL);
+	if (state)
+		__drm_atomic_helper_crtc_reset(crtc, &state->base);
 }
 
 static struct drm_crtc_state *mtk_drm_crtc_duplicate_state(struct drm_crtc *crtc)
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
