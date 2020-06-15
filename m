Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2061FA18B
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 22:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVeUr5aZ4yZT9MKKMfirkqRU7HrrznSvw49BwkBsDOE=; b=Y8/QyATNgxoUZ5
	rTVtk3XSMkTjonJtIUNKgkhqMnr210K/8XmrRvXFernNXnAnAbwm88sCph2FfXdRTYr5CFYA+4MoU
	E9ESFx/8J0fP92jPz7k4O6HFFnQjtJ1ELSCnfEJsADWN3EsE90AnPNHPEdb6UfK3rdSXjc/qJdg0H
	V/lBmi/nHHuIc7rp7N1AVUyZ0ouSVQRGTa3Q+TMDe+KoluqD6Z3JDuItCYBUPRoUT64UjBbK6nlHS
	fV2dhpfRuy7hi5vxbTnaMEwz+mAm60+UDyzkfUeSNTa9RbhXyMJPBtCIFWWniyFuht/EUwIqOW/Rf
	k9A/i3Vfrc6OI6oKuagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvlv-00082F-TB; Mon, 15 Jun 2020 20:31:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvlJ-0007VG-T0; Mon, 15 Jun 2020 20:31:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id E93AA2A2CFC
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org,
	Collabora Kernel ML <kernel@collabora.com>
Subject: [RESEND PATCH v4 3/7] drm/mediatek: mtk_dsi: Rename bridge to
 next_bridge
Date: Mon, 15 Jun 2020 22:31:04 +0200
Message-Id: <20200615203108.786083-4-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615203108.786083-1-enric.balletbo@collabora.com>
References: <20200615203108.786083-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_133122_061417_509A2264 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 hsinyi@chromium.org, matthias.bgg@gmail.com, Sam Ravnborg <sam@ravnborg.org>,
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
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---

Changes in v4: None
Changes in v3:
- Replace s/bridge/next bridge/ for comment. (Laurent Pinchart)

Changes in v2: None

 drivers/gpu/drm/mediatek/mtk_dsi.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 270bf22c98feb..208f49bf14a01 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -183,7 +183,7 @@ struct mtk_dsi {
 	struct drm_encoder encoder;
 	struct drm_connector conn;
 	struct drm_panel *panel;
-	struct drm_bridge *bridge;
+	struct drm_bridge *next_bridge;
 	struct phy *phy;
 
 	void __iomem *regs;
@@ -894,9 +894,10 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
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
@@ -1177,7 +1178,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	}
 
 	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
-					  &dsi->panel, &dsi->bridge);
+					  &dsi->panel, &dsi->next_bridge);
 	if (ret)
 		goto err_unregister_host;
 
-- 
2.27.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
