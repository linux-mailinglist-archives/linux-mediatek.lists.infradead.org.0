Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA391AE075
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 17:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7br6S5ZGeMpFQETJG54+LgDRXHwlEXQ7fNZEFc88Snc=; b=Ii58jVK1eem3Rh
	mZhVtzbbE0ZakSFOF+eAe1p1xBy1aT5VmqAZYbvYnL+nl+Vm5jY3rM9PljZnhVXYbfvOOI2BLzNoo
	s/5lkU+2sScJWli9O4cbs6WGoF4GYeh/AwshrvINGTa0Q1DSHKXu8C6wK7uFhtDlw09ITbvxkdmmh
	TxDKq26GXOekWwO/+2mLaG8Vpa5haQ7IQyufmVR1WR1vqkPy1ETC+DmTmGkzad2KbTIjrh5UPJPlf
	WZJoo2OPHRBA3G2/ThFLzInMzXdOJzMopUfwVSl/4VnJU42NnEjjC1ifA19veoj/Xu2Ucxk8O+gWs
	b8K2RnkQ6NkOoxe5Riug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSaH-0000la-Aa; Fri, 17 Apr 2020 15:07:13 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSZY-0008Vr-60; Fri, 17 Apr 2020 15:06:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id E5F642A2A75
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org,
	Collabora Kernel ML <kernel@collabora.com>
Subject: [PATCH v3 3/7] drm/mediatek: mtk_dsi: Rename bridge to next_bridge
Date: Fri, 17 Apr 2020 17:06:10 +0200
Message-Id: <20200417150614.2631786-4-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200417150614.2631786-1-enric.balletbo@collabora.com>
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_080628_365006_13193A7C 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This is really a cosmetic change just to make a bit more readable the
code after convert the driver to drm_bridge. The bridge variable name
will be used by the encoder drm_bridge, and the chained bridge will be
named next_bridge.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---

Changes in v3:
- Replace s/bridge/next bridge/ for comment. (Laurent Pinchart)

Changes in v2: None

 drivers/gpu/drm/mediatek/mtk_dsi.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index cfa45d6abd74..37b8d7ffd835 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -182,7 +182,7 @@ struct mtk_dsi {
 	struct drm_encoder encoder;
 	struct drm_connector conn;
 	struct drm_panel *panel;
-	struct drm_bridge *bridge;
+	struct drm_bridge *next_bridge;
 	struct phy *phy;
 
 	void __iomem *regs;
@@ -902,9 +902,10 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
 	 */
 	dsi->encoder.possible_crtcs = 1;
 
-	/* If there's a bridge, attach to it and let it create the connector */
-	if (dsi->bridge) {
-		ret = drm_bridge_attach(&dsi->encoder, dsi->bridge, NULL, 0);
+	/* If there's a next bridge, attach to it and let it create the connector */
+	if (dsi->next_bridge) {
+		ret = drm_bridge_attach(&dsi->encoder, dsi->next_bridge, NULL,
+					0);
 		if (ret) {
 			DRM_ERROR("Failed to attach bridge to drm\n");
 			goto err_encoder_cleanup;
@@ -1185,7 +1186,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	}
 
 	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
-					  &dsi->panel, &dsi->bridge);
+					  &dsi->panel, &dsi->next_bridge);
 	if (ret)
 		goto err_unregister_host;
 
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
