Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE1C1C2D56
	for <lists+linux-mediatek@lfdr.de>; Sun,  3 May 2020 17:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NE1Dyj+e8wELs1+MWA/O8GX4lfmZhWeI7TPfPPcrI7U=; b=l+srz0rAs2+VW2
	CYaylhoRTsJSr5VCiZUMBnefLSd/ozxjPdSIODGmuwofkOI3iUwnRQDrX2BguP3nc2VfMIge/JO8F
	ajgjToSyyNCrmGP739/k9W6yWJI4Q2dRr4V4JD059W4aXWqS5AQgEapIVJk85fZONb9zasRQJBeMy
	R7Omf3oLL7QPNmsITYg2f4rMWFvyIGah+WEKiR1dvt2A3Di1ZDDoWsIgMjdGLPTFUmgu1THETHdwd
	J3BN5w66eBBGLlKPLfJuL79aDE9ek/eqcKTfTFOGBUcg64y9j0nZc8kSmBqC6QoKFKwdda4H4t3DP
	wUf6c+oJmAv966RxArsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGTL-0007Kb-NO; Sun, 03 May 2020 15:24:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGTJ-0007K5-FQ
 for linux-mediatek@lists.infradead.org; Sun, 03 May 2020 15:24:02 +0000
Received: from localhost.localdomain (unknown [151.48.155.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11EA9206E9;
 Sun,  3 May 2020 15:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588519441;
 bh=aerzNM8cIdMUwLFZGgOBSfzc7fpEB+0XmDZfGNzl+Ic=;
 h=From:To:Cc:Subject:Date:From;
 b=VhlBocAe6uVSH5ZAxJ683/HpUapGLPuSlBB7MLLKghejOUfO1E1LhZi6yAOmD6Rz0
 kVHq/XcjKY0o6o4hYNQANvuZjd+j6xWs7PnK7Agghn8sXx+Km7TnRTMF+r2HwvshSV
 FYbFxWDlmYV8YeyC2Ze8x+1Q6EqP7sJCpSryLrOE=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7663: fix target power parsing
Date: Sun,  3 May 2020 17:23:54 +0200
Message-Id: <9016ffdd9f7c13c0587b05e61138af1389ad86d3.1588519313.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_082401_553134_DFA946DD 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix target parsing from eeprom/efuse partition for 7663 chipsets

Fixes: f40ac0f3d3c0 ("mt76: mt7615: introduce mt7663e support")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../wireless/mediatek/mt76/mt7615/eeprom.c    | 27 ++++++++++++++++---
 .../wireless/mediatek/mt76/mt7615/eeprom.h    | 17 +++++++++++-
 .../net/wireless/mediatek/mt76/mt7615/init.c  |  6 ++++-
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  9 ++++---
 4 files changed, 51 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
index 7440ad13c74b..4fb9658b1083 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
@@ -156,9 +156,30 @@ static void mt7615_eeprom_parse_hw_cap(struct mt7615_dev *dev)
 	dev->phy.chainmask = dev->chainmask;
 }
 
-int mt7615_eeprom_get_power_index(struct mt7615_dev *dev,
-				  struct ieee80211_channel *chan,
-				  u8 chain_idx)
+int mt7663_eeprom_get_target_power_index(struct mt7615_dev *dev,
+					 struct ieee80211_channel *chan,
+					 u8 chain_idx)
+{
+	int index, group;
+
+	if (chain_idx > 1)
+		return -EINVAL;
+
+	if (chan->band == NL80211_BAND_2GHZ)
+		return MT7663_EE_TX0_2G_TARGET_POWER + (chain_idx << 4);
+
+	group = mt7615_get_channel_group(chan->hw_value);
+	if (chain_idx == 1)
+		index = MT7663_EE_TX1_5G_G0_TARGET_POWER;
+	else
+		index = MT7663_EE_TX0_5G_G0_TARGET_POWER;
+
+	return index + group * 3;
+}
+
+int mt7615_eeprom_get_target_power_index(struct mt7615_dev *dev,
+					 struct ieee80211_channel *chan,
+					 u8 chain_idx)
 {
 	int index;
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.h b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.h
index aad82b600c63..2390b7137360 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.h
@@ -34,12 +34,14 @@ enum mt7615_eeprom_field {
 	MT_EE_TX1_5G_G0_TARGET_POWER =		0x098,
 	MT_EE_2G_RATE_POWER =			0x0be,
 	MT_EE_5G_RATE_POWER =			0x0d5,
+	MT7663_EE_TX0_2G_TARGET_POWER =		0x0e3,
 	MT_EE_EXT_PA_2G_TARGET_POWER =		0x0f2,
 	MT_EE_EXT_PA_5G_TARGET_POWER =		0x0f3,
-	MT7663_EE_TX0_2G_TARGET_POWER =		0x123,
 	MT_EE_TX2_5G_G0_TARGET_POWER =		0x142,
 	MT_EE_TX3_5G_G0_TARGET_POWER =		0x16a,
 	MT7663_EE_HW_CONF1 =			0x1b0,
+	MT7663_EE_TX0_5G_G0_TARGET_POWER =	0x245,
+	MT7663_EE_TX1_5G_G0_TARGET_POWER =	0x2b5,
 
 	MT7615_EE_MAX =				0x3bf,
 	MT7622_EE_MAX =				0x3db,
@@ -110,4 +112,17 @@ mt7615_ext_pa_enabled(struct mt7615_dev *dev, enum nl80211_band band)
 		return !(eep[MT_EE_NIC_CONF_1 + 1] & MT_EE_NIC_CONF_TSSI_2G);
 }
 
+static inline int
+mt7615_eeprom_get_power_index(struct mt7615_dev *dev,
+			      struct ieee80211_channel *chan,
+			      u8 chain_idx)
+{
+	if (is_mt7663(&dev->mt76))
+		return mt7663_eeprom_get_target_power_index(dev, chan,
+							    chain_idx);
+	else
+		return mt7615_eeprom_get_target_power_index(dev, chan,
+							    chain_idx);
+}
+
 #endif
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index d831d647d237..498022782d22 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -237,7 +237,11 @@ void mt7615_init_txpower(struct mt7615_dev *dev,
 	    (MT_EE_RATE_POWER_EN | MT_EE_RATE_POWER_SIGN))
 		delta += rate_val & MT_EE_RATE_POWER_MASK;
 
-	target_chains = mt7615_ext_pa_enabled(dev, band) ? 1 : n_chains;
+	if (!is_mt7663(&dev->mt76) && mt7615_ext_pa_enabled(dev, band))
+		target_chains = 1;
+	else
+		target_chains = n_chains;
+
 	for (i = 0; i < sband->n_channels; i++) {
 		struct ieee80211_channel *chan = &sband->channels[i];
 		u8 target_power = 0;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index af897fe5c508..b113eaa1a70e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -377,9 +377,12 @@ void mt7615_unregister_device(struct mt7615_dev *dev);
 int mt7615_register_ext_phy(struct mt7615_dev *dev);
 void mt7615_unregister_ext_phy(struct mt7615_dev *dev);
 int mt7615_eeprom_init(struct mt7615_dev *dev, u32 addr);
-int mt7615_eeprom_get_power_index(struct mt7615_dev *dev,
-				  struct ieee80211_channel *chan,
-				  u8 chain_idx);
+int mt7663_eeprom_get_target_power_index(struct mt7615_dev *dev,
+					 struct ieee80211_channel *chan,
+					 u8 chain_idx);
+int mt7615_eeprom_get_target_power_index(struct mt7615_dev *dev,
+					 struct ieee80211_channel *chan,
+					 u8 chain_idx);
 int mt7615_wait_pdma_busy(struct mt7615_dev *dev);
 int mt7615_dma_init(struct mt7615_dev *dev);
 void mt7615_dma_cleanup(struct mt7615_dev *dev);
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
