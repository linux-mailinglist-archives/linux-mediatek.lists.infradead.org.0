Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 725491C0D2
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 05:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x40P9CTWM/2kqFbJlngsN7Xglow69o4K/mJYooc9GBU=; b=oTFAGSo5QNingw
	1RiYDjBs9iSN0931/RnnhDbDTMwaHsY4D8lYuDYY900wnXjZAtd4percmYP1OTjzh0zA3IVU4SYie
	zh2X1OBfJRJPJCEinfxXgJS3yjEkKZi2JYYIcUJSq2ZLxoGc5pR3dFpq0cjy1NvMwXaPstD6PasUT
	QkXt7+bA6faVF8deqBhwIr7JgyuOaWtwgq1WtxXCboKKCwtsg8OqS/9Ztjhym5XqWQJIB4bVN+MF/
	EjYDqj9T03fZWrBx0tOWAXVR1aMVC6nds3b6rj1f1/Cr6s0uODVDIldsFkhghr8Q9xhK++/FccZOk
	4I36ncIviLGEF0L77XCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQNhk-0006Qc-Md; Tue, 14 May 2019 03:02:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQNhc-0006JY-4f; Tue, 14 May 2019 03:02:05 +0000
X-UUID: 31633e42ce6e4dfd9f986670ec245b00-20190513
X-UUID: 31633e42ce6e4dfd9f986670ec245b00-20190513
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 892150048; Mon, 13 May 2019 19:00:55 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 20:00:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 11:00:51 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 11:00:51 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Jose Abreu <joabreu@synopsys.com>, <davem@davemloft.net>
Subject: [v2,
 PATCH] net: stmmac: add support for hash table size 128/256 in dwmac4
Date: Tue, 14 May 2019 11:00:43 +0800
Message-ID: <1557802843-31718-2-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557802843-31718-1-git-send-email-biao.huang@mediatek.com>
References: <1557802843-31718-1-git-send-email-biao.huang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_200204_184396_85B61120 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, jianguo.zhang@mediatek.comi,
 biao.huang@mediatek.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 boon.leong.ong@intel.com, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

1. get hash table size in hw feature reigster, and add support
for taller hash table(128/256) in dwmac4.
2. only clear PR/HMC/PM bits of GMAC_PACKET_FILTER, to avoid
side effect to functions of other bits.

Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 drivers/net/ethernet/stmicro/stmmac/common.h      |    7 +--
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h      |    4 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c |   50 ++++++++++++---------
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c  |    1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    4 ++
 5 files changed, 40 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 272b9ca6..709dcec 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -335,6 +335,7 @@ struct dma_features {
 	/* 802.3az - Energy-Efficient Ethernet (EEE) */
 	unsigned int eee;
 	unsigned int av;
+	unsigned int hash_tb_sz;
 	unsigned int tsoen;
 	/* TX and RX csum */
 	unsigned int tx_coe;
@@ -427,9 +428,9 @@ struct mac_device_info {
 	struct mii_regs mii;	/* MII register Addresses */
 	struct mac_link link;
 	void __iomem *pcsr;     /* vpointer to device CSRs */
-	int multicast_filter_bins;
-	int unicast_filter_entries;
-	int mcast_bits_log2;
+	unsigned int multicast_filter_bins;
+	unsigned int unicast_filter_entries;
+	unsigned int mcast_bits_log2;
 	unsigned int rx_csum;
 	unsigned int pcs;
 	unsigned int pmt;
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
index eb013d5..a5eb7df 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
@@ -18,8 +18,7 @@
 /*  MAC registers */
 #define GMAC_CONFIG			0x00000000
 #define GMAC_PACKET_FILTER		0x00000008
-#define GMAC_HASH_TAB_0_31		0x00000010
-#define GMAC_HASH_TAB_32_63		0x00000014
+#define GMAC_HASH_TAB(x)		(0x10 + x * 4)
 #define GMAC_RX_FLOW_CTRL		0x00000090
 #define GMAC_QX_TX_FLOW_CTRL(x)		(0x70 + x * 4)
 #define GMAC_TXQ_PRTY_MAP0		0x98
@@ -181,6 +180,7 @@ enum power_event {
 #define GMAC_HW_FEAT_MIISEL		BIT(0)
 
 /* MAC HW features1 bitmap */
+#define GMAC_HW_HASH_TB_SZ		GENMASK(25, 24)
 #define GMAC_HW_FEAT_AVSEL		BIT(20)
 #define GMAC_HW_TSOEN			BIT(18)
 #define GMAC_HW_TXFIFOSIZE		GENMASK(10, 6)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 7e5d5db..1f682ec 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -401,41 +401,49 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
 			      struct net_device *dev)
 {
 	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
-	unsigned int value = 0;
+	unsigned int value;
+	int numhashregs = (hw->multicast_filter_bins >> 5);
+	int mcbitslog2 = hw->mcast_bits_log2;
+	int i;
+
+	value = readl(ioaddr + GMAC_PACKET_FILTER);
+	value &= ~GMAC_PACKET_FILTER_PR;
+	value &= ~GMAC_PACKET_FILTER_HMC;
+	value &= ~GMAC_PACKET_FILTER_PM;
 
 	if (dev->flags & IFF_PROMISC) {
-		value = GMAC_PACKET_FILTER_PR;
+		value |= GMAC_PACKET_FILTER_PR;
 	} else if ((dev->flags & IFF_ALLMULTI) ||
-			(netdev_mc_count(dev) > HASH_TABLE_SIZE)) {
+		   (netdev_mc_count(dev) > hw->multicast_filter_bins)) {
 		/* Pass all multi */
-		value = GMAC_PACKET_FILTER_PM;
-		/* Set the 64 bits of the HASH tab. To be updated if taller
-		 * hash table is used
-		 */
-		writel(0xffffffff, ioaddr + GMAC_HASH_TAB_0_31);
-		writel(0xffffffff, ioaddr + GMAC_HASH_TAB_32_63);
+		value |= GMAC_PACKET_FILTER_PM;
+		/* Set all the bits of the HASH tab */
+		for (i = 0; i < numhashregs; i++)
+			writel(0xffffffff, ioaddr + GMAC_HASH_TAB(i));
 	} else if (!netdev_mc_empty(dev)) {
-		u32 mc_filter[2];
+		u32 mc_filter[8];
 		struct netdev_hw_addr *ha;
 
 		/* Hash filter for multicast */
-		value = GMAC_PACKET_FILTER_HMC;
+		value |= GMAC_PACKET_FILTER_HMC;
 
 		memset(mc_filter, 0, sizeof(mc_filter));
 		netdev_for_each_mc_addr(ha, dev) {
-			/* The upper 6 bits of the calculated CRC are used to
-			 * index the content of the Hash Table Reg 0 and 1.
+			/* The upper n bits of the calculated CRC are used to
+			 * index the contents of the hash table. The number of
+			 * bits used depends on the hardware configuration
+			 * selected at core configuration time.
 			 */
-			int bit_nr =
-				(bitrev32(~crc32_le(~0, ha->addr, 6)) >> 26);
-			/* The most significant bit determines the register
-			 * to use while the other 5 bits determines the bit
-			 * within the selected register
+			int bit_nr = bitrev32(~crc32_le(~0, ha->addr,
+					ETH_ALEN)) >> (32 - mcbitslog2);
+			/* The most significant bit determines the register to
+			 * use (H/L) while the other 5 bits determine the bit
+			 * within the register.
 			 */
-			mc_filter[bit_nr >> 5] |= (1 << (bit_nr & 0x1F));
+			mc_filter[bit_nr >> 5] |= (1 << (bit_nr & 0x1f));
 		}
-		writel(mc_filter[0], ioaddr + GMAC_HASH_TAB_0_31);
-		writel(mc_filter[1], ioaddr + GMAC_HASH_TAB_32_63);
+		for (i = 0; i < numhashregs; i++)
+			writel(mc_filter[i], ioaddr + GMAC_HASH_TAB(i));
 	}
 
 	/* Handle multiple unicast addresses */
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
index edb6053..59afb53 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
@@ -354,6 +354,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
 
 	/* MAC HW feature1 */
 	hw_cap = readl(ioaddr + GMAC_HW_FEATURE1);
+	dma_cap->hash_tb_sz = (hw_cap & GMAC_HW_HASH_TB_SZ) >> 24;
 	dma_cap->av = (hw_cap & GMAC_HW_FEAT_AVSEL) >> 20;
 	dma_cap->tsoen = (hw_cap & GMAC_HW_TSOEN) >> 18;
 	/* RX and TX FIFO sizes are encoded as log2(n / 128). Undo that by
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 97c5e1a..1971f9f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4159,6 +4159,10 @@ static int stmmac_hw_init(struct stmmac_priv *priv)
 		priv->plat->enh_desc = priv->dma_cap.enh_desc;
 		priv->plat->pmt = priv->dma_cap.pmt_remote_wake_up;
 		priv->hw->pmt = priv->plat->pmt;
+		if (priv->dma_cap.hash_tb_sz) {
+			priv->hw->multicast_filter_bins = BIT(priv->dma_cap.hash_tb_sz) * 32;
+			priv->hw->mcast_bits_log2 = ilog2(priv->hw->multicast_filter_bins);
+		}
 
 		/* TXCOE doesn't work in thresh DMA mode */
 		if (priv->plat->force_thresh_dma_mode)
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
