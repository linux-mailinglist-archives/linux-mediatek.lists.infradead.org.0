Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F642DA94
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 12:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKhG5NGAJ7RascNX+u7Mf2QJmqije4ZY9PT7BG/QO1Y=; b=oCPb8ziZ9ErmuO
	KKb8Bc6xMgansq5sLCpHV47GEJ+GbEx02fyPQyRdO+CIpGZMl6JA3gvYvWxV5B2+usTRd+egaJijo
	gHiJLKma8mIOjca0UMUPMM4OND4s4mDA7LWKIC/QLrX3ACKJV2SHBvJx+iSY/Sj75BrpXS9Fv95G/
	voVuTjas07G03IhWda67odOVBFC8CRJzaOwG0TYtFz2zEymcmNN3Ar25LmtVP+T/KPceSnHAxJcK1
	yHU2xKeXFvUknEjUYcqT5ZNZ+OpNeItrRNRc2cQPnOP94PLQvCYHfE2gyEpesxFC+TnUgfFhWeWjD
	1G4eISA1DEEn+Phct3kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvnd-0000gE-4A; Wed, 29 May 2019 10:27:13 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvnB-000099-J3
 for linux-mediatek@lists.infradead.org; Wed, 29 May 2019 10:26:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id a3so1117341pgb.3
 for <linux-mediatek@lists.infradead.org>; Wed, 29 May 2019 03:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qfu+lCX+mg4CHoSzn6sx71PO1L0xmj8Ng2bghmWxVtM=;
 b=nTovKIIjyeNQQu+BPV60MWd+6ikmDz5CTYIk7CO5q1I9JxYa/Y2hi1UEa7N1uc53tJ
 0Ml03crB3KYobulpw2zmaJAB4YPE4Y1W1VCWvM74IWI/JBAFlblmjKqTrMCg0ajk1wD7
 xGj5Gl5TJoDwlMuNXDh+oCwzMlUvgpwT9stYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qfu+lCX+mg4CHoSzn6sx71PO1L0xmj8Ng2bghmWxVtM=;
 b=L1DfZSnDIxhDNtM+ebarlPZj5zneFIoLRcfSLvcxJZUWE9pGsbwERICNUdRKsF1SxL
 nfMqg2RuVpr8JXXcVC19ART7qlUeJ2Pbcb64o+AkApuSUJ+8hqduF2dL4ttWRRpM5gkh
 lwURuLcNnruyDQirHJH253sC9BoWGSoGPipPx16QtkmzseDpKKkZM3UEWXE//o7NDPuz
 hKihAgbzlFoqoI1ha1IFsvRqEH1S+2m6c2XrEw28sO6BMBrlAIXa9RKyTfJ6TLAn2NoW
 ZQLMPUQ8JP3K6XbQ/Vx442Ky20Hu8ML5MKyCKFaeKjPPq4nfdU0Ogm0r2pCY43ibF6o6
 sY4g==
X-Gm-Message-State: APjAAAXKW/t3mEUXlbyTksNpRVoxFYDKsOy5wizNX9UhO7DfqgTwxSOk
 NsMp7UCkMR0qWcbz5Jf2AZY7fw==
X-Google-Smtp-Source: APXvYqwsCTf8MIeFhkI7oHCKHu8V4WhT0bsggX6aKGiM/Kq0hphXwbIVOk7WcOZTuamgoCEOW8/5cQ==
X-Received: by 2002:aa7:83d4:: with SMTP id j20mr129161356pfn.90.1559125605031; 
 Wed, 29 May 2019 03:26:45 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:44 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] drm: mediatek: unbind components in mtk_drm_unbind()
Date: Wed, 29 May 2019 18:25:53 +0800
Message-Id: <20190529102555.251579-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032646_046741_F134ACE8 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
change log v1->v2:
* separate another 2 fixes to other patches.
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 57ce4708ef1b..e7362bdafa82 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -397,6 +397,7 @@ static void mtk_drm_unbind(struct device *dev)
 	struct mtk_drm_private *private = dev_get_drvdata(dev);
 
 	drm_dev_unregister(private->drm);
+	mtk_drm_kms_deinit(private->drm);
 	drm_dev_put(private->drm);
 	private->drm = NULL;
 }
@@ -568,13 +569,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
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
