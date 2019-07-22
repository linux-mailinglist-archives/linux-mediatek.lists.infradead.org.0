Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2248A6FB9B
	for <lists+linux-mediatek@lfdr.de>; Mon, 22 Jul 2019 10:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=itXvrWLZKyhKXujF4+55pdWrVsuM3hDpXi1uRRuUqxU=; b=ujxHcrGsoA7Btn
	1WY1LGetv6LNgO82R4jFL4kzm1OXu+uuwr4iZF46ClSNzM8uHLk6jybSMqwNSxkpOD5e8XU/As888
	CpgrUNv8rfoeh4T9Mr8pusbXU3pgN8BNRuZcwNw1bPi9we8DFyvGowWD1jF+jQAT0pr06M62Yhq6g
	0mfWrNf5j0QcgJQI+RRP+9ASlGGikFbo8d1TGxgbGHQSl+PIMEltOMEcWN79ixZKhg+lYEHlD2jlP
	5/a+X9BeK6YQTj2k3lH3LTTrnu5xoVhVwwBAs1EVUurJzMemKKUKb3a98Q+CfYWiYm3L0l6ldGQNC
	/dqZVoZ2lQKcXlpe4I+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpU1d-00059h-I5; Mon, 22 Jul 2019 08:50:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpU1X-00058q-Rj
 for linux-mediatek@lists.infradead.org; Mon, 22 Jul 2019 08:50:25 +0000
X-UUID: f491e051f6a64968a6abd490f78682fd-20190722
X-UUID: f491e051f6a64968a6abd490f78682fd-20190722
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1549951935; Mon, 22 Jul 2019 00:50:13 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 01:50:12 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 16:50:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 22 Jul 2019 16:50:10 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v1 1/2] mt76: mt7615: add 4 WMM sets support
Date: Mon, 22 Jul 2019 16:50:08 +0800
Message-ID: <f5c814ad88a8d959376fc77930531582eedf1a63.1563779728.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_015023_904057_D6D04A53 
X-CRM114-Status: GOOD (  10.18  )
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
 linux-wireless@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hardware supports 4 sets of WMM that should be put to good use.
And fix incorrect queue mapping in mt7615_conf_tx().

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
