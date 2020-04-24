Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B0F1B7F26
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Apr 2020 21:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORFChiQ/rXyeibeWJBqdnljF8+uU/nt1Y9Gr9c6yOwQ=; b=kaqn3lDJjEFhqE
	PwtgOGznQ/czDlYSPRjZ3atErsDltulkPP5PqcJ1hjEh2hlVhE1OXRmgg+kBtLX6SiFxuDvHIkng9
	qdwPrXYmrS+DMSiqvZxGyXq44O92RZ87GVaHqH85svJ4fUzJbrvcnHg/VchWcnlFQVROkfUgIE519
	UCmMqF5Kys1zkfKt7hbX8aIfDo9j25XCORRKssQBHlfO8AXxEj6mppx6u2Z57IzIZoQY6QRjaMKXK
	TN29y0ASG+ESqV+0uH3RRrzXNFpRbYsLDM7sZC25vxX46PbvBf8Qty1rVPFydnO5Om9BesgBPiB1A
	zFr0877vBHVJZSE85S5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4EG-00068I-Ib; Fri, 24 Apr 2020 19:43:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4E9-000625-LJ
 for linux-mediatek@lists.infradead.org; Fri, 24 Apr 2020 19:43:10 +0000
X-UUID: 3dbcd8aa82424d6f8629e5e28ee06aa7-20200424
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=PrMrGQUfXMNhRG58H8+GNHeDRKweulvlAJdxD1OYkqE=; 
 b=rubHytii83DqpNwO38tQE8V665XJLH7JexkKVj8Apop3G4UIHky+A4JrZqHuzalTEJDW3b6AvU9zfXT2KqWKfUrUUSt+g1GPgOnGGArQKTITTdkdicsAMCsXCz5BO4OmZCMuuiOHBt8EleCmL2yqWOSxZ4b5tBU7IDh/wV/2s8w=;
X-UUID: 3dbcd8aa82424d6f8629e5e28ee06aa7-20200424
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 184703056; Fri, 24 Apr 2020 11:43:06 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Apr 2020 12:33:04 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 25 Apr 2020 03:32:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 25 Apr 2020 03:32:57 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v3 16/18] mt76: mt7915: add tsf related callbacks
Date: Sat, 25 Apr 2020 03:32:37 +0800
Message-ID: <5423850c6348b9d0b0c2ec443c3a1ae4ef06931c.1587756404.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1587756404.git.ryder.lee@mediatek.com>
References: <cover.1587756404.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_124309_697941_0BFB14E6 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

It is useful for IBSS Mesh to adjust t_clockdrift.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Reported-by: Shayne Chen <shayne.chen@mediatek.com>
Tested-by: Evelyn Tsai <evelyn.tsai@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7915/main.c  | 53 +++++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7915/regs.h  | 11 ++++
 2 files changed, 64 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/main.c b/drivers/net/wireless/mediatek/mt76/mt7915/main.c
index b3e26ff32287..ef0c91990b49 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/main.c
@@ -655,6 +655,57 @@ mt7915_get_stats(struct ieee80211_hw *hw,
 	return 0;
 }
 
+static u64
+mt7915_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	bool band = phy != &dev->phy;
+	union {
+		u64 t64;
+		u32 t32[2];
+	} tsf;
+	u16 n;
+
+	mutex_lock(&dev->mt76.mutex);
+
+	n = mvif->omac_idx > HW_BSSID_MAX ? HW_BSSID_0 : mvif->omac_idx;
+	/* TSF software read */
+	mt76_set(dev, MT_LPON_TCR(band, n), MT_LPON_TCR_SW_MODE);
+	tsf.t32[0] = mt76_rr(dev, MT_LPON_UTTR0(band));
+	tsf.t32[1] = mt76_rr(dev, MT_LPON_UTTR1(band));
+
+	mutex_unlock(&dev->mt76.mutex);
+
+	return tsf.t64;
+}
+
+static void
+mt7915_set_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
+	       u64 timestamp)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	bool band = phy != &dev->phy;
+	union {
+		u64 t64;
+		u32 t32[2];
+	} tsf = { .t64 = timestamp, };
+	u16 n;
+
+	mutex_lock(&dev->mt76.mutex);
+
+	n = mvif->omac_idx > HW_BSSID_MAX ? HW_BSSID_0 : mvif->omac_idx;
+	mt76_wr(dev, MT_LPON_UTTR0(band), tsf.t32[0]);
+	mt76_wr(dev, MT_LPON_UTTR1(band), tsf.t32[1]);
+	/* TSF software overwrite */
+	mt76_set(dev, MT_LPON_TCR(band, n), MT_LPON_TCR_SW_WRITE);
+
+	mutex_unlock(&dev->mt76.mutex);
+}
+
 static void
 mt7915_set_coverage_class(struct ieee80211_hw *hw, s16 coverage_class)
 {
@@ -767,6 +818,8 @@ const struct ieee80211_ops mt7915_ops = {
 	.get_txpower = mt76_get_txpower,
 	.channel_switch_beacon = mt7915_channel_switch_beacon,
 	.get_stats = mt7915_get_stats,
+	.get_tsf = mt7915_get_tsf,
+	.set_tsf = mt7915_set_tsf,
 	.get_survey = mt76_get_survey,
 	.get_antenna = mt76_get_antenna,
 	.set_antenna = mt7915_set_antenna,
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/regs.h b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
index 572bdc16fb2d..6600fc625196 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
@@ -75,6 +75,17 @@
 #define MT_DMA_DCR0_MAX_RX_LEN		GENMASK(15, 3)
 #define MT_DMA_DCR0_RXD_G5_EN		BIT(23)
 
+/* LPON: band 0(0x24200), band 1(0xa4200) */
+#define MT_WF_LPON_BASE(_band)		((_band) ? 0xa4200 : 0x24200)
+#define MT_WF_LPON(_band, ofs)		(MT_WF_LPON_BASE(_band) + (ofs))
+
+#define MT_LPON_UTTR0(_band)		MT_WF_LPON(_band, 0x080)
+#define MT_LPON_UTTR1(_band)		MT_WF_LPON(_band, 0x084)
+
+#define MT_LPON_TCR(_band, n)		MT_WF_LPON(_band, 0x0a8 + (n) * 4)
+#define MT_LPON_TCR_SW_MODE		GENMASK(1, 0)
+#define MT_LPON_TCR_SW_WRITE		BIT(0)
+
 /* MIB: band 0(0x24800), band 1(0xa4800) */
 #define MT_WF_MIB_BASE(_band)		((_band) ? 0xa4800 : 0x24800)
 #define MT_WF_MIB(_band, ofs)		(MT_WF_MIB_BASE(_band) + (ofs))
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
