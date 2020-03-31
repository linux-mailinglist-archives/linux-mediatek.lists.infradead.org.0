Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EECDA198C9E
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Mar 2020 08:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlMXDD4mW95WWUY4xV8QSBE5CjY01lGXpd9hnymf4io=; b=rmDQh7LYqUhHRS
	e41MXitY9AsLI3/pBDfukuBcNZTFjGuVG++MLKybuGN8vQsKLNHGjK8tGTL9Rvv/FKwj2N+RIT3hs
	M6U71nFp29rZwi+cNgXspwfZrfi32rIdUALWq2yJI12jf+zYgKIzz7qbOpBuT1eU3y7TwUUwzPW24
	KFdXSyRUafSJAh4hQB7fO+hMTtnfDw1QjLOrmvRY/dk6PLx4C8VvVeNitDyYfTiEfHiKnfre3CO6k
	nDHmGayAHMsr1b1Nr14zqLfNgAhrnASKSf6iCeBWPqKR1D0DJTZaA9X2V6RuTlYMKiMyBMMMzxpqv
	34F0/hdDdzCriTRP6C3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAq2-000220-A2; Tue, 31 Mar 2020 06:57:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJApy-000216-4c
 for linux-mediatek@lists.infradead.org; Tue, 31 Mar 2020 06:57:27 +0000
X-UUID: 4ec5a0847cfb42f193cb4f57b238b01b-20200330
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=BEGm8TOdfxoqxw2nTZ7/51DdBklePLir3Hb8tr9Ohts=; 
 b=G95y/rz9f0eyxNUTCYjzKuCZWZXUq7Gq9FHmm0pacprzfm+MErTbv7Oh2Uv1VjtIiH43/39NEB29cBotK+FX/g2C5KLbjk8wnQdm2UnJCRJuCuqwPArCI3irZyawLZxChTymUpboZVIsfmoTKGTILNLtVm959cq9Q0pFePi5po0=;
X-UUID: 4ec5a0847cfb42f193cb4f57b238b01b-20200330
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 241755241; Mon, 30 Mar 2020 22:57:07 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Mar 2020 23:51:42 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Mar 2020 14:51:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 31 Mar 2020 14:51:39 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 4/4] mt76: mt7615: add more useful Tx mib counters
Date: Tue, 31 Mar 2020 14:51:38 +0800
Message-ID: <68061edaaf2ce7040c776b72baf4ea49ece2f4fe.1585636614.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <1fc90ec2a64d062ac7264aaa3dd158f2282ad7b8.1585636614.git.ryder.lee@mediatek.com>
References: <1fc90ec2a64d062ac7264aaa3dd158f2282ad7b8.1585636614.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2FFE9D262EE1C7BC71824A48A7D94EB7465B25DF7BD6B4CB822FE229BF026FE12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_235726_191498_774FBDA2 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mediatek@lists.infradead.org, Sean Wang <sean.wang@mediatek.com>,
 linux-wireless@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add ba_miss_cnt and ampdu_per in mib_stats.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 .../wireless/mediatek/mt76/mt7615/debugfs.c   |  4 ++++
 .../net/wireless/mediatek/mt76/mt7615/mac.c   | 20 ++++++++++++++-----
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  2 ++
 .../net/wireless/mediatek/mt76/mt7615/regs.h  |  7 +++++++
 4 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
index 980e7e3cf37e..641bfada5756 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
@@ -150,6 +150,10 @@ mt7615_ampdu_stat_read_phy(struct mt7615_phy *phy,
 	for (i = 0; i < ARRAY_SIZE(bound); i++)
 		seq_printf(file, "%8d | ", dev->mt76.aggr_stats[i + range]);
 	seq_puts(file, "\n");
+
+	seq_printf(file, "BA miss count: %d\n", phy->mib.ba_miss_cnt);
+	seq_printf(file, "PER: %ld.%1ld%%\n",
+		   phy->mib.aggr_per / 10, phy->mib.aggr_per % 10);
 }
 
 static int
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index f30dc015e88e..5451c0b8c9f2 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -1754,20 +1754,30 @@ mt7615_mac_update_mib_stats(struct mt7615_phy *phy)
 	struct mib_stats *mib = &phy->mib;
 	bool ext_phy = phy != &dev->phy;
 	int i, aggr;
+	u32 val, val2;
 
 	memset(mib, 0, sizeof(*mib));
 
 	mib->fcs_err_cnt = mt76_get_field(dev, MT_MIB_SDR3(ext_phy),
 					  MT_MIB_SDR3_FCS_ERR_MASK);
 
+	val = mt76_get_field(dev, MT_MIB_SDR14(ext_phy),
+			     MT_MIB_AMPDU_MPDU_COUNT);
+	val2 = mt76_get_field(dev, MT_MIB_SDR15(ext_phy),
+			      MT_MIB_AMPDU_ACK_COUNT);
+	mib->aggr_per = 1000 * (val - val2) / val;
+
 	aggr = ext_phy ? ARRAY_SIZE(dev->mt76.aggr_stats) / 2 : 0;
 	for (i = 0; i < 4; i++) {
-		u32 val, val2;
+		val = mt76_rr(dev, MT_MIB_MB_SDR1(ext_phy, i));
+
+		val2 = FIELD_GET(MT_MIB_ACK_FAIL_COUNT_MASK, val);
+		if (val2 > mib->ack_fail_cnt)
+			mib->ack_fail_cnt = val2;
 
-		val = mt76_get_field(dev, MT_MIB_MB_SDR1(ext_phy, i),
-				     MT_MIB_ACK_FAIL_COUNT_MASK);
-		if (val > mib->ack_fail_cnt)
-			mib->ack_fail_cnt = val;
+		val2 = FIELD_GET(MT_MIB_BA_MISS_COUNT_MASK, val);
+		if (val2 > mib->ba_miss_cnt)
+			mib->ba_miss_cnt = val2;
 
 		val = mt76_rr(dev, MT_MIB_MB_SDR0(ext_phy, i));
 		val2 = FIELD_GET(MT_MIB_RTS_RETRIES_COUNT_MASK, val);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 000070769217..052031d25f38 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -117,6 +117,8 @@ struct mib_stats {
 	u16 fcs_err_cnt;
 	u16 rts_cnt;
 	u16 rts_retries_cnt;
+	u16 ba_miss_cnt;
+	unsigned long aggr_per;
 };
 
 struct mt7615_phy {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
index 58aaa57fb451..29c56b0723cd 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
@@ -389,6 +389,12 @@ enum mt7615_reg_base {
 #define MT_MIB_SDR9(_band)		MT_WF_MIB(_band, 0x02c)
 #define MT_MIB_SDR9_BUSY_MASK		GENMASK(23, 0)
 
+#define MT_MIB_SDR14(_band)		MT_WF_MIB(_band, 0x040)
+#define MT_MIB_AMPDU_MPDU_COUNT		GENMASK(23, 0)
+
+#define MT_MIB_SDR15(_band)		MT_WF_MIB(_band, 0x044)
+#define MT_MIB_AMPDU_ACK_COUNT		GENMASK(23, 0)
+
 #define MT_MIB_SDR16(_band)		MT_WF_MIB(_band, 0x048)
 #define MT_MIB_SDR16_BUSY_MASK		GENMASK(23, 0)
 
@@ -402,6 +408,7 @@ enum mt7615_reg_base {
 #define MT_MIB_RTS_COUNT_MASK		GENMASK(15, 0)
 
 #define MT_MIB_MB_SDR1(_band, n)	MT_WF_MIB(_band, 0x104 + ((n) << 4))
+#define MT_MIB_BA_MISS_COUNT_MASK	GENMASK(15, 0)
 #define MT_MIB_ACK_FAIL_COUNT_MASK	GENMASK(31, 16)
 
 #define MT_TX_AGG_CNT(_band, n)		MT_WF_MIB(_band, 0xa8 + ((n) << 2))
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
