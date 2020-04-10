Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346DA1A4C64
	for <lists+linux-mediatek@lfdr.de>; Sat, 11 Apr 2020 01:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rqm4PXIe+nsPl4KdwBF8+Be/idxjiQBxQ+T0aG5VkiM=; b=aNE9ZoEVFhA55d
	a94xL6hs2hLSnW/BTVPOkIoePAXK5z+lxcteRkUdOjXKFZOrFj4ECiWvEKKJpdk1v4FRapSvnA1MU
	GOqrZJbKghgdWHRMSUsCec4cdz3pPCelzNGrolWTUxeYnvc1NiLwJyGA7X5EGn+yt8fJsFs0GBDhT
	Oxb9BDPk1AcPkrkjjvaFg878IzAoZHE/FA6tOmGOyjCOQCzLaQcMwTD8V4R4cIPwpCTDvJE8C5h7k
	f9di3+0JxosoJlrTWMjAGJ2X8Ou+Ns3+PaISht75MurpaoTr7CT5LuTOSNDF/Tm7OFSJ2iCLIKxMR
	LqZDGzXoNFSSuL5+N5lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN2f3-0000OK-4v; Fri, 10 Apr 2020 23:02:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN2ev-0000Cc-7F
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 23:02:03 +0000
X-UUID: e626b55c6fa14d37afdc1e96a32fb54c-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=f5kQlwPF4iuq2MyeYNdnk1RWMKmEndEWIG76IKKWz2k=; 
 b=dXyh95S3+WHnzy01qLVDX98LVcBeLdEDhqH205D0xVNXPVk+uQyU56rJkQ5hQkEsdQZxXu9tEadZjTQneoPILOJlIDHQf7DcVPHt6NiIzyJFYN5qzjJk3x0jwmkoKbnKDn6g2ZDW0mSfmyxbkcqiVbBN4vPaIyp/Ovp1Qhc3qQA=;
X-UUID: e626b55c6fa14d37afdc1e96a32fb54c-20200410
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 30554180; Fri, 10 Apr 2020 15:01:58 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 15:51:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 11 Apr 2020 06:51:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 11 Apr 2020 06:51:52 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v1 15/16] mt76: mt7915: set peer Tx fixed rate through debugfs
Date: Sat, 11 Apr 2020 06:51:30 +0800
Message-ID: <4c58f4af64d93ac4980d6b0651563d85c3035909.1586558901.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586558901.git.ryder.lee@mediatek.com>
References: <cover.1586558901.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_160201_296295_7148917F 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Driver can manually set fixed rate for each peer through debugfs.

May use .set_bitrate_mask callback and iterate stations under the
current vif to achieve the aim once it supports HE rate.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
---
 .../wireless/mediatek/mt76/mt7915/debugfs.c   | 13 ++++++
 .../net/wireless/mediatek/mt76/mt7915/mcu.c   | 46 +++++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7915/mcu.h   | 28 +++++++++++
 .../wireless/mediatek/mt76/mt7915/mt7915.h    |  2 +
 4 files changed, 89 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
index 27f523d69618..181f42fcdeda 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
@@ -302,6 +302,18 @@ int mt7915_init_debugfs(struct mt7915_dev *dev)
 
 /** per-station debugfs **/
 
+/* usage: <tx mode> <ldpc> <stbc> <bw> <gi> <nss> <mcs> */
+static int mt7915_sta_fixed_rate_set(void *data, u64 rate)
+{
+	struct ieee80211_sta *sta = data;
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+
+	return mt7915_mcu_set_fixed_rate(msta->vif->dev, sta, rate);
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(fops_fixed_rate, NULL,
+			 mt7915_sta_fixed_rate_set, "%llx\n");
+
 static int
 mt7915_sta_stats_read(struct seq_file *s, void *data)
 {
@@ -362,5 +374,6 @@ static const struct file_operations fops_sta_stats = {
 void mt7915_sta_add_debugfs(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 			    struct ieee80211_sta *sta, struct dentry *dir)
 {
+	debugfs_create_file("fixed_rate", 0600, dir, sta, &fops_fixed_rate);
 	debugfs_create_file("stats", 0400, dir, sta, &fops_sta_stats);
 }
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index e6e4405f5766..3905d0d2ce8a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -1768,6 +1768,52 @@ int mt7915_mcu_add_sta(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 	return 0;
 }
 
+int mt7915_mcu_set_fixed_rate(struct mt7915_dev *dev,
+			      struct ieee80211_sta *sta, u32 rate)
+{
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+	struct mt7915_vif *mvif = msta->vif;
+	struct sta_rec_ra_fixed *ra;
+	struct sk_buff *skb;
+	struct tlv *tlv;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	tlv = mt7915_mcu_add_tlv(skb, STA_REC_RA_UPDATE, sizeof(*ra));
+	ra = (struct sta_rec_ra_fixed *)tlv;
+
+	if (!rate) {
+		ra->field = cpu_to_le32(RATE_PARAM_AUTO);
+		goto out;
+	} else {
+		ra->field = cpu_to_le32(RATE_PARAM_FIXED);
+	}
+
+	ra->phy.type = FIELD_GET(RATE_CFG_PHY_TYPE, rate);
+	ra->phy.bw = FIELD_GET(RATE_CFG_BW, rate);
+	ra->phy.nss = FIELD_GET(RATE_CFG_NSS, rate);
+	ra->phy.mcs = FIELD_GET(RATE_CFG_MCS, rate);
+	ra->phy.stbc = FIELD_GET(RATE_CFG_STBC, rate);
+
+	if (ra->phy.bw)
+		ra->phy.ldpc = 7;
+	else
+		ra->phy.ldpc = FIELD_GET(RATE_CFG_LDPC, rate) * 7;
+
+	/* HT/VHT - SGI: 1, LGI: 0; HE - SGI: 0, MGI: 1, LGI: 2 */
+	if (ra->phy.type > MT_PHY_TYPE_VHT)
+		ra->phy.sgi = ra->phy.mcs * 85;
+	else
+		ra->phy.sgi = ra->phy.mcs * 15;
+
+out:
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
 int mt7915_mcu_add_dev_info(struct mt7915_dev *dev,
 			    struct ieee80211_vif *vif, bool enable)
 {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
index 52b420210908..2b2708828c1a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
@@ -823,6 +823,34 @@ struct sta_rec_ra {
 	struct ra_phy phy;
 } __packed;
 
+struct sta_rec_ra_fixed {
+	__le16 tag;
+	__le16 len;
+
+	__le32 field;
+	u8 op_mode;
+	u8 op_vht_chan_width;
+	u8 op_vht_rx_nss;
+	u8 op_vht_rx_nss_type;
+
+	struct ra_phy phy;
+
+	u8 spe_en;
+	u8 short_preamble;
+	u8 is_5g;
+	u8 mmps_mode;
+} __packed;
+
+#define RATE_PARAM_FIXED		3
+#define RATE_PARAM_AUTO			20
+#define RATE_CFG_MCS			GENMASK(3, 0)
+#define RATE_CFG_NSS			GENMASK(7, 4)
+#define RATE_CFG_GI			GENMASK(11, 8)
+#define RATE_CFG_BW			GENMASK(15, 12)
+#define RATE_CFG_STBC			GENMASK(19, 16)
+#define RATE_CFG_LDPC			GENMASK(23, 20)
+#define RATE_CFG_PHY_TYPE		GENMASK(27, 24)
+
 enum {
 	STA_REC_BASIC,
 	STA_REC_RA,
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h b/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
index ae3866d0a47a..c9015fa25156 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
@@ -302,6 +302,8 @@ int mt7915_mcu_add_smps(struct mt7915_dev *dev, struct ieee80211_vif *vif,
 			struct ieee80211_sta *sta);
 int mt7915_mcu_set_chan_info(struct mt7915_phy *phy, int cmd);
 int mt7915_mcu_set_tx(struct mt7915_dev *dev, struct ieee80211_vif *vif);
+int mt7915_mcu_set_fixed_rate(struct mt7915_dev *dev,
+			      struct ieee80211_sta *sta, u32 rate);
 int mt7915_mcu_set_eeprom(struct mt7915_dev *dev);
 int mt7915_mcu_get_eeprom(struct mt7915_dev *dev, u32 offset);
 int mt7915_mcu_set_mac(struct mt7915_dev *dev, int band, bool enable,
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
