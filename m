Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2456E142
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jul 2019 08:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiHfRnEaE0MeLchMQUuywppHFJoT2s8nfEJcOmOKXdw=; b=l0R9ibTmAXTNq2
	YxzIhSNFCVKl+I6EcZoM93jxNKgzI1+kUtlY7x09ibdQsdDoUGYTkIuEXDxCJtmqeJyqZKxzM7+qW
	r91YEZq+wtEKVm/59anX8G6ivBPjkhYxobTAgka0qsCv7284e54fl3QsakwDjh2kJ9TmB2KdpbGtc
	jFujyuHoIqbgRoBbI+qMMaM/hym0tvlWVyxTreZPUtr/h6rZT6oLpRw3wvy5v7co3ULLZbOhlnzTP
	0ouLaWhTqs5OIqIV2OOyCAHc1/lbirsE676noV2ZpoRpS+o0bmMwGzhLFg/drMP91q4+V0enDWaa1
	vlz1sqdLiGmloBjB6Uag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMoH-0002pZ-Kr; Fri, 19 Jul 2019 06:56:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMoE-0002nO-AB
 for linux-mediatek@lists.infradead.org; Fri, 19 Jul 2019 06:56:03 +0000
X-UUID: e54a50068c5849ed8c00eb15ad03bae0-20190718
X-UUID: e54a50068c5849ed8c00eb15ad03bae0-20190718
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 202918045; Thu, 18 Jul 2019 22:55:48 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 23:55:46 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 19 Jul 2019 14:55:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 19 Jul 2019 14:55:38 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 2/3] mt76: mt7615: add 4 WMM sets support
Date: Fri, 19 Jul 2019 14:55:35 +0800
Message-ID: <1dc3cbc32729be40d0e1f2ef831377f2cddf3df3.1563518381.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <50d28c9b0f9e7d6b277d36fc93f55142d7535259.1563518381.git.ryder.lee@mediatek.com>
References: <50d28c9b0f9e7d6b277d36fc93f55142d7535259.1563518381.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2C4497259A2F9BF68D2E70D97F9FFFBF3138A1BF62EE7AB0F6C1F04274B5F6F72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_235602_361573_A81CD060 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

MT7615 hardware supoorts 4 WMM sets, so this patch adds them accordingly.
Also remove incorrect queue mapping in .conf_tx

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mac.c  |  5 +++--
 drivers/net/wireless/mediatek/mt76/mt7615/main.c | 16 ++++++----------
 .../net/wireless/mediatek/mt76/mt7615/mt7615.h   |  1 +
 3 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index 8f9a2bb68ded..d85b3904f33a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -314,7 +314,7 @@ int mt7615_mac_write_txwi(struct mt7615_dev *dev, __le32 *txwi,
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	struct ieee80211_vif *vif = info->control.vif;
 	int tx_count = 8;
-	u8 fc_type, fc_stype, p_fmt, q_idx, omac_idx = 0;
+	u8 fc_type, fc_stype, p_fmt, q_idx, omac_idx = 0, wmm_idx = 0;
 	__le16 fc = hdr->frame_control;
 	u16 seqno = 0;
 	u32 val;
@@ -323,6 +323,7 @@ int mt7615_mac_write_txwi(struct mt7615_dev *dev, __le32 *txwi,
 		struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
 
 		omac_idx = mvif->omac_idx;
+		wmm_idx = mvif->wmm_idx;
 	}
 
 	if (sta) {
@@ -335,7 +336,7 @@ int mt7615_mac_write_txwi(struct mt7615_dev *dev, __le32 *txwi,
 	fc_stype = (le16_to_cpu(fc) & IEEE80211_FCTL_STYPE) >> 4;
 
 	if (ieee80211_is_data(fc) || ieee80211_is_bufferable_mmpdu(fc)) {
-		q_idx = skb_get_queue_mapping(skb);
+		q_idx = skb_get_queue_mapping(skb) + wmm_idx * MT7615_MAX_WMM_SETS;
 		p_fmt = MT_TX_TYPE_CT;
 	} else if (ieee80211_is_beacon(fc)) {
 		q_idx = MT_LMAC_BCN0;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 2c702b31d55f..ea48dcdb65c0 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -85,9 +85,9 @@ static int mt7615_add_interface(struct ieee80211_hw *hw,
 	}
 	mvif->omac_idx = idx;
 
-	/* TODO: DBDC support. Use band 0 and wmm 0 for now */
+	/* TODO: DBDC support. Use band 0 for now */
 	mvif->band_idx = 0;
-	mvif->wmm_idx = 0;
+	mvif->wmm_idx = mvif->idx % MT7615_MAX_WMM_SETS;
 
 	ret = mt7615_mcu_set_dev_info(dev, vif, 1);
 	if (ret)
@@ -241,16 +241,12 @@ static int
 mt7615_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
 	       const struct ieee80211_tx_queue_params *params)
 {
+	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
 	struct mt7615_dev *dev = hw->priv;
-	static const u8 wmm_queue_map[] = {
-		[IEEE80211_AC_BK] = 0,
-		[IEEE80211_AC_BE] = 1,
-		[IEEE80211_AC_VI] = 2,
-		[IEEE80211_AC_VO] = 3,
-	};
 
-	/* TODO: hw wmm_set 1~3 */
-	return mt7615_mcu_set_wmm(dev, wmm_queue_map[queue], params);
+	queue += mvif->wmm_idx * MT7615_MAX_WMM_SETS;
+
+	return mt7615_mcu_set_wmm(dev, queue, params);
 }
 
 static void mt7615_configure_filter(struct ieee80211_hw *hw,
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 2f43101343c3..f3f1738a01e7 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -10,6 +10,7 @@
 #include "regs.h"
 
 #define MT7615_MAX_INTERFACES		4
+#define MT7615_MAX_WMM_SETS		4
 #define MT7615_WTBL_SIZE		128
 #define MT7615_WTBL_RESERVED		(MT7615_WTBL_SIZE - 1)
 #define MT7615_WTBL_STA			(MT7615_WTBL_RESERVED - \
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
