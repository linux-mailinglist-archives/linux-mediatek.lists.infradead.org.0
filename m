Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645191B4CC7
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Apr 2020 20:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zk9G0DAVIjhv26NNyPaW7FNb1LGcoFNh8i96xP28VWY=; b=nQopsNlgtGoNuz
	t+piNw8fbAROwRIfm3k7FT6vgGinh3FsVsLIHBDHtZ5RwANWHOG4qUrTzXcbd3ys2OZZCdbZgbRDg
	u1vxl4rUG8RvnHjT42VZq3zk/YPyenj+yNV++2ufP2Gz6E+SDLwIhnBTp04YCeHOoK24ShBL3B6V8
	dcUjmZ7jptOOh5nxRvL3KdSZEeMGgl0EWmqE8D1PsPV/b/SjguTPw7Cu9cu//EgovL+tgXneezDtj
	2Xd3SdYUMLgoFw3LL0GuXISvoFkZO4toUw5vyhAW4ZGvK/RcHDpIVJrczYPnMPzeo56V08OPsVQeE
	GPex66jkyo5qd6K2LoFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKHb-00019b-TO; Wed, 22 Apr 2020 18:39:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKHZ-000196-CC
 for linux-mediatek@lists.infradead.org; Wed, 22 Apr 2020 18:39:38 +0000
X-UUID: fcc79a46b44c4229a72ac6d3c263d2e2-20200422
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=23cwNfaGhhqL+PnOh1YFT8tP/y0EhVeeizW0SlUrSJo=; 
 b=Dxwnld5PQATzjPd7ttvmlOYnFDVtuA4FLaA+9DUMedl+Q4LHFYgErAUqkyYekXAOLurMjXawJsrMGzz2j0kIOl1Cf+b5VQ+PuYR0KxoD6gEzYegQXfDYdK7gbm8FTvJcm8xLuhStVBSGtigqrwe44uuCZ+p6PL/iCrMG9Aoap4E=;
X-UUID: fcc79a46b44c4229a72ac6d3c263d2e2-20200422
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 170434089; Wed, 22 Apr 2020 10:39:19 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 22 Apr 2020 11:39:28 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 23 Apr 2020 02:39:27 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 23 Apr 2020 02:39:20 +0800
From: <sean.wang@mediatek.com>
To: <nbd@nbd.name>, <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2] mt76: mt7663: fix up BMC entry indicated to unicmd firmware
Date: Thu, 23 Apr 2020 02:39:20 +0800
Message-ID: <71a5733885991a8211104b616d2f51d120efccb9.1587580510.git.sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3C479BEA1633D2955B3668A86E7F39C6192C47299CC315A46AF21B248DC1B4242000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_113937_416185_62A21AF1 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ryder.lee@mediatek.com, sean.wang@mediatek.com,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org, Soul
 Huang <Soul.Huang@mediatek.com>, Lorenzo Bianconi <lorenzo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

BMC entry for MT7663 unicmd firmware should be a broadcast/multicast entry,
not a unicast entry, that is GTK rekey offload would rely on.

Fixes: 138860679b2a ("mt76: mt7615: add more uni mcu commands")
Cc: Soul Huang <Soul.Huang@mediatek.com>
Suggested-by: YF Luo <Yf.Luo@mediatek.com>
Co-developed-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
--
v1->v2:
mt7615_mcu_uni_add_bss is only called on mt7663 with the offload firmware,
so remove the entire unnecessary if code section.
---
 .../net/wireless/mediatek/mt76/mt7615/mcu.c    | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 24b78d10d7f7..994446b1baba 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -1359,7 +1359,7 @@ mt7615_mcu_uni_add_bss(struct mt7615_phy *phy,
 			.short_st = true,
 		},
 	};
-	u8 idx, tx_wlan_idx = 0;
+	u8 idx, tx_wlan_idx = mvif->sta.wcid.idx;
 	int err;
 
 	idx = mvif->omac_idx > EXT_BSSID_START ? HW_BSSID_0 : mvif->omac_idx;
@@ -1369,24 +1369,8 @@ mt7615_mcu_uni_add_bss(struct mt7615_phy *phy,
 	case NL80211_IFTYPE_MESH_POINT:
 	case NL80211_IFTYPE_AP:
 		basic_req.basic.conn_type = cpu_to_le32(CONNECTION_INFRA_AP);
-		tx_wlan_idx = mvif->sta.wcid.idx;
 		break;
 	case NL80211_IFTYPE_STATION:
-		if (enable) {
-			struct ieee80211_sta *sta;
-			struct mt7615_sta *msta;
-
-			rcu_read_lock();
-			sta = ieee80211_find_sta(vif, vif->bss_conf.bssid);
-			if (!sta) {
-				rcu_read_unlock();
-				return -EINVAL;
-			}
-
-			msta = (struct mt7615_sta *)sta->drv_priv;
-			tx_wlan_idx = msta->wcid.idx;
-			rcu_read_unlock();
-		}
 		basic_req.basic.conn_type = cpu_to_le32(CONNECTION_INFRA_STA);
 		break;
 	default:
-- 
2.25.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
