Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D885B2ADCF
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 06:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFAVeHJ5mbTIaimCtCRqdPe465tdxosbAmiro3G/teQ=; b=aHbi3IzYgZWPSy
	90zns+GfuMLMXiMHhL21cShIxvAJ1DiS8QcVAgSG0VvX1b9A7eMdc1LmEUDe6pDYG8B8RL9q+6Vz+
	xxVF9KnBIs6+sakELfy3SJhbye8D+8V/4R5W/xwF3LfIahfADk+67SZALLichPFuHFrKBX/fCEDLN
	VdJpJP3ZsWigr3nLDZvO7DL9SSAZkGHxUy9z+JocO5Dw0hAFnGz5ZMrWveUkEKfRv4j8UTLOY8LG8
	AWft93r2Yn5x1FnX8/izqBBPJ2XAjsTkObYe4FZXzsdcj7N4W8BzGPdCTfR10536AcWSZhIFq66uK
	Yuxc3QxLoPnT0Q0ipOqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7cD-0008OU-DX; Mon, 27 May 2019 04:52:05 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7bm-0007s7-W0
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 04:51:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id v9so1979952pgr.13
 for <linux-mediatek@lists.infradead.org>; Sun, 26 May 2019 21:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yUlmxOGnO1980oiGUAyuWMhEyWoJa2PD9pLjCihMzns=;
 b=nh0J9d5tWECthEBuxY2gAfAcXw9czzCE8YBbgHOFmoDnQGRnZEmVmdROoGoBbFK5l5
 S5RwdS7TIk22ToA6KWeEGhKKKMhk701Hett9H/ziY9fXTnM2ZOxXEYwhuy2heRufHuva
 pU6I6/OE0aiTYhfWOUjCBadxOrSI2D3SvI0JU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yUlmxOGnO1980oiGUAyuWMhEyWoJa2PD9pLjCihMzns=;
 b=GetmDkWWTRkMHJ+dcq717taep31rStFslxHmpkqdGvLPbmMnl2LCfDELJoXoYtkb3t
 OKCiXn7MGwELypO8njHr/e7wZm8JNOX48D5QWbqJxxQB/Bby26zXFrsosTUg2JRJGGZo
 Wy6xXtWMW/N4QY5ZTNEbSvWHjzZUq/k6hmbEL+2ziUEcPN96/74KPzns1cbFrVUy9Sw9
 NuwYHs3q0RNBEziM6KJvP8ekz7zLa+VzMSKQ5SWyOp4NnL+GEUDtRSD4nwZxYcyLl7c/
 KHoChrv5jG9y9WaM1K8yKH+sMiS4lrR1AbL0g0l9ea3MCRkSTl7smS2Q3+SqMdeadCr2
 Aldw==
X-Gm-Message-State: APjAAAUoTq/w5DQHSUHGjNVbQ05mUVWbg3csarcEPoqJXQezAZVc/nM2
 3674/FX2VYhW4QrQ4vxZTCeTyg==
X-Google-Smtp-Source: APXvYqzFWcOQGNGke5SxYSfkPoz9/3QKFu6HpjgLwWyUA0idRxx7jSQ5CVK8tJUBDNqu1vgLMfZVlg==
X-Received: by 2002:a63:6bc3:: with SMTP id
 g186mr111791764pgc.21.1558932698131; 
 Sun, 26 May 2019 21:51:38 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id t18sm8082745pgm.69.2019.05.26.21.51.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 21:51:37 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] drm: mediatek: unbind components in mtk_drm_unbind()
Date: Mon, 27 May 2019 12:50:54 +0800
Message-Id: <20190527045054.113259-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527045054.113259-1-hsinyi@chromium.org>
References: <20190527045054.113259-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_215139_405454_24F77CD4 
X-CRM114-Status: GOOD (  12.06  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Unbinding components (i.e. mtk_dsi and mtk_disp_ovl/rdma/color) will
trigger master(mtk_drm)'s .unbind(), and currently mtk_drm's unbind
won't actually unbind components. During the next bind,
mtk_drm_kms_init() is called, and the components are added back.

.unbind() should call mtk_drm_kms_deinit() to unbind components.

And since component_master_del() in .remove() will trigger .unbind(),
which will also unregister device, it's fine to remove original functions
called here.

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 57ce4708ef1b..bbfe3a464aea 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -311,6 +311,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 static void mtk_drm_kms_deinit(struct drm_device *drm)
 {
 	drm_kms_helper_poll_fini(drm);
+	drm_atomic_helper_shutdown(drm);
 
 	component_unbind_all(drm->dev, drm);
 	drm_mode_config_cleanup(drm);
@@ -397,7 +398,9 @@ static void mtk_drm_unbind(struct device *dev)
 	struct mtk_drm_private *private = dev_get_drvdata(dev);
 
 	drm_dev_unregister(private->drm);
+	mtk_drm_kms_deinit(private->drm);
 	drm_dev_put(private->drm);
+	private->num_pipes = 0;
 	private->drm = NULL;
 }
 
@@ -568,13 +571,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
 static int mtk_drm_remove(struct platform_device *pdev)
 {
 	struct mtk_drm_private *private = platform_get_drvdata(pdev);
-	struct drm_device *drm = private->drm;
 	int i;
 
-	drm_dev_unregister(drm);
-	mtk_drm_kms_deinit(drm);
-	drm_dev_put(drm);
-
 	component_master_del(&pdev->dev, &mtk_drm_ops);
 	pm_runtime_disable(&pdev->dev);
 	of_node_put(private->mutex_node);
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
