Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D014B739F
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 08:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gainzjGnLmjg869ugg8voXUqzDosZ3IXrHPzJIjK0JE=; b=CFrbqL+8lVX5In
	t0DYw+NX3EQDZffuBxlqP84M5sjtl3h1GuJwENG5RXj0jtumtGOWS8HJnF3gX8qPM4SPH6q2C3TKV
	7C0ET21kHHFZ2lpZv6CDUaperaMfrrwrmMEowSL2kbKB/s9UslkwusplzacrVY0V2hoWxL6GJuVUJ
	xp8IR3P0pjcBFXhfOCCsGlojUZPBj6HsUfWFTENEJzMGaTIUVymaWjPbrbOt7/rHxGR/m9lF5cDEH
	ka39r480wJqnCGnVbB8PpUjioO6k9lYh9wp4/D8o/ioC8mhSdP3rjQTko3wZMvMTroa9MfQkc0f35
	cA2OlxHbrVnRCLZuuttA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqOn-0004qe-3O; Thu, 19 Sep 2019 06:58:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqOj-0004pe-SL
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 06:58:39 +0000
X-UUID: 9828f54e8b6e49e3857809272260b91e-20190918
X-UUID: 9828f54e8b6e49e3857809272260b91e-20190918
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1172550583; Wed, 18 Sep 2019 22:58:31 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 23:58:31 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 19 Sep 2019 14:58:27 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Thu, 19 Sep 2019 14:58:26 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH v7 2/9] drm/mediatek: fixes CMDQ reg address of mt8173 is
 different with mt2701
Date: Thu, 19 Sep 2019 14:57:59 +0800
Message-ID: <20190919065806.111016-3-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919065806.111016-1-jitao.shi@mediatek.com>
References: <20190919065806.111016-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24920.005
X-TM-AS-Result: No-7.650700-8.000000-10
X-TMASE-MatchedRID: QtNN9W95DWv0gpEqM7fvYUOLK43kW8U2S1zwNuiBtITfUZT83lbkEDtx
 n3LVDUz3mE9rrt2FS007C4OchexbKmiqvF73selK/NOUkr6ADzf54F/2i/DwjR6njTSt2k4LQmZ
 9+1UBYL2O9zp52KxB5/CUhGX/S6sVcsoJIwqzxXdHg88w74mNDhhH6ApagZfOmyiLZetSf8mfop
 0ytGwvXiq2rl3dzGQ17On12/VEXT79fPLpR7PjPY/h9OMMzYztLOgxgvEP22GJe9765PFY5MC+k
 sT6a9fy
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--7.650700-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24920.005
X-TM-SNTS-SMTP: 292F1C6275C832023DFA06146F532A340F3DA9532514912C65DA1CABE8341F082000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_235837_920308_D1374FF4 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Config the different CMDQ reg address in driver data.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 27 ++++++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 52b49daeed9f..7e24d03cdccc 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -123,7 +123,6 @@
 #define VM_CMD_EN			BIT(0)
 #define TS_VFP_EN			BIT(5)
 
-#define DSI_CMDQ0		0x180
 #define CONFIG				(0xff << 0)
 #define SHORT_PACKET			0
 #define LONG_PACKET			2
@@ -148,6 +147,10 @@
 
 struct phy;
 
+struct mtk_dsi_driver_data {
+	const u32 reg_cmdq_off;
+};
+
 struct mtk_dsi {
 	struct mtk_ddp_comp ddp_comp;
 	struct device *dev;
@@ -174,6 +177,7 @@ struct mtk_dsi {
 	bool enabled;
 	u32 irq_data;
 	wait_queue_head_t irq_wait_queue;
+	const struct mtk_dsi_driver_data *driver_data;
 };
 
 static inline struct mtk_dsi *encoder_to_dsi(struct drm_encoder *e)
@@ -936,6 +940,7 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
 	const char *tx_buf = msg->tx_buf;
 	u8 config, cmdq_size, cmdq_off, type = msg->type;
 	u32 reg_val, cmdq_mask, i;
+	u32 reg_cmdq_off = dsi->driver_data->reg_cmdq_off;
 
 	if (MTK_DSI_HOST_IS_READ(type))
 		config = BTA;
@@ -955,9 +960,9 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
 	}
 
 	for (i = 0; i < msg->tx_len; i++)
-		writeb(tx_buf[i], dsi->regs + DSI_CMDQ0 + cmdq_off + i);
+		writeb(tx_buf[i], dsi->regs + reg_cmdq_off + cmdq_off + i);
 
-	mtk_dsi_mask(dsi, DSI_CMDQ0, cmdq_mask, reg_val);
+	mtk_dsi_mask(dsi, reg_cmdq_off, cmdq_mask, reg_val);
 	mtk_dsi_mask(dsi, DSI_CMDQ_SIZE, CMDQ_SIZE, cmdq_size);
 }
 
@@ -1101,6 +1106,8 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_unregister_host;
 
+	dsi->driver_data = of_device_get_match_data(dev);
+
 	dsi->engine_clk = devm_clk_get(dev, "engine");
 	if (IS_ERR(dsi->engine_clk)) {
 		ret = PTR_ERR(dsi->engine_clk);
@@ -1194,9 +1201,19 @@ static int mtk_dsi_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct mtk_dsi_driver_data mt8173_dsi_driver_data = {
+	.reg_cmdq_off = 0x200,
+};
+
+static const struct mtk_dsi_driver_data mt2701_dsi_driver_data = {
+	.reg_cmdq_off = 0x180,
+};
+
 static const struct of_device_id mtk_dsi_of_match[] = {
-	{ .compatible = "mediatek,mt2701-dsi" },
-	{ .compatible = "mediatek,mt8173-dsi" },
+	{ .compatible = "mediatek,mt2701-dsi",
+	  .data = &mt2701_dsi_driver_data },
+	{ .compatible = "mediatek,mt8173-dsi",
+	  .data = &mt8173_dsi_driver_data },
 	{ },
 };
 
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
