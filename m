Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7F01EF1C7
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jun 2020 09:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9xgKo97NBt5Q6iGrVjT5XX/3g/f/YYhqv4HxsZr39O4=; b=n2sAl2c13XgZz/
	CZdDNrpRrjFdhmYrs15cNuSsvXrscPuuFX9BlT7Oj7mL+pA4p+2feQxhYOpcXc06bZrbqPzMUVHsM
	BzIA1N/idFgeS8voPWgRihr1htEIEQRn967boZYqBKGq7Y06eo89cQdpc/5yf/cV6e0sexdpHyTXf
	5t8BZE4C/hnjAyiukrBPC+55+EXNAMKtMq5V18S4Ms6qC7Jgf0a3v0YQ2YWNo75quqKCQ3y4FJd0E
	OcUJ9NVZ3KcwChIoAkl6P8i2wbz7yjbF21W4rWHhfyguQJZfPkNqQU5Ybt7h6pSPLct6GOZZ4fodI
	SNBskqMqnGMeMtgDEOuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh6Rk-0000eU-TB; Fri, 05 Jun 2020 07:07:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh6Rh-0000e3-6U
 for linux-mediatek@lists.infradead.org; Fri, 05 Jun 2020 07:07:18 +0000
Received: from localhost.localdomain.com (unknown [151.48.128.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D03D206A2;
 Fri,  5 Jun 2020 07:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591340834;
 bh=zejQr7shiN3GCZs4dCE88fVWh0RsGCnoMHHmXcazioI=;
 h=From:To:Cc:Subject:Date:From;
 b=Y72MFhDRJqlBVzp9gYD6la+AIzlrtSN1Mkw0AMF3P3/delbj1Ok8wR3KaU7/cY4Bo
 GnTGV6Slw6GUQIDQfmMg2zr5g0THbUmTAGZe6ezcvrYFYnzKegImYqIPdguGM7Li7O
 wdZFkO/dx8SydmWtRnVn03cyY6tqSRCPC76dgXlw=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7663: introduce ARP filter offload
Date: Fri,  5 Jun 2020 09:07:03 +0200
Message-Id: <e91990d20a1a5f8d134fc9d9df152d9356fd15f9.1591340650.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_000717_282038_8CA03CDF 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 ryder.lee@mediatek.com, linux-wireless@vger.kernel.org, sean.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Introduce ARP filter offload

Co-developed-by: Wan-Feng Jiang <Wan-Feng.Jiang@mediatek.com>
Signed-off-by: Wan-Feng Jiang <Wan-Feng.Jiang@mediatek.com>
Co-developed-by: Soul Huang <Soul.Huang@mediatek.com>
Signed-off-by: Soul Huang <Soul.Huang@mediatek.com>
Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  |  3 +
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 74 +++++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7615/mcu.h   | 13 +++-
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  4 +-
 4 files changed, 91 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index beaca8127680..81fc4982a01f 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -491,6 +491,9 @@ static void mt7615_bss_info_changed(struct ieee80211_hw *hw,
 	if (changed & BSS_CHANGED_PS)
 		mt7615_mcu_set_vif_ps(dev, vif);
 
+	if (changed & BSS_CHANGED_ARP_FILTER)
+		mt7615_mcu_update_arp_filter(hw, vif, info);
+
 	mutex_unlock(&dev->mt76.mutex);
 }
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 6e869b8c5e26..0850b13b7007 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -3542,6 +3542,32 @@ mt7615_mcu_set_gtk_rekey(struct mt7615_dev *dev,
 				   &req, sizeof(req), true);
 }
 
+static int
+mt7615_mcu_set_arp_filter(struct mt7615_dev *dev, struct ieee80211_vif *vif,
+			  bool suspend)
+{
+	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
+	struct {
+		struct {
+			u8 bss_idx;
+			u8 pad[3];
+		} __packed hdr;
+		struct mt7615_arpns_tlv arpns;
+	} req = {
+		.hdr = {
+			.bss_idx = mvif->idx,
+		},
+		.arpns = {
+			.tag = cpu_to_le16(UNI_OFFLOAD_OFFLOAD_ARP),
+			.len = cpu_to_le16(sizeof(struct mt7615_arpns_tlv)),
+			.mode = suspend,
+		},
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_UNI_CMD_OFFLOAD,
+				   &req, sizeof(req), true);
+}
+
 void mt7615_mcu_set_suspend_iter(void *priv, u8 *mac,
 				 struct ieee80211_vif *vif)
 {
@@ -3554,6 +3580,7 @@ void mt7615_mcu_set_suspend_iter(void *priv, u8 *mac,
 	mt7615_mcu_set_bss_pm(phy->dev, vif, suspend);
 
 	mt7615_mcu_set_gtk_rekey(phy->dev, vif, suspend);
+	mt7615_mcu_set_arp_filter(phy->dev, vif, suspend);
 
 	mt7615_mcu_set_suspend_mode(phy->dev, vif, suspend, 1, true);
 
@@ -3653,6 +3680,53 @@ int mt7615_mcu_set_roc(struct mt7615_phy *phy, struct ieee80211_vif *vif,
 				   sizeof(req), false);
 }
 
+int mt7615_mcu_update_arp_filter(struct ieee80211_hw *hw,
+				 struct ieee80211_vif *vif,
+				 struct ieee80211_bss_conf *info)
+{
+	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
+	struct mt7615_dev *dev = mt7615_hw_dev(hw);
+	struct sk_buff *skb;
+	struct {
+		struct {
+			u8 bss_idx;
+			u8 pad[3];
+		} __packed hdr;
+		struct mt7615_arpns_tlv arp;
+	} req_hdr = {
+		.hdr = {
+			.bss_idx = mvif->idx,
+		},
+		.arp = {
+			.tag = cpu_to_le16(UNI_OFFLOAD_OFFLOAD_ARP),
+			.len = cpu_to_le16(sizeof(struct mt7615_arpns_tlv)),
+			.ips_num = info->arp_addr_cnt,
+			.mode = 2,  /* update purpose */
+			.option = 1,
+		},
+	};
+	int i;
+
+	if (!mt7615_firmware_offload(dev))
+		return 0;
+
+	skb = mt76_mcu_msg_alloc(&dev->mt76, NULL,
+				 sizeof(req_hdr) +
+				 info->arp_addr_cnt * sizeof(__be32));
+	if (!skb)
+		return -ENOMEM;
+
+	skb_put_data(skb, &req_hdr, sizeof(req_hdr));
+	for (i = 0; i < info->arp_addr_cnt; i++) {
+		u8 *addr = (u8 *)skb_put(skb, sizeof(__be32));
+
+		memcpy(addr, &info->arp_addr_list[i], sizeof(__be32));
+	}
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_UNI_CMD_OFFLOAD, true);
+}
+
 int mt7615_mcu_set_p2p_oppps(struct ieee80211_hw *hw,
 			     struct ieee80211_vif *vif)
 {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
index 2314d0b23af1..64f7471a57bb 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
@@ -545,6 +545,15 @@ struct mt7615_roc_tlv {
 	u8 rsv1[8];
 } __packed;
 
+struct mt7615_arpns_tlv {
+	__le16 tag;
+	__le16 len;
+	u8 mode;
+	u8 ips_num;
+	u8 option;
+	u8 pad[1];
+} __packed;
+
 /* offload mcu commands */
 enum {
 	MCU_CMD_START_HW_SCAN = MCU_CE_PREFIX | 0x03,
@@ -580,8 +589,8 @@ enum {
 };
 
 enum {
-	UNI_OFFLOAD_OFFLOAD_ARPNS_IPV4,
-	UNI_OFFLOAD_OFFLOAD_ARPNS_IPV6,
+	UNI_OFFLOAD_OFFLOAD_ARP,
+	UNI_OFFLOAD_OFFLOAD_ND,
 	UNI_OFFLOAD_OFFLOAD_GTK_REKEY,
 	UNI_OFFLOAD_OFFLOAD_BMC_RPY_DETECT,
 };
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 3e7d51bf42a4..a9513a456521 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -585,7 +585,9 @@ void mt7615_mcu_set_suspend_iter(void *priv, u8 *mac,
 int mt7615_mcu_update_gtk_rekey(struct ieee80211_hw *hw,
 				struct ieee80211_vif *vif,
 				struct cfg80211_gtk_rekey_data *key);
-
+int mt7615_mcu_update_arp_filter(struct ieee80211_hw *hw,
+				 struct ieee80211_vif *vif,
+				 struct ieee80211_bss_conf *info);
 int __mt7663_load_firmware(struct mt7615_dev *dev);
 
 /* usb */
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
