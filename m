Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC9E41A98
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 05:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrXBuPRmgjV7/Zt6UI/GiIXcSGClNbf1KVE3MO1M2qE=; b=QupsFf6ZhKAOL/
	ronXgEIoKe3J0MCV7TA36jMDtQVxjBZ+DqAEOLGzpWO3k81NaDFZDCm9/jpbhxLC7Jl2Wxcmy5vgC
	Dr2+8HjcAM1S9IJUM6b52aY7ZyjQp95oqX7OIngNSCZ17oiU5pdOQPU/0ni1e/lWLc/xuYPQTl3q/
	Zs6oGPf6cdagV4siTJG4pZ31jLswrB131zLcU8pJ4RYlqCtTcqIA/+5ASe4LzEVnHvEDDwrWYT33W
	qSJAfTIOVfj+3RXB47OR1F2VyuX9hsbHu6fCla5QnhVCQcYM0oG8EEYQe1GXlpToDoUkuheBwt1t8
	ueZPSO9CONj9FS0lZTpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hatgw-0003om-SS; Wed, 12 Jun 2019 03:12:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hatgt-0003dm-Qi
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 03:12:49 +0000
X-UUID: 7685cc9f9c8a470f9c83610f8c5b47c4-20190611
X-UUID: 7685cc9f9c8a470f9c83610f8c5b47c4-20190611
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1669126464; Tue, 11 Jun 2019 19:12:44 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 20:12:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 11:12:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 12 Jun 2019 11:12:40 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 2/2] mt76: mt7615: update peer's bssid when state transition
 changes
Date: Wed, 12 Jun 2019 11:12:34 +0800
Message-ID: <449fee28c558b6f02b62275f9beefaab02b47efc.1560221172.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <3065a01998dfa04a5d2d680e820a17cb5c110d0f.1560221172.git.ryder.lee@mediatek.com>
References: <3065a01998dfa04a5d2d680e820a17cb5c110d0f.1560221172.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3F5B734C7013F11341551BE8410EA107F2318531696F13E719DF083F3416BACF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_201247_878387_B2AADEB4 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Driver should update peer's bssid and bss information when
state transition changes.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  |  5 +-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 49 ++++++++++---------
 2 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index d21407ddda31..e0824392c019 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -283,9 +283,8 @@ static void mt7615_bss_info_changed(struct ieee80211_hw *hw,
 
 	mutex_lock(&dev->mt76.mutex);
 
-	/* TODO: sta mode connect/disconnect
-	 * BSS_CHANGED_ASSOC | BSS_CHANGED_BSSID
-	 */
+	if (changed & BSS_CHANGED_ASSOC)
+		mt7615_mcu_set_bss_info(dev, vif, info->assoc);
 
 	/* TODO: update beacon content
 	 * BSS_CHANGED_BEACON
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index e82086eb8aa4..8fc12cd37906 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -741,17 +741,6 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
 	u8 *buf, *data, tx_wlan_idx = 0;
 	struct req_hdr *hdr;
 
-	if (en) {
-		len += sizeof(struct bss_info_omac);
-		features |= BIT(BSS_INFO_OMAC);
-		if (mvif->omac_idx > EXT_BSSID_START) {
-			len += sizeof(struct bss_info_ext_bss);
-			features |= BIT(BSS_INFO_EXT_BSS);
-			ntlv++;
-		}
-		ntlv++;
-	}
-
 	switch (vif->type) {
 	case NL80211_IFTYPE_AP:
 	case NL80211_IFTYPE_MESH_POINT:
@@ -759,22 +748,23 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
 		conn_type = CONNECTION_INFRA_AP;
 		break;
 	case NL80211_IFTYPE_STATION: {
-		struct ieee80211_sta *sta;
-		struct mt7615_sta *msta;
-
-		rcu_read_lock();
-
-		sta = ieee80211_find_sta(vif, vif->bss_conf.bssid);
-		if (!sta) {
+		/* TODO: enable BSS_INFO_UAPSD & BSS_INFO_PM */
+		if (en) {
+			struct ieee80211_sta *sta;
+			struct mt7615_sta *msta;
+
+			rcu_read_lock();
+			sta = ieee80211_find_sta(vif, vif->bss_conf.bssid);
+			if (!sta) {
+				rcu_read_unlock();
+				return -EINVAL;
+			}
+
+			msta = (struct mt7615_sta *)sta->drv_priv;
+			tx_wlan_idx = msta->wcid.idx;
 			rcu_read_unlock();
-			return -EINVAL;
 		}
-
-		msta = (struct mt7615_sta *)sta->drv_priv;
-		tx_wlan_idx = msta->wcid.idx;
 		conn_type = CONNECTION_INFRA_STA;
-
-		rcu_read_unlock();
 		break;
 	}
 	default:
@@ -782,6 +772,17 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
 		break;
 	}
 
+	if (en) {
+		len += sizeof(struct bss_info_omac);
+		features |= BIT(BSS_INFO_OMAC);
+		if (mvif->omac_idx > EXT_BSSID_START) {
+			len += sizeof(struct bss_info_ext_bss);
+			features |= BIT(BSS_INFO_EXT_BSS);
+			ntlv++;
+		}
+		ntlv++;
+	}
+
 	buf = kzalloc(len, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
