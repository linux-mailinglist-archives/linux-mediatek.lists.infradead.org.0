Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F325B188AB9
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Mar 2020 17:42:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HK4ZZGZ4Vfw0wMCqParclrysJ2+ySCHAgIqLxizT8Lo=; b=Mge+XBiH3Tw9TO
	gHs7ErSbY2oZgLjDWyj9AZqQI21wSxf6/OgERkRVGjLEetH7xiLCXwqHN/6P4fwsCHo/syhJYZoCV
	lf32Cl1AuEPhXXqeo5jfDkNZN4CFeQ7AYyFiaz35HAsuxYT6l9jucyqyJr3C4owpXmh1BKq/2cWfS
	rZfD8efSFw1UVZCcYnnIUcZ2Y0QwHyk3SJuHc6fV15rxunlDAeDH/Phh9EYFa8JM+Lp3GOuDd2l0Z
	Bj51BPKrJ8s3s2oIC3oZQVU7VwvXDWpStxiinB28/EAUsXZ5VVDj+wRxJY6xd6KfcgssRvT1WqClC
	ikZ3UBx0beT8lqwHX9iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFIE-0006bp-7y; Tue, 17 Mar 2020 16:42:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFI5-0006V5-Ql
 for linux-mediatek@lists.infradead.org; Tue, 17 Mar 2020 16:42:08 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.48.128.122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA2502073E;
 Tue, 17 Mar 2020 16:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584463325;
 bh=qJIl+M0ovJSef2jw05YQvqtD10XvgxeA8TTvmx7kI9A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zhGJ4joJS4CsXju7BYvfu0Bjmtj9hTsZlcIywLg1vLCCm0GSIv1xgcnXl73uOcSDl
 aboAiAufivDS7JYaQDT77AiAJXS8tcH04PLSBwhplct9F4BpiJFgXW84VYgznvJDyh
 x+OBa4VeEakZyS1GqU60NFKDLaZrio6xqY9K5pws=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH v4 07/25] mt76: mt7615: add mt7615_mcu_ops data structure
Date: Tue, 17 Mar 2020 17:41:14 +0100
Message-Id: <9e78cb879d66ce95a8e7c6158a1b4158071226ef.1584463004.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1584463004.git.lorenzo@kernel.org>
References: <cover.1584463004.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_094205_922454_E126E736 
X-CRM114-Status: GOOD (  14.62  )
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

Introduce mt7615_mcu_ops data structure in order to support multiple
mcu ops API.
Move mt7615_mcu_set_{tx,rx}_ba to mt7615_mcu_ops differentiating between
fw v1 and v2. This is a preliminary patch to properly support mt7663e
firmware.
Rework utility routines to rely on skb APIs for msg parsing

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  |  10 +-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 401 +++++++++++-------
 .../net/wireless/mediatek/mt76/mt7615/mcu.h   |  20 +
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  18 +-
 4 files changed, 296 insertions(+), 153 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 7edd5e739b2d..eb73d89f98b4 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -578,21 +578,21 @@ mt7615_ampdu_action(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 	case IEEE80211_AMPDU_RX_START:
 		mt76_rx_aggr_start(&dev->mt76, &msta->wcid, tid, ssn,
 				   params->buf_size);
-		mt7615_mcu_set_rx_ba(dev, params, 1);
+		mt7615_mcu_add_rx_ba(dev, params, true);
 		break;
 	case IEEE80211_AMPDU_RX_STOP:
 		mt76_rx_aggr_stop(&dev->mt76, &msta->wcid, tid);
-		mt7615_mcu_set_rx_ba(dev, params, 0);
+		mt7615_mcu_add_rx_ba(dev, params, false);
 		break;
 	case IEEE80211_AMPDU_TX_OPERATIONAL:
 		mtxq->aggr = true;
 		mtxq->send_bar = false;
-		mt7615_mcu_set_tx_ba(dev, params, 1);
+		mt7615_mcu_add_tx_ba(dev, params, true);
 		break;
 	case IEEE80211_AMPDU_TX_STOP_FLUSH:
 	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
 		mtxq->aggr = false;
-		mt7615_mcu_set_tx_ba(dev, params, 0);
+		mt7615_mcu_add_tx_ba(dev, params, false);
 		break;
 	case IEEE80211_AMPDU_TX_START:
 		mtxq->agg_ssn = IEEE80211_SN_TO_SEQ(ssn);
@@ -600,7 +600,7 @@ mt7615_ampdu_action(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 		break;
 	case IEEE80211_AMPDU_TX_STOP_CONT:
 		mtxq->aggr = false;
-		mt7615_mcu_set_tx_ba(dev, params, 0);
+		mt7615_mcu_add_tx_ba(dev, params, false);
 		ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
 		break;
 	}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index eb6867a316b1..b31019ab7560 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -312,6 +312,260 @@ static int mt7615_mcu_init_download(struct mt7615_dev *dev, u32 addr,
 				   &req, sizeof(req), true);
 }
 
+static struct sk_buff *
+mt7615_mcu_alloc_sta_req(struct mt7615_vif *mvif, struct mt7615_sta *msta)
+{
+	struct sta_req_hdr hdr = {
+		.bss_idx = mvif->idx,
+		.wlan_idx = msta->wcid.idx,
+		.muar_idx = mvif->omac_idx,
+		.is_tlv_append = 1,
+	};
+	struct sk_buff *skb;
+
+	skb = mt7615_mcu_msg_alloc(NULL, MT7615_STA_UPDATE_MAX_SIZE);
+	if (!skb)
+		return ERR_PTR(-ENOMEM);
+
+	skb_put_data(skb, &hdr, sizeof(hdr));
+
+	return skb;
+}
+
+static struct wtbl_req_hdr *
+mt7615_mcu_alloc_wtbl_req(struct mt7615_sta *msta, int cmd,
+			  void *sta_wtbl, struct sk_buff **skb)
+{
+	struct sta_rec_wtbl *sta_hdr = sta_wtbl;
+	struct wtbl_req_hdr hdr = {
+		.wlan_idx = msta->wcid.idx,
+		.operation = cmd,
+	};
+	struct sk_buff *nskb = *skb;
+
+	if (!nskb) {
+		nskb = mt7615_mcu_msg_alloc(NULL, MT7615_WTBL_UPDATE_BA_SIZE);
+		if (!nskb)
+			return ERR_PTR(-ENOMEM);
+
+		*skb = nskb;
+	}
+
+	if (sta_hdr)
+		sta_hdr->len = cpu_to_le16(sizeof(hdr));
+
+	return skb_put_data(nskb, &hdr, sizeof(hdr));
+}
+
+static struct tlv *
+mt7615_mcu_add_nested_tlv(struct sk_buff *skb, int tag, int len,
+			  void *sta_ntlv, void *sta_wtbl)
+{
+	struct sta_ntlv_hdr *ntlv_hdr = sta_ntlv;
+	struct sta_rec_wtbl *sta_hdr = sta_wtbl;
+	struct tlv *ptlv, tlv = {
+		.tag = cpu_to_le16(tag),
+		.len = cpu_to_le16(len),
+	};
+	u16 ntlv;
+
+	ptlv = skb_put(skb, len);
+	memcpy(ptlv, &tlv, sizeof(tlv));
+
+	ntlv = le16_to_cpu(ntlv_hdr->tlv_num);
+	ntlv_hdr->tlv_num = cpu_to_le16(ntlv + 1);
+
+	if (sta_hdr) {
+		u16 size = le16_to_cpu(sta_hdr->len);
+
+		sta_hdr->len = cpu_to_le16(size + len);
+	}
+
+	return ptlv;
+}
+
+static struct tlv *
+mt7615_mcu_add_tlv(struct sk_buff *skb, int tag, int len)
+{
+	return mt7615_mcu_add_nested_tlv(skb, tag, len, skb->data, NULL);
+}
+
+static void
+mt7615_mcu_sta_ba_tlv(struct sk_buff *skb,
+		      struct ieee80211_ampdu_params *params,
+		      bool enable, bool tx)
+{
+	struct sta_rec_ba *ba;
+	struct tlv *tlv;
+
+	tlv = mt7615_mcu_add_tlv(skb, STA_REC_BA, sizeof(*ba));
+
+	ba = (struct sta_rec_ba *)tlv;
+	ba->ba_type = tx ? MT_BA_TYPE_ORIGINATOR : MT_BA_TYPE_RECIPIENT,
+	ba->winsize = cpu_to_le16(params->buf_size);
+	ba->ssn = cpu_to_le16(params->ssn);
+	ba->ba_en = enable << params->tid;
+	ba->amsdu = params->amsdu;
+	ba->tid = params->tid;
+}
+
+static void
+mt7615_mcu_wtbl_ba_tlv(struct sk_buff *skb,
+		       struct ieee80211_ampdu_params *params,
+		       bool enable, bool tx, void *sta_wtbl,
+		       void *wtbl_tlv)
+{
+	struct wtbl_ba *ba;
+	struct tlv *tlv;
+
+	tlv = mt7615_mcu_add_nested_tlv(skb, WTBL_BA, sizeof(*ba),
+					wtbl_tlv, sta_wtbl);
+
+	ba = (struct wtbl_ba *)tlv;
+	ba->tid = params->tid;
+
+	if (tx) {
+		ba->ba_type = MT_BA_TYPE_ORIGINATOR;
+		ba->sn = enable ? cpu_to_le16(params->ssn) : 0;
+		ba->ba_winsize = cpu_to_le16(params->buf_size);
+		ba->ba_en = enable;
+	} else {
+		memcpy(ba->peer_addr, params->sta->addr, ETH_ALEN);
+		ba->ba_type = MT_BA_TYPE_RECIPIENT;
+		ba->rst_ba_tid = params->tid;
+		ba->rst_ba_sel = RST_BA_MAC_TID_MATCH;
+		ba->rst_ba_sb = 1;
+	}
+
+	if (enable && tx) {
+		u8 ba_range[] = { 4, 8, 12, 24, 36, 48, 54, 64 };
+		int i;
+
+		for (i = 7; i > 0; i--) {
+			if (params->buf_size >= ba_range[i])
+				break;
+		}
+		ba->ba_winsize_idx = i;
+	}
+}
+
+static int
+mt7615_mcu_wtbl_tx_ba(struct mt7615_dev *dev,
+		      struct ieee80211_ampdu_params *params,
+		      bool enable)
+{
+	struct mt7615_sta *msta = (struct mt7615_sta *)params->sta->drv_priv;
+	struct mt7615_vif *mvif = msta->vif;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct sk_buff *skb = NULL;
+	int err;
+
+	wtbl_hdr = mt7615_mcu_alloc_wtbl_req(msta, WTBL_SET, NULL, &skb);
+	if (IS_ERR(wtbl_hdr))
+		return PTR_ERR(wtbl_hdr);
+
+	mt7615_mcu_wtbl_ba_tlv(skb, params, enable, true, NULL, wtbl_hdr);
+
+	err = __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				      MCU_EXT_CMD_WTBL_UPDATE, true);
+	if (err < 0)
+		return err;
+
+	skb = mt7615_mcu_alloc_sta_req(mvif, msta);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7615_mcu_sta_ba_tlv(skb, params, enable, true);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
+static int
+mt7615_mcu_wtbl_rx_ba(struct mt7615_dev *dev,
+		      struct ieee80211_ampdu_params *params,
+		      bool enable)
+{
+	struct mt7615_sta *msta = (struct mt7615_sta *)params->sta->drv_priv;
+	struct mt7615_vif *mvif = msta->vif;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct sk_buff *skb;
+	int err;
+
+	skb = mt7615_mcu_alloc_sta_req(mvif, msta);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7615_mcu_sta_ba_tlv(skb, params, enable, false);
+
+	err = __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				      MCU_EXT_CMD_STA_REC_UPDATE, true);
+	if (err < 0 || !enable)
+		return err;
+
+	skb = NULL;
+	wtbl_hdr = mt7615_mcu_alloc_wtbl_req(msta, WTBL_SET, NULL, &skb);
+	if (IS_ERR(wtbl_hdr))
+		return PTR_ERR(wtbl_hdr);
+
+	mt7615_mcu_wtbl_ba_tlv(skb, params, enable, false, NULL, wtbl_hdr);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_WTBL_UPDATE, true);
+}
+
+static const struct mt7615_mcu_ops wtbl_update_ops = {
+	.add_tx_ba = mt7615_mcu_wtbl_tx_ba,
+	.add_rx_ba = mt7615_mcu_wtbl_rx_ba,
+};
+
+static int
+mt7615_mcu_sta_ba(struct mt7615_dev *dev,
+		  struct ieee80211_ampdu_params *params,
+		  bool enable, bool tx)
+{
+	struct mt7615_sta *msta = (struct mt7615_sta *)params->sta->drv_priv;
+	struct mt7615_vif *mvif = msta->vif;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct tlv *sta_wtbl;
+	struct sk_buff *skb;
+
+	skb = mt7615_mcu_alloc_sta_req(mvif, msta);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7615_mcu_sta_ba_tlv(skb, params, enable, tx);
+	sta_wtbl = mt7615_mcu_add_tlv(skb, STA_REC_WTBL,
+				      sizeof(struct sta_rec_wtbl));
+
+	wtbl_hdr = mt7615_mcu_alloc_wtbl_req(msta, WTBL_SET, sta_wtbl, &skb);
+	mt7615_mcu_wtbl_ba_tlv(skb, params, enable, tx, sta_wtbl, wtbl_hdr);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
+static int
+mt7615_mcu_sta_tx_ba(struct mt7615_dev *dev,
+		     struct ieee80211_ampdu_params *params,
+		     bool enable)
+{
+	return mt7615_mcu_sta_ba(dev, params, enable, true);
+}
+
+static int
+mt7615_mcu_sta_rx_ba(struct mt7615_dev *dev,
+		     struct ieee80211_ampdu_params *params,
+		     bool enable)
+{
+	return mt7615_mcu_sta_ba(dev, params, enable, false);
+}
+
+static const struct mt7615_mcu_ops sta_update_ops = {
+	.add_tx_ba = mt7615_mcu_sta_tx_ba,
+	.add_rx_ba = mt7615_mcu_sta_rx_ba,
+};
+
 static int mt7615_mcu_send_firmware(struct mt7615_dev *dev, const void *data,
 				    int len)
 {
@@ -574,10 +828,13 @@ static int mt7615_load_n9(struct mt7615_dev *dev, const char *name)
 		 sizeof(dev->mt76.hw->wiphy->fw_version),
 		 "%.10s-%.15s", hdr->fw_ver, hdr->build_date);
 
-	if (!strncmp(hdr->fw_ver, "2.0", sizeof(hdr->fw_ver)))
+	if (!strncmp(hdr->fw_ver, "2.0", sizeof(hdr->fw_ver))) {
 		dev->fw_ver = MT7615_FIRMWARE_V2;
-	else
+		dev->mcu_ops = &sta_update_ops;
+	} else {
 		dev->fw_ver = MT7615_FIRMWARE_V1;
+		dev->mcu_ops = &wtbl_update_ops;
+	}
 
 out:
 	release_firmware(fw);
@@ -1714,146 +1971,6 @@ int mt7615_mcu_set_chan_info(struct mt7615_phy *phy, int cmd)
 	return __mt76_mcu_send_msg(&dev->mt76, cmd, &req, sizeof(req), true);
 }
 
-int mt7615_mcu_set_tx_ba(struct mt7615_dev *dev,
-			 struct ieee80211_ampdu_params *params,
-			 bool add)
-{
-	struct mt7615_sta *msta = (struct mt7615_sta *)params->sta->drv_priv;
-	struct mt7615_vif *mvif = msta->vif;
-	struct {
-		struct sta_req_hdr hdr;
-		struct sta_rec_ba ba;
-		u8 buf[MT7615_WTBL_UPDATE_MAX_SIZE];
-	} __packed req = {
-		.hdr = {
-			.bss_idx = mvif->idx,
-			.wlan_idx = msta->wcid.idx,
-			.tlv_num = cpu_to_le16(1),
-			.is_tlv_append = 1,
-			.muar_idx = mvif->omac_idx,
-		},
-		.ba = {
-			.tag = cpu_to_le16(STA_REC_BA),
-			.len = cpu_to_le16(sizeof(struct sta_rec_ba)),
-			.tid = params->tid,
-			.ba_type = MT_BA_TYPE_ORIGINATOR,
-			.amsdu = params->amsdu,
-			.ba_en = add << params->tid,
-			.ssn = cpu_to_le16(params->ssn),
-			.winsize = cpu_to_le16(params->buf_size),
-		},
-	};
-	struct sta_rec_wtbl *wtbl = NULL;
-	struct wtbl_req_hdr *wtbl_hdr;
-	struct wtbl_ba *wtbl_ba;
-	u8 *buf = req.buf;
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
-	wtbl_hdr->wlan_idx = msta->wcid.idx;
-	wtbl_hdr->operation = WTBL_SET;
-	wtbl_hdr->tlv_num = cpu_to_le16(1);
-
-	wtbl_ba = (struct wtbl_ba *)buf;
-	buf += sizeof(*wtbl_ba);
-	wtbl_ba->tag = cpu_to_le16(WTBL_BA);
-	wtbl_ba->len = cpu_to_le16(sizeof(*wtbl_ba));
-	wtbl_ba->tid = params->tid;
-	wtbl_ba->ba_type = MT_BA_TYPE_ORIGINATOR;
-	wtbl_ba->sn = add ? cpu_to_le16(params->ssn) : 0;
-	wtbl_ba->ba_en = add;
-
-	if (add) {
-		u8 idx, ba_range[] = { 4, 8, 12, 24, 36, 48, 54, 64 };
-
-		for (idx = 7; idx > 0; idx--) {
-			if (params->buf_size >= ba_range[idx])
-				break;
-		}
-
-		wtbl_ba->ba_winsize_idx = idx;
-	}
-
-	if (wtbl)
-		wtbl->len = cpu_to_le16(buf - (u8 *)wtbl_hdr);
-
-	return mt7615_mcu_send_sta_rec(dev, (u8 *)&req, (u8 *)wtbl_hdr,
-				       buf - (u8 *)wtbl_hdr, true);
-}
-
-int mt7615_mcu_set_rx_ba(struct mt7615_dev *dev,
-			 struct ieee80211_ampdu_params *params,
-			 bool add)
-{
-	struct mt7615_sta *msta = (struct mt7615_sta *)params->sta->drv_priv;
-	struct mt7615_vif *mvif = msta->vif;
-	struct {
-		struct sta_req_hdr hdr;
-		struct sta_rec_ba ba;
-		u8 buf[MT7615_WTBL_UPDATE_MAX_SIZE];
-	} __packed req = {
-		.hdr = {
-			.bss_idx = mvif->idx,
-			.wlan_idx = msta->wcid.idx,
-			.tlv_num = cpu_to_le16(1),
-			.is_tlv_append = 1,
-			.muar_idx = mvif->omac_idx,
-		},
-		.ba = {
-			.tag = cpu_to_le16(STA_REC_BA),
-			.len = cpu_to_le16(sizeof(struct sta_rec_ba)),
-			.tid = params->tid,
-			.ba_type = MT_BA_TYPE_RECIPIENT,
-			.amsdu = params->amsdu,
-			.ba_en = add << params->tid,
-			.ssn = cpu_to_le16(params->ssn),
-			.winsize = cpu_to_le16(params->buf_size),
-		},
-	};
-	struct sta_rec_wtbl *wtbl = NULL;
-	struct wtbl_req_hdr *wtbl_hdr;
-	struct wtbl_ba *wtbl_ba;
-	u8 *buf = req.buf;
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
-	wtbl_hdr->wlan_idx = msta->wcid.idx;
-	wtbl_hdr->operation = WTBL_SET;
-	wtbl_hdr->tlv_num = cpu_to_le16(1);
-
-	wtbl_ba = (struct wtbl_ba *)buf;
-	buf += sizeof(*wtbl_ba);
-	wtbl_ba->tag = cpu_to_le16(WTBL_BA);
-	wtbl_ba->len = cpu_to_le16(sizeof(*wtbl_ba));
-	wtbl_ba->tid = params->tid;
-	wtbl_ba->ba_type = MT_BA_TYPE_RECIPIENT;
-	wtbl_ba->rst_ba_tid = params->tid;
-	wtbl_ba->rst_ba_sel = RST_BA_MAC_TID_MATCH;
-	wtbl_ba->rst_ba_sb = 1;
-
-	memcpy(wtbl_ba->peer_addr, params->sta->addr, ETH_ALEN);
-
-	if (wtbl)
-		wtbl->len = cpu_to_le16(buf - (u8 *)wtbl_hdr);
-
-	return mt7615_mcu_send_sta_rec(dev, (u8 *)&req, (u8 *)wtbl_hdr,
-				       buf - (u8 *)wtbl_hdr, add);
-}
-
 int mt7615_mcu_get_temperature(struct mt7615_dev *dev, int index)
 {
 	struct {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
index db0199e60cb8..54491bda3b3a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
@@ -274,6 +274,11 @@ enum {
 	__DBDC_TYPE_MAX,
 };
 
+struct tlv {
+	__le16 tag;
+	__le16 len;
+} __packed;
+
 struct bss_info_omac {
 	__le16 tag;
 	__le16 len;
@@ -496,6 +501,16 @@ struct wtbl_raw {
 				     sizeof(struct wtbl_pn) + \
 				     sizeof(struct wtbl_spe))
 
+#define MT7615_STA_UPDATE_MAX_SIZE	(sizeof(struct sta_req_hdr) +	\
+					 sizeof(struct sta_rec_basic) +	\
+					 sizeof(struct sta_rec_ht) +	\
+					 sizeof(struct sta_rec_vht) +	\
+					 sizeof(struct sta_rec_wtbl) +	\
+					 MT7615_WTBL_UPDATE_MAX_SIZE)
+
+#define MT7615_WTBL_UPDATE_BA_SIZE	(sizeof(struct wtbl_req_hdr) +	\
+					 sizeof(struct wtbl_ba))
+
 enum {
 	WTBL_GENERIC,
 	WTBL_RX,
@@ -517,6 +532,11 @@ enum {
 	WTBL_MAX_NUM
 };
 
+struct sta_ntlv_hdr {
+	u8 rsv[2];
+	__le16 tlv_num;
+} __packed;
+
 struct sta_req_hdr {
 	u8 bss_idx;
 	u8 wlan_idx;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index cc5aa2abb462..ab48cb06868a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -144,6 +144,17 @@ struct mt7615_phy {
 	struct mib_stats mib;
 };
 
+#define mt7615_mcu_add_tx_ba(dev, ...)	(dev)->mcu_ops->add_tx_ba((dev), __VA_ARGS__)
+#define mt7615_mcu_add_rx_ba(dev, ...)	(dev)->mcu_ops->add_rx_ba((dev), __VA_ARGS__)
+struct mt7615_mcu_ops {
+	int (*add_tx_ba)(struct mt7615_dev *dev,
+			 struct ieee80211_ampdu_params *params,
+			 bool enable);
+	int (*add_rx_ba)(struct mt7615_dev *dev,
+			 struct ieee80211_ampdu_params *params,
+			 bool enable);
+};
+
 struct mt7615_dev {
 	union { /* must be first */
 		struct mt76_dev mt76;
@@ -156,6 +167,7 @@ struct mt7615_dev {
 
 	u16 chainmask;
 
+	const struct mt7615_mcu_ops *mcu_ops;
 	struct regmap *infracfg;
 
 	struct work_struct mcu_work;
@@ -302,12 +314,6 @@ int mt7615_mcu_set_bcn(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 int mt7615_mcu_set_chan_info(struct mt7615_phy *phy, int cmd);
 int mt7615_mcu_set_wmm(struct mt7615_dev *dev, u8 queue,
 		       const struct ieee80211_tx_queue_params *params);
-int mt7615_mcu_set_tx_ba(struct mt7615_dev *dev,
-			 struct ieee80211_ampdu_params *params,
-			 bool add);
-int mt7615_mcu_set_rx_ba(struct mt7615_dev *dev,
-			 struct ieee80211_ampdu_params *params,
-			 bool add);
 void mt7615_mcu_rx_event(struct mt7615_dev *dev, struct sk_buff *skb);
 int mt7615_mcu_rdd_cmd(struct mt7615_dev *dev,
 		       enum mt7615_rdd_cmd cmd, u8 index,
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
