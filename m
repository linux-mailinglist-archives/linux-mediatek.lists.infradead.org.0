Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F410478477
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 07:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1XRBBVA1fGwvcjEM70CAvlhBGdpEPtGTvyQ64OxQhs=; b=IrIyHN5NesCmH7
	ytxUyS05RQDx/9B0pMm3qtMfKnuwxZqA+pvEXG5/sIGAvpvQIDHsf6sAF2vyLF7BoFvNLrBkp6CHI
	woXT/uWKknwS8wW26WX6N+dnT6USJDc2j/LGELf7W7uHyqoiY0wQrB+DSI14fG2DMlwFocJ3V34/N
	OKMzFq8RTDcPXMDVBFyBtXnogxYRnUcTegpNfCbWrforjMfq6XBpOpQ4QLUl18krJM8oekLjXKp5G
	nP5UkH1DyO+2R004XZa6CEJjmpUOucOVrlhv/INbuErhLnFCTwL9RcBrUIbUSVueVUL4CUh5dcO8U
	V//JPZzTrkk18ImzK7bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryIu-0004bM-Vb; Mon, 29 Jul 2019 05:34:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hryIM-00045I-1S
 for linux-mediatek@lists.infradead.org; Mon, 29 Jul 2019 05:34:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so27390707pfa.4
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Jul 2019 22:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fFA6JHvF9RL4SlnrCsKvFmdFU03CeyVLjFDP1pS0wlw=;
 b=njTypoIWLBX0T+S5qtVUNVWH5W/9uNjn4BRJIz3vfNvxtl0S+NyxKpqLBct47BG1Zy
 jG7M/gdLx8a1y8x2IqY+SKnbvRs+uCiytvlgDk6hEm1PDGrT2ZSnxwuIq0ePvaRnnV8l
 UjTRa6FPm9CbDZnEOFLmGEoW1G0ZakKYXXSQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fFA6JHvF9RL4SlnrCsKvFmdFU03CeyVLjFDP1pS0wlw=;
 b=OxQct5QrTp6s+TLL5AXeVrsRFu14QiEEwToositCC2og2YosX4ni/HY/hJwudKvdTm
 QLdT0pUjC3iwTpVvtk9cpyFNZjIuk/Oq3uP1UskbywsWA9ngVBsqglenjh2yYLH3OgGM
 YbjNNN4rkNBSCvOlSYpFCzRHoeg7rzSs7v8vjTwhXtp6GBsMOv5fdWFXz2kO/eXMl/fX
 Ln8Yhah+OaCj587SQ2WdJsKecAtJF6iM66AYdZtaoyM5z9i66THA9Qf7WoqD1STIZAox
 eFfmHMptcEoffKtRTOv8ETZVfG2O9v/kUl1BaNylhcRPkjWAd575vEOMQ2cWF1vydQZ/
 Nsaw==
X-Gm-Message-State: APjAAAUl0/nnoj2aLtZUxxnT7lscypuJQlvpTuyK6hJp3Tz/WGDiWHV6
 LkmShlU7C1Q1nj65ft3QIpJu6A==
X-Google-Smtp-Source: APXvYqzkNeaQn+UkeE5CYItkb2celfQKxux5U1FpZg0SMhD7RWrrUnStw+c6KqDZ6DbluZXXZwbGSg==
X-Received: by 2002:a17:90a:2767:: with SMTP id
 o94mr106651693pje.25.1564378439306; 
 Sun, 28 Jul 2019 22:33:59 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id z4sm93792810pfg.166.2019.07.28.22.33.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 22:33:58 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Tomasz Figa <tfiga@chromium.org>
Subject: [PATCH v2 2/2] drm/mediatek: set DMA max segment size
Date: Mon, 29 Jul 2019 14:33:35 +0900
Message-Id: <20190729053335.251379-3-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190729053335.251379-1-acourbot@chromium.org>
References: <20190729053335.251379-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_223402_083178_64FF76DC 
X-CRM114-Status: GOOD (  15.19  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Courbot <acourbot@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This driver requires imported PRIME buffers to appear contiguously in
its IO address space. Make sure this is the case by setting the maximum
DMA segment size to a more suitable value than the default 64KB.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 35 ++++++++++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
 2 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 8b18a00a58c7..c021d4c8324f 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -213,6 +213,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	struct mtk_drm_private *private = drm->dev_private;
 	struct platform_device *pdev;
 	struct device_node *np;
+	struct device *dma_dev;
 	int ret;
 
 	if (!iommu_present(&platform_bus_type))
@@ -275,7 +276,29 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 		goto err_component_unbind;
 	}
 
-	private->dma_dev = &pdev->dev;
+	dma_dev = &pdev->dev;
+	private->dma_dev = dma_dev;
+
+	/*
+	 * Configure the DMA segment size to make sure we get contiguous IOVA
+	 * when importing PRIME buffers.
+	 */
+	if (!dma_dev->dma_parms) {
+		private->dma_parms_allocated = true;
+		dma_dev->dma_parms =
+			devm_kzalloc(drm->dev, sizeof(*dma_dev->dma_parms),
+				     GFP_KERNEL);
+	}
+	if (!dma_dev->dma_parms) {
+		ret = -ENOMEM;
+		goto err_component_unbind;
+	}
+
+	ret = dma_set_max_seg_size(dma_dev, (unsigned int)DMA_BIT_MASK(32));
+	if (ret) {
+		dev_err(dma_dev, "Failed to set DMA segment size\n");
+		goto err_unset_dma_parms;
+	}
 
 	/*
 	 * We don't use the drm_irq_install() helpers provided by the DRM
@@ -285,13 +308,16 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	drm->irq_enabled = true;
 	ret = drm_vblank_init(drm, MAX_CRTC);
 	if (ret < 0)
-		goto err_component_unbind;
+		goto err_unset_dma_parms;
 
 	drm_kms_helper_poll_init(drm);
 	drm_mode_config_reset(drm);
 
 	return 0;
 
+err_unset_dma_parms:
+	if (private->dma_parms_allocated)
+		dma_dev->dma_parms = NULL;
 err_component_unbind:
 	component_unbind_all(drm->dev, drm);
 err_config_cleanup:
@@ -302,9 +328,14 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 
 static void mtk_drm_kms_deinit(struct drm_device *drm)
 {
+	struct mtk_drm_private *private = drm->dev_private;
+
 	drm_kms_helper_poll_fini(drm);
 	drm_atomic_helper_shutdown(drm);
 
+	if (private->dma_parms_allocated)
+		private->dma_dev->dma_parms = NULL;
+
 	component_unbind_all(drm->dev, drm);
 	drm_mode_config_cleanup(drm);
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 598ff3e70446..e03fea12ff59 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -51,6 +51,8 @@ struct mtk_drm_private {
 	} commit;
 
 	struct drm_atomic_state *suspend_state;
+
+	bool dma_parms_allocated;
 };
 
 extern struct platform_driver mtk_ddp_driver;
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
