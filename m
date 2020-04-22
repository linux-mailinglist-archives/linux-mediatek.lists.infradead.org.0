Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8907C1B42CF
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Apr 2020 13:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gg2obYBFNPV16qrmI98GNo/ZfOMsY98JPuw1qat4DvQ=; b=OZt7KQcOcDGA2h
	iuXyxO8sa5xlYrh9rtoIH6Nvfn2iWmiyxyMKohc1JwI7yNOzV/0NcoxBl/rrbDGWDZ3a5gT+Uef1i
	SKbY/+k8ZU3bD1/06OsTFaPt3PkDMlFvbiW0zh5/VMCxsNUTA5ljE9XyKVB5roejljtQ6aWZXUmYK
	QA8XcYHPmowT2No/gB1K1xDmppNfR7PAJPyVdkt9SAQLc5Om3Trd03noujjzRNBCO6rX3+xtl/aDB
	az4QDxnOtQw+DDYBsNnmvrNnIfjm2pIDQqk0R75YO0U06Zcr4aftxXbyQHdytC3EKLGHMqmRqVbpO
	U/s3AyVF1DoBl/gvkR+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDEY-0004fT-1l; Wed, 22 Apr 2020 11:08:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDEV-0004ee-88
 for linux-mediatek@lists.infradead.org; Wed, 22 Apr 2020 11:08:00 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.66.196.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8962B2076E;
 Wed, 22 Apr 2020 11:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587553678;
 bh=ZEPR/VQvyg7OiZedkRLfWOrSsyS7UfjXMLTZZoPa4zA=;
 h=From:To:Cc:Subject:Date:From;
 b=WwD1fE0QKC9LcCn6dMDR/WMmsm9EZzObNRi5HV//paumvNGR8vSPrVdSnlc+lJGtA
 2tbMHUuJpqM84UQi9B79Xm/jHfqvYZIuAD5bj0na5iX2eec7uCXDvUNRuVYH0t5WcW
 6Q8fdsTpcy910/bYmWPAJkszmL2E01zNa/yICcec=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7615: move mcu bss upload before creating the sta
Date: Wed, 22 Apr 2020 13:07:44 +0200
Message-Id: <5b69c9f19314643eeb6e0ac061af4ca21aab9802.1587551460.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_040759_309765_BCC39413 
X-CRM114-Status: UNSURE (   8.72  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Run mt7615_mcu_add_bss_info routine before mt7615_mcu_sta_add since
the firmware requires the bss is created before the relative sta

Tested-by: Sean Wang <sean.wang@mediatek.com>
Suggested-by: YF Luo <yf.luo@mediatek.com>
Suggested-by: Lucy Hsu <lucy.hsu@mediatek.com>
Co-developed-by: Soul Huang <soul.huang@mediatek.com>
Signed-off-by: Soul Huang <soul.huang@mediatek.com>
Co-developed-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c    | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 8f8ad632d6ba..3c35b8d0489c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -491,9 +491,6 @@ static void mt7615_bss_info_changed(struct ieee80211_hw *hw,
 
 	mutex_lock(&dev->mt76.mutex);
 
-	if (changed & BSS_CHANGED_ASSOC)
-		mt7615_mcu_add_bss_info(phy, vif, info->assoc);
-
 	if (changed & BSS_CHANGED_ERP_SLOT) {
 		int slottime = info->use_short_slot ? 9 : 20;
 
@@ -545,9 +542,14 @@ int mt7615_mac_sta_add(struct mt76_dev *mdev, struct ieee80211_vif *vif,
 	msta->wcid.idx = idx;
 	msta->wcid.ext_phy = mvif->band_idx;
 
+	if (vif->type == NL80211_IFTYPE_STATION) {
+		struct mt7615_phy *phy;
+
+		phy = mvif->band_idx ? mt7615_ext_phy(dev) : &dev->phy;
+		mt7615_mcu_add_bss_info(phy, vif, true);
+	}
 	mt7615_mac_wtbl_update(dev, idx,
 			       MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
-
 	mt7615_mcu_sta_add(dev, vif, sta, true);
 
 	return 0;
@@ -563,6 +565,13 @@ void mt7615_mac_sta_remove(struct mt76_dev *mdev, struct ieee80211_vif *vif,
 	mt7615_mcu_sta_add(dev, vif, sta, false);
 	mt7615_mac_wtbl_update(dev, msta->wcid.idx,
 			       MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
+	if (vif->type == NL80211_IFTYPE_STATION) {
+		struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
+		struct mt7615_phy *phy;
+
+		phy = mvif->band_idx ? mt7615_ext_phy(dev) : &dev->phy;
+		mt7615_mcu_add_bss_info(phy, vif, false);
+	}
 
 	spin_lock_bh(&dev->sta_poll_lock);
 	if (!list_empty(&msta->poll_list))
-- 
2.25.3


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
