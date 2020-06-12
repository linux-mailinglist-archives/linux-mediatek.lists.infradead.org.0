Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B431F7CE5
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jun 2020 20:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g94iPw6irRI0xTHeQ0YSpp0HrAw1VCsDTHKsaik4O+I=; b=CsjotWGbE6q/CB
	zqxKzi2DjFrLXogYPZtSV/6z63uaoGpIFa8FWxw9gslAqZNmd1c3O2wn2WKYXy080zWnL/8Dzgcq2
	MCfUy7OH0LGsaXREqBPJAIcAOOMLCXwP+wp3gOC6NCFzUrk5b10NPnggs1eSwDnM8V7HEA62YsShe
	t/FlDzazYscmkcTYk5y2ouQAceHZFLYZXz/ctlbb+k2MoP3sbTIyiZeeiDDaZsYJx6zuPaoDUzigk
	RHEak+HOlRgpo7v6kfknKEjfvfSAI2/bi6ZtrLLhNuKJmxdAFmdZKC6LMCKgGVcFJCtadA8W/i5d+
	nyyivEYuZyj+X7l3knsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjoRg-0001ko-VM; Fri, 12 Jun 2020 18:30:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjoRd-0001iy-Kr
 for linux-mediatek@lists.infradead.org; Fri, 12 Jun 2020 18:30:27 +0000
X-UUID: f81c41f499bd4b6fb68fe6c6acc020ef-20200612
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=HNrPmQ2IIylNycJMJ0rpK8m8tnlpP8o1gtVTahC34RY=; 
 b=HNoytvPz6BSDHAZrVbpS3xHTKexsGhvGOQOa+f7jSeOLp+GqOaysdYfokuYQb1eLKnmHQ/X+COJxx5q1pCik9GQ1USaOmjZ8WsbPpZzZmWzh9sEBB2CpoBPX4DW0sLj9ITcaWGLj/jdWu8Gkp52jLw5r6bsGs57ZxDiKNzw4yF4=;
X-UUID: f81c41f499bd4b6fb68fe6c6acc020ef-20200612
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 537261598; Fri, 12 Jun 2020 10:29:45 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 11:30:13 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 13 Jun 2020 02:30:14 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 13 Jun 2020 02:30:11 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 3/3] mt76: mt7915: add MU-MIMO support
Date: Sat, 13 Jun 2020 02:30:10 +0800
Message-ID: <52232d9b5857dd17e6e11ed4bb81a51e6e8bb757.1591983283.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <2863c9a7e14c791202738597184f4a6b75d5bc07.1591983283.git.ryder.lee@mediatek.com>
References: <2863c9a7e14c791202738597184f4a6b75d5bc07.1591983283.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_113025_685359_591FE87B 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mediatek@lists.infradead.org, Sean Wang <sean.wang@mediatek.com>,
 linux-wireless@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Enable MU-MIMO DL/UL and add relative counters in debugfs.

Currently MU modules read WTBL first to notify BA changes to
other cross modules, so adjust mt7915_mcu_sta_ba() accordingly.

Tested-by: Evelyn Tsai <evelyn.tsai@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
changes since v2 - move CONFIG_MAC80211_DEBUGFS fixup into patch 0001 
---
 .../wireless/mediatek/mt76/mt7915/debugfs.c   |  9 ++-
 .../net/wireless/mediatek/mt76/mt7915/mcu.c   | 72 ++++++++++++++++++-
 .../net/wireless/mediatek/mt76/mt7915/mcu.h   |  5 +-
 .../net/wireless/mediatek/mt76/mt7915/regs.h  |  5 ++
 4 files changed, 86 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
index 7e48f56b5b08..38f473d587c9 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
@@ -178,7 +178,14 @@ mt7915_txbf_stat_read_phy(struct mt7915_phy *phy, struct seq_file *s)
 	seq_printf(s, "Tx Beamformee feedback triggered counts: %ld\n",
 		   FIELD_GET(MT_ETBF_TX_FB_TRI, cnt));
 
-	/* Tx SU counters */
+	/* Tx SU & MU counters */
+	cnt = mt76_rr(dev, MT_MIB_SDR34(ext_phy));
+	seq_printf(s, "Tx multi-user Beamforming counts: %ld\n",
+		   FIELD_GET(MT_MIB_MU_BF_TX_CNT, cnt));
+	cnt = mt76_rr(dev, MT_MIB_DR8(ext_phy));
+	seq_printf(s, "Tx multi-user MPDU counts: %d\n", cnt);
+	cnt = mt76_rr(dev, MT_MIB_DR9(ext_phy));
+	seq_printf(s, "Tx multi-user successful MPDU counts: %d\n", cnt);
 	cnt = mt76_rr(dev, MT_MIB_DR11(ext_phy));
 	seq_printf(s, "Tx single-user successful MPDU counts: %d\n", cnt);
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index c8c12c740c1a..3d35332c44bc 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -1166,19 +1166,31 @@ mt7915_mcu_sta_ba(struct mt7915_dev *dev,
 	struct wtbl_req_hdr *wtbl_hdr;
 	struct tlv *sta_wtbl;
 	struct sk_buff *skb;
+	int ret;
 
 	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
 				       MT7915_STA_UPDATE_MAX_SIZE);
 	if (IS_ERR(skb))
 		return PTR_ERR(skb);
 
-	mt7915_mcu_sta_ba_tlv(skb, params, enable, tx);
 	sta_wtbl = mt7915_mcu_add_tlv(skb, STA_REC_WTBL, sizeof(struct tlv));
 
 	wtbl_hdr = mt7915_mcu_alloc_wtbl_req(dev, msta, WTBL_SET, sta_wtbl,
 					     &skb);
 	mt7915_mcu_wtbl_ba_tlv(skb, params, enable, tx, sta_wtbl, wtbl_hdr);
 
+	ret = __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				      MCU_EXT_CMD_STA_REC_UPDATE, true);
+	if (ret)
+		return ret;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7915_mcu_sta_ba_tlv(skb, params, enable, tx);
+
 	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
 				       MCU_EXT_CMD_STA_REC_UPDATE, true);
 }
@@ -1466,16 +1478,38 @@ mt7915_mcu_sta_muru_tlv(struct sk_buff *skb, struct ieee80211_sta *sta)
 		HE_PHY(CAP2_UL_MU_PARTIAL_MU_MIMO, elem->phy_cap_info[2]);
 }
 
+static int
+mt7915_mcu_add_mu(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+		  struct ieee80211_sta *sta)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+	struct sk_buff *skb;
+	int len = sizeof(struct sta_req_hdr) + sizeof(struct sta_rec_muru);
+
+	if (!sta->vht_cap.vht_supported && !sta->he_cap.has_he)
+		return 0;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta, len);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7915_mcu_sta_muru_tlv(skb, sta);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
 static void
 mt7915_mcu_sta_tlv(struct mt7915_dev *dev, struct sk_buff *skb,
 		   struct ieee80211_sta *sta)
 {
 	struct tlv *tlv;
 
+	/* starec ht */
 	if (sta->ht_cap.ht_supported) {
 		struct sta_rec_ht *ht;
 
-		/* starec ht */
 		tlv = mt7915_mcu_add_tlv(skb, STA_REC_HT, sizeof(*ht));
 		ht = (struct sta_rec_ht *)tlv;
 		ht->ht_cap = cpu_to_le16(sta->ht_cap.cap);
@@ -2064,6 +2098,32 @@ int mt7915_mcu_add_rate_ctrl(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 				       MCU_EXT_CMD_STA_REC_UPDATE, true);
 }
 
+static int
+mt7915_mcu_add_group(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+		     struct ieee80211_sta *sta)
+{
+#define MT_STA_BSS_GROUP		1
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+	struct {
+		__le32 action;
+		u8 wlan_idx_lo;
+		u8 status;
+		u8 wlan_idx_hi;
+		u8 rsv0[5];
+		__le32 val;
+		u8 rsv1[8];
+	} __packed req = {
+		.action = cpu_to_le32(MT_STA_BSS_GROUP),
+		.wlan_idx_lo = to_wcid_lo(msta->wcid.idx),
+		.wlan_idx_hi = to_wcid_hi(msta->wcid.idx),
+		.val = cpu_to_le32(mvif->idx),
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_SET_DRR_CTRL,
+				   &req, sizeof(req), true);
+}
+
 int mt7915_mcu_add_sta_adv(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 			   struct ieee80211_sta *sta, bool enable)
 {
@@ -2073,10 +2133,18 @@ int mt7915_mcu_add_sta_adv(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 		return 0;
 
 	/* must keep the order */
+	ret = mt7915_mcu_add_group(dev, vif, sta);
+	if (ret)
+		return ret;
+
 	ret = mt7915_mcu_add_txbf(dev, vif, sta, enable);
 	if (ret)
 		return ret;
 
+	ret = mt7915_mcu_add_mu(dev, vif, sta);
+	if (ret)
+		return ret;
+
 	if (enable)
 		return mt7915_mcu_add_rate_ctrl(dev, vif, sta);
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
index c241dd7c4c36..981dd3fcdb41 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
@@ -201,6 +201,7 @@ enum {
 	MCU_EXT_CMD_EDCA_UPDATE = 0x27,
 	MCU_EXT_CMD_DEV_INFO_UPDATE = 0x2A,
 	MCU_EXT_CMD_THERMAL_CTRL = 0x2c,
+	MCU_EXT_CMD_SET_DRR_CTRL = 0x36,
 	MCU_EXT_CMD_SET_RDD_CTRL = 0x3a,
 	MCU_EXT_CMD_PROTECT_CTRL = 0x3e,
 	MCU_EXT_CMD_MAC_INIT_CTRL = 0x46,
@@ -653,7 +654,7 @@ struct sta_rec_muru {
 		bool ofdma_ul_en;
 		bool mimo_dl_en;
 		bool mimo_ul_en;
-		bool rsv[4];
+		u8 rsv[4];
 	} cfg;
 
 	struct {
@@ -664,7 +665,7 @@ struct sta_rec_muru {
 		bool lt16_sigb;
 		bool rx_su_comp_sigb;
 		bool rx_su_non_comp_sigb;
-		bool rsv;
+		u8 rsv;
 	} ofdma_dl;
 
 	struct {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/regs.h b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
index c121715f8bff..e0989141d9da 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
@@ -117,11 +117,16 @@
 #define MT_MIB_SDR16(_band)		MT_WF_MIB(_band, 0x048)
 #define MT_MIB_SDR16_BUSY_MASK		GENMASK(23, 0)
 
+#define MT_MIB_SDR34(_band)		MT_WF_MIB(_band, 0x090)
+#define MT_MIB_MU_BF_TX_CNT		GENMASK(15, 0)
+
 #define MT_MIB_SDR36(_band)		MT_WF_MIB(_band, 0x098)
 #define MT_MIB_SDR36_TXTIME_MASK	GENMASK(23, 0)
 #define MT_MIB_SDR37(_band)		MT_WF_MIB(_band, 0x09c)
 #define MT_MIB_SDR37_RXTIME_MASK	GENMASK(23, 0)
 
+#define MT_MIB_DR8(_band)		MT_WF_MIB(_band, 0x0c0)
+#define MT_MIB_DR9(_band)		MT_WF_MIB(_band, 0x0c4)
 #define MT_MIB_DR11(_band)		MT_WF_MIB(_band, 0x0cc)
 
 #define MT_MIB_MB_SDR0(_band, n)	MT_WF_MIB(_band, 0x100 + ((n) << 4))
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
