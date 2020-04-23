Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626641B5CDF
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 Apr 2020 15:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xATb4sXHKcdUjacsT9F0GTopRK52bKUXvGj2qp9UL3w=; b=om19NFHX2T/aPY
	3ARTuYaygpcXsDdwBhW1Hs0WoJjcZlzk+Lyw7Zkreq96V4kxzD0MqG0qdH09TbHz3MflW+T5+GZ8f
	ZAXM2ue7fN+FQPx42VNQ6c3AkqPGMWmtDduHDTybhrdS2IVUVPnRvt9+8C9kOlh6bh1yYAzK04048
	Yi02YDbT62BUn/8t97YtHHZ1/hjTh0/2zFimCGPZXrFFgrvhqr3cdmwb4iU8D+5oT2oDBoCgg12ui
	3/pyJlJoSVLWYiX+4otxrujCCMagyy+R1lPrdqd8JeLDo5IsHLAzl20/Bago05qpbSYDjoE0737Ng
	JF7BD24LeJGswbXJtkgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcD9-0005tU-8r; Thu, 23 Apr 2020 13:48:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcD6-0005rN-0w
 for linux-mediatek@lists.infradead.org; Thu, 23 Apr 2020 13:48:13 +0000
Received: from localhost.localdomain.com (unknown [151.66.196.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 960C920728;
 Thu, 23 Apr 2020 13:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587649691;
 bh=fSfWetT74Z4M041uIe4Vb6wBZ2aM0SIZwjC2Z9OYQao=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l4cZOSNd2lICtYmOPP8LxfX999rAomGrOnL8tVSXzYmdZU5ZFSpCM6vse7b/QrWYP
 /UEJWUMSuZuUaYk/6uaG/ewgEhauJDrNbsmsItgXQIo3+zyYGPXsWxFcXMpJjpWeMT
 9vdDCkjfgCjkbKK2xYjUKaXG4VrGzQ9Gcsj0kNiw=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 1/2] mt76: mt7663: fix up BMC entry indicated to unicmd
 firmware
Date: Thu, 23 Apr 2020 15:47:54 +0200
Message-Id: <25460e45eb01272e690acf93f24645152da33efc.1587649519.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <cover.1587649519.git.lorenzo@kernel.org>
References: <cover.1587649519.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_064812_083462_D27D9EE9 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 22 +++----------------
 1 file changed, 3 insertions(+), 19 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 14e20169e1e0..5064f7c45a44 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -1403,8 +1403,8 @@ mt7615_mcu_uni_add_bss(struct mt7615_phy *phy,
 			.short_st = true,
 		},
 	};
-	u8 idx, tx_wlan_idx = 0;
 	int err;
+	u8 idx;
 
 	idx = mvif->omac_idx > EXT_BSSID_START ? HW_BSSID_0 : mvif->omac_idx;
 	basic_req.basic.hw_bss_idx = idx;
@@ -1413,24 +1413,8 @@ mt7615_mcu_uni_add_bss(struct mt7615_phy *phy,
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
@@ -1439,8 +1423,8 @@ mt7615_mcu_uni_add_bss(struct mt7615_phy *phy,
 	}
 
 	memcpy(basic_req.basic.bssid, vif->bss_conf.bssid, ETH_ALEN);
-	basic_req.basic.bmc_tx_wlan_idx = cpu_to_le16(tx_wlan_idx);
-	basic_req.basic.sta_idx = cpu_to_le16(tx_wlan_idx);
+	basic_req.basic.bmc_tx_wlan_idx = cpu_to_le16(mvif->sta.wcid.idx);
+	basic_req.basic.sta_idx = cpu_to_le16(mvif->sta.wcid.idx);
 	basic_req.basic.conn_state = !enable;
 
 	err = __mt76_mcu_send_msg(&dev->mt76, MCU_UNI_CMD_BSS_INFO_UPDATE,
-- 
2.25.3


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
