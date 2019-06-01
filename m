Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9046C3188B
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 02:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbyfrVYItwKQj7i/PakogD0f8PdsfHGDQsHAD2ZmycU=; b=qT8jDFM4GzRsGx
	s71vsab5BTWCUTsAcSVOqYsyS5548YYrrUPZsOQc5Sgb8GxT3Z8DRI8XORCPqJRQQlc8aid4JwZHe
	JIP9mR95r5qxzTpqQxCXcP50LRr1sJbgyiTvrEH0AZsNvWEF1qy3hod6kK7AVro2Cu0k0S1CiqR31
	nHJVZX549F+3QtAPfzxFKY7k7PIIwXQUp7P9HVK9Fa+gMgPIYYhBZt/V3SgHyloz7LrVBbZoCeXMN
	1WB3yTdZO/LYwEYtBp+KWkFTG/8BkF2BBcBpewqrgjK5olq18sZDRNjOwsHO1Pah1uUNkJZvQr1JA
	o/JyvxSjVyZKH0ixj6FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWrUm-0000r4-E3; Sat, 01 Jun 2019 00:03:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWrUf-0000nf-QA
 for linux-mediatek@lists.infradead.org; Sat, 01 Jun 2019 00:03:31 +0000
X-UUID: f693951508a143afa246c8fc9d0e8bd0-20190531
X-UUID: f693951508a143afa246c8fc9d0e8bd0-20190531
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 130839978; Fri, 31 May 2019 16:03:27 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 17:03:26 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 1 Jun 2019 08:03:25 +0800
From: <sean.wang@mediatek.com>
To: <john@phrozen.org>, <davem@davemloft.net>
Subject: [PATCH net-next v1 5/6] net: ethernet: mediatek: Add MT7629 ethernet
 support
Date: Sat, 1 Jun 2019 08:03:14 +0800
Message-ID: <1559347395-14058-6-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
References: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_170329_846122_4A19644C 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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
Cc: netdev@vger.kernel.org, nbd@openwrt.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Add ethernet support to MT7629 SoC

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 14 ++++++++++++--
 drivers/net/ethernet/mediatek/mtk_eth_soc.h | 19 +++++++++++++++++++
 2 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 382173fa4752..362eacd82b92 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -54,8 +54,10 @@ static const struct mtk_ethtool_stats {
 };
 
 static const char * const mtk_clks_source_name[] = {
-	"ethif", "esw", "gp0", "gp1", "gp2", "trgpll", "sgmii_tx250m",
-	"sgmii_rx250m", "sgmii_cdr_ref", "sgmii_cdr_fb", "sgmii_ck", "eth2pll"
+	"ethif", "sgmiitop", "esw", "gp0", "gp1", "gp2", "fe", "trgpll",
+	"sgmii_tx250m", "sgmii_rx250m", "sgmii_cdr_ref", "sgmii_cdr_fb",
+	"sgmii2_tx250m", "sgmii2_rx250m", "sgmii2_cdr_ref", "sgmii2_cdr_fb",
+	"sgmii_ck", "eth2pll",
 };
 
 void mtk_w32(struct mtk_eth *eth, u32 val, unsigned reg)
@@ -2629,11 +2631,19 @@ static const struct mtk_soc_data mt7623_data = {
 	.required_pctl = true,
 };
 
+static const struct mtk_soc_data mt7629_data = {
+	.ana_rgc3 = 0x128,
+	.caps = MT7629_CAPS | MTK_HWLRO,
+	.required_clks = MT7629_CLKS_BITMAP,
+	.required_pctl = false,
+};
+
 const struct of_device_id of_mtk_match[] = {
 	{ .compatible = "mediatek,mt2701-eth", .data = &mt2701_data},
 	{ .compatible = "mediatek,mt7621-eth", .data = &mt7621_data},
 	{ .compatible = "mediatek,mt7622-eth", .data = &mt7622_data},
 	{ .compatible = "mediatek,mt7623-eth", .data = &mt7623_data},
+	{ .compatible = "mediatek,mt7629-eth", .data = &mt7629_data},
 	{},
 };
 MODULE_DEVICE_TABLE(of, of_mtk_match);
diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.h b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
index 89d68dd60b3d..a0aa5008d5cc 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.h
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
@@ -475,15 +475,21 @@ enum mtk_tx_flags {
  */
 enum mtk_clks_map {
 	MTK_CLK_ETHIF,
+	MTK_CLK_SGMIITOP,
 	MTK_CLK_ESW,
 	MTK_CLK_GP0,
 	MTK_CLK_GP1,
 	MTK_CLK_GP2,
+	MTK_CLK_FE,
 	MTK_CLK_TRGPLL,
 	MTK_CLK_SGMII_TX_250M,
 	MTK_CLK_SGMII_RX_250M,
 	MTK_CLK_SGMII_CDR_REF,
 	MTK_CLK_SGMII_CDR_FB,
+	MTK_CLK_SGMII2_TX_250M,
+	MTK_CLK_SGMII2_RX_250M,
+	MTK_CLK_SGMII2_CDR_REF,
+	MTK_CLK_SGMII2_CDR_FB,
 	MTK_CLK_SGMII_CK,
 	MTK_CLK_ETH2PLL,
 	MTK_CLK_MAX
@@ -502,6 +508,19 @@ enum mtk_clks_map {
 				 BIT(MTK_CLK_SGMII_CK) | \
 				 BIT(MTK_CLK_ETH2PLL))
 #define MT7621_CLKS_BITMAP	(0)
+#define MT7629_CLKS_BITMAP	(BIT(MTK_CLK_ETHIF) | BIT(MTK_CLK_ESW) |  \
+				 BIT(MTK_CLK_GP0) | BIT(MTK_CLK_GP1) | \
+				 BIT(MTK_CLK_GP2) | BIT(MTK_CLK_FE) | \
+				 BIT(MTK_CLK_SGMII_TX_250M) | \
+				 BIT(MTK_CLK_SGMII_RX_250M) | \
+				 BIT(MTK_CLK_SGMII_CDR_REF) | \
+				 BIT(MTK_CLK_SGMII_CDR_FB) | \
+				 BIT(MTK_CLK_SGMII2_TX_250M) | \
+				 BIT(MTK_CLK_SGMII2_RX_250M) | \
+				 BIT(MTK_CLK_SGMII2_CDR_REF) | \
+				 BIT(MTK_CLK_SGMII2_CDR_FB) | \
+				 BIT(MTK_CLK_SGMII_CK) | \
+				 BIT(MTK_CLK_ETH2PLL) | BIT(MTK_CLK_SGMIITOP))
 
 enum mtk_dev_state {
 	MTK_HW_INIT,
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
