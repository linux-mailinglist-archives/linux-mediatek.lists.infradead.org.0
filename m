Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8216A43341
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 09:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXH5JDJCS02H3Gjc3DBeAXi2/t42JXKa4GqYl/orwQA=; b=NhEKo63hCh/Ec6
	HMMiUmd37vk8YxvAq7az6L1rmqvmVaUS199cwJPQEtkbA3M1au1CpVDMtnbaVMgM3Q2hkII7uLF0y
	ApcoXyE2R6OajNGBgmNUiUmVwFtAprqN2JtaF+31f60QBtN16gR4NAHBeX6SVv1AVvP6AwJ8vyZKx
	HT9IIaDBA3rOE6hepINKkKB73F5VUElbAOQdZuZyVJLWA05qw6UF/thCTDjQe4+KMbxQTLWfLozon
	GC8WAYIEnJG4h1nFfrz5er5iBzIoStrWpuJPmypMLDdiXXmDkxXbDbe9GlfYy3HIVSf6HJKCFpSvI
	OBPY6v3BBZYrzv04aiLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbK0o-0005sB-5b; Thu, 13 Jun 2019 07:19:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJvl-0000Pk-S9
 for linux-mediatek@lists.infradead.org; Thu, 13 Jun 2019 07:13:55 +0000
X-UUID: 31ca04e442a542ce9281dc555d7841a6-20190612
X-UUID: 31ca04e442a542ce9281dc555d7841a6-20190612
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2084488941; Wed, 12 Jun 2019 23:13:36 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 00:13:35 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 15:13:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 13 Jun 2019 15:13:34 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 2/2] mt76: mt7615: update peer's bssid when state
 transition occurs
Date: Thu, 13 Jun 2019 15:13:31 +0800
Message-ID: <75f5e467c6e7fc4187572977a8e1f5d4238d6354.1560330906.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <3065a01998dfa04a5d2d680e820a17cb5c110d0f.1560330906.git.ryder.lee@mediatek.com>
References: <3065a01998dfa04a5d2d680e820a17cb5c110d0f.1560330906.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001353_924578_05956E48 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
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

This makes sure that the driver update peer's bssid when state
transition occurs.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
Changes since v2 - remove unnecessary changes
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  |  5 ++--
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 27 ++++++++++---------
 2 files changed, 16 insertions(+), 16 deletions(-)

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
index e82086eb8aa4..52d89f3533bf 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -759,22 +759,23 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
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
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
