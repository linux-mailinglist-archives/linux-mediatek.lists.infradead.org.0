Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F3343343
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 09:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PiZfZ7kEvShM9B6AUv/cRdQy4LiXiZo1h0Y2zOhvkQE=; b=jw1C/r+n88E4PV
	YCPFKbd3uafq+DOwTkDQo1OeZwySm5clKivJtP8NmXRRdDIeNoTv0F/Ny759GenCqd9Gt7KcPA1a7
	HSgULzuOVb5SY3Wxg/PbViNbAz03bbMHVCZv6GyI8Fr3F7iT1qREB8zmurFW5GnCmLZeylDyhEZGT
	Wt/hnjo0Z2+C3mdD5UkZkYrZOLWD/FR8nZuaiScYWE4Wvhj7njjUDBoZVtjjKeZUCaGImD3k/HgX5
	jUCFRy48CD++9EMFafpfGWg0ZWE8byeyLhHgg/RzvDFkntqt0FtoWwjj11NKvCJr77yktJqRZdQCy
	4J0D6G/hTWX8FWJFWh/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbK0u-0005wZ-W0; Thu, 13 Jun 2019 07:19:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJvn-0000Pk-BG
 for linux-mediatek@lists.infradead.org; Thu, 13 Jun 2019 07:13:58 +0000
X-UUID: 10232c8515394bbe9d3eb6ae987ff2ab-20190612
X-UUID: 10232c8515394bbe9d3eb6ae987ff2ab-20190612
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1214689029; Wed, 12 Jun 2019 23:13:36 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 00:13:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 15:13:33 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 13 Jun 2019 15:13:32 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v3] mt76: mt7615: add support for per-chain signal strength
 reporting
Date: Thu, 13 Jun 2019 15:13:29 +0800
Message-ID: <ec6ccb9ad8e083bbc960c84adcb3164a4e190c7c.1560338170.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001355_422008_D3631640 
X-CRM114-Status: UNSURE (   7.97  )
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fill in RX status->chain_signal to avoid empty value.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
Changes since v3 - use hweight8 instead.
Changes since v2 - correct calculation sequence.
---
 .../net/wireless/mediatek/mt76/mt7615/mac.c   | 22 ++++++++++++++++++-
 .../net/wireless/mediatek/mt76/mt7615/mac.h   |  5 +++++
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index b60d42b5923d..1eb0e9c9970c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -13,6 +13,11 @@
 #include "../dma.h"
 #include "mac.h"
 
+static inline s8 to_rssi(u32 field, u32 rxv)
+{
+	return (FIELD_GET(field, rxv) - 220) / 2;
+}
+
 static struct mt76_wcid *mt7615_rx_get_wcid(struct mt7615_dev *dev,
 					    u8 idx, bool unicast)
 {
@@ -120,6 +125,7 @@ int mt7615_mac_fill_rx(struct mt7615_dev *dev, struct sk_buff *skb)
 	if (rxd0 & MT_RXD0_NORMAL_GROUP_3) {
 		u32 rxdg0 = le32_to_cpu(rxd[0]);
 		u32 rxdg1 = le32_to_cpu(rxd[1]);
+		u32 rxdg3 = le32_to_cpu(rxd[3]);
 		u8 stbc = FIELD_GET(MT_RXV1_HT_STBC, rxdg0);
 		bool cck = false;
 
@@ -169,7 +175,21 @@ int mt7615_mac_fill_rx(struct mt7615_dev *dev, struct sk_buff *skb)
 
 		status->enc_flags |= RX_ENC_FLAG_STBC_MASK * stbc;
 
-		/* TODO: RSSI */
+		status->chains = dev->mt76.antenna_mask;
+		status->chain_signal[0] = to_rssi(MT_RXV4_RCPI0, rxdg3);
+		status->chain_signal[1] = to_rssi(MT_RXV4_RCPI1, rxdg3);
+		status->chain_signal[2] = to_rssi(MT_RXV4_RCPI2, rxdg3);
+		status->chain_signal[3] = to_rssi(MT_RXV4_RCPI3, rxdg3);
+		status->signal = status->chain_signal[0];
+
+		for (i = 1; i < hweight8(dev->mt76.antenna_mask); i++) {
+			if (!(status->chains & BIT(i)))
+				continue;
+
+			status->signal = max(status->signal,
+					     status->chain_signal[i]);
+		}
+
 		rxd += 6;
 		if ((u8 *)rxd - skb->data >= skb->len)
 			return -EINVAL;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
index 18ad4b8a3807..b00ce8db58e9 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
@@ -98,6 +98,11 @@ enum rx_pkt_type {
 #define MT_RXV2_GROUP_ID		GENMASK(26, 21)
 #define MT_RXV2_LENGTH			GENMASK(20, 0)
 
+#define MT_RXV4_RCPI3			GENMASK(31, 24)
+#define MT_RXV4_RCPI2			GENMASK(23, 16)
+#define MT_RXV4_RCPI1			GENMASK(15, 8)
+#define MT_RXV4_RCPI0			GENMASK(7, 0)
+
 enum tx_header_format {
 	MT_HDR_FORMAT_802_3,
 	MT_HDR_FORMAT_CMD,
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
