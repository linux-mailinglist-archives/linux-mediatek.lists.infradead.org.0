Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6C91F776C
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jun 2020 13:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IF/IRIdGBnDFI5+90ji6fMrpyW/bCz5gblAFT1/6PNw=; b=dQlYL7KM7h1w9y
	DiKDi1AhO9ayJLRsF4mP2IsoBvRhxyobeZ6kAsNTKvKJQvoWToI9wGZpXK6X8+HtrbfKCWNKg8oGr
	Ig8QU5a34iJ8XlR05t7c1G6Zudpv9z7nNcC1dUQWxerjlGixS11SRgO6VPrJQHAWZqQmIwinfcYis
	9Z/QxhSHOymxTjTqyuo4UpU8BdTmgA6uWXTN5CTyqN+rP7viPqFsFwfgdfnK//R4F3bLwdrxfpEPw
	7JvL/4xV8bIweAjUmjwLKTLiaDMsmo39tSO0lW8s6ZeE7eRLsFl/myxivXlH6C0XSMZzqezIdcouU
	skXtzmX9wWy5cHp+3iBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jji95-0000b6-Ri; Fri, 12 Jun 2020 11:46:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jji92-0000ab-C3
 for linux-mediatek@lists.infradead.org; Fri, 12 Jun 2020 11:46:50 +0000
Received: from localhost.localdomain.com (unknown [151.48.140.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4342B2065C;
 Fri, 12 Jun 2020 11:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591962406;
 bh=10FWGFws5PvlmZbbfQTbwYS7HthjPSyztFAWGfoS16I=;
 h=From:To:Cc:Subject:Date:From;
 b=eQQfNduKIF4uDsm12XwoWS96X+V8ayOfoSNl09s54NU/XA3TyrWpjA6GfNoFetNPj
 jtiaucDY8Zf+YzYfQ/UpVnBNLowHq67fuaAbivWwWtQ2SGSvEOczD1nQzhCoOrFU4J
 92FNgpi+N4fZGmGDT5wlXajxKyBzCi1SBjLpwsaQ=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: add U-APSD support on AP side
Date: Fri, 12 Jun 2020 13:46:31 +0200
Message-Id: <3cc2bb7671f6b6c4947ee1293814ac908db065b6.1591962131.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_044648_453583_89D2BD36 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org, ryder.lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Introduce U-APSD support in mt76 driver for AP interface

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mac80211.c |  4 +-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 46 ++++++++++++++++++-
 .../net/wireless/mediatek/mt76/mt7615/mcu.h   | 21 +++++++++
 3 files changed, 68 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mac80211.c b/drivers/net/wireless/mediatek/mt76/mac80211.c
index 907098101898..bc7db11c6047 100644
--- a/drivers/net/wireless/mediatek/mt76/mac80211.c
+++ b/drivers/net/wireless/mediatek/mt76/mac80211.c
@@ -279,7 +279,8 @@ mt76_phy_init(struct mt76_dev *dev, struct ieee80211_hw *hw)
 
 	wiphy->features |= NL80211_FEATURE_ACTIVE_MONITOR;
 	wiphy->flags |= WIPHY_FLAG_HAS_CHANNEL_SWITCH |
-			WIPHY_FLAG_SUPPORTS_TDLS;
+			WIPHY_FLAG_SUPPORTS_TDLS |
+			WIPHY_FLAG_AP_UAPSD;
 
 	wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
 	wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_AIRTIME_FAIRNESS);
@@ -289,6 +290,7 @@ mt76_phy_init(struct mt76_dev *dev, struct ieee80211_hw *hw)
 	wiphy->available_antennas_rx = dev->phy.antenna_mask;
 
 	hw->txq_data_size = sizeof(struct mt76_txq);
+	hw->uapsd_max_sp_len = IEEE80211_WMM_IE_STA_QOSINFO_SP_ALL;
 
 	if (!hw->max_tx_fragments)
 		hw->max_tx_fragments = 16;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 06b870b0de99..8454fcd25ff4 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -953,6 +953,38 @@ mt7615_mcu_sta_ht_tlv(struct sk_buff *skb, struct ieee80211_sta *sta)
 	}
 }
 
+static void
+mt7615_mcu_sta_uapsd(struct sk_buff *skb, struct ieee80211_vif *vif,
+		     struct ieee80211_sta *sta)
+{
+	struct sta_rec_uapsd *uapsd;
+	struct tlv *tlv;
+
+	if (vif->type != NL80211_IFTYPE_AP || !sta->wme)
+		return;
+
+	tlv = mt7615_mcu_add_tlv(skb, STA_REC_APPS, sizeof(*uapsd));
+	uapsd = (struct sta_rec_uapsd *)tlv;
+
+	if (sta->uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_VO) {
+		uapsd->dac_map |= BIT(3);
+		uapsd->tac_map |= BIT(3);
+	}
+	if (sta->uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_VI) {
+		uapsd->dac_map |= BIT(2);
+		uapsd->tac_map |= BIT(2);
+	}
+	if (sta->uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_BE) {
+		uapsd->dac_map |= BIT(1);
+		uapsd->tac_map |= BIT(1);
+	}
+	if (sta->uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_BK) {
+		uapsd->dac_map |= BIT(0);
+		uapsd->tac_map |= BIT(0);
+	}
+	uapsd->max_sp = sta->max_sp;
+}
+
 static void
 mt7615_mcu_wtbl_ba_tlv(struct sk_buff *skb,
 		       struct ieee80211_ampdu_params *params,
@@ -1215,8 +1247,10 @@ mt7615_mcu_wtbl_sta_add(struct mt7615_dev *dev, struct ieee80211_vif *vif,
 		return PTR_ERR(sskb);
 
 	mt7615_mcu_sta_basic_tlv(sskb, vif, sta, enable);
-	if (enable && sta)
+	if (enable && sta) {
 		mt7615_mcu_sta_ht_tlv(sskb, sta);
+		mt7615_mcu_sta_uapsd(sskb, vif, sta);
+	}
 
 	wtbl_hdr = mt7615_mcu_alloc_wtbl_req(dev, msta, WTBL_RESET_AND_SET,
 					     NULL, &wskb);
@@ -1312,8 +1346,10 @@ mt7615_mcu_add_sta_cmd(struct mt7615_dev *dev, struct ieee80211_vif *vif,
 		return PTR_ERR(skb);
 
 	mt7615_mcu_sta_basic_tlv(skb, vif, sta, enable);
-	if (enable && sta)
+	if (enable && sta) {
 		mt7615_mcu_sta_ht_tlv(skb, sta);
+		mt7615_mcu_sta_uapsd(skb, vif, sta);
+	}
 
 	sta_wtbl = mt7615_mcu_add_tlv(skb, STA_REC_WTBL, sizeof(struct tlv));
 
@@ -1456,6 +1492,7 @@ mt7615_mcu_uni_add_bss(struct mt7615_phy *phy, struct ieee80211_vif *vif,
 			u8 pad[3];
 		} __packed hdr;
 		struct mt7615_bss_basic_tlv basic;
+		struct mt7615_bss_qos_tlv qos;
 	} basic_req = {
 		.hdr = {
 			.bss_idx = mvif->idx,
@@ -1471,6 +1508,11 @@ mt7615_mcu_uni_add_bss(struct mt7615_phy *phy, struct ieee80211_vif *vif,
 			.active = true, /* keep bss deactivated */
 			.phymode = 0x38,
 		},
+		.qos = {
+			.tag = cpu_to_le16(UNI_BSS_INFO_QBSS),
+			.len = cpu_to_le16(sizeof(struct mt7615_bss_qos_tlv)),
+			.qos = vif->bss_conf.qos,
+		},
 	};
 	struct {
 		struct {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
index 98579bea8bfc..509affb7fc0c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
@@ -455,6 +455,13 @@ struct mt7615_bss_basic_tlv {
 	u8 pad[3];
 } __packed;
 
+struct mt7615_bss_qos_tlv {
+	__le16 tag;
+	__le16 len;
+	u8 qos;
+	u8 pad[3];
+} __packed;
+
 struct mt7615_wow_ctrl_tlv {
 	__le16 tag;
 	__le16 len;
@@ -596,6 +603,8 @@ enum {
 	UNI_BSS_INFO_BASIC = 0,
 	UNI_BSS_INFO_RLM = 2,
 	UNI_BSS_INFO_BCN_CONTENT = 7,
+	UNI_BSS_INFO_QBSS = 15,
+	UNI_BSS_INFO_UAPSD = 19,
 };
 
 enum {
@@ -909,6 +918,7 @@ struct wtbl_raw {
 					 sizeof(struct sta_rec_basic) +	\
 					 sizeof(struct sta_rec_ht) +	\
 					 sizeof(struct sta_rec_vht) +	\
+					 sizeof(struct sta_rec_uapsd) + \
 					 sizeof(struct tlv) +	\
 					 MT7615_WTBL_UPDATE_MAX_SIZE)
 
@@ -998,6 +1008,17 @@ struct sta_rec_ba {
 	__le16 winsize;
 } __packed;
 
+struct sta_rec_uapsd {
+	__le16 tag;
+	__le16 len;
+	u8 dac_map;
+	u8 tac_map;
+	u8 max_sp;
+	u8 rsv0;
+	__le16 listen_interval;
+	u8 rsv1[2];
+} __packed;
+
 enum {
 	STA_REC_BASIC,
 	STA_REC_RA,
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
