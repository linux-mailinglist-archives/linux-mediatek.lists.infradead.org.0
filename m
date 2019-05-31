Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F7A30FA6
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 16:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A5Rljp4hlaVbeC2K3a3S+7UrXyAGLuPzfUuomUCcIL8=; b=AQHfRdtVg9eGmr
	dP+ULQm0bj8oZdEZXkJPvG3jsQ7R2SrSjy5kT8B2lITFTEZt29qQKPPbaTLkC6HLpZh1ZpliDhoVG
	XZKJHEobHBg7Mm/vbYzyDa8wIDnd1IFEpwQWKMwxSE7IFTrAIZ91OjnzCHaIJ+Wmwbq4H1IsoQRpy
	zHx2AIUnJ82KdgmnE1vW7tchmSh3vdgOzE9zbkMDIbQFPSmy8VxVmrkj3yPwgGqwefH1JLBeeOEe8
	5nCbeduMrx0olZP9GHSeJ3HFlqdpn0e87+njvT2gajJXHW2MX9qGTqnpFTBrI+aO+orcwwDxgpH1o
	v4Yu+8Orpgpwv4U3hi3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWiEX-0007FT-35; Fri, 31 May 2019 14:10:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWiER-0006eu-SD
 for linux-mediatek@lists.infradead.org; Fri, 31 May 2019 14:10:09 +0000
X-UUID: c70bc2e18e774ecb8ff6d1931d5d0531-20190531
X-UUID: c70bc2e18e774ecb8ff6d1931d5d0531-20190531
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 858087483; Fri, 31 May 2019 06:10:01 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 07:10:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 22:09:58 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 31 May 2019 22:09:58 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 1/2] mt76: mt7615: enable support for mesh
Date: Fri, 31 May 2019 22:09:56 +0800
Message-ID: <e459fbc79154da9e0e6e098d2c49a9b17e842f47.1559301203.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_071007_922642_41F90F6B 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Sean Wang <sean.wang@mediatek.com>,
 Chih-Min Chen <chih-min.Chen@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Ryder
 Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Enable NL80211_IFTYPE_MESH_POINT and update its path.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
Changes since v2 - remove unused definitions
---
 drivers/net/wireless/mediatek/mt76/mt7615/init.c | 6 ++++++
 drivers/net/wireless/mediatek/mt76/mt7615/main.c | 1 +
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c  | 5 ++++-
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.h  | 6 ------
 4 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index 59f604f3161f..f860af6a42da 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -133,6 +133,9 @@ static const struct ieee80211_iface_limit if_limits[] = {
 	{
 		.max = MT7615_MAX_INTERFACES,
 		.types = BIT(NL80211_IFTYPE_AP) |
+#ifdef CONFIG_MAC80211_MESH
+			 BIT(NL80211_IFTYPE_MESH_POINT) |
+#endif
 			 BIT(NL80211_IFTYPE_STATION)
 	}
 };
@@ -195,6 +198,9 @@ int mt7615_register_device(struct mt7615_dev *dev)
 	dev->mt76.antenna_mask = 0xf;
 
 	wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
+#ifdef CONFIG_MAC80211_MESH
+				 BIT(NL80211_IFTYPE_MESH_POINT) |
+#endif
 				 BIT(NL80211_IFTYPE_AP);
 
 	ret = mt76_register_device(&dev->mt76, true, mt7615_rates,
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index b0bb7cc12385..585e67fa2728 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -37,6 +37,7 @@ static int get_omac_idx(enum nl80211_iftype type, u32 mask)
 
 	switch (type) {
 	case NL80211_IFTYPE_AP:
+	case NL80211_IFTYPE_MESH_POINT:
 		/* ap use hw bssid 0 and ext bssid */
 		if (~mask & BIT(HW_BSSID_0))
 			return HW_BSSID_0;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 43f70195244c..8b8db526cb16 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -754,6 +754,7 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
 
 	switch (vif->type) {
 	case NL80211_IFTYPE_AP:
+	case NL80211_IFTYPE_MESH_POINT:
 		tx_wlan_idx = mvif->sta.wcid.idx;
 		conn_type = CONNECTION_INFRA_AP;
 		break;
@@ -968,7 +969,8 @@ int mt7615_mcu_add_wtbl(struct mt7615_dev *dev, struct ieee80211_vif *vif,
 		.rx_wtbl = {
 			.tag = cpu_to_le16(WTBL_RX),
 			.len = cpu_to_le16(sizeof(struct wtbl_rx)),
-			.rca1 = vif->type != NL80211_IFTYPE_AP,
+			.rca1 = vif->type != (NL80211_IFTYPE_AP ||
+					      NL80211_IFTYPE_MESH_POINT),
 			.rca2 = 1,
 			.rv = 1,
 		},
@@ -1042,6 +1044,7 @@ static void sta_rec_convert_vif_type(enum nl80211_iftype type, u32 *conn_type)
 {
 	switch (type) {
 	case NL80211_IFTYPE_AP:
+	case NL80211_IFTYPE_MESH_POINT:
 		if (conn_type)
 			*conn_type = CONNECTION_INFRA_STA;
 		break;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
index e96efb13fa4d..0915cb735699 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
@@ -105,25 +105,19 @@ enum {
 #define STA_TYPE_STA		BIT(0)
 #define STA_TYPE_AP		BIT(1)
 #define STA_TYPE_ADHOC		BIT(2)
-#define STA_TYPE_TDLS		BIT(3)
 #define STA_TYPE_WDS		BIT(4)
 #define STA_TYPE_BC		BIT(5)
 
 #define NETWORK_INFRA		BIT(16)
 #define NETWORK_P2P		BIT(17)
 #define NETWORK_IBSS		BIT(18)
-#define NETWORK_MESH		BIT(19)
-#define NETWORK_BOW		BIT(20)
 #define NETWORK_WDS		BIT(21)
 
 #define CONNECTION_INFRA_STA	(STA_TYPE_STA | NETWORK_INFRA)
 #define CONNECTION_INFRA_AP	(STA_TYPE_AP | NETWORK_INFRA)
 #define CONNECTION_P2P_GC	(STA_TYPE_STA | NETWORK_P2P)
 #define CONNECTION_P2P_GO	(STA_TYPE_AP | NETWORK_P2P)
-#define CONNECTION_MESH_STA	(STA_TYPE_STA | NETWORK_MESH)
-#define CONNECTION_MESH_AP	(STA_TYPE_AP | NETWORK_MESH)
 #define CONNECTION_IBSS_ADHOC	(STA_TYPE_ADHOC | NETWORK_IBSS)
-#define CONNECTION_TDLS		(STA_TYPE_STA | NETWORK_INFRA | STA_TYPE_TDLS)
 #define CONNECTION_WDS		(STA_TYPE_WDS | NETWORK_WDS)
 #define CONNECTION_INFRA_BC	(STA_TYPE_BC | NETWORK_INFRA)
 
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
