Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7B92E049
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 16:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cdqkEVwd5Vz77nJWPM87rOrNsA1TlHjggTWpz6AtwDs=; b=jlGKHOfCpRu9IP
	OnZQlUqIX1eacCsN7l0sccP4HVK/JfHuGULRfnxVmnD/yg7nAXzn+pOsQVJh8aZJLcePaoXRhBdWR
	m2QbYxQ5Rygi5vRfBtZv3VaQXGd1r8aFTQ9VFbGs0ibkIEdGhDSX8+pAiS5j3eMYy8DfhXg7LCZMb
	TvEOkv89+0SvP1aKuwCnX9TBSaI0oeyoRsh5nKjsRDzIJnKHbd41lcsmyAyp9aj2yc7El95FjFgKz
	g6GmHqXjMPkWzw+hE59PV832Q/9NT6CsO0dWzTvjqsdLuuM6IkHRl2NiXuyrhavbnb4/7yuaTiMi1
	utJEgH1/o2xOjeYyLtpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzzW-0004nR-B7; Wed, 29 May 2019 14:55:46 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzzM-0004gG-WF; Wed, 29 May 2019 14:55:38 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CE637923F8ECAF1FEEB2;
 Wed, 29 May 2019 22:55:27 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Wed, 29 May 2019
 22:55:20 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nbd@nbd.name>, <lorenzo.bianconi83@gmail.com>, <ryder.lee@mediatek.com>, 
 <royluo@google.com>, <kvalo@codeaurora.org>, <matthias.bgg@gmail.com>,
 <sgruszka@redhat.com>
Subject: [PATCH] mt76: Remove set but not used variables 'pid' and 'final_mpdu'
Date: Wed, 29 May 2019 22:53:56 +0800
Message-ID: <20190529145356.13872-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_075537_311691_074CC58D 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warnings:

drivers/net/wireless/mediatek/mt76/mt7603/mac.c: In function mt7603_fill_txs:
drivers/net/wireless/mediatek/mt76/mt7603/mac.c:969:5: warning: variable pid set but not used [-Wunused-but-set-variable]
drivers/net/wireless/mediatek/mt76/mt7603/mac.c:961:7: warning: variable final_mpdu set but not used [-Wunused-but-set-variable]
drivers/net/wireless/mediatek/mt76/mt7615/mac.c: In function mt7615_fill_txs:
drivers/net/wireless/mediatek/mt76/mt7615/mac.c:555:5: warning: variable pid set but not used [-Wunused-but-set-variable]
drivers/net/wireless/mediatek/mt76/mt7615/mac.c:552:19: warning: variable final_mpdu set but not used [-Wunused-but-set-variable]

They are never used, so can be removed.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/wireless/mediatek/mt76/mt7603/mac.c | 4 ----
 drivers/net/wireless/mediatek/mt76/mt7615/mac.c | 5 +----
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/mac.c b/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
index 6d506e34c3ee..5182a36276fc 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
@@ -958,7 +958,6 @@ mt7603_fill_txs(struct mt7603_dev *dev, struct mt7603_sta *sta,
 	int final_idx = 0;
 	u32 final_rate;
 	u32 final_rate_flags;
-	bool final_mpdu;
 	bool ack_timeout;
 	bool fixed_rate;
 	bool probe;
@@ -966,7 +965,6 @@ mt7603_fill_txs(struct mt7603_dev *dev, struct mt7603_sta *sta,
 	bool cck = false;
 	int count;
 	u32 txs;
-	u8 pid;
 	int idx;
 	int i;
 
@@ -974,9 +972,7 @@ mt7603_fill_txs(struct mt7603_dev *dev, struct mt7603_sta *sta,
 	probe = !!(info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE);
 
 	txs = le32_to_cpu(txs_data[4]);
-	final_mpdu = txs & MT_TXS4_ACKED_MPDU;
 	ampdu = !fixed_rate && (txs & MT_TXS4_AMPDU);
-	pid = FIELD_GET(MT_TXS4_PID, txs);
 	count = FIELD_GET(MT_TXS4_TX_COUNT, txs);
 
 	txs = le32_to_cpu(txs_data[0]);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index b8f48d10f27a..a51bfb6990b3 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -549,23 +549,20 @@ static bool mt7615_fill_txs(struct mt7615_dev *dev, struct mt7615_sta *sta,
 {
 	struct ieee80211_supported_band *sband;
 	int i, idx, count, final_idx = 0;
-	bool fixed_rate, final_mpdu, ack_timeout;
+	bool fixed_rate, ack_timeout;
 	bool probe, ampdu, cck = false;
 	u32 final_rate, final_rate_flags, final_nss, txs;
-	u8 pid;
 
 	fixed_rate = info->status.rates[0].count;
 	probe = !!(info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE);
 
 	txs = le32_to_cpu(txs_data[1]);
-	final_mpdu = txs & MT_TXS1_ACKED_MPDU;
 	ampdu = !fixed_rate && (txs & MT_TXS1_AMPDU);
 
 	txs = le32_to_cpu(txs_data[3]);
 	count = FIELD_GET(MT_TXS3_TX_COUNT, txs);
 
 	txs = le32_to_cpu(txs_data[0]);
-	pid = FIELD_GET(MT_TXS0_PID, txs);
 	final_rate = FIELD_GET(MT_TXS0_TX_RATE, txs);
 	ack_timeout = txs & MT_TXS0_ACK_TIMEOUT;
 
-- 
2.17.1



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
