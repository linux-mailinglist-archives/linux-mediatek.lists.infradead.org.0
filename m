Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFB3F10CE
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 Nov 2019 09:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ih2Vm5FXkZ5MaPuiFoMZ49DEqNDwVzjl5nGAS4XoM4E=; b=tnaZr/C6APbx6g
	Gz9k/FkKl4NUh0MC2g1NPyLKGo+843vZjkzoBiAqgAD0uBPtkcDIYK08eM6WEuk1CPibtgknjqxQv
	+rwR5MeiwxsYTO/rhTG2mtxzGIzjqVHnM7GXvl+h/0D0Z5uWbNmFONoDF07NfiBSHq0QkTdbf7Nv0
	XfAiEsuFHC/DI9mFnkdBGhYG4MEQKTK59NLCa1D/J6p77EZ/W2JvEwa3oYe/0xKFJUC9Bw/S/lppx
	XlsZaM6Gcj/UywFfX9qv6dF0/9/xjJ6FIKXQDWrMaDeaBwl7izHjKwUw4fxv1bl+GS2v+2SMzkAT3
	RhdhlanlL5ocIz+zyi6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSGNz-0007GB-NK; Wed, 06 Nov 2019 08:09:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGNv-0007ED-U2
 for linux-mediatek@lists.infradead.org; Wed, 06 Nov 2019 08:09:49 +0000
X-UUID: 9edd8da8854d443bb27189b7c9b7bb09-20191106
X-UUID: 9edd8da8854d443bb27189b7c9b7bb09-20191106
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 219219937; Wed, 06 Nov 2019 00:09:34 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 6 Nov 2019 00:09:41 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 6 Nov 2019 16:09:35 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 6 Nov 2019 16:09:34 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH 1/1] drm/mediatek: fine tune the dsi panel's power sequence
Date: Wed, 6 Nov 2019 16:09:30 +0800
Message-ID: <20191106080930.11770-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191106080930.11770-1-jitao.shi@mediatek.com>
References: <20191106080930.11770-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 10C086CDD7795C509CC7530EE98B1755EADDB402A10C1DD5A67B25E6781D7C252000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_000947_983989_6C5BFDC5 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add the drm_panel_prepare_power and drm_panel_unprepare_power control.
Turn on panel power(drm_panel_prepare_power) and control before dsi
enable. And then dsi enable, send dcs cmd in drm_panel_prepare, last
turn on backlight.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 224afb666881..b635724b209b 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -563,10 +563,15 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	dsi->data_rate = DIV_ROUND_UP_ULL(pixel_clock * total_bits,
 					  htotal * dsi->lanes);
 
+	if (dsi->panel) {
+		if (drm_panel_prepare_power(dsi->panel))
+			DRM_INFO("can't prepare power the panel\n");
+	}
+
 	ret = clk_set_rate(dsi->hs_clk, dsi->data_rate);
 	if (ret < 0) {
 		dev_err(dev, "Failed to set data rate: %d\n", ret);
-		goto err_refcount;
+		goto err_prepare_power;
 	}
 
 	phy_power_on(dsi->phy);
@@ -605,13 +610,18 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	}
 
 	return 0;
+
 err_disable_digital_clk:
 	clk_disable_unprepare(dsi->digital_clk);
 err_disable_engine_clk:
 	clk_disable_unprepare(dsi->engine_clk);
 err_phy_power_off:
 	phy_power_off(dsi->phy);
-err_refcount:
+err_prepare_power:
+	if (dsi->panel) {
+		if (drm_panel_unprepare_power(dsi->panel))
+			DRM_INFO("Can't unprepare power the panel\n");
+	}
 	dsi->refcount--;
 	return ret;
 }
@@ -652,6 +662,11 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
 	clk_disable_unprepare(dsi->digital_clk);
 
 	phy_power_off(dsi->phy);
+
+	if (dsi->panel) {
+		if (drm_panel_unprepare_power(dsi->panel))
+			DRM_INFO("Can't unprepare power the panel\n");
+	}
 }
 
 static void mtk_output_dsi_enable(struct mtk_dsi *dsi)
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
