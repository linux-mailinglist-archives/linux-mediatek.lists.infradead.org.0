Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20A6188ABA
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Mar 2020 17:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWuYvQMUf2No/zqGEt2E1NODfjnQXJ5DurlQ9FBWbXk=; b=iBGP13vekGOdWP
	IkEG+qo3AcaFmSmgQBzvGHB/sTdxXpDQtAgoKNFgBEHguGiUkR9zLRdVJK2VIQd9JpOxxgB+YmWOC
	n2fGB3iBC0Kp6vlT09qI94aFZCQMK+fvcYpEg9AJZgJW4dU72DPKPHU3cq2NKwvrhyG8a0/q4tizk
	PQdUl3gv4K4nw9HyI8IMLzMt+F6pr4fueRO7BdVVI+dHjhvHepCslmFge+wpU1fZPP3lclvOhh7YT
	KTPLsG8cpyQc5ro+d+aBt2xZ/FyCHcDoZEg6vZoXz3wGL5nnacq3gXxWW3aV1V9NGdKdswahSTShE
	gXlNZSYH4xwHROUwsXEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFIF-0006lZ-9T; Tue, 17 Mar 2020 16:42:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFI7-0006XU-Sm
 for linux-mediatek@lists.infradead.org; Tue, 17 Mar 2020 16:42:10 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.48.128.122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBBFB20663;
 Tue, 17 Mar 2020 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584463327;
 bh=rRqdEPj1VfPtioallbniCRHtsGja2xBX0dC5lpvWHR4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=apWm5Il+SKXczGypR6eUoq/h48Q3ipDDN0YumFMDFBDlA+noXtIRJgjE/HUXBpTLF
 G0RvaokNnvvUdSvUcbKW11AuVsgZFX1z1wsVyv9l3FDv6IxSkNVkpwr57ZE3/Lhsjf
 4Ee5nBrHwSJHeag4i5i+zAbuU86kGW/tLZJRwZRo=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH v4 08/25] mt76: mt7615: move mt7615_mcu_set_bmc to
 mt7615_mcu_ops
Date: Tue, 17 Mar 2020 17:41:15 +0100
Message-Id: <a3d8475707c1fffa0403122ded4741baa260e608.1584463004.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1584463004.git.lorenzo@kernel.org>
References: <cover.1584463004.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_094208_085671_15111A65 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Move mt7615_mcu_set_bmc for fw version 1 and version 2 in
mt7615_mcu_ops data structure. This is a preliminary patch
to properly support mt7663e firmware.
Rework utility routines to rely on skb APIs for msg parsing

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  |   2 +-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 188 +++++++++++-------
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |   6 +-
 3 files changed, 116 insertions(+), 80 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index eb73d89f98b4..fcd7717db5c7 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -426,7 +426,7 @@ static void mt7615_bss_info_changed(struct ieee80211_hw *hw,
 
 	if (changed & BSS_CHANGED_BEACON_ENABLED) {
 		mt7615_mcu_set_bss_info(dev, vif, info->enable_beacon);
-		mt7615_mcu_set_bmc(dev, vif, info->enable_beacon);
+		mt7615_mcu_sta_add(dev, vif, NULL, info->enable_beacon);
 	}
 
 	if (changed & (BSS_CHANGED_BEACON |
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index b31019ab7560..b8c1b5ae9748 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -409,6 +409,27 @@ mt7615_mcu_sta_ba_tlv(struct sk_buff *skb,
 	ba->tid = params->tid;
 }
 
+static void
+mt7615_mcu_sta_basic_tlv(struct sk_buff *skb, bool enable)
+{
+	struct sta_rec_basic *basic;
+	struct tlv *tlv;
+
+	tlv = mt7615_mcu_add_tlv(skb, STA_REC_BASIC, sizeof(*basic));
+
+	basic = (struct sta_rec_basic *)tlv;
+	basic->conn_type = cpu_to_le32(CONNECTION_INFRA_BC);
+	basic->extra_info = cpu_to_le16(EXTRA_INFO_VER);
+
+	eth_broadcast_addr(basic->peer_addr);
+	if (enable) {
+		basic->extra_info |= cpu_to_le16(EXTRA_INFO_NEW);
+		basic->conn_state = CONN_STATE_PORT_SECURE;
+	} else {
+		basic->conn_state = CONN_STATE_DISCONNECT;
+	}
+}
+
 static void
 mt7615_mcu_wtbl_ba_tlv(struct sk_buff *skb,
 		       struct ieee80211_ampdu_params *params,
@@ -449,6 +470,30 @@ mt7615_mcu_wtbl_ba_tlv(struct sk_buff *skb,
 	}
 }
 
+static void
+mt7615_mcu_wtbl_generic_tlv(struct sk_buff *skb, void *sta_wtbl,
+			    void *wtbl_tlv)
+{
+	struct wtbl_generic *generic;
+	struct wtbl_rx *rx;
+	struct tlv *tlv;
+
+	tlv = mt7615_mcu_add_nested_tlv(skb, WTBL_GENERIC, sizeof(*generic),
+					wtbl_tlv, sta_wtbl);
+
+	generic = (struct wtbl_generic *)tlv;
+	eth_broadcast_addr(generic->peer_addr);
+	generic->muar_idx = 0xe;
+
+	tlv = mt7615_mcu_add_nested_tlv(skb, WTBL_RX, sizeof(*rx),
+					wtbl_tlv, sta_wtbl);
+
+	rx = (struct wtbl_rx *)tlv;
+	rx->rca1 = 1;
+	rx->rca2 = 1;
+	rx->rv = 1;
+}
+
 static int
 mt7615_mcu_wtbl_tx_ba(struct mt7615_dev *dev,
 		      struct ieee80211_ampdu_params *params,
@@ -514,9 +559,47 @@ mt7615_mcu_wtbl_rx_ba(struct mt7615_dev *dev,
 				       MCU_EXT_CMD_WTBL_UPDATE, true);
 }
 
+static int
+mt7615_mcu_wtbl_sta_add(struct mt7615_dev *dev, struct ieee80211_vif *vif,
+			struct ieee80211_sta *sta, bool enable)
+{
+	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
+	struct mt7615_sta *msta = &mvif->sta;
+	struct sk_buff *skb, *sskb, *wskb = NULL;
+	struct wtbl_req_hdr *wtbl_hdr;
+	int cmd, err;
+
+	sskb = mt7615_mcu_alloc_sta_req(mvif, msta);
+	if (IS_ERR(sskb))
+		return PTR_ERR(sskb);
+
+	mt7615_mcu_sta_basic_tlv(sskb, enable);
+
+	wtbl_hdr = mt7615_mcu_alloc_wtbl_req(msta, WTBL_RESET_AND_SET, NULL,
+					     &wskb);
+	if (IS_ERR(wtbl_hdr))
+		return PTR_ERR(wtbl_hdr);
+
+	if (enable)
+		mt7615_mcu_wtbl_generic_tlv(wskb, NULL, wtbl_hdr);
+
+	cmd = enable ? MCU_EXT_CMD_WTBL_UPDATE : MCU_EXT_CMD_STA_REC_UPDATE;
+	skb = enable ? wskb : sskb;
+
+	err = __mt76_mcu_skb_send_msg(&dev->mt76, skb, cmd, true);
+	if (err < 0)
+		return err;
+
+	cmd = enable ? MCU_EXT_CMD_STA_REC_UPDATE : MCU_EXT_CMD_WTBL_UPDATE;
+	skb = enable ? sskb : wskb;
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb, cmd, true);
+}
+
 static const struct mt7615_mcu_ops wtbl_update_ops = {
 	.add_tx_ba = mt7615_mcu_wtbl_tx_ba,
 	.add_rx_ba = mt7615_mcu_wtbl_rx_ba,
+	.sta_add = mt7615_mcu_wtbl_sta_add,
 };
 
 static int
@@ -561,9 +644,37 @@ mt7615_mcu_sta_rx_ba(struct mt7615_dev *dev,
 	return mt7615_mcu_sta_ba(dev, params, enable, false);
 }
 
+static int
+mt7615_mcu_add_sta(struct mt7615_dev *dev, struct ieee80211_vif *vif,
+		   struct ieee80211_sta *sta, bool enable)
+{
+	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
+	struct mt7615_sta *msta = &mvif->sta;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct tlv *sta_wtbl;
+	struct sk_buff *skb;
+
+	skb = mt7615_mcu_alloc_sta_req(mvif, msta);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7615_mcu_sta_basic_tlv(skb, enable);
+	sta_wtbl = mt7615_mcu_add_tlv(skb, STA_REC_WTBL,
+				      sizeof(struct sta_rec_wtbl));
+
+	wtbl_hdr = mt7615_mcu_alloc_wtbl_req(msta, WTBL_RESET_AND_SET,
+					     sta_wtbl, &skb);
+	if (enable)
+		mt7615_mcu_wtbl_generic_tlv(skb, sta_wtbl, wtbl_hdr);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
 static const struct mt7615_mcu_ops sta_update_ops = {
 	.add_tx_ba = mt7615_mcu_sta_tx_ba,
 	.add_rx_ba = mt7615_mcu_sta_rx_ba,
+	.sta_add = mt7615_mcu_add_sta,
 };
 
 static int mt7615_mcu_send_firmware(struct mt7615_dev *dev, const void *data,
@@ -1433,83 +1544,6 @@ mt7615_mcu_send_sta_rec(struct mt7615_dev *dev, u8 *req, u8 *wreq,
 				   req, slen, true);
 }
 
-int mt7615_mcu_set_bmc(struct mt7615_dev *dev,
-		       struct ieee80211_vif *vif, bool en)
-{
-	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
-	struct {
-		struct sta_req_hdr hdr;
-		struct sta_rec_basic basic;
-		u8 buf[MT7615_WTBL_UPDATE_MAX_SIZE];
-	} __packed req = {
-		.hdr = {
-			.bss_idx = mvif->idx,
-			.wlan_idx = mvif->sta.wcid.idx,
-			.tlv_num = cpu_to_le16(1),
-			.is_tlv_append = 1,
-			.muar_idx = mvif->omac_idx,
-		},
-		.basic = {
-			.tag = cpu_to_le16(STA_REC_BASIC),
-			.len = cpu_to_le16(sizeof(struct sta_rec_basic)),
-			.conn_type = cpu_to_le32(CONNECTION_INFRA_BC),
-		},
-	};
-	struct sta_rec_wtbl *wtbl = NULL;
-	struct wtbl_req_hdr *wtbl_hdr;
-	struct wtbl_generic *wtbl_g;
-	struct wtbl_rx *wtbl_rx;
-	u8 *buf = req.buf;
-
-	eth_broadcast_addr(req.basic.peer_addr);
-
-	if (dev->fw_ver > MT7615_FIRMWARE_V1) {
-		req.hdr.tlv_num = cpu_to_le16(2);
-		wtbl = (struct sta_rec_wtbl *)buf;
-		wtbl->tag = cpu_to_le16(STA_REC_WTBL);
-		buf += sizeof(*wtbl);
-	}
-
-	wtbl_hdr = (struct wtbl_req_hdr *)buf;
-	buf += sizeof(*wtbl_hdr);
-	wtbl_hdr->wlan_idx = mvif->sta.wcid.idx;
-	wtbl_hdr->operation = WTBL_RESET_AND_SET;
-
-	if (en) {
-		req.basic.conn_state = CONN_STATE_PORT_SECURE;
-		req.basic.extra_info = cpu_to_le16(EXTRA_INFO_VER |
-						   EXTRA_INFO_NEW);
-	} else {
-		req.basic.conn_state = CONN_STATE_DISCONNECT;
-		req.basic.extra_info = cpu_to_le16(EXTRA_INFO_VER);
-		goto out;
-	}
-
-	wtbl_g = (struct wtbl_generic *)buf;
-	buf += sizeof(*wtbl_g);
-	wtbl_g->tag = cpu_to_le16(WTBL_GENERIC);
-	wtbl_g->len = cpu_to_le16(sizeof(*wtbl_g));
-	wtbl_g->muar_idx = 0xe;
-	eth_broadcast_addr(wtbl_g->peer_addr);
-
-	wtbl_rx = (struct wtbl_rx *)buf;
-	buf += sizeof(*wtbl_rx);
-	wtbl_rx->tag = cpu_to_le16(WTBL_RX);
-	wtbl_rx->len = cpu_to_le16(sizeof(*wtbl_rx));
-	wtbl_rx->rv = 1;
-	wtbl_rx->rca1 = 1;
-	wtbl_rx->rca2 = 1;
-
-	wtbl_hdr->tlv_num = cpu_to_le16(2);
-
-out:
-	if (wtbl)
-		wtbl->len = cpu_to_le16(buf - (u8 *)wtbl_hdr);
-
-	return mt7615_mcu_send_sta_rec(dev, (u8 *)&req, (u8 *)wtbl_hdr,
-				       buf - (u8 *)wtbl_hdr, en);
-}
-
 int mt7615_mcu_set_sta(struct mt7615_dev *dev, struct ieee80211_vif *vif,
 		       struct ieee80211_sta *sta, bool en)
 {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index ab48cb06868a..9584aa912b74 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -146,6 +146,7 @@ struct mt7615_phy {
 
 #define mt7615_mcu_add_tx_ba(dev, ...)	(dev)->mcu_ops->add_tx_ba((dev), __VA_ARGS__)
 #define mt7615_mcu_add_rx_ba(dev, ...)	(dev)->mcu_ops->add_rx_ba((dev), __VA_ARGS__)
+#define mt7615_mcu_sta_add(dev, ...)	(dev)->mcu_ops->sta_add((dev),  __VA_ARGS__)
 struct mt7615_mcu_ops {
 	int (*add_tx_ba)(struct mt7615_dev *dev,
 			 struct ieee80211_ampdu_params *params,
@@ -153,6 +154,9 @@ struct mt7615_mcu_ops {
 	int (*add_rx_ba)(struct mt7615_dev *dev,
 			 struct ieee80211_ampdu_params *params,
 			 bool enable);
+	int (*sta_add)(struct mt7615_dev *dev,
+		       struct ieee80211_vif *vif,
+		       struct ieee80211_sta *sta, bool enable);
 };
 
 struct mt7615_dev {
@@ -305,8 +309,6 @@ void mt7615_mac_set_rates(struct mt7615_phy *phy, struct mt7615_sta *sta,
 			  struct ieee80211_tx_rate *probe_rate,
 			  struct ieee80211_tx_rate *rates);
 int mt7615_mcu_del_wtbl_all(struct mt7615_dev *dev);
-int mt7615_mcu_set_bmc(struct mt7615_dev *dev, struct ieee80211_vif *vif,
-		       bool en);
 int mt7615_mcu_set_sta(struct mt7615_dev *dev, struct ieee80211_vif *vif,
 		       struct ieee80211_sta *sta, bool en);
 int mt7615_mcu_set_bcn(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
