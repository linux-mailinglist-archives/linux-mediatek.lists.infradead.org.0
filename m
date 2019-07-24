Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586CB72B24
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 11:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJB6ph9a781+CHx/4AjDu+hLUg033bY7NN3SwP/t38Y=; b=q5jGehfbGWw5ay
	CYcI1OId0wuFSu4iulz6AJgoSHA5Wkl2IlkSfTR68SV73t9Zg3aEZbAITHyhkTHXYspkpYcbRrN8v
	j+GlJLumdrsBllhMvtbyLyqPZKyCaXcjuVjRAFFg5KSJxNIpTaFZwGScZ6pVVYrLcjPFXRi9KgoR+
	cNmTnNcmhS1PjwNxwhl4tanCRyZdb1lcHUN93E+tKVyrVFfc4FyZo3pdLpEXKdJ5ttmjM5+81Ifb1
	1j2F9VLRSFBlgTZDziVKkOVkOuqeCgtMxiukGWRU0fFe2cJrrPguFJpstzeE4LWVUmTFfWMOZQ3db
	iMvEng1GS97Ru6Na19DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDGz-0006b2-29; Wed, 24 Jul 2019 09:09:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDGK-00066T-CV
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 09:08:43 +0000
X-UUID: ba7221c1bf6e419581b428af6086e62b-20190724
X-UUID: ba7221c1bf6e419581b428af6086e62b-20190724
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 836052072; Wed, 24 Jul 2019 00:58:26 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 01:58:25 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 16:58:23 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 24 Jul 2019 16:58:23 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v1 2/6] mt76: mt7603: fix some checkpatch warnings
Date: Wed, 24 Jul 2019 16:58:16 +0800
Message-ID: <5e7d187a7dfa55ceb58ea721596865e0d529c4ee.1563944758.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1563944758.git.ryder.lee@mediatek.com>
References: <cover.1563944758.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_020841_035915_1B953159 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This fixes the following checkpatch warnings:

WARNING: Improper SPDX comment style
CHECK: No space is necessary after a cast

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt7603/beacon.c  | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7603/core.c    | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7603/debugfs.c | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7603/dma.c     | 7 ++++---
 drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c  | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7603/init.c    | 3 +--
 drivers/net/wireless/mediatek/mt76/mt7603/mac.c     | 6 +++---
 drivers/net/wireless/mediatek/mt76/mt7603/main.c    | 7 ++++---
 drivers/net/wireless/mediatek/mt76/mt7603/mcu.c     | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7603/pci.c     | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7603/soc.c     | 2 +-
 11 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/beacon.c b/drivers/net/wireless/mediatek/mt76/mt7603/beacon.c
index 58e68fbdbf75..7a41cdf1c4ae 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/beacon.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/beacon.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include "mt7603.h"
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/core.c b/drivers/net/wireless/mediatek/mt76/mt7603/core.c
index e7ee58e3379c..e5af4f3389cc 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/core.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/core.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include "mt7603.h"
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7603/debugfs.c
index a1bc3103cbe9..5942fe76c6e9 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/debugfs.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/debugfs.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include "mt7603.h"
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/dma.c b/drivers/net/wireless/mediatek/mt76/mt7603/dma.c
index 58dc511f93c5..79dc3b97dfe8 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/dma.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/dma.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include "mt7603.h"
 #include "mac.h"
@@ -63,7 +63,7 @@ mt7603_rx_loopback_skb(struct mt7603_dev *dev, struct sk_buff *skb)
 	txd[0] = cpu_to_le32(val);
 
 	sta = container_of(priv, struct ieee80211_sta, drv_priv);
-	hdr = (struct ieee80211_hdr *) &skb->data[MT_TXD_SIZE];
+	hdr = (struct ieee80211_hdr *)&skb->data[MT_TXD_SIZE];
 	tid = *ieee80211_get_qos_ctl(hdr) & IEEE80211_QOS_CTL_TID_MASK;
 	ieee80211_sta_set_buffered(sta, tid, true);
 
@@ -181,7 +181,8 @@ int mt7603_dma_init(struct mt7603_dev *dev)
 	init_waitqueue_head(&dev->mt76.mmio.mcu.wait);
 	skb_queue_head_init(&dev->mt76.mmio.mcu.res_q);
 
-	tasklet_init(&dev->mt76.tx_tasklet, mt7603_tx_tasklet, (unsigned long)dev);
+	tasklet_init(&dev->mt76.tx_tasklet, mt7603_tx_tasklet,
+		     (unsigned long)dev);
 
 	mt76_clear(dev, MT_WPDMA_GLO_CFG,
 		   MT_WPDMA_GLO_CFG_TX_DMA_EN |
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c
index 8c120e4461b0..2b6a4d8a8dc7 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/eeprom.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include "mt7603.h"
 #include "eeprom.h"
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/init.c b/drivers/net/wireless/mediatek/mt76/mt7603/init.c
index 568e57e1d69c..ad2ccdbe7258 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/init.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include <linux/etherdevice.h>
 #include "mt7603.h"
@@ -506,7 +506,6 @@ mt7603_init_txpower(struct mt7603_dev *dev,
 	}
 }
 
-
 int mt7603_register_device(struct mt7603_dev *dev)
 {
 	struct mt76_bus_ops *bus_ops;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/mac.c b/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
index 81fb4276e742..a532676a1175 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/mac.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include <linux/etherdevice.h>
 #include <linux/timekeeping.h>
@@ -644,7 +644,6 @@ void mt7603_wtbl_set_rates(struct mt7603_dev *dev, struct mt7603_sta *sta,
 
 			rates[i].idx--;
 		}
-
 	}
 
 	w9 &= MT_WTBL2_W9_SHORT_GI_20 | MT_WTBL2_W9_SHORT_GI_40 |
@@ -1017,8 +1016,9 @@ mt7603_fill_txs(struct mt7603_dev *dev, struct mt7603_sta *sta,
 			sta->rate_probe = false;
 		}
 		spin_unlock_bh(&dev->mt76.lock);
-	} else
+	} else {
 		info->status.rates[0] = rs->rates[first_idx / 2];
+	}
 	info->status.rates[0].count = 0;
 
 	for (i = 0, idx = first_idx; count && idx <= last_idx; idx++) {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/main.c b/drivers/net/wireless/mediatek/mt76/mt7603/main.c
index d70f42dac923..34dd05a36de9 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/main.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include <linux/etherdevice.h>
 #include <linux/platform_device.h>
@@ -399,7 +399,7 @@ mt7603_ps_set_more_data(struct sk_buff *skb)
 {
 	struct ieee80211_hdr *hdr;
 
-	hdr = (struct ieee80211_hdr *) &skb->data[MT_TXD_SIZE];
+	hdr = (struct ieee80211_hdr *)&skb->data[MT_TXD_SIZE];
 	hdr->frame_control |= cpu_to_le16(IEEE80211_FCTL_MOREDATA);
 }
 
@@ -647,7 +647,8 @@ mt7603_set_coverage_class(struct ieee80211_hw *hw, s16 coverage_class)
 	mt7603_mac_set_timing(dev);
 }
 
-static void mt7603_tx(struct ieee80211_hw *hw, struct ieee80211_tx_control *control,
+static void mt7603_tx(struct ieee80211_hw *hw,
+		      struct ieee80211_tx_control *control,
 		      struct sk_buff *skb)
 {
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7603/mcu.c
index 343ddc5543c2..02b2bd60d04d 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/mcu.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include <linux/firmware.h>
 #include "mt7603.h"
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/pci.c b/drivers/net/wireless/mediatek/mt76/mt7603/pci.c
index 4acdbf5d8968..2f2f337e2201 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/pci.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/pci.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include <linux/kernel.h>
 #include <linux/module.h>
diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/soc.c b/drivers/net/wireless/mediatek/mt76/mt7603/soc.c
index b920be1f5718..b7138485844a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/soc.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/soc.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: ISC */
+// SPDX-License-Identifier: ISC
 
 #include <linux/kernel.h>
 #include <linux/module.h>
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
