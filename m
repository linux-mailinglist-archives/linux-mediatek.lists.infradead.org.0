Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1E619C8B3
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 20:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGdgBH2pEg5fBZq+GT94Xd5Jh6PufNHb32PGKryZoME=; b=cYIBXaBzflQWXZ
	nb6s+1mUxoEYdWFqd+48+t1IeVokayuh+mtMlEpb7XKT+//VNvD2f1B11SQs50OQwo6/c3kCModpi
	iZkQDV5TCXUrjhHQi/KQImiWljw2IzsYmYmHELRTk8Cl8LhLgfQ3gRc8R0gxvphfDxghA+KvH1Rg7
	i/R23XjzG/M2H0lMus1AoAvm6wH4tRJrpsaj4p+wqdvb2TEdH4ntcJjJMZpbkBjDfgMrH/ukwsS8B
	/knXl6r41VU0hY2YRy23mG/2BWvUqYBTWg8a+wBhFRI700k7GWMl2nHfoLw2fWVfvoRKqjmc0Re4m
	0PQSafJUETQLLv36omJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK4RA-0000tP-W8; Thu, 02 Apr 2020 18:19:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK4R3-0000lo-PU
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 18:19:27 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D642A20675;
 Thu,  2 Apr 2020 18:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585851565;
 bh=MyidAqoRVNnI3DmpagOAqQhZ8n5iKDZELVXxUzmSnGY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kY5mHJQSpo62fEeuQot7lE/n0NxeewbIWDmiXCWIFYmnQxyJBXH78BsvlH4F7gm/9
 5/m8VC6qrzs5DUKUAuJaKYupSMQBLUm+tPBDFh6W4U8Q0s19f9Bzopc1fpMtJcWl7b
 n7bxSUKjrJDuUlxO8tJjCoRog3XgFE2+FYbWfVeg=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 7/9] mt76: mt7615: rework wtbl key configuration
Date: Thu,  2 Apr 2020 20:18:54 +0200
Message-Id: <52827c44ed0250148748d403dd6f5fbaddaa4e0f.1585851049.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585851049.git.lorenzo@kernel.org>
References: <cover.1585851049.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_111925_875037_A8D23E7A 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Remove key dependency from mt7615_mac_wtbl_update_key and export
mt7615_mac_wtbl_update_key, mt7615_mac_wtbl_update_pk and
mt7615_mac_wtbl_update_cipher in order to reuse them in usb code.
Move mt7615_mac_get_cipher in mac.h

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/mac.c   | 69 +++++++------------
 .../net/wireless/mediatek/mt76/mt7615/mac.h   | 27 ++++++++
 .../wireless/mediatek/mt76/mt7615/mt7615.h    | 14 ++++
 3 files changed, 64 insertions(+), 46 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index e6e5c02da4fb..86e7c1c1b61e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -962,58 +962,31 @@ void mt7615_mac_set_rates(struct mt7615_phy *phy, struct mt7615_sta *sta,
 	sta->wcid.tx_info |= MT_WCID_TX_INFO_SET;
 }
 
-static enum mt7615_cipher_type
-mt7615_mac_get_cipher(int cipher)
-{
-	switch (cipher) {
-	case WLAN_CIPHER_SUITE_WEP40:
-		return MT_CIPHER_WEP40;
-	case WLAN_CIPHER_SUITE_WEP104:
-		return MT_CIPHER_WEP104;
-	case WLAN_CIPHER_SUITE_TKIP:
-		return MT_CIPHER_TKIP;
-	case WLAN_CIPHER_SUITE_AES_CMAC:
-		return MT_CIPHER_BIP_CMAC_128;
-	case WLAN_CIPHER_SUITE_CCMP:
-		return MT_CIPHER_AES_CCMP;
-	case WLAN_CIPHER_SUITE_CCMP_256:
-		return MT_CIPHER_CCMP_256;
-	case WLAN_CIPHER_SUITE_GCMP:
-		return MT_CIPHER_GCMP;
-	case WLAN_CIPHER_SUITE_GCMP_256:
-		return MT_CIPHER_GCMP_256;
-	case WLAN_CIPHER_SUITE_SMS4:
-		return MT_CIPHER_WAPI;
-	default:
-		return MT_CIPHER_NONE;
-	}
-}
-
-static int
-mt7615_mac_wtbl_update_key(struct mt7615_dev *dev, struct mt76_wcid *wcid,
-			   struct ieee80211_key_conf *key,
-			   enum mt7615_cipher_type cipher,
-			   enum set_key_cmd cmd)
+int mt7615_mac_wtbl_update_key(struct mt7615_dev *dev,
+			       struct mt76_wcid *wcid,
+			       u8 *key, u8 keylen,
+			       enum mt7615_cipher_type cipher,
+			       enum set_key_cmd cmd)
 {
 	u32 addr = mt7615_mac_wtbl_addr(dev, wcid->idx) + 30 * 4;
 	u8 data[32] = {};
 
-	if (key->keylen > sizeof(data))
+	if (keylen > sizeof(data))
 		return -EINVAL;
 
 	mt76_rr_copy(dev, addr, data, sizeof(data));
 	if (cmd == SET_KEY) {
 		if (cipher == MT_CIPHER_TKIP) {
 			/* Rx/Tx MIC keys are swapped */
-			memcpy(data + 16, key->key + 24, 8);
-			memcpy(data + 24, key->key + 16, 8);
+			memcpy(data + 16, key + 24, 8);
+			memcpy(data + 24, key + 16, 8);
 		}
 		if (cipher != MT_CIPHER_BIP_CMAC_128 && wcid->cipher)
 			memmove(data + 16, data, 16);
 		if (cipher != MT_CIPHER_BIP_CMAC_128 || !wcid->cipher)
-			memcpy(data, key->key, key->keylen);
+			memcpy(data, key, keylen);
 		else if (cipher == MT_CIPHER_BIP_CMAC_128)
-			memcpy(data + 16, key->key, 16);
+			memcpy(data + 16, key, 16);
 	} else {
 		if (wcid->cipher & ~BIT(cipher)) {
 			if (cipher != MT_CIPHER_BIP_CMAC_128)
@@ -1027,11 +1000,12 @@ mt7615_mac_wtbl_update_key(struct mt7615_dev *dev, struct mt76_wcid *wcid,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mt7615_mac_wtbl_update_key);
 
-static int
-mt7615_mac_wtbl_update_pk(struct mt7615_dev *dev, struct mt76_wcid *wcid,
-			  enum mt7615_cipher_type cipher, int keyidx,
-			  enum set_key_cmd cmd)
+int mt7615_mac_wtbl_update_pk(struct mt7615_dev *dev,
+			      struct mt76_wcid *wcid,
+			      enum mt7615_cipher_type cipher,
+			      int keyidx, enum set_key_cmd cmd)
 {
 	u32 addr = mt7615_mac_wtbl_addr(dev, wcid->idx), w0, w1;
 
@@ -1063,11 +1037,12 @@ mt7615_mac_wtbl_update_pk(struct mt7615_dev *dev, struct mt76_wcid *wcid,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(mt7615_mac_wtbl_update_pk);
 
-static void
-mt7615_mac_wtbl_update_cipher(struct mt7615_dev *dev, struct mt76_wcid *wcid,
-			      enum mt7615_cipher_type cipher,
-			      enum set_key_cmd cmd)
+void mt7615_mac_wtbl_update_cipher(struct mt7615_dev *dev,
+				   struct mt76_wcid *wcid,
+				   enum mt7615_cipher_type cipher,
+				   enum set_key_cmd cmd)
 {
 	u32 addr = mt7615_mac_wtbl_addr(dev, wcid->idx);
 
@@ -1085,6 +1060,7 @@ mt7615_mac_wtbl_update_cipher(struct mt7615_dev *dev, struct mt76_wcid *wcid,
 			mt76_clear(dev, addr + 2 * 4, MT_WTBL_W2_KEY_TYPE);
 	}
 }
+EXPORT_SYMBOL_GPL(mt7615_mac_wtbl_update_cipher);
 
 int mt7615_mac_wtbl_set_key(struct mt7615_dev *dev,
 			    struct mt76_wcid *wcid,
@@ -1101,7 +1077,8 @@ int mt7615_mac_wtbl_set_key(struct mt7615_dev *dev,
 	spin_lock_bh(&dev->mt76.lock);
 
 	mt7615_mac_wtbl_update_cipher(dev, wcid, cipher, cmd);
-	err = mt7615_mac_wtbl_update_key(dev, wcid, key, cipher, cmd);
+	err = mt7615_mac_wtbl_update_key(dev, wcid, key->key, key->keylen,
+					 cipher, cmd);
 	if (err < 0)
 		goto out;
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
index 2c368b99cc0c..f3e0070896a1 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
@@ -394,6 +394,33 @@ enum mt7615_cipher_type {
 	MT_CIPHER_GCMP_256,
 };
 
+static inline enum mt7615_cipher_type
+mt7615_mac_get_cipher(int cipher)
+{
+	switch (cipher) {
+	case WLAN_CIPHER_SUITE_WEP40:
+		return MT_CIPHER_WEP40;
+	case WLAN_CIPHER_SUITE_WEP104:
+		return MT_CIPHER_WEP104;
+	case WLAN_CIPHER_SUITE_TKIP:
+		return MT_CIPHER_TKIP;
+	case WLAN_CIPHER_SUITE_AES_CMAC:
+		return MT_CIPHER_BIP_CMAC_128;
+	case WLAN_CIPHER_SUITE_CCMP:
+		return MT_CIPHER_AES_CCMP;
+	case WLAN_CIPHER_SUITE_CCMP_256:
+		return MT_CIPHER_CCMP_256;
+	case WLAN_CIPHER_SUITE_GCMP:
+		return MT_CIPHER_GCMP;
+	case WLAN_CIPHER_SUITE_GCMP_256:
+		return MT_CIPHER_GCMP_256;
+	case WLAN_CIPHER_SUITE_SMS4:
+		return MT_CIPHER_WAPI;
+	default:
+		return MT_CIPHER_NONE;
+	}
+}
+
 static inline struct mt7615_txp_common *
 mt7615_txwi_to_txp(struct mt76_dev *dev, struct mt76_txwi_cache *t)
 {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index c0bc4913eec4..588cc38bfac0 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -67,6 +67,7 @@ struct mt7615_vif;
 struct mt7615_sta;
 struct mt7615_dfs_pulse;
 struct mt7615_dfs_pattern;
+enum mt7615_cipher_type;
 
 enum mt7615_hw_txq_id {
 	MT7615_TXQ_MAIN,
@@ -410,6 +411,19 @@ void mt7615_mac_tx_free(struct mt7615_dev *dev, struct sk_buff *skb);
 int mt7615_mac_wtbl_set_key(struct mt7615_dev *dev, struct mt76_wcid *wcid,
 			    struct ieee80211_key_conf *key,
 			    enum set_key_cmd cmd);
+int mt7615_mac_wtbl_update_pk(struct mt7615_dev *dev,
+			      struct mt76_wcid *wcid,
+			      enum mt7615_cipher_type cipher,
+			      int keyidx, enum set_key_cmd cmd);
+void mt7615_mac_wtbl_update_cipher(struct mt7615_dev *dev,
+				   struct mt76_wcid *wcid,
+				   enum mt7615_cipher_type cipher,
+				   enum set_key_cmd cmd);
+int mt7615_mac_wtbl_update_key(struct mt7615_dev *dev,
+			       struct mt76_wcid *wcid,
+			       u8 *key, u8 keylen,
+			       enum mt7615_cipher_type cipher,
+			       enum set_key_cmd cmd);
 void mt7615_mac_reset_work(struct work_struct *work);
 
 int mt7615_mcu_wait_response(struct mt7615_dev *dev, int cmd, int seq);
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
