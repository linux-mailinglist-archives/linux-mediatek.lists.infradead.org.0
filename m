Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57901ADBE3
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 13:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+UqR/yzq9mBLNDbtJ2yf8lP5HzcJrOaJes1f8oeSQA=; b=nUVV1y1VFvsk8O
	ZHg8Mn3y2EuD+Fobl2+Co8tMbbBjJYTrZ4EAIG2uQC7w/i6zVo7eztKfDhRoXBcyW36z3LycEUccO
	6TU0CDc7YPfI8StxxgDsBkziVyweWymFSO37S7jaApE49+0FoFTf7CPIQCCVugixyGHwp68O8ERyT
	H3CRphJKEFciXwdSZVwTnsPFBPas3/BbFbBYUeDkKWBd9DvM2Z0UzVfyR2jZdt9c8aX5uF50ivtfA
	m0dywA/NU1yfxE/JbYGulUE+xc8lrUaTVkJhew+ZXNTNnn2NC81+Zcyc4bIcBIpX0MjnsKwg6xqnX
	7zs4SWS8XSCLb6zwxBxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOtJ-0006gW-D4; Fri, 17 Apr 2020 11:10:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOtE-0006dX-VB
 for linux-mediatek@lists.infradead.org; Fri, 17 Apr 2020 11:10:34 +0000
Received: from lore-desk.lan (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3EF8021D95;
 Fri, 17 Apr 2020 11:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587121832;
 bh=H2Fv9f9LhFaOM99OmPWT4myIG6WvmuiuVGsxi96Xicg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ecNbPq5F77JQwx+9Ev6EXEKzrY5fe/T8T/lTG/JFt/Y00UKtRkksFpiwqPDLxrdct
 P4dQdMnsH05vw+XdmWrjILdsVxRmpm5oSIiAZIC8vcZiBUrqNyFfWCgnD7KvbIaF19
 XD2OslYYB3PT7RBGXtbK1GcJyZhh084mmJ1ceOpo=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 3/3] mt76: mt7663: introduce 802.11 PS support in sta mode
Date: Fri, 17 Apr 2020 13:10:06 +0200
Message-Id: <3982a1c05ff9f36f6351bcb55884dfd4335ca100.1587121517.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1587121517.git.lorenzo@kernel.org>
References: <cover.1587121517.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_041033_063141_B866428B 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Enable 802.11 power-save support available in mt7663 firmware

Co-developed-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt76.h     |  1 +
 .../net/wireless/mediatek/mt76/mt7615/init.c  |  4 ++++
 .../net/wireless/mediatek/mt76/mt7615/mac.c   |  7 ++++--
 .../net/wireless/mediatek/mt76/mt7615/main.c  | 23 +++++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 21 +++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7615/mcu.h   |  1 +
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  4 ++++
 .../wireless/mediatek/mt76/mt7615/pci_init.c  |  8 +++++--
 .../wireless/mediatek/mt76/mt7615/usb_init.c  |  3 +++
 9 files changed, 68 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index 577465c01827..6106dc4fea44 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -286,6 +286,7 @@ enum {
 	MT76_REMOVED,
 	MT76_READING_STATS,
 	MT76_STATE_POWER_OFF,
+	MT76_STATE_PS,
 };
 
 struct mt76_hw_cap {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index 9d9f73b4561e..6fc3f5aa94c0 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -323,6 +323,8 @@ int mt7615_register_ext_phy(struct mt7615_dev *dev)
 	INIT_DELAYED_WORK(&phy->scan_work, mt7615_scan_work);
 	skb_queue_head_init(&phy->scan_event_list);
 
+	INIT_WORK(&dev->phy.ps_work, mt7615_ps_work);
+
 	mt7615_cap_dbdc_enable(dev);
 	mphy = mt76_alloc_phy(&dev->mt76, sizeof(*phy), &mt7615_ops);
 	if (!mphy)
@@ -386,7 +388,9 @@ void mt7615_init_device(struct mt7615_dev *dev)
 	INIT_LIST_HEAD(&dev->sta_poll_list);
 	spin_lock_init(&dev->sta_poll_lock);
 	init_waitqueue_head(&dev->reset_wait);
+
 	INIT_WORK(&dev->reset_work, mt7615_mac_reset_work);
+	INIT_WORK(&dev->phy.ps_work, mt7615_ps_work);
 
 	mt7615_init_wiphy(hw);
 	dev->mphy.sband_2g.sband.ht_cap.cap |= IEEE80211_HT_CAP_LDPC_CODING;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index f0d752658bb0..396f11e1bbf6 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -605,8 +605,11 @@ int mt7615_mac_write_txwi(struct mt7615_dev *dev, __le32 *txwi,
 	}
 
 	if (!ieee80211_is_beacon(fc)) {
-		val = MT_TXD5_TX_STATUS_HOST | MT_TXD5_SW_POWER_MGMT |
-		      FIELD_PREP(MT_TXD5_PID, pid);
+		struct ieee80211_hw *hw = mt76_hw(dev);
+
+		val = MT_TXD5_TX_STATUS_HOST | FIELD_PREP(MT_TXD5_PID, pid);
+		if (!ieee80211_hw_check(hw, SUPPORTS_PS))
+			val |= MT_TXD5_SW_POWER_MGMT;
 		txwi[5] = cpu_to_le32(val);
 	} else {
 		txwi[5] = 0;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index f7fc2185da3b..8f8ad632d6ba 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -71,6 +71,7 @@ static void mt7615_stop(struct ieee80211_hw *hw)
 	struct mt7615_phy *phy = mt7615_hw_phy(hw);
 
 	cancel_delayed_work_sync(&phy->mac_work);
+	cancel_work_sync(&phy->ps_work);
 
 	mutex_lock(&dev->mt76.mutex);
 
@@ -362,6 +363,20 @@ static int mt7615_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	return mt7615_mac_wtbl_set_key(dev, wcid, key, cmd);
 }
 
+void mt7615_ps_work(struct work_struct *work)
+{
+	struct mt7615_phy *phy;
+
+	phy = (struct mt7615_phy *)container_of(work, struct mt7615_phy,
+						ps_work);
+
+	mutex_lock(&phy->dev->mt76.mutex);
+	ieee80211_iterate_active_interfaces(phy->mt76->hw,
+					    IEEE80211_IFACE_ITER_RESUME_ALL,
+					    m7615_mcu_set_ps_iter, phy);
+	mutex_unlock(&phy->dev->mt76.mutex);
+}
+
 static int mt7615_config(struct ieee80211_hw *hw, u32 changed)
 {
 	struct mt7615_dev *dev = mt7615_hw_dev(hw);
@@ -387,6 +402,14 @@ static int mt7615_config(struct ieee80211_hw *hw, u32 changed)
 		mt76_wr(dev, MT_WF_RFCR(band), phy->rxfilter);
 	}
 
+	if (changed & IEEE80211_CONF_CHANGE_PS) {
+		if (hw->conf.flags & IEEE80211_CONF_PS)
+			set_bit(MT76_STATE_PS, &phy->mt76->state);
+		else
+			clear_bit(MT76_STATE_PS, &phy->mt76->state);
+		ieee80211_queue_work(hw, &phy->ps_work);
+	}
+
 	mutex_unlock(&dev->mt76.mutex);
 
 	return ret;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 48eb099661fa..703b6996a3d8 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -2586,6 +2586,27 @@ int mt7615_mcu_set_sku_en(struct mt7615_phy *phy, bool enable)
 				   sizeof(req), true);
 }
 
+void m7615_mcu_set_ps_iter(void *priv, u8 *mac, struct ieee80211_vif *vif)
+{
+	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
+	struct mt7615_phy *phy = priv;
+	struct mt76_phy *mphy = phy->mt76;
+	struct {
+		u8 bss_idx;
+		u8 ps_state; /* 0: device awake
+			      * 1: static power save
+			      * 2: dynamic power saving
+			      */
+	} req = {
+		.bss_idx = mvif->idx,
+		.ps_state = test_bit(MT76_STATE_PS, &mphy->state) ? 2 : 0,
+	};
+
+	if (vif->type == NL80211_IFTYPE_STATION)
+		__mt76_mcu_send_msg(&phy->dev->mt76,  MCU_CMD_SET_PS_PROFILE,
+				    &req, sizeof(req), false);
+}
+
 int mt7615_mcu_set_channel_domain(struct mt7615_phy *phy)
 {
 	struct mt76_phy *mphy = phy->mt76;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
index dff3f3632faf..5440f24a834a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
@@ -411,6 +411,7 @@ struct mt7615_mcu_bss_event {
 /* offload mcu commands */
 enum {
 	MCU_CMD_START_HW_SCAN = MCU_CE_PREFIX | 0x03,
+	MCU_CMD_SET_PS_PROFILE = MCU_CE_PREFIX | 0x05,
 	MCU_CMD_SET_CHAN_DOMAIN = MCU_CE_PREFIX | 0x0f,
 	MCU_CMD_CANCEL_HW_SCAN = MCU_CE_PREFIX | 0x1b,
 	MCU_CMD_SCHED_SCAN_ENABLE = MCU_CE_PREFIX | 0x61,
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 2bc77a0478a9..c9533282e7e3 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -197,6 +197,8 @@ struct mt7615_phy {
 
 	struct sk_buff_head scan_event_list;
 	struct delayed_work scan_work;
+
+	struct work_struct ps_work;
 };
 
 #define mt7615_mcu_add_tx_ba(dev, ...)	(dev)->mcu_ops->add_tx_ba((dev), __VA_ARGS__)
@@ -423,6 +425,7 @@ static inline bool mt7615_firmware_offload(struct mt7615_dev *dev)
 }
 
 void mt7615_scan_work(struct work_struct *work);
+void mt7615_ps_work(struct work_struct *work);
 void mt7615_init_txpower(struct mt7615_dev *dev,
 			 struct ieee80211_supported_band *sband);
 void mt7615_phy_init(struct mt7615_dev *dev);
@@ -508,6 +511,7 @@ int mt7615_mcu_set_radar_th(struct mt7615_dev *dev, int index,
 int mt7615_mcu_set_sku_en(struct mt7615_phy *phy, bool enable);
 int mt7615_mcu_apply_rx_dcoc(struct mt7615_phy *phy);
 int mt7615_mcu_apply_tx_dpd(struct mt7615_phy *phy);
+void m7615_mcu_set_ps_iter(void *priv, u8 *mac, struct ieee80211_vif *vif);
 int mt7615_dfs_init_radar_detector(struct mt7615_phy *phy);
 
 int mt7615_init_debugfs(struct mt7615_dev *dev);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c b/drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c
index 3a8dd334b53e..cd3ccafa7d11 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c
@@ -16,6 +16,7 @@ static void mt7615_init_work(struct work_struct *work)
 {
 	struct mt7615_dev *dev = container_of(work, struct mt7615_dev,
 					      mcu_work);
+	struct ieee80211_hw *hw = mt76_hw(dev);
 
 	if (mt7615_mcu_init(dev))
 		return;
@@ -25,8 +26,11 @@ static void mt7615_init_work(struct work_struct *work)
 	mt7615_phy_init(dev);
 	mt7615_mcu_del_wtbl_all(dev);
 
-	if (!mt7615_firmware_offload(dev)) {
-		struct wiphy *wiphy = mt76_hw(dev)->wiphy;
+	if (mt7615_firmware_offload(dev)) {
+		ieee80211_hw_set(hw, SUPPORTS_PS);
+		ieee80211_hw_set(hw, SUPPORTS_DYNAMIC_PS);
+	} else {
+		struct wiphy *wiphy = hw->wiphy;
 
 		dev->ops->hw_scan = NULL;
 		dev->ops->cancel_hw_scan = NULL;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c b/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c
index a05f0eda21dd..39642065531f 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/usb_init.c
@@ -119,6 +119,9 @@ int mt7663u_register_device(struct mt7615_dev *dev)
 	if (err)
 		return err;
 
+	ieee80211_hw_set(hw, SUPPORTS_PS);
+	ieee80211_hw_set(hw, SUPPORTS_DYNAMIC_PS);
+
 	hw->extra_tx_headroom += MT_USB_HDR_SIZE + MT_USB_TXD_SIZE;
 	/* check hw sg support in order to enable AMSDU */
 	hw->max_tx_fragments = dev->mt76.usb.sg_en ? MT_HW_TXP_MAX_BUF_NUM : 1;
-- 
2.25.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
