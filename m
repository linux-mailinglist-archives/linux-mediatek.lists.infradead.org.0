Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B5619C8AD
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 20:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ37xbEbhcDboHfSu8o+twb+HIeiun+ZhR2LzarjfYs=; b=q0RFA4TsKwDNtl
	pKXoVl+PHmjcarl+62bf9BwSjiAeNcvz1ZjgO181nCiW1jpbSTMTxejA4dJAhLqNGq2RsHLFBD90d
	TbXvz449WX2Zn7if0V5y/Sk8dis1Tk4LxqvUOOCBnH0WgMsDZim1SIY4kpDtTYntGiDDtGIeCrenf
	5Lw1lDkvYVMI0qrk2Ex2YKkZDfJqf0MjuP6L67GBTwpylgDOfzanEzF/QWIZCnoUlr9upJBD1Gjrm
	LOAtGvknfiuQE8cFd6w32Q+AI8OmMD7YfV8hXDAs/Aiv0nyR/lO8zjw8ihvmKqbVSvUJgxsiL4gGg
	uZOn7wuloXc7dqaJaCwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK4Qz-0000g9-8y; Thu, 02 Apr 2020 18:19:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK4Qv-0000du-TA
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 18:19:19 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DE46208E0;
 Thu,  2 Apr 2020 18:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585851557;
 bh=5J/5kZ7QEfLei3ZqsfRvwD456wbAfDeempw7JwL5nWs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e0hNHvYl534nmwEUSBBnzAl+wBO70iwsP1RHUVoLyvHbIfI7KHGiaxGLx58Ymx97x
 M88V6pRVaDy1aP/qKhT0fvgLp6dSPZbVxVz/s/YMdE3afjT/Jws1m/dQ3roZTJj1gW
 poXN3p5YlvRIXteJPPI7Om68IvsDe1J5TTYdK1CM=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 3/9] mt76: mt7615: introduce mt7615_mac_update_rate_desc
 routine
Date: Thu,  2 Apr 2020 20:18:50 +0200
Message-Id: <db91de51e6f134dc36f19fb0eeea4b7f2816969f.1585851049.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585851049.git.lorenzo@kernel.org>
References: <cover.1585851049.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_111917_975491_DBAD3796 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org, ryder.lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Move register configuration out of mt7615_mac_set_rates since usb
driver can't access device register in interrupt context. Introduce
mt7615_mac_update_rate_desc routine to report rate info to
mt7615_mac_set_rates

Co-developed-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/mac.c   | 102 ++++++++++--------
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  12 +++
 2 files changed, 71 insertions(+), 43 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index 285d3af621ba..f68fa82ef5b0 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -811,26 +811,19 @@ void mt7615_mac_sta_poll(struct mt7615_dev *dev)
 	rcu_read_unlock();
 }
 
-void mt7615_mac_set_rates(struct mt7615_phy *phy, struct mt7615_sta *sta,
-			  struct ieee80211_tx_rate *probe_rate,
-			  struct ieee80211_tx_rate *rates)
+static void
+mt7615_mac_update_rate_desc(struct mt7615_phy *phy, struct mt7615_sta *sta,
+			    struct ieee80211_tx_rate *probe_rate,
+			    struct ieee80211_tx_rate *rates,
+			    struct mt7615_rate_desc *rd)
 {
 	struct mt7615_dev *dev = phy->dev;
 	struct mt76_phy *mphy = phy->mt76;
 	struct ieee80211_tx_rate *ref;
-	int wcid = sta->wcid.idx;
-	u32 addr = mt7615_mac_wtbl_addr(dev, wcid);
-	bool stbc = false;
+	bool rateset, stbc = false;
 	int n_rates = sta->n_rates;
-	u8 bw, bw_prev, bw_idx = 0;
-	u16 val[4];
-	u16 probe_val;
-	u32 w5, w27;
-	bool rateset;
-	int i, k;
-
-	if (!mt76_poll(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY, 0, 5000))
-		return;
+	u8 bw, bw_prev;
+	int i, j;
 
 	for (i = n_rates; i < 4; i++)
 		rates[i] = rates[n_rates - 1];
@@ -858,10 +851,10 @@ void mt7615_mac_set_rates(struct mt7615_phy *phy, struct mt7615_sta *sta,
 		if ((ref->flags ^ rates[i].flags) & IEEE80211_TX_RC_SHORT_GI)
 			rates[i].flags ^= IEEE80211_TX_RC_SHORT_GI;
 
-		for (k = 0; k < i; k++) {
-			if (rates[i].idx != rates[k].idx)
+		for (j = 0; j < i; j++) {
+			if (rates[i].idx != rates[j].idx)
 				continue;
-			if ((rates[i].flags ^ rates[k].flags) &
+			if ((rates[i].flags ^ rates[j].flags) &
 			    (IEEE80211_TX_RC_40_MHZ_WIDTH |
 			     IEEE80211_TX_RC_80_MHZ_WIDTH |
 			     IEEE80211_TX_RC_160_MHZ_WIDTH))
@@ -874,65 +867,87 @@ void mt7615_mac_set_rates(struct mt7615_phy *phy, struct mt7615_sta *sta,
 		}
 	}
 
-	val[0] = mt7615_mac_tx_rate_val(dev, mphy, &rates[0], stbc, &bw);
+	rd->val[0] = mt7615_mac_tx_rate_val(dev, mphy, &rates[0], stbc, &bw);
 	bw_prev = bw;
 
 	if (probe_rate) {
-		probe_val = mt7615_mac_tx_rate_val(dev, mphy, probe_rate,
-						   stbc, &bw);
+		rd->probe_val = mt7615_mac_tx_rate_val(dev, mphy, probe_rate,
+						       stbc, &bw);
 		if (bw)
-			bw_idx = 1;
+			rd->bw_idx = 1;
 		else
 			bw_prev = 0;
 	} else {
-		probe_val = val[0];
+		rd->probe_val = rd->val[0];
 	}
 
-	val[1] = mt7615_mac_tx_rate_val(dev, mphy, &rates[1], stbc, &bw);
+	rd->val[1] = mt7615_mac_tx_rate_val(dev, mphy, &rates[1], stbc, &bw);
 	if (bw_prev) {
-		bw_idx = 3;
+		rd->bw_idx = 3;
 		bw_prev = bw;
 	}
 
-	val[2] = mt7615_mac_tx_rate_val(dev, mphy, &rates[2], stbc, &bw);
+	rd->val[2] = mt7615_mac_tx_rate_val(dev, mphy, &rates[2], stbc, &bw);
 	if (bw_prev) {
-		bw_idx = 5;
+		rd->bw_idx = 5;
 		bw_prev = bw;
 	}
 
-	val[3] = mt7615_mac_tx_rate_val(dev, mphy, &rates[3], stbc, &bw);
+	rd->val[3] = mt7615_mac_tx_rate_val(dev, mphy, &rates[3], stbc, &bw);
 	if (bw_prev)
-		bw_idx = 7;
+		rd->bw_idx = 7;
+
+	rd->rateset = rateset;
+	rd->sta = sta;
+	rd->bw = bw;
+}
+
+void mt7615_mac_set_rates(struct mt7615_phy *phy, struct mt7615_sta *sta,
+			  struct ieee80211_tx_rate *probe_rate,
+			  struct ieee80211_tx_rate *rates)
+{
+	int wcid = sta->wcid.idx, n_rates = sta->n_rates;
+	struct mt7615_dev *dev = phy->dev;
+	struct mt7615_rate_desc rd;
+	u32 w5, w27, addr;
+
+	if (!mt76_poll(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY, 0, 5000))
+		return;
+
+	memset(&rd, 0, sizeof(struct mt7615_rate_desc));
+	mt7615_mac_update_rate_desc(phy, sta, probe_rate, rates, &rd);
 
+	addr = mt7615_mac_wtbl_addr(dev, wcid);
 	w27 = mt76_rr(dev, addr + 27 * 4);
 	w27 &= ~MT_WTBL_W27_CC_BW_SEL;
-	w27 |= FIELD_PREP(MT_WTBL_W27_CC_BW_SEL, bw);
+	w27 |= FIELD_PREP(MT_WTBL_W27_CC_BW_SEL, rd.bw);
 
 	w5 = mt76_rr(dev, addr + 5 * 4);
 	w5 &= ~(MT_WTBL_W5_BW_CAP | MT_WTBL_W5_CHANGE_BW_RATE |
 		MT_WTBL_W5_MPDU_OK_COUNT |
 		MT_WTBL_W5_MPDU_FAIL_COUNT |
 		MT_WTBL_W5_RATE_IDX);
-	w5 |= FIELD_PREP(MT_WTBL_W5_BW_CAP, bw) |
-	      FIELD_PREP(MT_WTBL_W5_CHANGE_BW_RATE, bw_idx ? bw_idx - 1 : 7);
+	w5 |= FIELD_PREP(MT_WTBL_W5_BW_CAP, rd.bw) |
+	      FIELD_PREP(MT_WTBL_W5_CHANGE_BW_RATE,
+			 rd.bw_idx ? rd.bw_idx - 1 : 7);
 
 	mt76_wr(dev, MT_WTBL_RIUCR0, w5);
 
 	mt76_wr(dev, MT_WTBL_RIUCR1,
-		FIELD_PREP(MT_WTBL_RIUCR1_RATE0, probe_val) |
-		FIELD_PREP(MT_WTBL_RIUCR1_RATE1, val[0]) |
-		FIELD_PREP(MT_WTBL_RIUCR1_RATE2_LO, val[1]));
+		FIELD_PREP(MT_WTBL_RIUCR1_RATE0, rd.probe_val) |
+		FIELD_PREP(MT_WTBL_RIUCR1_RATE1, rd.val[0]) |
+		FIELD_PREP(MT_WTBL_RIUCR1_RATE2_LO, rd.val[1]));
 
 	mt76_wr(dev, MT_WTBL_RIUCR2,
-		FIELD_PREP(MT_WTBL_RIUCR2_RATE2_HI, val[1] >> 8) |
-		FIELD_PREP(MT_WTBL_RIUCR2_RATE3, val[1]) |
-		FIELD_PREP(MT_WTBL_RIUCR2_RATE4, val[2]) |
-		FIELD_PREP(MT_WTBL_RIUCR2_RATE5_LO, val[2]));
+		FIELD_PREP(MT_WTBL_RIUCR2_RATE2_HI, rd.val[1] >> 8) |
+		FIELD_PREP(MT_WTBL_RIUCR2_RATE3, rd.val[1]) |
+		FIELD_PREP(MT_WTBL_RIUCR2_RATE4, rd.val[2]) |
+		FIELD_PREP(MT_WTBL_RIUCR2_RATE5_LO, rd.val[2]));
 
 	mt76_wr(dev, MT_WTBL_RIUCR3,
-		FIELD_PREP(MT_WTBL_RIUCR3_RATE5_HI, val[2] >> 4) |
-		FIELD_PREP(MT_WTBL_RIUCR3_RATE6, val[3]) |
-		FIELD_PREP(MT_WTBL_RIUCR3_RATE7, val[3]));
+		FIELD_PREP(MT_WTBL_RIUCR3_RATE5_HI, rd.val[2] >> 4) |
+		FIELD_PREP(MT_WTBL_RIUCR3_RATE6, rd.val[3]) |
+		FIELD_PREP(MT_WTBL_RIUCR3_RATE7, rd.val[3]));
 
 	mt76_wr(dev, MT_WTBL_UPDATE,
 		FIELD_PREP(MT_WTBL_UPDATE_WLAN_IDX, wcid) |
@@ -942,7 +957,8 @@ void mt7615_mac_set_rates(struct mt7615_phy *phy, struct mt7615_sta *sta,
 	mt76_wr(dev, addr + 27 * 4, w27);
 
 	mt76_set(dev, MT_LPON_T0CR, MT_LPON_T0CR_MODE); /* TSF read */
-	sta->rate_set_tsf = (mt76_rr(dev, MT_LPON_UTTR0) & ~BIT(0)) | rateset;
+	sta->rate_set_tsf = mt76_rr(dev, MT_LPON_UTTR0) & ~BIT(0);
+	sta->rate_set_tsf |= rd.rateset;
 
 	if (!(sta->wcid.tx_info & MT_WCID_TX_INFO_SET))
 		mt76_poll(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY, 0, 5000);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 8c3751a642af..35bfab58490e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -90,6 +90,18 @@ struct mt7615_rate_set {
 	struct ieee80211_tx_rate rates[4];
 };
 
+struct mt7615_rate_desc {
+	struct list_head node;
+
+	struct mt7615_sta *sta;
+
+	bool rateset;
+	u16 probe_val;
+	u16 val[4];
+	u8 bw_idx;
+	u8 bw;
+};
+
 struct mt7615_sta {
 	struct mt76_wcid wcid; /* must be first */
 
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
