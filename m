Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D695A2C032
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 09:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t44Ue8DnGZ4RtyRANB2YBQ+MDfJs6/+zm0/0w6in+gk=; b=W0LuPj9JXvjEGb
	BVbYw7jqeXeHxSgeljcsj0aHV5RafjUzewvRAVMhkQ436FLTXv7vcAQuBwNkXCq53qNkp4XjgT/ns
	svrpZ2zHWpmnEXpjtglnYoBv0ICyFxcxxbe/igZkKPuCOkP+oons76MlkbcZURLfx2LpHADrU9dAq
	gHZ4MnhiZk2eRFVPbJmprxBpyEY/KHbRTVQZt4JcYbgMBOzkRXqky6/NDhsNzmVLLhgycZdF7lnih
	J2V6aLe7rXjQjaglTBOdoiyJZsvolK66uLsv1ufrGNpFu+Avqumg6EoCz9Xk6xKyQnTY+GHk6Km7/
	03OnNw7mHbHjltkP8fAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWhd-0005Xo-5K; Tue, 28 May 2019 07:39:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWhZ-0005Wz-O1
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 07:39:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id y11so6088466pfm.13
 for <linux-mediatek@lists.infradead.org>; Tue, 28 May 2019 00:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQVJnM2sj4R+nYxUG9Nne9l7dh6fbmTdyutm/YwtMx0=;
 b=Uor4jY1MtEZkONU2usE/MnVQd5dj3Tfn6kmxvYM/+8zfdWScV+FayauoWdU3tq05Ju
 ih+RnNavqlRUxsaidguXi8Zd1fOeNUd5Ro9TRKv1PJXlxJQeHQL20L7ps+V88GEi7fcl
 rG465zYjyVAH/BeHRWJJqxw/6W3O9t+sVEalg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQVJnM2sj4R+nYxUG9Nne9l7dh6fbmTdyutm/YwtMx0=;
 b=hyNvEsfV1u+SBW3Q1xas4izRVdoFHUIV0HQMs6Q1Almar+WQdAvgKSKbeONClnT6sB
 X+9yQ7jT0aHzhjI6Kc8ZKUb9mC7/jgSkAQ+bS5LZpLkTy+D9m2ihAiFQg54IdqkJLJ6l
 cW9HvCESvrGkBwfvz4RHo920wyfqoHtpQhfsCf/AkkeCeI6VrUFu3bHPqefVS6RwbzqT
 DZRDNRvM3zxy9SwiLd9KLW2c4c1Bf7Oe1ZmGH+eNrReXjQqVmV6/iuilLM9Yhw/zHBcy
 2AiWL1bTvShzog86l+Rou27VNKliHTxtudzk3UJX0dedTNt1VLsKUApRXqWclrSmyFhK
 QqvQ==
X-Gm-Message-State: APjAAAXKDbaMXNr6fmpslBpamJ9ulntlpJV1/OlAQii+5UDzPVVAaVXF
 V5m7/dYMZNzKXZIZb5Ika0yfC85fFanIcA==
X-Google-Smtp-Source: APXvYqywiAh3QaSgLPIyigYkRgvfuvWVKq0aWO68kqF5JZeJL6svt+W4rpHA95UclwnXxcNmKYqIow==
X-Received: by 2002:a63:af44:: with SMTP id s4mr129350119pgo.411.1559029156377; 
 Tue, 28 May 2019 00:39:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id g8sm1628011pjp.17.2019.05.28.00.39.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 00:39:15 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
Date: Tue, 28 May 2019 15:39:08 +0800
Message-Id: <20190528073908.633-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_003917_832294_27973AE2 
X-CRM114-Status: GOOD (  12.46  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(), which needs
ovl irq for drm_crtc_wait_one_vblank(), since after mtk_dsi_stop() is called,
ovl irq will be disabled. If drm_crtc_wait_one_vblank() is called after last
irq, it will timeout with this message: "vblank wait timed out on crtc 0". This
happens sometimes when turning off the screen.

In drm_atomic_helper.c#disable_outputs(),
the calling sequence when turning off the screen is:

1. mtk_dsi_encoder_disable()
     --> mtk_output_dsi_disable()
       --> mtk_dsi_stop();  // sometimes make vblank timeout in atomic_disable
       --> mtk_dsi_poweroff();
2. mtk_drm_crtc_atomic_disable()
     --> drm_crtc_wait_one_vblank();
     ...
       --> mtk_dsi_ddp_stop()
         --> mtk_dsi_poweroff();

mtk_dsi_poweroff() has reference count design, change to make mtk_dsi_stop()
called in mtk_dsi_poweroff() when refcount is 0.

Fixes: 0707632b5bac ("drm/mediatek: update DSI sub driver flow for sending commands to panel")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v2->v3:
* remove unnecessary codes in unbind
* based on discussion in v2, if we move mtk_dsi_start() to mtk_dsi_poweron(),
in order to make mtk_dsi_start() and mtk_dsi_stop() symmetric, will results in
no irq for panel with bridge. So we keep mtk_dsi_start() in original place.
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..b7f829ecd3ad 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -630,6 +630,8 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
 	if (--dsi->refcount != 0)
 		return;
 
+	mtk_dsi_stop(dsi);
+
 	if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
 		if (dsi->panel) {
 			if (drm_panel_unprepare(dsi->panel)) {
@@ -696,7 +698,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
 		}
 	}
 
-	mtk_dsi_stop(dsi);
 	mtk_dsi_poweroff(dsi);
 
 	dsi->enabled = false;
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
