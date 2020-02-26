Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1FE16FDA7
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Feb 2020 12:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wUGYV7JULHDijeEE0s5BbFuqy2wWMqOvgDkEQgaX9bA=; b=Hx4OYkqNsYijGj
	ZE/z4Y4ftWtZ0cLluYbesPLVPhISnHDpTY+dFpSES7mi9BG2OeIf1BfIqjkOkCptPVNMXnlX2458S
	0S3YQHZmoDFyTzmgg/3gx0oMyPsA7PvvYODRqIF870mXfobdLiLJaGatkJptBIjUkkHYuvZx6LDnK
	v/vbfKAbEg6m2LQ53yiIDQEYBnQeK5fnX3LEnbBUo1uRvSQdDJ+3sNx1VvBatdZPPCr75myzHLGKH
	WFSp6OHc7SQ3MHnLH69m2xI+bOum4h4sV4d6tET0qEgZlmTRWfAWw+7kqCYF5TsTH2U2FmoMJ6sTz
	34Wyo6YKeIBFj3oGCUFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uqw-0008Ul-HE; Wed, 26 Feb 2020 11:27:46 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uqj-0008ME-Fn; Wed, 26 Feb 2020 11:27:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id C1302293937
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mediatek: Remove debug messages for function calls
Date: Wed, 26 Feb 2020 12:27:23 +0100
Message-Id: <20200226112723.649954-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_032733_659226_32E17AC2 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 CK Hu <ck.hu@mediatek.com>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Equivalent information can be nowadays obtained using function tracer.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 5 -----
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 2 --
 2 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index a236499123aa..882c690d3f13 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -192,7 +192,6 @@ static int mtk_crtc_ddp_clk_enable(struct mtk_drm_crtc *mtk_crtc)
 	int ret;
 	int i;
 
-	DRM_DEBUG_DRIVER("%s\n", __func__);
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		ret = clk_prepare_enable(mtk_crtc->ddp_comp[i]->clk);
 		if (ret) {
@@ -212,7 +211,6 @@ static void mtk_crtc_ddp_clk_disable(struct mtk_drm_crtc *mtk_crtc)
 {
 	int i;
 
-	DRM_DEBUG_DRIVER("%s\n", __func__);
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
 		clk_disable_unprepare(mtk_crtc->ddp_comp[i]->clk);
 }
@@ -257,7 +255,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 	int ret;
 	int i;
 
-	DRM_DEBUG_DRIVER("%s\n", __func__);
 	if (WARN_ON(!crtc->state))
 		return -EINVAL;
 
@@ -298,7 +295,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		goto err_mutex_unprepare;
 	}
 
-	DRM_DEBUG_DRIVER("mediatek_ddp_ddp_path_setup\n");
 	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
 		mtk_ddp_add_comp_to_path(mtk_crtc->config_regs,
 					 mtk_crtc->ddp_comp[i]->id,
@@ -348,7 +344,6 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
 	struct drm_crtc *crtc = &mtk_crtc->base;
 	int i;
 
-	DRM_DEBUG_DRIVER("%s\n", __func__);
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		mtk_ddp_comp_stop(mtk_crtc->ddp_comp[i]);
 		if (i == 1)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 17f118ee0e57..4934834977b3 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -570,7 +570,6 @@ static int mtk_drm_sys_suspend(struct device *dev)
 	int ret;
 
 	ret = drm_mode_config_helper_suspend(drm);
-	DRM_DEBUG_DRIVER("mtk_drm_sys_suspend\n");
 
 	return ret;
 }
@@ -582,7 +581,6 @@ static int mtk_drm_sys_resume(struct device *dev)
 	int ret;
 
 	ret = drm_mode_config_helper_resume(drm);
-	DRM_DEBUG_DRIVER("mtk_drm_sys_resume\n");
 
 	return ret;
 }
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
