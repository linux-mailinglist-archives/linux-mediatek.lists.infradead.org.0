Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CB61B7F2E
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Apr 2020 21:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByHd6+HOZjeNW3QBUd38UnSJJVuUKliFydqYwHInUQw=; b=cmYAj59rW/l31x
	JaZcOHjRcE5nCPujLXs96mzPh+hnvOuTwIJBtw1YY8KA/OYxAdxl+8oZM/x7hLJ2tDEJQ4+OZuXzQ
	xD2WD5pQYFPSFc8XyDiNn+F13B/Nt4U/IrR48IY60+4Sqdy5AVESim8MPNUKQkjYAoNhmxg6rXx6C
	vLkJ/hMr8eRk24qGsbAvoWagWG8RryQ4rwpHsV91I5HqYS1ruohOdd5mWGzExx75dGN0Jyol8bD2g
	HUUsnzb0SMSJKpUCfokaSyU+Ph/ZHbQeDqQWSzdUMNS1EU3YxVHbW1EEgdvyBSJDnyxM11SeesQ3g
	cJDQJXi06UvuD+BFkYCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4EX-0006ds-2L; Fri, 24 Apr 2020 19:43:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4EF-00061n-3X
 for linux-mediatek@lists.infradead.org; Fri, 24 Apr 2020 19:43:19 +0000
X-UUID: edc7654416314b1990c55f9d9e8de185-20200424
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=i5/82YhnH3aELYgpcl6Y5zf/y9ZrirZKk1uprIaulSk=; 
 b=c4fZSCA+0I/ic/zdfE54bqvgFAKHITxgC7plzhmkPxQUyK/emrE1TxZuXv84MPwbHMqqRYBB8C7EgEJB6X8/UGB1EHLfypuH6hVNygLAHtOKH5E7imFJlVQ5/X5YXYD1QRMvs12t5D+KAWVXUQNeV7hUAAAQCyVOwAs7ZV8AteE=;
X-UUID: edc7654416314b1990c55f9d9e8de185-20200424
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1542248454; Fri, 24 Apr 2020 11:43:06 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Apr 2020 12:33:02 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 25 Apr 2020 03:32:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 25 Apr 2020 03:32:51 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v3 09/18] mt76: mt7915: register per-phy HE capabilities for
 each interface
Date: Sat, 25 Apr 2020 03:32:30 +0800
Message-ID: <60ee4fb41774936e7eea3c36630062ea81108889.1587756404.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1587756404.git.ryder.lee@mediatek.com>
References: <cover.1587756404.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 312FAC97239FB54FF3B8C3F6771A492F44D9CDB54E3248AAC24A778989CEDD7C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_124315_196000_4D2C8915 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: YF Luo <yf.luo@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless@vger.kernel.org, Sean
 Wang <sean.wang@mediatek.com>, Chih-Min Chen <chih-min.chen@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The capabilities for the HE interfaces are generated from the capabilities
reported by the firmware.

This should move to common file once we got other HE devices support.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7915/init.c  | 190 ++++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7915/main.c  |   1 +
 .../net/wireless/mediatek/mt76/mt7915/mcu.c   |   9 +
 .../net/wireless/mediatek/mt76/mt7915/mcu.h   |   3 +
 .../wireless/mediatek/mt76/mt7915/mt7915.h    |   3 +
 5 files changed, 206 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/init.c b/drivers/net/wireless/mediatek/mt76/mt7915/init.c
index abce37ca9252..bb8325e2edbd 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/init.c
@@ -239,6 +239,194 @@ mt7915_init_wiphy(struct ieee80211_hw *hw)
 	hw->max_tx_fragments = 4;
 }
 
+static void
+mt7915_gen_ppe_thresh(u8 *he_ppet)
+{
+	int ru, nss, max_nss = 1, max_ru = 3;
+	u8 bit = 7, ru_bit_mask = 0x7;
+	u8 ppet16_ppet8_ru3_ru0[] = {0x1c, 0xc7, 0x71};
+
+	he_ppet[0] = max_nss & IEEE80211_PPE_THRES_NSS_MASK;
+	he_ppet[0] |= (ru_bit_mask <<
+		       IEEE80211_PPE_THRES_RU_INDEX_BITMASK_POS) &
+			IEEE80211_PPE_THRES_RU_INDEX_BITMASK_MASK;
+
+	for (nss = 0; nss <= max_nss; nss++) {
+		for (ru = 0; ru < max_ru; ru++) {
+			u8 val;
+			int i;
+
+			if (!(ru_bit_mask & BIT(ru)))
+				continue;
+
+			val = (ppet16_ppet8_ru3_ru0[nss] >> (ru * 6)) &
+			       0x3f;
+			val = ((val >> 3) & 0x7) | ((val & 0x7) << 3);
+			for (i = 5; i >= 0; i--) {
+				he_ppet[bit / 8] |=
+					((val >> i) & 0x1) << ((bit % 8));
+				bit++;
+			}
+		}
+	}
+}
+
+static int
+mt7915_init_he_caps(struct mt7915_phy *phy, enum nl80211_band band,
+		    struct ieee80211_sband_iftype_data *data)
+{
+	int i, idx = 0;
+	int nss = hweight8(phy->chainmask);
+	u16 mcs_map = 0;
+
+	for (i = 0; i < 8; i++) {
+		if (i < nss)
+			mcs_map |= (IEEE80211_HE_MCS_SUPPORT_0_11 << (i * 2));
+		else
+			mcs_map |= (IEEE80211_HE_MCS_NOT_SUPPORTED << (i * 2));
+	}
+
+	for (i = 0; i < NUM_NL80211_IFTYPES; i++) {
+		struct ieee80211_sta_he_cap *he_cap = &data[idx].he_cap;
+		struct ieee80211_he_cap_elem *he_cap_elem =
+				&he_cap->he_cap_elem;
+		struct ieee80211_he_mcs_nss_supp *he_mcs =
+				&he_cap->he_mcs_nss_supp;
+
+		switch (i) {
+		case NL80211_IFTYPE_STATION:
+		case NL80211_IFTYPE_AP:
+#ifdef CONFIG_MAC80211_MESH
+		case NL80211_IFTYPE_MESH_POINT:
+#endif
+			break;
+		default:
+			continue;
+		}
+
+		data[idx].types_mask = BIT(i);
+		he_cap->has_he = true;
+
+		he_cap_elem->mac_cap_info[0] =
+			IEEE80211_HE_MAC_CAP0_HTC_HE;
+		he_cap_elem->mac_cap_info[1] =
+			IEEE80211_HE_MAC_CAP1_TF_MAC_PAD_DUR_0US |
+			IEEE80211_HE_MAC_CAP1_MULTI_TID_AGG_RX_QOS_1;
+		he_cap_elem->mac_cap_info[2] =
+			IEEE80211_HE_MAC_CAP2_BSR;
+		he_cap_elem->mac_cap_info[3] =
+			IEEE80211_HE_MAC_CAP3_OMI_CONTROL |
+			IEEE80211_HE_MAC_CAP3_MAX_AMPDU_LEN_EXP_RESERVED;
+		he_cap_elem->mac_cap_info[4] =
+			IEEE80211_HE_MAC_CAP4_AMDSU_IN_AMPDU;
+
+		if (band == NL80211_BAND_2GHZ)
+			he_cap_elem->phy_cap_info[0] =
+				IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_40MHZ_IN_2G;
+		else if (band == NL80211_BAND_5GHZ)
+			he_cap_elem->phy_cap_info[0] =
+				IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_40MHZ_80MHZ_IN_5G |
+				IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_160MHZ_IN_5G |
+				IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_80PLUS80_MHZ_IN_5G;
+
+		he_cap_elem->phy_cap_info[1] =
+			IEEE80211_HE_PHY_CAP1_LDPC_CODING_IN_PAYLOAD;
+		he_cap_elem->phy_cap_info[2] =
+			IEEE80211_HE_PHY_CAP2_NDP_4x_LTF_AND_3_2US |
+			IEEE80211_HE_PHY_CAP2_STBC_TX_UNDER_80MHZ |
+			IEEE80211_HE_PHY_CAP2_STBC_RX_UNDER_80MHZ;
+
+		/* TODO: TxBF & MU & MESH */
+
+		switch (i) {
+		case NL80211_IFTYPE_AP:
+			he_cap_elem->mac_cap_info[0] |=
+				IEEE80211_HE_MAC_CAP0_TWT_RES;
+			he_cap_elem->mac_cap_info[4] |=
+				IEEE80211_HE_MAC_CAP4_BQR;
+			he_cap_elem->phy_cap_info[3] |=
+				IEEE80211_HE_PHY_CAP3_DCM_MAX_CONST_TX_QPSK |
+				IEEE80211_HE_PHY_CAP3_DCM_MAX_CONST_RX_QPSK;
+			he_cap_elem->phy_cap_info[6] |=
+				IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT;
+			he_cap_elem->phy_cap_info[9] |=
+				IEEE80211_HE_PHY_CAP9_RX_1024_QAM_LESS_THAN_242_TONE_RU;
+			break;
+		case NL80211_IFTYPE_STATION:
+			he_cap_elem->mac_cap_info[0] |=
+				IEEE80211_HE_MAC_CAP0_TWT_REQ;
+			he_cap_elem->mac_cap_info[3] |=
+				IEEE80211_HE_MAC_CAP3_FLEX_TWT_SCHED;
+
+			if (band == NL80211_BAND_2GHZ)
+				he_cap_elem->phy_cap_info[0] |=
+					IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_RU_MAPPING_IN_2G;
+			else if (band == NL80211_BAND_5GHZ)
+				he_cap_elem->phy_cap_info[0] |=
+					IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_RU_MAPPING_IN_5G;
+
+			he_cap_elem->phy_cap_info[1] |=
+				IEEE80211_HE_PHY_CAP1_DEVICE_CLASS_A;
+			he_cap_elem->phy_cap_info[8] |=
+				IEEE80211_HE_PHY_CAP8_20MHZ_IN_40MHZ_HE_PPDU_IN_2G |
+				IEEE80211_HE_PHY_CAP8_20MHZ_IN_160MHZ_HE_PPDU |
+				IEEE80211_HE_PHY_CAP8_80MHZ_IN_160MHZ_HE_PPDU;
+			he_cap_elem->phy_cap_info[9] |=
+				IEEE80211_HE_PHY_CAP9_TX_1024_QAM_LESS_THAN_242_TONE_RU;
+			break;
+#ifdef CONFIG_MAC80211_MESH
+		case NL80211_IFTYPE_MESH_POINT:
+			break;
+#endif
+		}
+
+		he_mcs->rx_mcs_80 = cpu_to_le16(mcs_map);
+		he_mcs->tx_mcs_80 = cpu_to_le16(mcs_map);
+		he_mcs->rx_mcs_160 = cpu_to_le16(mcs_map);
+		he_mcs->tx_mcs_160 = cpu_to_le16(mcs_map);
+		he_mcs->rx_mcs_80p80 = cpu_to_le16(mcs_map);
+		he_mcs->tx_mcs_80p80 = cpu_to_le16(mcs_map);
+
+		memset(he_cap->ppe_thres, 0, sizeof(he_cap->ppe_thres));
+		if (he_cap_elem->phy_cap_info[6] &
+		    IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT) {
+			mt7915_gen_ppe_thresh(he_cap->ppe_thres);
+		} else {
+			he_cap_elem->phy_cap_info[9] |=
+				IEEE80211_HE_PHY_CAP9_NOMIMAL_PKT_PADDING_16US;
+		}
+		idx++;
+	}
+
+	return idx;
+}
+
+void mt7915_set_stream_he_caps(struct mt7915_phy *phy)
+{
+	struct ieee80211_sband_iftype_data *data;
+	struct ieee80211_supported_band *band;
+	struct mt76_dev *mdev = &phy->dev->mt76;
+	int n;
+
+	if (mdev->cap.has_2ghz) {
+		data = phy->iftype[NL80211_BAND_2GHZ];
+		n = mt7915_init_he_caps(phy, NL80211_BAND_2GHZ, data);
+
+		band = &phy->mt76->sband_2g.sband;
+		band->iftype_data = data;
+		band->n_iftype_data = n;
+	}
+
+	if (mdev->cap.has_5ghz) {
+		data = phy->iftype[NL80211_BAND_5GHZ];
+		n = mt7915_init_he_caps(phy, NL80211_BAND_5GHZ, data);
+
+		band = &phy->mt76->sband_5g.sband;
+		band->iftype_data = data;
+		band->n_iftype_data = n;
+	}
+}
+
 static void
 mt7915_cap_dbdc_enable(struct mt7915_dev *dev)
 {
@@ -256,6 +444,7 @@ mt7915_cap_dbdc_enable(struct mt7915_dev *dev)
 	dev->mphy.hw->wiphy->available_antennas_tx = dev->phy.chainmask;
 
 	mt76_set_stream_caps(&dev->mt76, true);
+	mt7915_set_stream_he_caps(&dev->phy);
 }
 
 static void
@@ -271,6 +460,7 @@ mt7915_cap_dbdc_disable(struct mt7915_dev *dev)
 	dev->mphy.hw->wiphy->available_antennas_tx = dev->chainmask;
 
 	mt76_set_stream_caps(&dev->mt76, true);
+	mt7915_set_stream_he_caps(&dev->phy);
 }
 
 int mt7915_register_ext_phy(struct mt7915_dev *dev)
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/main.c b/drivers/net/wireless/mediatek/mt76/mt7915/main.c
index 231bae4184ca..097225692026 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/main.c
@@ -691,6 +691,7 @@ mt7915_set_antenna(struct ieee80211_hw *hw, u32 tx_ant, u32 rx_ant)
 	phy->chainmask = tx_ant;
 
 	mt76_set_stream_caps(&dev->mt76, true);
+	mt7915_set_stream_he_caps(phy);
 
 	mutex_unlock(&dev->mt76.mutex);
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index b275d18e5d9b..47c0ff8f41bf 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -137,11 +137,13 @@ mt7915_get_phy_mode(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 {
 	struct ieee80211_sta_ht_cap *ht_cap;
 	struct ieee80211_sta_vht_cap *vht_cap;
+	const struct ieee80211_sta_he_cap *he_cap;
 	u8 mode = 0;
 
 	if (sta) {
 		ht_cap = &sta->ht_cap;
 		vht_cap = &sta->vht_cap;
+		he_cap = &sta->he_cap;
 	} else {
 		struct ieee80211_supported_band *sband;
 
@@ -152,6 +154,7 @@ mt7915_get_phy_mode(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 
 		ht_cap = &sband->ht_cap;
 		vht_cap = &sband->vht_cap;
+		he_cap = ieee80211_get_he_iftype_cap(sband, vif->type);
 	}
 
 	if (band == NL80211_BAND_2GHZ) {
@@ -159,6 +162,9 @@ mt7915_get_phy_mode(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 
 		if (ht_cap->ht_supported)
 			mode |= PHY_MODE_GN;
+
+		if (he_cap->has_he)
+			mode |= PHY_MODE_AX_24G;
 	} else if (band == NL80211_BAND_5GHZ) {
 		mode |= PHY_MODE_A;
 
@@ -167,6 +173,9 @@ mt7915_get_phy_mode(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 
 		if (vht_cap->vht_supported)
 			mode |= PHY_MODE_AC;
+
+		if (he_cap->has_he)
+			mode |= PHY_MODE_AX_5G;
 	}
 
 	return mode;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
index d9c9aab7e6dc..c71161aec767 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
@@ -815,6 +815,9 @@ enum {
 #define PHY_MODE_GN			BIT(3)
 #define PHY_MODE_AN			BIT(4)
 #define PHY_MODE_AC			BIT(5)
+#define PHY_MODE_AX_24G			BIT(6)
+#define PHY_MODE_AX_5G			BIT(7)
+#define PHY_MODE_AX_6G			BIT(8)
 
 #define MODE_CCK			BIT(0)
 #define MODE_OFDM			BIT(1)
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h b/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
index 6d3fde7f635a..92a6bf746d73 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
@@ -122,6 +122,8 @@ struct mt7915_phy {
 	struct mt76_phy *mt76;
 	struct mt7915_dev *dev;
 
+	struct ieee80211_sband_iftype_data iftype[2][NUM_NL80211_IFTYPES];
+
 	u32 rxfilter;
 	u32 vif_mask;
 	u32 omac_mask;
@@ -443,6 +445,7 @@ void mt7915_txp_skb_unmap(struct mt76_dev *dev,
 			  struct mt76_txwi_cache *txwi);
 int mt76_dfs_start_rdd(struct mt7915_dev *dev, bool force);
 int mt7915_dfs_init_radar_detector(struct mt7915_phy *phy);
+void mt7915_set_stream_he_caps(struct mt7915_phy *phy);
 void mt7915_update_channel(struct mt76_dev *mdev);
 int mt7915_init_debugfs(struct mt7915_dev *dev);
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
