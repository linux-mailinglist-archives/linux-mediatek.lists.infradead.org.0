Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C2A2DA98
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 12:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQY2FApcUHrp+qCM/smCdNO+DPsNY+bRmAtM0ys/uCs=; b=uaGirPlYQrQUVZ
	xZZljdJTZWzfIz1+HVqkldY21j6PNF1vE+dLHNQ3xkZj8oCBi4rKaacgUkj1IJXSKT5W9g8wxeAqs
	kO5RIss3/8+W0J8yoBtgT1eTnaC1i1qHWItszFrviIeCOug5gfSj3SZwE4zHEtUlv6xJPR0ik7Zvd
	h1iVDJigmsESagPxdWHP573vk3nHsX//ShKTgad4BX1XBPDK+w02ccQ4rofPN+hxbpgURTjMT36cu
	K25uhGQIPe7mzJfadn5ftHmHZwLyJ32u4/LwD2D//8AGl3wSIIsivdfgd15V14bGtwgAhtDHjnLtv
	IrJO9VlYnz87glaq+2hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvne-0000hl-V6; Wed, 29 May 2019 10:27:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvnF-0000Di-05
 for linux-mediatek@lists.infradead.org; Wed, 29 May 2019 10:26:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id a23so1353199pff.4
 for <linux-mediatek@lists.infradead.org>; Wed, 29 May 2019 03:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zkf9FoxdryyDt1X+5P+GJSoX1FiD3J3GXj2LP0N8rdU=;
 b=KrJR7S9O4TEFHPeGH3rkqlofANGLf5xPlPIkRdAwYAC4yHaXwn/r/L5YxrLyP6L7K5
 qaAvmgB0+oizqOfAJqwCXO6Bb570+HJHpI4ecYCXN0wEWCx0ClL1x6NMDWXAVOfvHBRR
 rfpWfc3r/oA8m007TQhh7sV5qE4QAleSuWEsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zkf9FoxdryyDt1X+5P+GJSoX1FiD3J3GXj2LP0N8rdU=;
 b=kHmny8kdqo72JVaKpmosNd56S4hI1OlzHbKQszBc9YRS5W59KofIZLkn/s6SWqPMIY
 vDdgRJfdMXZVGuxZZzIt+RdlMHU46FmQKTLBO7rj0dc0XM30xPQFy8PevJO0yxmIJjLw
 2uKw8BMXiLcPQuRsS9aWUMH0XehZz2+e2l+CYGMN7YzkIDVZ4GD4Oe93YtH1Em833XMC
 RpMlomNVMrLDVTlqAeYwdguK5406rp4iZJFcTh2R5kt6Jlgi+Q3bSNypkopxvKSdvUUT
 fqJpXS/ms8tYBYtQQdOvSYl3scdYVe1Y4/lCgQiuYyWCXxYlSwx7Vqxb3SKWtn90Uv8e
 hiiw==
X-Gm-Message-State: APjAAAVBScrOl4TIlJ/bsoeDjrmT+5N520IyKFwyejM0TukWbJ0k8H7V
 fh585ijkotr+irGD0mjUErIsdw==
X-Google-Smtp-Source: APXvYqwnrc9pdx47YY9TRS/DoiPhrNWvI1W5hjidPKQ2diP8prk0BV504pPU4kJBaFleNW4weG407w==
X-Received: by 2002:a62:d244:: with SMTP id
 c65mr111971351pfg.173.1559125608082; 
 Wed, 29 May 2019 03:26:48 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:47 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] drm: mediatek: call drm_atomic_helper_shutdown() when
 unbinding driver
Date: Wed, 29 May 2019 18:25:54 +0800
Message-Id: <20190529102555.251579-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032649_526620_17C4DAAA 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

shutdown all CRTC when unbinding drm driver.

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index e7362bdafa82..8718d123ccaa 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -311,6 +311,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 static void mtk_drm_kms_deinit(struct drm_device *drm)
 {
 	drm_kms_helper_poll_fini(drm);
+	drm_atomic_helper_shutdown(drm);
 
 	component_unbind_all(drm->dev, drm);
 	drm_mode_config_cleanup(drm);
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
