Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECCE31AF5
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 11:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTS87ZT/+oMVqbsqMVwSrC+HLAQ7IsjgEZB/FYu+hu0=; b=eq+MwTgIQqeFG4
	zk2BPoeODNecEXlJ5Gy3M0lInoYOmzEDk4S5nAVbuQb3IZWyUB0abZjlyjkesPnG9EFUDmcmzlVRP
	nPqYs2xRgoP4AA4bQrqTzepIBO57DgTMPRhMt4TY/QN64kXWCjwzcZIsTKuVNway2SPZQGnanOM2G
	f8uqxXQ/h8ptNiqgjzwpCIEl9C03tfErIRFGlCYRzoiVAg8V+LGelXwDJ5E80lIG11yfmq6o49tBf
	8mmLDE3W228mju06RXmnCsax7j6K8HpIjv+oZ9LEkjka/GWpt9KHD342LDzg/WFmbsxktKPN7l+4c
	Ffw5FzgwA8VAJZ3STqHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX0Ib-0004PB-QO; Sat, 01 Jun 2019 09:27:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX0IF-0003v0-FM; Sat, 01 Jun 2019 09:27:16 +0000
X-UUID: a751d86deaaf4333a8dca75c369adbb8-20190601
X-UUID: a751d86deaaf4333a8dca75c369adbb8-20190601
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1912241561; Sat, 01 Jun 2019 01:26:56 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 02:26:25 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 1 Jun 2019 17:26:23 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sat, 1 Jun 2019 17:26:21 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [v4 2/7] drm/mediatek: fixes CMDQ reg address of mt8173 is different
 with mt2701
Date: Sat, 1 Jun 2019 17:26:10 +0800
Message-ID: <20190601092615.67917-3-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601092615.67917-1-jitao.shi@mediatek.com>
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_022715_566323_AA9225F4 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Config the different CMDQ reg address in driver data.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 6c4ac37f983d..a48db056df6c 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -131,7 +131,6 @@
 #define VM_CMD_EN			BIT(0)
 #define TS_VFP_EN			BIT(5)
 
-#define DSI_CMDQ0		0x180
 #define CONFIG				(0xff << 0)
 #define SHORT_PACKET			0
 #define LONG_PACKET			2
@@ -156,6 +155,10 @@
 
 struct phy;
 
+struct mtk_dsi_driver_data {
+	const u32 reg_cmdq_off;
+};
+
 struct mtk_dsi {
 	struct mtk_ddp_comp ddp_comp;
 	struct device *dev;
@@ -182,6 +185,7 @@ struct mtk_dsi {
 	bool enabled;
 	u32 irq_data;
 	wait_queue_head_t irq_wait_queue;
+	const struct mtk_dsi_driver_data *driver_data;
 };
 
 static inline struct mtk_dsi *encoder_to_dsi(struct drm_encoder *e)
@@ -934,6 +938,7 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
 	const char *tx_buf = msg->tx_buf;
 	u8 config, cmdq_size, cmdq_off, type = msg->type;
 	u32 reg_val, cmdq_mask, i;
+	u32 reg_cmdq_off = dsi->driver_data->reg_cmdq_off;
 
 	if (MTK_DSI_HOST_IS_READ(type))
 		config = BTA;
@@ -953,9 +958,11 @@ static void mtk_dsi_cmdq(struct mtk_dsi *dsi, const struct mipi_dsi_msg *msg)
 	}
 
 	for (i = 0; i < msg->tx_len; i++)
-		writeb(tx_buf[i], dsi->regs + DSI_CMDQ0 + cmdq_off + i);
+		mtk_dsi_mask(dsi, (reg_cmdq_off + cmdq_off + i) & (~0x3U),
+			     (0xffUL << (((i + cmdq_off) & 3U) * 8U)),
+			     tx_buf[i] << (((i + cmdq_off) & 3U) * 8U));
 
-	mtk_dsi_mask(dsi, DSI_CMDQ0, cmdq_mask, reg_val);
+	mtk_dsi_mask(dsi, reg_cmdq_off, cmdq_mask, reg_val);
 	mtk_dsi_mask(dsi, DSI_CMDQ_SIZE, CMDQ_SIZE, cmdq_size);
 }
 
@@ -1101,6 +1108,8 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_unregister_host;
 
+	dsi->driver_data = of_device_get_match_data(dev);
+
 	dsi->engine_clk = devm_clk_get(dev, "engine");
 	if (IS_ERR(dsi->engine_clk)) {
 		ret = PTR_ERR(dsi->engine_clk);
@@ -1193,9 +1202,19 @@ static int mtk_dsi_remove(struct platform_device *pdev)
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
