Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A8C1A440F
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 10:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/H8nPKDynrb48qSzO3GuWhb8M7BYi5NHzmYvx3AnXpM=; b=Yo79+zh57xHb1O
	BdlcX5eu/2ZXbCBkp1OOJbH6f5pjAOcUP7obFnRcOqa/j80N1bo9E0j4cPrm0VwMOwz2VjL23y80y
	EamvWnTCDdBtcVI0nG4Cj6wV+hehQe/Mg0FEdny3i23wSin3tK2lFzAFzK0JAosge3n7+eeqdQfOp
	JyFfMydCMMzTVWeaJIFnegAd8SBbBngzX0BVat6JjRj4JUy2dKIny6/k1bujaUY8tspdTCuPqhM9B
	ivqaU98PxGD2MvoBkeCTCEmBkDcJswhpDZb7LPN31EY81uNm1dk34m+CSkqu2bEn9Ro3MtIKt1/Ws
	HtDAlIGkKZRf6P/U2BPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpRY-0007nL-6W; Fri, 10 Apr 2020 08:55:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpRM-0005u4-0j
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 08:55:16 +0000
X-UUID: 82a9f2f951ec411e9a53f82464533afb-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Gw113brImNWXUUgWmPAzgFFc8mZhDULwKevqZGI9c0I=; 
 b=ujTql5gW7xkbV14yYN6fza/Qor1lkX4fVQ8VGPzNqJXzxszoytNC9d5AOPkov9Xb5CzcG5vSTPyuslKeSajy3gZURg4qu/d8QqFyzqIGyo+f8F2047mPy82J1jQX3+PdphxJ0Rk6aDAzpUzj6rNaNppy0Q8xEoMAB2GgLtktVz0=;
X-UUID: 82a9f2f951ec411e9a53f82464533afb-20200410
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 336605008; Fri, 10 Apr 2020 00:55:00 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 01:54:59 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 16:54:56 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 10 Apr 2020 16:54:56 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 06/16] mt76: add mac80211 driver for MT7915 PCIe-based chipsets
Date: Fri, 10 Apr 2020 16:54:43 +0800
Message-ID: <3d9a74111aaadde7be00ec7c8c53d095daf4f9d2.1586507878.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586507878.git.ryder.lee@mediatek.com>
References: <cover.1586507878.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Spam-Note: CRM114 run bypassed due to message size (288636 bytes)
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add support for the MediaTek latest generation IEEE 802.11ax 4x4
device MT7915E, which supports concurrent dual-band operation at
both 5GHz and 2.4GHz.

Note that this patch just add basic part and will add more HE
capabilities support in the further patches.

The driver supports AP, Station, Mesh and monitor mode.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
Signed-off-by: Chih-Min Chen <chih-min.chen@mediatek.com>
Tested-by: Evelyn Tsai <evelyn.tsai@mediatek.com>
Acked-by: Yiwei Chung <yiwei.chung@mediatek.com>
Acked-by: YF Luo <yf.luo@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/Kconfig    |    1 +
 drivers/net/wireless/mediatek/mt76/Makefile   |    1 +
 .../net/wireless/mediatek/mt76/mt7915/Kconfig |   13 +
 .../wireless/mediatek/mt76/mt7915/Makefile    |    6 +
 .../wireless/mediatek/mt76/mt7915/debugfs.c   |  245 ++
 .../net/wireless/mediatek/mt76/mt7915/dma.c   |  283 ++
 .../wireless/mediatek/mt76/mt7915/eeprom.c    |  125 +
 .../wireless/mediatek/mt76/mt7915/eeprom.h    |   78 +
 .../net/wireless/mediatek/mt76/mt7915/init.c  |  392 +++
 .../net/wireless/mediatek/mt76/mt7915/mac.c   | 1310 ++++++++++
 .../net/wireless/mediatek/mt76/mt7915/mac.h   |  330 +++
 .../net/wireless/mediatek/mt76/mt7915/main.c  |  743 ++++++
 .../net/wireless/mediatek/mt76/mt7915/mcu.c   | 2319 +++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7915/mcu.h   |  837 ++++++
 .../wireless/mediatek/mt76/mt7915/mt7915.h    |  442 ++++
 .../net/wireless/mediatek/mt76/mt7915/pci.c   |  165 ++
 .../net/wireless/mediatek/mt76/mt7915/regs.h  |  344 +++
 17 files changed, 7634 insertions(+)
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/Kconfig
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/Makefile
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/dma.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/init.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/mac.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/mac.h
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/main.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/pci.c
 create mode 100644 drivers/net/wireless/mediatek/mt76/mt7915/regs.h

diff --git a/drivers/net/wireless/mediatek/mt76/Kconfig b/drivers/net/wireless/mediatek/mt76/Kconfig
index cbc2d8a5d354..41533a0e1720 100644
--- a/drivers/net/wireless/mediatek/mt76/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/Kconfig
@@ -24,3 +24,4 @@ source "drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig"
 source "drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig"
 source "drivers/net/wireless/mediatek/mt76/mt7603/Kconfig"
 source "drivers/net/wireless/mediatek/mt76/mt7615/Kconfig"
+source "drivers/net/wireless/mediatek/mt76/mt7915/Kconfig"
diff --git a/drivers/net/wireless/mediatek/mt76/Makefile b/drivers/net/wireless/mediatek/mt76/Makefile
index d7a1ddc9e407..1df04156f97f 100644
--- a/drivers/net/wireless/mediatek/mt76/Makefile
+++ b/drivers/net/wireless/mediatek/mt76/Makefile
@@ -27,3 +27,4 @@ obj-$(CONFIG_MT76x0_COMMON) += mt76x0/
 obj-$(CONFIG_MT76x2_COMMON) += mt76x2/
 obj-$(CONFIG_MT7603E) += mt7603/
 obj-$(CONFIG_MT7615E) += mt7615/
+obj-$(CONFIG_MT7915E) += mt7915/
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7915/Kconfig
new file mode 100644
index 000000000000..1737fb2b4adc
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config MT7915E
+	tristate "MediaTek MT7915E (PCIe) support"
+	select MT76_CORE
+	depends on MAC80211
+	depends on PCI
+	help
+	  This adds support for MT7915-based wireless PCIe devices,
+	  which support concurrent dual-band operation at both 5GHz
+	  and 2.4GHz IEEE 802.11ax 4x4:4SS 1024-QAM, 160MHz channels,
+	  OFDMA, spatial reuse and dual carrier modulation.
+
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/Makefile b/drivers/net/wireless/mediatek/mt76/mt7915/Makefile
new file mode 100644
index 000000000000..57fe726cc38b
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/Makefile
@@ -0,0 +1,6 @@
+#SPDX-License-Identifier: ISC
+
+obj-$(CONFIG_MT7915E) += mt7915e.o
+
+mt7915e-y := pci.o init.o dma.o eeprom.o main.o mcu.o mac.o \
+	     debugfs.o
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
new file mode 100644
index 000000000000..152ae0617f3d
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/debugfs.c
@@ -0,0 +1,245 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#include "mt7915.h"
+#include "eeprom.h"
+
+/** global debugfs **/
+
+/* test knob of system layer 1/2 error recovery */
+static int mt7915_ser_trigger_set(void *data, u64 val)
+{
+	enum {
+		SER_SET_RECOVER_L1 = 1,
+		SER_SET_RECOVER_L2,
+		SER_ENABLE = 2,
+		SER_RECOVER
+	};
+	struct mt7915_dev *dev = data;
+	int ret = 0;
+
+	switch (val) {
+	case SER_SET_RECOVER_L1:
+	case SER_SET_RECOVER_L2:
+		/* fall through */
+		ret = mt7915_mcu_set_ser(dev, SER_ENABLE, BIT(val), 0);
+		if (ret)
+			return ret;
+
+		return mt7915_mcu_set_ser(dev, SER_RECOVER, val, 0);
+	default:
+		break;
+	}
+
+	return ret;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(fops_ser_trigger, NULL,
+			 mt7915_ser_trigger_set, "%lld\n");
+
+static int
+mt7915_radar_trigger(void *data, u64 val)
+{
+	struct mt7915_dev *dev = data;
+
+	return mt7915_mcu_rdd_cmd(dev, RDD_RADAR_EMULATE, 1, 0, 0);
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(fops_radar_trigger, NULL,
+			 mt7915_radar_trigger, "%lld\n");
+
+static int
+mt7915_dbdc_set(void *data, u64 val)
+{
+	struct mt7915_dev *dev = data;
+
+	if (val)
+		mt7915_register_ext_phy(dev);
+	else
+		mt7915_unregister_ext_phy(dev);
+
+	return 0;
+}
+
+static int
+mt7915_dbdc_get(void *data, u64 *val)
+{
+	struct mt7915_dev *dev = data;
+
+	*val = !!mt7915_ext_phy(dev);
+
+	return 0;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(fops_dbdc, mt7915_dbdc_get,
+			 mt7915_dbdc_set, "%lld\n");
+
+static void
+mt7915_ampdu_stat_read_phy(struct mt7915_phy *phy,
+			   struct seq_file *file)
+{
+	struct mt7915_dev *dev = file->private;
+	bool ext_phy = phy != &dev->phy;
+	int bound[15], range[4], i, n;
+
+	if (!phy)
+		return;
+
+	/* Tx ampdu stat */
+	for (i = 0; i < ARRAY_SIZE(range); i++)
+		range[i] = mt76_rr(dev, MT_MIB_ARNG(ext_phy, i));
+
+	for (i = 0; i < ARRAY_SIZE(bound); i++)
+		bound[i] = MT_MIB_ARNCR_RANGE(range[i / 4], i) + 1;
+
+	seq_printf(file, "\nPhy %d\n", ext_phy);
+
+	seq_printf(file, "Length: %8d | ", bound[0]);
+	for (i = 0; i < ARRAY_SIZE(bound) - 1; i++)
+		seq_printf(file, "%3d -%3d | ",
+			   bound[i] + 1, bound[i + 1]);
+
+	seq_puts(file, "\nCount:  ");
+	n = ext_phy ? ARRAY_SIZE(dev->mt76.aggr_stats) / 2 : 0;
+	for (i = 0; i < ARRAY_SIZE(bound); i++)
+		seq_printf(file, "%8d | ", dev->mt76.aggr_stats[i + n]);
+	seq_puts(file, "\n");
+
+	seq_printf(file, "BA miss count: %d\n", phy->mib.ba_miss_cnt);
+}
+
+static int
+mt7915_tx_stats_read(struct seq_file *file, void *data)
+{
+	struct mt7915_dev *dev = file->private;
+	int stat[8], i, n;
+
+	mt7915_ampdu_stat_read_phy(&dev->phy, file);
+	mt7915_ampdu_stat_read_phy(mt7915_ext_phy(dev), file);
+
+	/* Tx amsdu info */
+	seq_puts(file, "Tx MSDU stat:\n");
+	for (i = 0, n = 0; i < ARRAY_SIZE(stat); i++) {
+		stat[i] = mt76_rr(dev,  MT_PLE_AMSDU_PACK_MSDU_CNT(i));
+		n += stat[i];
+	}
+
+	for (i = 0; i < ARRAY_SIZE(stat); i++) {
+		seq_printf(file, "AMSDU pack count of %d MSDU in TXD: 0x%x ",
+			   i + 1, stat[i]);
+		if (n != 0)
+			seq_printf(file, "(%d%%)\n", stat[i] * 100 / n);
+		else
+			seq_puts(file, "\n");
+	}
+
+	return 0;
+}
+
+static int
+mt7915_tx_stats_open(struct inode *inode, struct file *f)
+{
+	return single_open(f, mt7915_tx_stats_read, inode->i_private);
+}
+
+static const struct file_operations fops_tx_stats = {
+	.open = mt7915_tx_stats_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+};
+
+static int mt7915_read_temperature(struct seq_file *s, void *data)
+{
+	struct mt7915_dev *dev = dev_get_drvdata(s->private);
+	int temp;
+
+	/* cpu */
+	temp = mt7915_mcu_get_temperature(dev, 0);
+	seq_printf(s, "Temperature: %d\n", temp);
+
+	return 0;
+}
+
+static int
+mt7915_queues_acq(struct seq_file *s, void *data)
+{
+	struct mt7915_dev *dev = dev_get_drvdata(s->private);
+	int i;
+
+	for (i = 0; i < 16; i++) {
+		int j, acs = i / 4, index = i % 4;
+		u32 ctrl, val, qlen = 0;
+
+		val = mt76_rr(dev, MT_PLE_AC_QEMPTY(acs, index));
+		ctrl = BIT(31) | BIT(15) | (acs << 8);
+
+		for (j = 0; j < 32; j++) {
+			if (val & BIT(j))
+				continue;
+
+			mt76_wr(dev, MT_PLE_FL_Q0_CTRL,
+				ctrl | (j + (index << 5)));
+			qlen += mt76_get_field(dev, MT_PLE_FL_Q3_CTRL,
+					       GENMASK(11, 0));
+		}
+		seq_printf(s, "AC%d%d: queued=%d\n", acs, index, qlen);
+	}
+
+	return 0;
+}
+
+static int
+mt7915_queues_read(struct seq_file *s, void *data)
+{
+	struct mt7915_dev *dev = dev_get_drvdata(s->private);
+	static const struct {
+		char *queue;
+		int id;
+	} queue_map[] = {
+		{ "WFDMA0", MT_TXQ_BE },
+		{ "MCUWM", MT_TXQ_MCU },
+		{ "MCUWA", MT_TXQ_MCU_WA },
+		{ "MCUFWQ", MT_TXQ_FWDL },
+	};
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(queue_map); i++) {
+		struct mt76_sw_queue *q = &dev->mt76.q_tx[queue_map[i].id];
+
+		if (!q->q)
+			continue;
+
+		seq_printf(s,
+			   "%s:	queued=%d head=%d tail=%d\n",
+			   queue_map[i].queue, q->q->queued, q->q->head,
+			   q->q->tail);
+	}
+
+	return 0;
+}
+
+int mt7915_init_debugfs(struct mt7915_dev *dev)
+{
+	struct dentry *dir;
+
+	dir = mt76_register_debugfs(&dev->mt76);
+	if (!dir)
+		return -ENOMEM;
+
+	debugfs_create_devm_seqfile(dev->mt76.dev, "queues", dir,
+				    mt7915_queues_read);
+	debugfs_create_devm_seqfile(dev->mt76.dev, "acq", dir,
+				    mt7915_queues_acq);
+	debugfs_create_file("tx_stats", 0400, dir, dev, &fops_tx_stats);
+	debugfs_create_file("dbdc", 0600, dir, dev, &fops_dbdc);
+	debugfs_create_u32("dfs_hw_pattern", 0400, dir, &dev->hw_pattern);
+	/* test knobs */
+	debugfs_create_file("radar_trigger", 0200, dir, dev,
+			    &fops_radar_trigger);
+	debugfs_create_file("ser_trigger", 0200, dir, dev, &fops_ser_trigger);
+	debugfs_create_devm_seqfile(dev->mt76.dev, "temperature", dir,
+				    mt7915_read_temperature);
+
+	return 0;
+}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/dma.c b/drivers/net/wireless/mediatek/mt76/mt7915/dma.c
new file mode 100644
index 000000000000..0156e6e5933a
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/dma.c
@@ -0,0 +1,283 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#include "mt7915.h"
+#include "../dma.h"
+#include "mac.h"
+
+static int
+mt7915_init_tx_queues(struct mt7915_dev *dev, int n_desc)
+{
+	struct mt76_sw_queue *q;
+	struct mt76_queue *hwq;
+	int err, i;
+
+	hwq = devm_kzalloc(dev->mt76.dev, sizeof(*hwq), GFP_KERNEL);
+	if (!hwq)
+		return -ENOMEM;
+
+	err = mt76_queue_alloc(dev, hwq, MT7915_TXQ_BAND0, n_desc, 0,
+			       MT_TX_RING_BASE);
+	if (err < 0)
+		return err;
+
+	for (i = 0; i < MT_TXQ_MCU; i++) {
+		q = &dev->mt76.q_tx[i];
+		INIT_LIST_HEAD(&q->swq);
+		q->q = hwq;
+	}
+
+	return 0;
+}
+
+static int
+mt7915_init_mcu_queue(struct mt7915_dev *dev, struct mt76_sw_queue *q,
+		      int idx, int n_desc)
+{
+	struct mt76_queue *hwq;
+	int err;
+
+	hwq = devm_kzalloc(dev->mt76.dev, sizeof(*hwq), GFP_KERNEL);
+	if (!hwq)
+		return -ENOMEM;
+
+	err = mt76_queue_alloc(dev, hwq, idx, n_desc, 0, MT_TX_RING_BASE);
+	if (err < 0)
+		return err;
+
+	INIT_LIST_HEAD(&q->swq);
+	q->q = hwq;
+
+	return 0;
+}
+
+void mt7915_queue_rx_skb(struct mt76_dev *mdev, enum mt76_rxq_id q,
+			 struct sk_buff *skb)
+{
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+	__le32 *rxd = (__le32 *)skb->data;
+	enum rx_pkt_type type;
+
+	type = FIELD_GET(MT_RXD0_PKT_TYPE, le32_to_cpu(rxd[0]));
+
+	switch (type) {
+	case PKT_TYPE_TXRX_NOTIFY:
+		mt7915_mac_tx_free(dev, skb);
+		break;
+	case PKT_TYPE_RX_EVENT:
+		mt7915_mcu_rx_event(dev, skb);
+		break;
+	case PKT_TYPE_NORMAL:
+		if (!mt7915_mac_fill_rx(dev, skb)) {
+			mt76_rx(&dev->mt76, q, skb);
+			return;
+		}
+		/* fall through */
+	default:
+		dev_kfree_skb(skb);
+		break;
+	}
+}
+
+static int mt7915_poll_tx(struct napi_struct *napi, int budget)
+{
+	static const u8 queue_map[] = {
+		MT_TXQ_MCU,
+		MT_TXQ_MCU_WA,
+		MT_TXQ_BE
+	};
+	struct mt7915_dev *dev;
+	int i;
+
+	dev = container_of(napi, struct mt7915_dev, mt76.tx_napi);
+
+	for (i = 0; i < ARRAY_SIZE(queue_map); i++)
+		mt76_queue_tx_cleanup(dev, queue_map[i], false);
+
+	if (napi_complete_done(napi, 0))
+		mt7915_irq_enable(dev, MT_INT_TX_DONE_ALL);
+
+	for (i = 0; i < ARRAY_SIZE(queue_map); i++)
+		mt76_queue_tx_cleanup(dev, queue_map[i], false);
+
+	mt7915_mac_sta_poll(dev);
+
+	tasklet_schedule(&dev->mt76.tx_tasklet);
+
+	return 0;
+}
+
+void mt7915_dma_prefetch(struct mt7915_dev *dev)
+{
+#define PREFETCH(base, depth)	((base) << 16 | (depth))
+
+	mt76_wr(dev, MT_WFDMA0_RX_RING0_EXT_CTRL, PREFETCH(0x0, 0x4));
+	mt76_wr(dev, MT_WFDMA0_RX_RING1_EXT_CTRL, PREFETCH(0x40, 0x4));
+	mt76_wr(dev, MT_WFDMA0_RX_RING2_EXT_CTRL, PREFETCH(0x80, 0x0));
+
+	mt76_wr(dev, MT_WFDMA1_TX_RING0_EXT_CTRL, PREFETCH(0x80, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING1_EXT_CTRL, PREFETCH(0xc0, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING2_EXT_CTRL, PREFETCH(0x100, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING3_EXT_CTRL, PREFETCH(0x140, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING4_EXT_CTRL, PREFETCH(0x180, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING5_EXT_CTRL, PREFETCH(0x1c0, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING6_EXT_CTRL, PREFETCH(0x200, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING7_EXT_CTRL, PREFETCH(0x240, 0x4));
+
+	mt76_wr(dev, MT_WFDMA1_TX_RING16_EXT_CTRL, PREFETCH(0x280, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING17_EXT_CTRL, PREFETCH(0x2c0, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING18_EXT_CTRL, PREFETCH(0x300, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING19_EXT_CTRL, PREFETCH(0x340, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING20_EXT_CTRL, PREFETCH(0x380, 0x4));
+	mt76_wr(dev, MT_WFDMA1_TX_RING21_EXT_CTRL, PREFETCH(0x3c0, 0x0));
+
+	mt76_wr(dev, MT_WFDMA1_RX_RING0_EXT_CTRL, PREFETCH(0x3c0, 0x4));
+	mt76_wr(dev, MT_WFDMA1_RX_RING1_EXT_CTRL, PREFETCH(0x400, 0x4));
+	mt76_wr(dev, MT_WFDMA1_RX_RING2_EXT_CTRL, PREFETCH(0x440, 0x4));
+	mt76_wr(dev, MT_WFDMA1_RX_RING3_EXT_CTRL, PREFETCH(0x480, 0x0));
+}
+
+int mt7915_dma_init(struct mt7915_dev *dev)
+{
+	int ret;
+
+	mt76_dma_attach(&dev->mt76);
+
+	/* configure global setting */
+	mt76_set(dev, MT_WFDMA1_GLO_CFG,
+		 MT_WFDMA1_GLO_CFG_OMIT_TX_INFO |
+		 MT_WFDMA1_GLO_CFG_OMIT_RX_INFO);
+
+	/* configure perfetch settings */
+	mt7915_dma_prefetch(dev);
+
+	/* reset dma idx */
+	mt76_wr(dev, MT_WFDMA0_RST_DTX_PTR, ~0);
+	mt76_wr(dev, MT_WFDMA1_RST_DTX_PTR, ~0);
+
+	/* configure delay interrupt */
+	mt76_wr(dev, MT_WFDMA0_PRI_DLY_INT_CFG0, 0);
+	mt76_wr(dev, MT_WFDMA1_PRI_DLY_INT_CFG0, 0);
+
+	/* init tx queue */
+	ret = mt7915_init_tx_queues(dev, MT7915_TX_RING_SIZE);
+	if (ret)
+		return ret;
+
+	/* command to WM */
+	ret = mt7915_init_mcu_queue(dev, &dev->mt76.q_tx[MT_TXQ_MCU],
+				    MT7915_TXQ_MCU_WM,
+				    MT7915_TX_MCU_RING_SIZE);
+	if (ret)
+		return ret;
+
+	/* command to WA */
+	ret = mt7915_init_mcu_queue(dev, &dev->mt76.q_tx[MT_TXQ_MCU_WA],
+				    MT7915_TXQ_MCU_WA,
+				    MT7915_TX_MCU_RING_SIZE);
+	if (ret)
+		return ret;
+
+	/* firmware download */
+	ret = mt7915_init_mcu_queue(dev, &dev->mt76.q_tx[MT_TXQ_FWDL],
+				    MT7915_TXQ_FWDL,
+				    MT7915_TX_FWDL_RING_SIZE);
+	if (ret)
+		return ret;
+
+	/* event from WM */
+	ret = mt76_queue_alloc(dev, &dev->mt76.q_rx[MT_RXQ_MCU],
+			       MT7915_RXQ_MCU_WM, MT7915_RX_MCU_RING_SIZE,
+			       MT_RX_BUF_SIZE, MT_RX_EVENT_RING_BASE);
+	if (ret)
+		return ret;
+
+	/* event from WA */
+	ret = mt76_queue_alloc(dev, &dev->mt76.q_rx[MT_RXQ_MCU_WA],
+			       MT7915_RXQ_MCU_WA, MT7915_RX_MCU_RING_SIZE,
+			       MT_RX_BUF_SIZE, MT_RX_EVENT_RING_BASE);
+	if (ret)
+		return ret;
+
+	/* rx data */
+	ret = mt76_queue_alloc(dev, &dev->mt76.q_rx[MT_RXQ_MAIN], 0,
+			       MT7915_RX_RING_SIZE, MT_RX_BUF_SIZE,
+			       MT_RX_DATA_RING_BASE);
+	if (ret)
+		return ret;
+
+	ret = mt76_init_queues(dev);
+	if (ret < 0)
+		return ret;
+
+	netif_tx_napi_add(&dev->mt76.napi_dev, &dev->mt76.tx_napi,
+			  mt7915_poll_tx, NAPI_POLL_WEIGHT);
+	napi_enable(&dev->mt76.tx_napi);
+
+	/* hif wait WFDMA idle */
+	mt76_set(dev, MT_WFDMA0_BUSY_ENA,
+		 MT_WFDMA0_BUSY_ENA_TX_FIFO0 |
+		 MT_WFDMA0_BUSY_ENA_TX_FIFO1 |
+		 MT_WFDMA0_BUSY_ENA_RX_FIFO);
+
+	mt76_set(dev, MT_WFDMA1_BUSY_ENA,
+		 MT_WFDMA1_BUSY_ENA_TX_FIFO0 |
+		 MT_WFDMA1_BUSY_ENA_TX_FIFO1 |
+		 MT_WFDMA1_BUSY_ENA_RX_FIFO);
+
+	mt76_set(dev, MT_WFDMA0_PCIE1_BUSY_ENA,
+		 MT_WFDMA0_PCIE1_BUSY_ENA_TX_FIFO0 |
+		 MT_WFDMA0_PCIE1_BUSY_ENA_TX_FIFO1 |
+		 MT_WFDMA0_PCIE1_BUSY_ENA_RX_FIFO);
+
+	mt76_set(dev, MT_WFDMA1_PCIE1_BUSY_ENA,
+		 MT_WFDMA1_PCIE1_BUSY_ENA_TX_FIFO0 |
+		 MT_WFDMA1_PCIE1_BUSY_ENA_TX_FIFO1 |
+		 MT_WFDMA1_PCIE1_BUSY_ENA_RX_FIFO);
+
+	mt76_poll(dev, MT_WFDMA_EXT_CSR_HIF_MISC,
+		  MT_WFDMA_EXT_CSR_HIF_MISC_BUSY, 0, 1000);
+
+	/* set WFDMA Tx/Rx */
+	mt76_set(dev, MT_WFDMA0_GLO_CFG,
+		 MT_WFDMA0_GLO_CFG_TX_DMA_EN | MT_WFDMA0_GLO_CFG_RX_DMA_EN);
+	mt76_set(dev, MT_WFDMA1_GLO_CFG,
+		 MT_WFDMA1_GLO_CFG_TX_DMA_EN | MT_WFDMA1_GLO_CFG_RX_DMA_EN);
+
+	/* enable interrupts for TX/RX rings */
+	mt7915_irq_enable(dev, MT_INT_RX_DONE_ALL | MT_INT_TX_DONE_ALL |
+			  MT_INT_MCU_CMD);
+
+	return 0;
+}
+
+void mt7915_dma_cleanup(struct mt7915_dev *dev)
+{
+	/* disable */
+	mt76_clear(dev, MT_WFDMA0_GLO_CFG,
+		   MT_WFDMA0_GLO_CFG_TX_DMA_EN |
+		   MT_WFDMA0_GLO_CFG_RX_DMA_EN);
+	mt76_clear(dev, MT_WFDMA1_GLO_CFG,
+		   MT_WFDMA1_GLO_CFG_TX_DMA_EN |
+		   MT_WFDMA1_GLO_CFG_RX_DMA_EN);
+
+	/* reset */
+	mt76_clear(dev, MT_WFDMA1_RST,
+		   MT_WFDMA1_RST_DMASHDL_ALL_RST |
+		   MT_WFDMA1_RST_LOGIC_RST);
+
+	mt76_set(dev, MT_WFDMA1_RST,
+		 MT_WFDMA1_RST_DMASHDL_ALL_RST |
+		 MT_WFDMA1_RST_LOGIC_RST);
+
+	mt76_clear(dev, MT_WFDMA0_RST,
+		   MT_WFDMA0_RST_DMASHDL_ALL_RST |
+		   MT_WFDMA0_RST_LOGIC_RST);
+
+	mt76_set(dev, MT_WFDMA0_RST,
+		 MT_WFDMA0_RST_DMASHDL_ALL_RST |
+		 MT_WFDMA0_RST_LOGIC_RST);
+
+	tasklet_kill(&dev->mt76.tx_tasklet);
+	mt76_dma_cleanup(&dev->mt76);
+}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c
new file mode 100644
index 000000000000..2099dd40530f
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.c
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#include "mt7915.h"
+#include "eeprom.h"
+
+static inline bool mt7915_efuse_valid(u8 val)
+{
+	return !(val == 0xff);
+}
+
+u32 mt7915_eeprom_read(struct mt7915_dev *dev, u32 offset)
+{
+	u8 *data = dev->mt76.eeprom.data;
+
+	if (!mt7915_efuse_valid(data[offset]))
+		mt7915_mcu_get_eeprom(dev, offset);
+
+	return data[offset];
+}
+
+static int mt7915_eeprom_load(struct mt7915_dev *dev)
+{
+	int ret;
+
+	ret = mt76_eeprom_init(&dev->mt76, MT7915_EEPROM_SIZE);
+	if (ret < 0)
+		return ret;
+
+	memset(dev->mt76.eeprom.data, -1, MT7915_EEPROM_SIZE);
+
+	return 0;
+}
+
+static int mt7915_check_eeprom(struct mt7915_dev *dev)
+{
+	u16 val;
+	u8 *eeprom = dev->mt76.eeprom.data;
+
+	mt7915_eeprom_read(dev, 0);
+	val = get_unaligned_le16(eeprom);
+
+	switch (val) {
+	case 0x7915:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static void mt7915_eeprom_parse_hw_cap(struct mt7915_dev *dev)
+{
+	u8 *eeprom = dev->mt76.eeprom.data;
+	u8 tx_mask, max_nss = 4;
+	u32 val = mt7915_eeprom_read(dev, MT_EE_WIFI_CONF);
+
+	val = FIELD_GET(MT_EE_WIFI_CONF_BAND_SEL, val);
+	switch (val) {
+	case MT_EE_5GHZ:
+		dev->mt76.cap.has_5ghz = true;
+		break;
+	case MT_EE_2GHZ:
+		dev->mt76.cap.has_2ghz = true;
+		break;
+	default:
+		dev->mt76.cap.has_2ghz = true;
+		dev->mt76.cap.has_5ghz = true;
+		break;
+	}
+
+	/* read tx mask from eeprom */
+	tx_mask =  FIELD_GET(MT_EE_WIFI_CONF_TX_MASK,
+			     eeprom[MT_EE_WIFI_CONF]);
+	if (!tx_mask || tx_mask > max_nss)
+		tx_mask = max_nss;
+
+	dev->chainmask = BIT(tx_mask) - 1;
+	dev->mphy.antenna_mask = dev->chainmask;
+	dev->phy.chainmask = dev->chainmask;
+}
+
+int mt7915_eeprom_init(struct mt7915_dev *dev)
+{
+	int ret;
+
+	ret = mt7915_eeprom_load(dev);
+	if (ret < 0)
+		return ret;
+
+	ret = mt7915_check_eeprom(dev);
+	if (ret)
+		return ret;
+
+	mt7915_eeprom_parse_hw_cap(dev);
+	memcpy(dev->mt76.macaddr, dev->mt76.eeprom.data + MT_EE_MAC_ADDR,
+	       ETH_ALEN);
+
+	mt76_eeprom_override(&dev->mt76);
+
+	return 0;
+}
+
+int mt7915_eeprom_get_target_power(struct mt7915_dev *dev,
+				   struct ieee80211_channel *chan,
+				   u8 chain_idx)
+{
+	int index;
+	bool tssi_on;
+
+	if (chain_idx > 3)
+		return -EINVAL;
+
+	tssi_on = mt7915_tssi_enabled(dev, chan->band);
+
+	if (chan->band == NL80211_BAND_2GHZ) {
+		index = MT_EE_TX0_POWER_2G + chain_idx * 3 + !tssi_on;
+	} else {
+		int group = tssi_on ?
+			    mt7915_get_channel_group(chan->hw_value) : 8;
+
+		index = MT_EE_TX0_POWER_5G + chain_idx * 12 + group;
+	}
+
+	return mt7915_eeprom_read(dev, index);
+}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h b/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h
new file mode 100644
index 000000000000..30fc607e466d
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: ISC */
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#ifndef __MT7915_EEPROM_H
+#define __MT7915_EEPROM_H
+
+#include "mt7915.h"
+
+struct cal_data {
+	u8 count;
+	u16 offset[60];
+};
+
+enum mt7915_eeprom_field {
+	MT_EE_CHIP_ID =		0x000,
+	MT_EE_VERSION =		0x002,
+	MT_EE_MAC_ADDR =	0x004,
+	MT_EE_DDIE_FT_VERSION =	0x050,
+	MT_EE_WIFI_CONF =	0x190,
+	MT_EE_TX0_POWER_2G =	0x2fc,
+	MT_EE_TX0_POWER_5G =	0x34b,
+	MT_EE_ADIE_FT_VERSION =	0x9a0,
+
+	__MT_EE_MAX =		0xe00
+};
+
+#define MT_EE_WIFI_CONF_TX_MASK			GENMASK(2, 0)
+#define MT_EE_WIFI_CONF_BAND_SEL		GENMASK(7, 6)
+#define MT_EE_WIFI_CONF_TSSI0_2G		BIT(0)
+#define MT_EE_WIFI_CONF_TSSI0_5G		BIT(2)
+#define MT_EE_WIFI_CONF_TSSI1_5G		BIT(4)
+
+enum mt7915_eeprom_band {
+	MT_EE_DUAL_BAND,
+	MT_EE_5GHZ,
+	MT_EE_2GHZ,
+	MT_EE_DBDC,
+};
+
+struct sku_group {
+	u8 len;
+	u16 offset[2];
+	const u8 *delta_map;
+};
+
+static inline int
+mt7915_get_channel_group(int channel)
+{
+	if (channel >= 184 && channel <= 196)
+		return 0;
+	if (channel <= 48)
+		return 1;
+	if (channel <= 64)
+		return 2;
+	if (channel <= 96)
+		return 3;
+	if (channel <= 112)
+		return 4;
+	if (channel <= 128)
+		return 5;
+	if (channel <= 144)
+		return 6;
+	return 7;
+}
+
+static inline bool
+mt7915_tssi_enabled(struct mt7915_dev *dev, enum nl80211_band band)
+{
+	u8 *eep = dev->mt76.eeprom.data;
+
+	/* TODO: DBDC */
+	if (band == NL80211_BAND_5GHZ)
+		return eep[MT_EE_WIFI_CONF + 7] & MT_EE_WIFI_CONF_TSSI0_5G;
+	else
+		return eep[MT_EE_WIFI_CONF + 7] & MT_EE_WIFI_CONF_TSSI0_2G;
+}
+
+#endif
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/init.c b/drivers/net/wireless/mediatek/mt76/mt7915/init.c
new file mode 100644
index 000000000000..0e3e6b1547b3
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/init.c
@@ -0,0 +1,392 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#include <linux/etherdevice.h>
+#include "mt7915.h"
+#include "mac.h"
+#include "eeprom.h"
+
+static void
+mt7915_mac_init_band(struct mt7915_dev *dev, u8 band)
+{
+	u32 mask, set;
+
+	mt76_rmw_field(dev, MT_TMAC_CTCR0(band),
+		       MT_TMAC_CTCR0_INS_DDLMT_REFTIME, 0x3f);
+	mt76_set(dev, MT_TMAC_CTCR0(band),
+		 MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN |
+		 MT_TMAC_CTCR0_INS_DDLMT_EN);
+
+	mask = MT_MDP_RCFR0_MCU_RX_MGMT |
+	       MT_MDP_RCFR0_MCU_RX_CTL_NON_BAR |
+	       MT_MDP_RCFR0_MCU_RX_CTL_BAR;
+	set = FIELD_PREP(MT_MDP_RCFR0_MCU_RX_MGMT, MT_MDP_TO_HIF) |
+	      FIELD_PREP(MT_MDP_RCFR0_MCU_RX_CTL_NON_BAR, MT_MDP_TO_HIF) |
+	      FIELD_PREP(MT_MDP_RCFR0_MCU_RX_CTL_BAR, MT_MDP_TO_HIF);
+	mt76_rmw(dev, MT_MDP_BNRCFR0(band), mask, set);
+
+	mask = MT_MDP_RCFR1_MCU_RX_BYPASS |
+	       MT_MDP_RCFR1_RX_DROPPED_UCAST |
+	       MT_MDP_RCFR1_RX_DROPPED_MCAST;
+	set = FIELD_PREP(MT_MDP_RCFR1_MCU_RX_BYPASS, MT_MDP_TO_HIF) |
+	      FIELD_PREP(MT_MDP_RCFR1_RX_DROPPED_UCAST, MT_MDP_TO_HIF) |
+	      FIELD_PREP(MT_MDP_RCFR1_RX_DROPPED_MCAST, MT_MDP_TO_HIF);
+	mt76_rmw(dev, MT_MDP_BNRCFR1(band), mask, set);
+
+	mt76_set(dev, MT_WF_RMAC_MIB_TIME0(band), MT_WF_RMAC_MIB_RXTIME_EN);
+	mt76_set(dev, MT_WF_RMAC_MIB_AIRTIME0(band), MT_WF_RMAC_MIB_RXTIME_EN);
+}
+
+static void mt7915_mac_init(struct mt7915_dev *dev)
+{
+	int i;
+
+	mt76_rmw_field(dev, MT_DMA_DCR0, MT_DMA_DCR0_MAX_RX_LEN, 1536);
+	mt76_rmw_field(dev, MT_MDP_DCR1, MT_MDP_DCR1_MAX_RX_LEN, 1536);
+	/* enable rx rate report */
+	mt76_set(dev, MT_DMA_DCR0, MT_DMA_DCR0_RXD_G5_EN);
+	/* disable hardware de-agg */
+	mt76_clear(dev, MT_MDP_DCR0, MT_MDP_DCR0_DAMSDU_EN);
+
+	for (i = 0; i < MT7915_WTBL_SIZE; i++)
+		mt7915_mac_wtbl_update(dev, i,
+				       MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
+
+	mt7915_mac_init_band(dev, 0);
+	mt7915_mac_init_band(dev, 1);
+	mt7915_mcu_set_rts_thresh(&dev->phy, 0x92b);
+}
+
+static void
+mt7915_init_txpower_band(struct mt7915_dev *dev,
+			 struct ieee80211_supported_band *sband)
+{
+	int i, n_chains = hweight8(dev->mphy.antenna_mask);
+
+	for (i = 0; i < sband->n_channels; i++) {
+		struct ieee80211_channel *chan = &sband->channels[i];
+		u32 target_power = 0;
+		int j;
+
+		for (j = 0; j < n_chains; j++) {
+			u32 val;
+
+			val = mt7915_eeprom_get_target_power(dev, chan, j);
+			target_power = max(target_power, val);
+		}
+
+		chan->max_power = min_t(int, chan->max_reg_power,
+					target_power / 2);
+		chan->orig_mpwr = target_power / 2;
+	}
+}
+
+static void mt7915_init_txpower(struct mt7915_dev *dev)
+{
+	mt7915_init_txpower_band(dev, &dev->mphy.sband_2g.sband);
+	mt7915_init_txpower_band(dev, &dev->mphy.sband_5g.sband);
+}
+
+static void mt7915_init_work(struct work_struct *work)
+{
+	struct mt7915_dev *dev = container_of(work, struct mt7915_dev,
+				 init_work);
+
+	mt7915_mcu_set_eeprom(dev);
+	mt7915_mac_init(dev);
+	mt7915_init_txpower(dev);
+}
+
+static int mt7915_init_hardware(struct mt7915_dev *dev)
+{
+	int ret, idx;
+
+	mt76_wr(dev, MT_INT_SOURCE_CSR, ~0);
+
+	INIT_WORK(&dev->init_work, mt7915_init_work);
+	spin_lock_init(&dev->token_lock);
+	idr_init(&dev->token);
+
+	ret = mt7915_dma_init(dev);
+	if (ret)
+		return ret;
+
+	set_bit(MT76_STATE_INITIALIZED, &dev->mphy.state);
+
+	ret = mt7915_mcu_init(dev);
+	if (ret)
+		return ret;
+
+	ret = mt7915_eeprom_init(dev);
+	if (ret < 0)
+		return ret;
+
+	/* Beacon and mgmt frames should occupy wcid 0 */
+	idx = mt76_wcid_alloc(dev->mt76.wcid_mask, MT7915_WTBL_STA - 1);
+	if (idx)
+		return -ENOSPC;
+
+	dev->mt76.global_wcid.idx = idx;
+	dev->mt76.global_wcid.hw_key_idx = -1;
+	dev->mt76.global_wcid.tx_info |= MT_WCID_TX_INFO_SET;
+	rcu_assign_pointer(dev->mt76.wcid[idx], &dev->mt76.global_wcid);
+
+	return 0;
+}
+
+#define CCK_RATE(_idx, _rate) {						\
+	.bitrate = _rate,						\
+	.flags = IEEE80211_RATE_SHORT_PREAMBLE,				\
+	.hw_value = (MT_PHY_TYPE_CCK << 8) | (_idx),			\
+	.hw_value_short = (MT_PHY_TYPE_CCK << 8) | (4 + (_idx)),	\
+}
+
+#define OFDM_RATE(_idx, _rate) {					\
+	.bitrate = _rate,						\
+	.hw_value = (MT_PHY_TYPE_OFDM << 8) | (_idx),			\
+	.hw_value_short = (MT_PHY_TYPE_OFDM << 8) | (_idx),		\
+}
+
+static struct ieee80211_rate mt7915_rates[] = {
+	CCK_RATE(0, 10),
+	CCK_RATE(1, 20),
+	CCK_RATE(2, 55),
+	CCK_RATE(3, 110),
+	OFDM_RATE(11, 60),
+	OFDM_RATE(15, 90),
+	OFDM_RATE(10, 120),
+	OFDM_RATE(14, 180),
+	OFDM_RATE(9,  240),
+	OFDM_RATE(13, 360),
+	OFDM_RATE(8,  480),
+	OFDM_RATE(12, 540),
+};
+
+static const struct ieee80211_iface_limit if_limits[] = {
+	{
+		.max = 1,
+		.types = BIT(NL80211_IFTYPE_ADHOC)
+	}, {
+		.max = MT7915_MAX_INTERFACES,
+		.types = BIT(NL80211_IFTYPE_AP) |
+#ifdef CONFIG_MAC80211_MESH
+			 BIT(NL80211_IFTYPE_MESH_POINT) |
+#endif
+			 BIT(NL80211_IFTYPE_STATION)
+	}
+};
+
+static const struct ieee80211_iface_combination if_comb[] = {
+	{
+		.limits = if_limits,
+		.n_limits = ARRAY_SIZE(if_limits),
+		.max_interfaces = 4,
+		.num_different_channels = 1,
+		.beacon_int_infra_match = true,
+		.radar_detect_widths = BIT(NL80211_CHAN_WIDTH_20_NOHT) |
+				       BIT(NL80211_CHAN_WIDTH_20) |
+				       BIT(NL80211_CHAN_WIDTH_40) |
+				       BIT(NL80211_CHAN_WIDTH_80) |
+				       BIT(NL80211_CHAN_WIDTH_160) |
+				       BIT(NL80211_CHAN_WIDTH_80P80),
+	}
+};
+
+static void
+mt7915_regd_notifier(struct wiphy *wiphy,
+		     struct regulatory_request *request)
+{
+	struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt76_phy *mphy = hw->priv;
+	struct mt7915_phy *phy = mphy->priv;
+	struct cfg80211_chan_def *chandef = &mphy->chandef;
+
+	dev->mt76.region = request->dfs_region;
+
+	if (!(chandef->chan->flags & IEEE80211_CHAN_RADAR))
+		return;
+
+	mt7915_dfs_init_radar_detector(phy);
+}
+
+static void
+mt7915_init_wiphy(struct ieee80211_hw *hw)
+{
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	struct wiphy *wiphy = hw->wiphy;
+
+	hw->queues = 4;
+	hw->max_rx_aggregation_subframes = IEEE80211_MAX_AMPDU_BUF;
+	hw->max_tx_aggregation_subframes = IEEE80211_MAX_AMPDU_BUF;
+
+	phy->slottime = 9;
+
+	hw->sta_data_size = sizeof(struct mt7915_sta);
+	hw->vif_data_size = sizeof(struct mt7915_vif);
+
+	wiphy->iface_combinations = if_comb;
+	wiphy->n_iface_combinations = ARRAY_SIZE(if_comb);
+	wiphy->reg_notifier = mt7915_regd_notifier;
+	wiphy->flags |= WIPHY_FLAG_HAS_CHANNEL_SWITCH;
+
+	wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_VHT_IBSS);
+
+	ieee80211_hw_set(hw, HAS_RATE_CONTROL);
+
+	hw->max_tx_fragments = 4;
+}
+
+static void
+mt7915_cap_dbdc_enable(struct mt7915_dev *dev)
+{
+	dev->mphy.sband_5g.sband.vht_cap.cap &=
+			~(IEEE80211_VHT_CAP_SHORT_GI_160 |
+			  IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ);
+
+	if (dev->chainmask == 0xf)
+		dev->mphy.antenna_mask = dev->chainmask >> 2;
+	else
+		dev->mphy.antenna_mask = dev->chainmask >> 1;
+
+	dev->phy.chainmask = dev->mphy.antenna_mask;
+	dev->mphy.hw->wiphy->available_antennas_rx = dev->phy.chainmask;
+	dev->mphy.hw->wiphy->available_antennas_tx = dev->phy.chainmask;
+
+	mt76_set_stream_caps(&dev->mt76, true);
+}
+
+static void
+mt7915_cap_dbdc_disable(struct mt7915_dev *dev)
+{
+	dev->mphy.sband_5g.sband.vht_cap.cap |=
+			IEEE80211_VHT_CAP_SHORT_GI_160 |
+			IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ;
+
+	dev->mphy.antenna_mask = dev->chainmask;
+	dev->phy.chainmask = dev->chainmask;
+	dev->mphy.hw->wiphy->available_antennas_rx = dev->chainmask;
+	dev->mphy.hw->wiphy->available_antennas_tx = dev->chainmask;
+
+	mt76_set_stream_caps(&dev->mt76, true);
+}
+
+int mt7915_register_ext_phy(struct mt7915_dev *dev)
+{
+	struct mt7915_phy *phy = mt7915_ext_phy(dev);
+	struct mt76_phy *mphy;
+	int ret;
+	bool bound;
+
+	bound = mt7915_l1_rr(dev, MT_HW_BOUND) & BIT(5);
+	if (!bound)
+		return -EINVAL;
+
+	if (test_bit(MT76_STATE_RUNNING, &dev->mphy.state))
+		return -EINVAL;
+
+	if (phy)
+		return 0;
+
+	mt7915_cap_dbdc_enable(dev);
+	mphy = mt76_alloc_phy(&dev->mt76, sizeof(*phy), &mt7915_ops);
+	if (!mphy)
+		return -ENOMEM;
+
+	phy = mphy->priv;
+	phy->dev = dev;
+	phy->mt76 = mphy;
+	phy->chainmask = dev->chainmask & ~dev->phy.chainmask;
+	mphy->antenna_mask = BIT(hweight8(phy->chainmask)) - 1;
+	mt7915_init_wiphy(mphy->hw);
+
+	/*
+	 * Make the secondary PHY MAC address local without overlapping with
+	 * the usual MAC address allocation scheme on multiple virtual interfaces
+	 */
+	mphy->hw->wiphy->perm_addr[0] |= 2;
+	mphy->hw->wiphy->perm_addr[0] ^= BIT(7);
+
+	/* The second interface does not get any packets unless it has a vif */
+	ieee80211_hw_set(mphy->hw, WANT_MONITOR_VIF);
+
+	ret = mt76_register_phy(mphy);
+	if (ret)
+		ieee80211_free_hw(mphy->hw);
+
+	return ret;
+}
+
+void mt7915_unregister_ext_phy(struct mt7915_dev *dev)
+{
+	struct mt7915_phy *phy = mt7915_ext_phy(dev);
+	struct mt76_phy *mphy = dev->mt76.phy2;
+
+	if (!phy)
+		return;
+
+	mt7915_cap_dbdc_disable(dev);
+	mt76_unregister_phy(mphy);
+	ieee80211_free_hw(mphy->hw);
+}
+
+int mt7915_register_device(struct mt7915_dev *dev)
+{
+	struct ieee80211_hw *hw = mt76_hw(dev);
+	int ret;
+
+	dev->phy.dev = dev;
+	dev->phy.mt76 = &dev->mt76.phy;
+	dev->mt76.phy.priv = &dev->phy;
+	INIT_DELAYED_WORK(&dev->mt76.mac_work, mt7915_mac_work);
+	INIT_LIST_HEAD(&dev->sta_poll_list);
+	spin_lock_init(&dev->sta_poll_lock);
+
+	init_waitqueue_head(&dev->reset_wait);
+	INIT_WORK(&dev->reset_work, mt7915_mac_reset_work);
+
+	ret = mt7915_init_hardware(dev);
+	if (ret)
+		return ret;
+
+	mt7915_init_wiphy(hw);
+	dev->mphy.sband_2g.sband.ht_cap.cap |= IEEE80211_HT_CAP_LDPC_CODING;
+	dev->mphy.sband_5g.sband.ht_cap.cap |= IEEE80211_HT_CAP_LDPC_CODING;
+	dev->mphy.sband_5g.sband.vht_cap.cap |=
+			IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_7991 |
+			IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK;
+	mt7915_cap_dbdc_disable(dev);
+	dev->phy.dfs_state = -1;
+
+	ret = mt76_register_device(&dev->mt76, true, mt7915_rates,
+				   ARRAY_SIZE(mt7915_rates));
+	if (ret)
+		return ret;
+
+	ieee80211_queue_work(mt76_hw(dev), &dev->init_work);
+
+	return mt7915_init_debugfs(dev);
+}
+
+void mt7915_unregister_device(struct mt7915_dev *dev)
+{
+	struct mt76_txwi_cache *txwi;
+	int id;
+
+	mt7915_unregister_ext_phy(dev);
+	mt76_unregister_device(&dev->mt76);
+	mt7915_mcu_exit(dev);
+	mt7915_dma_cleanup(dev);
+
+	spin_lock_bh(&dev->token_lock);
+	idr_for_each_entry(&dev->token, txwi, id) {
+		mt7915_txp_skb_unmap(&dev->mt76, txwi);
+		if (txwi->skb)
+			dev_kfree_skb_any(txwi->skb);
+		mt76_put_txwi(&dev->mt76, txwi);
+	}
+	spin_unlock_bh(&dev->token_lock);
+	idr_destroy(&dev->token);
+
+	mt76_free_device(&dev->mt76);
+}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mac.c b/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
new file mode 100644
index 000000000000..349215dd417c
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
@@ -0,0 +1,1310 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#include <linux/etherdevice.h>
+#include <linux/timekeeping.h>
+#include "mt7915.h"
+#include "../dma.h"
+#include "mac.h"
+
+#define to_rssi(field, rxv)	((FIELD_GET(field, rxv) - 220) / 2)
+
+static const struct mt7915_dfs_radar_spec etsi_radar_specs = {
+	.pulse_th = { 110, -10, -80, 40, 5200, 128, 5200 },
+	.radar_pattern = {
+		[5] =  { 1, 0,  6, 32, 28, 0,  990, 5010, 17, 1, 1 },
+		[6] =  { 1, 0,  9, 32, 28, 0,  615, 5010, 27, 1, 1 },
+		[7] =  { 1, 0, 15, 32, 28, 0,  240,  445, 27, 1, 1 },
+		[8] =  { 1, 0, 12, 32, 28, 0,  240,  510, 42, 1, 1 },
+		[9] =  { 1, 1,  0,  0,  0, 0, 2490, 3343, 14, 0, 0, 12, 32, 28, { }, 126 },
+		[10] = { 1, 1,  0,  0,  0, 0, 2490, 3343, 14, 0, 0, 15, 32, 24, { }, 126 },
+		[11] = { 1, 1,  0,  0,  0, 0,  823, 2510, 14, 0, 0, 18, 32, 28, { },  54 },
+		[12] = { 1, 1,  0,  0,  0, 0,  823, 2510, 14, 0, 0, 27, 32, 24, { },  54 },
+	},
+};
+
+static const struct mt7915_dfs_radar_spec fcc_radar_specs = {
+	.pulse_th = { 110, -10, -80, 40, 5200, 128, 5200 },
+	.radar_pattern = {
+		[0] = { 1, 0,  8,  32, 28, 0, 508, 3076, 13, 1,  1 },
+		[1] = { 1, 0, 12,  32, 28, 0, 140,  240, 17, 1,  1 },
+		[2] = { 1, 0,  8,  32, 28, 0, 190,  510, 22, 1,  1 },
+		[3] = { 1, 0,  6,  32, 28, 0, 190,  510, 32, 1,  1 },
+		[4] = { 1, 0,  9, 255, 28, 0, 323,  343, 13, 1, 32 },
+	},
+};
+
+static const struct mt7915_dfs_radar_spec jp_radar_specs = {
+	.pulse_th = { 110, -10, -80, 40, 5200, 128, 5200 },
+	.radar_pattern = {
+		[0] =  { 1, 0,  8,  32, 28, 0,  508, 3076,  13, 1,  1 },
+		[1] =  { 1, 0, 12,  32, 28, 0,  140,  240,  17, 1,  1 },
+		[2] =  { 1, 0,  8,  32, 28, 0,  190,  510,  22, 1,  1 },
+		[3] =  { 1, 0,  6,  32, 28, 0,  190,  510,  32, 1,  1 },
+		[4] =  { 1, 0,  9, 255, 28, 0,  323,  343,  13, 1, 32 },
+		[13] = { 1, 0,  7,  32, 28, 0, 3836, 3856,  14, 1,  1 },
+		[14] = { 1, 0,  6,  32, 28, 0,  615, 5010, 110, 1,  1 },
+		[15] = { 1, 1,  0,   0,  0, 0,   15, 5010, 110, 0,  0, 12, 32, 28 },
+	},
+};
+
+static struct mt76_wcid *mt7915_rx_get_wcid(struct mt7915_dev *dev,
+					    u16 idx, bool unicast)
+{
+	struct mt7915_sta *sta;
+	struct mt76_wcid *wcid;
+
+	if (idx >= ARRAY_SIZE(dev->mt76.wcid))
+		return NULL;
+
+	wcid = rcu_dereference(dev->mt76.wcid[idx]);
+	if (unicast || !wcid)
+		return wcid;
+
+	if (!wcid->sta)
+		return NULL;
+
+	sta = container_of(wcid, struct mt7915_sta, wcid);
+	if (!sta->vif)
+		return NULL;
+
+	return &sta->vif->sta.wcid;
+}
+
+void mt7915_sta_ps(struct mt76_dev *mdev, struct ieee80211_sta *sta, bool ps)
+{
+}
+
+bool mt7915_mac_wtbl_update(struct mt7915_dev *dev, int idx, u32 mask)
+{
+	mt76_rmw(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_WLAN_IDX,
+		 FIELD_PREP(MT_WTBL_UPDATE_WLAN_IDX, idx) | mask);
+
+	return mt76_poll(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY,
+			 0, 5000);
+}
+
+static u32 mt7915_mac_wtbl_lmac_read(struct mt7915_dev *dev, u16 wcid,
+				     u16 addr)
+{
+	mt76_wr(dev, MT_WTBLON_TOP_WDUCR,
+		FIELD_PREP(MT_WTBLON_TOP_WDUCR_GROUP, (wcid >> 7)));
+
+	return mt76_rr(dev, MT_WTBL_LMAC_OFFS(wcid, addr));
+}
+
+void mt7915_mac_sta_poll(struct mt7915_dev *dev)
+{
+	static const u8 ac_to_tid[] = {
+		[IEEE80211_AC_BE] = 0,
+		[IEEE80211_AC_BK] = 1,
+		[IEEE80211_AC_VI] = 4,
+		[IEEE80211_AC_VO] = 6
+	};
+	static const u8 hw_queue_map[] = {
+		[IEEE80211_AC_BK] = 0,
+		[IEEE80211_AC_BE] = 1,
+		[IEEE80211_AC_VI] = 2,
+		[IEEE80211_AC_VO] = 3,
+	};
+	struct ieee80211_sta *sta;
+	struct mt7915_sta *msta;
+	u32 tx_time[IEEE80211_NUM_ACS], rx_time[IEEE80211_NUM_ACS];
+	int i;
+
+	rcu_read_lock();
+
+	while (true) {
+		bool clear = false;
+		u16 idx;
+
+		spin_lock_bh(&dev->sta_poll_lock);
+		if (list_empty(&dev->sta_poll_list)) {
+			spin_unlock_bh(&dev->sta_poll_lock);
+			break;
+		}
+		msta = list_first_entry(&dev->sta_poll_list,
+					struct mt7915_sta, poll_list);
+		list_del_init(&msta->poll_list);
+		spin_unlock_bh(&dev->sta_poll_lock);
+
+		for (i = 0, idx = msta->wcid.idx; i < IEEE80211_NUM_ACS; i++) {
+			u32 tx_last = msta->airtime_ac[i];
+			u32 rx_last = msta->airtime_ac[i + IEEE80211_NUM_ACS];
+
+			msta->airtime_ac[i] =
+				mt7915_mac_wtbl_lmac_read(dev, idx, 20 + i);
+			msta->airtime_ac[i + IEEE80211_NUM_ACS] =
+				mt7915_mac_wtbl_lmac_read(dev, idx, 21 + i);
+			tx_time[i] = msta->airtime_ac[i] - tx_last;
+			rx_time[i] = msta->airtime_ac[i + IEEE80211_NUM_ACS] -
+				     rx_last;
+
+			if ((tx_last | rx_last) & BIT(30))
+				clear = true;
+		}
+
+		if (clear) {
+			mt7915_mac_wtbl_update(dev, idx,
+					       MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
+			memset(msta->airtime_ac, 0, sizeof(msta->airtime_ac));
+		}
+
+		if (!msta->wcid.sta)
+			continue;
+
+		sta = container_of((void *)msta, struct ieee80211_sta,
+				   drv_priv);
+		for (i = 0; i < IEEE80211_NUM_ACS; i++) {
+			u32 tx_cur = tx_time[i];
+			u32 rx_cur = rx_time[hw_queue_map[i]];
+			u8 tid = ac_to_tid[i];
+
+			if (!tx_cur && !rx_cur)
+				continue;
+
+			ieee80211_sta_register_airtime(sta, tid, tx_cur,
+						       rx_cur);
+		}
+	}
+
+	rcu_read_unlock();
+}
+
+int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
+	struct mt76_phy *mphy = &dev->mt76.phy;
+	struct mt7915_phy *phy = &dev->phy;
+	struct ieee80211_supported_band *sband;
+	struct ieee80211_hdr *hdr;
+	struct mt7915_rxv rxv = {};
+	__le32 *rxd = (__le32 *)skb->data;
+	u32 rxd1 = le32_to_cpu(rxd[1]);
+	u32 rxd2 = le32_to_cpu(rxd[2]);
+	u32 rxd3 = le32_to_cpu(rxd[3]);
+	bool unicast, insert_ccmp_hdr = false;
+	u8 remove_pad;
+	int i, idx;
+
+	memset(status, 0, sizeof(*status));
+
+	if (rxd1 & MT_RXD1_NORMAL_BAND_IDX) {
+		mphy = dev->mt76.phy2;
+		if (!mphy)
+			return -EINVAL;
+
+		phy = mphy->priv;
+		status->ext_phy = true;
+	}
+
+	if (!test_bit(MT76_STATE_RUNNING, &mphy->state))
+		return -EINVAL;
+
+	unicast = FIELD_GET(MT_RXD3_NORMAL_ADDR_TYPE, rxd3) == MT_RXD3_NORMAL_U2M;
+	idx = FIELD_GET(MT_RXD1_NORMAL_WLAN_IDX, rxd1);
+	status->wcid = mt7915_rx_get_wcid(dev, idx, unicast);
+
+	if (status->wcid) {
+		struct mt7915_sta *msta;
+
+		msta = container_of(status->wcid, struct mt7915_sta, wcid);
+		spin_lock_bh(&dev->sta_poll_lock);
+		if (list_empty(&msta->poll_list))
+			list_add_tail(&msta->poll_list, &dev->sta_poll_list);
+		spin_unlock_bh(&dev->sta_poll_lock);
+	}
+
+	status->freq = mphy->chandef.chan->center_freq;
+	status->band = mphy->chandef.chan->band;
+	if (status->band == NL80211_BAND_5GHZ)
+		sband = &mphy->sband_5g.sband;
+	else
+		sband = &mphy->sband_2g.sband;
+
+	if (!sband->channels)
+		return -EINVAL;
+
+	if (rxd1 & MT_RXD1_NORMAL_FCS_ERR)
+		status->flag |= RX_FLAG_FAILED_FCS_CRC;
+
+	if (rxd1 & MT_RXD1_NORMAL_TKIP_MIC_ERR)
+		status->flag |= RX_FLAG_MMIC_ERROR;
+
+	if (FIELD_GET(MT_RXD1_NORMAL_SEC_MODE, rxd1) != 0 &&
+	    !(rxd1 & (MT_RXD1_NORMAL_CLM | MT_RXD1_NORMAL_CM))) {
+		status->flag |= RX_FLAG_DECRYPTED;
+		status->flag |= RX_FLAG_IV_STRIPPED;
+		status->flag |= RX_FLAG_MMIC_STRIPPED | RX_FLAG_MIC_STRIPPED;
+	}
+
+	if (!(rxd2 & MT_RXD2_NORMAL_NON_AMPDU)) {
+		status->flag |= RX_FLAG_AMPDU_DETAILS;
+
+		/* all subframes of an A-MPDU have the same timestamp */
+		if (phy->rx_ampdu_ts != rxd[14]) {
+			if (!++phy->ampdu_ref)
+				phy->ampdu_ref++;
+		}
+		phy->rx_ampdu_ts = rxd[14];
+
+		status->ampdu_ref = phy->ampdu_ref;
+	}
+
+	remove_pad = FIELD_GET(MT_RXD2_NORMAL_HDR_OFFSET, rxd2);
+
+	if (rxd2 & MT_RXD2_NORMAL_MAX_LEN_ERROR)
+		return -EINVAL;
+
+	rxd += 6;
+	if (rxd1 & MT_RXD1_NORMAL_GROUP_4) {
+		rxd += 4;
+		if ((u8 *)rxd - skb->data >= skb->len)
+			return -EINVAL;
+	}
+
+	if (rxd1 & MT_RXD1_NORMAL_GROUP_1) {
+		u8 *data = (u8 *)rxd;
+
+		if (status->flag & RX_FLAG_DECRYPTED) {
+			status->iv[0] = data[5];
+			status->iv[1] = data[4];
+			status->iv[2] = data[3];
+			status->iv[3] = data[2];
+			status->iv[4] = data[1];
+			status->iv[5] = data[0];
+
+			insert_ccmp_hdr = FIELD_GET(MT_RXD2_NORMAL_FRAG, rxd2);
+		}
+		rxd += 4;
+		if ((u8 *)rxd - skb->data >= skb->len)
+			return -EINVAL;
+	}
+
+	if (rxd1 & MT_RXD1_NORMAL_GROUP_2) {
+		rxd += 2;
+		if ((u8 *)rxd - skb->data >= skb->len)
+			return -EINVAL;
+	}
+
+	/* RXD Group 3 - P-RXV */
+	if (rxd1 & MT_RXD1_NORMAL_GROUP_3) {
+		memcpy(rxv.v, rxd, sizeof(rxv.v));
+
+		rxd += 2;
+		if ((u8 *)rxd - skb->data >= skb->len)
+			return -EINVAL;
+
+		if (rxv.v[0] & MT_PRXV_HT_AD_CODE)
+			status->enc_flags |= RX_ENC_FLAG_LDPC;
+
+		status->chains = mphy->antenna_mask;
+		status->chain_signal[0] = to_rssi(MT_PRXV_RCPI0, rxv.v[1]);
+		status->chain_signal[1] = to_rssi(MT_PRXV_RCPI1, rxv.v[1]);
+		status->chain_signal[2] = to_rssi(MT_PRXV_RCPI2, rxv.v[1]);
+		status->chain_signal[3] = to_rssi(MT_PRXV_RCPI3, rxv.v[1]);
+		status->signal = status->chain_signal[0];
+
+		for (i = 1; i < hweight8(mphy->antenna_mask); i++) {
+			if (!(status->chains & BIT(i)))
+				continue;
+
+			status->signal = max(status->signal,
+					     status->chain_signal[i]);
+		}
+
+		/* RXD Group 5 - C-RXV */
+		if (rxd1 & MT_RXD1_NORMAL_GROUP_5) {
+			u8 stbc = FIELD_GET(MT_CRXV_HT_STBC, rxv.v[2]);
+			u8 gi = FIELD_GET(MT_CRXV_HT_SHORT_GI, rxv.v[2]);
+			bool cck = false;
+
+			rxd += 18;
+			if ((u8 *)rxd - skb->data >= skb->len)
+				return -EINVAL;
+
+			idx = i = FIELD_GET(MT_PRXV_TX_RATE, rxv.v[0]);
+			rxv.phy = FIELD_GET(MT_CRXV_TX_MODE, rxv.v[2]);
+
+			switch (rxv.phy) {
+			case MT_PHY_TYPE_CCK:
+				cck = true;
+				/* fall through */
+			case MT_PHY_TYPE_OFDM:
+				i = mt76_get_rate(&dev->mt76, sband, i, cck);
+				break;
+			case MT_PHY_TYPE_HT_GF:
+			case MT_PHY_TYPE_HT:
+				status->encoding = RX_ENC_HT;
+				if (i > 31)
+					return -EINVAL;
+				break;
+			case MT_PHY_TYPE_VHT:
+				status->nss =
+					FIELD_GET(MT_PRXV_NSTS, rxv.v[0]) + 1;
+				status->encoding = RX_ENC_VHT;
+				if (i > 9)
+					return -EINVAL;
+				break;
+			case MT_PHY_TYPE_HE_MU:
+				/* fall through */
+			case MT_PHY_TYPE_HE_SU:
+			case MT_PHY_TYPE_HE_EXT_SU:
+			case MT_PHY_TYPE_HE_TB:
+				status->nss =
+					FIELD_GET(MT_PRXV_NSTS, rxv.v[0]) + 1;
+				status->encoding = RX_ENC_HE;
+				i &= GENMASK(3, 0);
+
+				if (gi <= NL80211_RATE_INFO_HE_GI_3_2)
+					status->he_gi = gi;
+
+				if (idx & MT_PRXV_TX_DCM)
+					status->he_dcm = true;
+				break;
+			default:
+				return -EINVAL;
+			}
+			status->rate_idx = i;
+
+			switch (FIELD_GET(MT_CRXV_FRAME_MODE, rxv.v[2])) {
+			case IEEE80211_STA_RX_BW_20:
+				break;
+			case IEEE80211_STA_RX_BW_40:
+				if (rxv.phy & MT_PHY_TYPE_HE_EXT_SU &&
+				    (idx & MT_PRXV_TX_ER_SU_106T)) {
+					status->bw = RATE_INFO_BW_HE_RU;
+					status->he_ru =
+						NL80211_RATE_INFO_HE_RU_ALLOC_106;
+				} else {
+					status->bw = RATE_INFO_BW_40;
+				}
+				break;
+			case IEEE80211_STA_RX_BW_80:
+				status->bw = RATE_INFO_BW_80;
+				break;
+			case IEEE80211_STA_RX_BW_160:
+				status->bw = RATE_INFO_BW_160;
+				break;
+			default:
+				return -EINVAL;
+			}
+
+			status->enc_flags |= RX_ENC_FLAG_STBC_MASK * stbc;
+			if (rxv.phy < MT_PHY_TYPE_HE_SU && gi)
+				status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
+		}
+	}
+
+	skb_pull(skb, (u8 *)rxd - skb->data + 2 * remove_pad);
+
+	if (insert_ccmp_hdr) {
+		u8 key_id = FIELD_GET(MT_RXD1_NORMAL_KEY_ID, rxd1);
+
+		mt76_insert_ccmp_hdr(skb, key_id);
+	}
+
+	hdr = mt76_skb_get_hdr(skb);
+	if (!status->wcid || !ieee80211_is_data_qos(hdr->frame_control))
+		return 0;
+
+	status->aggr = unicast &&
+		       !ieee80211_is_qos_nullfunc(hdr->frame_control);
+	status->tid = *ieee80211_get_qos_ctl(hdr) & IEEE80211_QOS_CTL_TID_MASK;
+	status->seqno = IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl));
+
+	return 0;
+}
+
+void mt7915_mac_write_txwi(struct mt7915_dev *dev, __le32 *txwi,
+			   struct sk_buff *skb, struct mt76_wcid *wcid,
+			   struct ieee80211_key_conf *key, bool beacon)
+{
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
+	bool multicast = is_multicast_ether_addr(hdr->addr1);
+	struct ieee80211_vif *vif = info->control.vif;
+	struct mt76_phy *mphy = &dev->mphy;
+	bool ext_phy = info->hw_queue & MT_TX_HW_QUEUE_EXT_PHY;
+	u8 fc_type, fc_stype, p_fmt, q_idx, omac_idx = 0, wmm_idx = 0;
+	__le16 fc = hdr->frame_control;
+	u16 tx_count = 4, seqno = 0;
+	u32 val;
+
+	if (vif) {
+		struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+
+		omac_idx = mvif->omac_idx;
+		wmm_idx = mvif->wmm_idx;
+	}
+
+	if (ext_phy && dev->mt76.phy2)
+		mphy = dev->mt76.phy2;
+
+	fc_type = (le16_to_cpu(fc) & IEEE80211_FCTL_FTYPE) >> 2;
+	fc_stype = (le16_to_cpu(fc) & IEEE80211_FCTL_STYPE) >> 4;
+
+	if (ieee80211_is_data(fc) || ieee80211_is_bufferable_mmpdu(fc)) {
+		q_idx = wmm_idx * MT7915_MAX_WMM_SETS +
+			skb_get_queue_mapping(skb);
+		p_fmt = MT_TX_TYPE_CT;
+	} else if (beacon) {
+		q_idx = MT_LMAC_BCN0;
+		p_fmt = MT_TX_TYPE_FW;
+	} else {
+		q_idx = MT_LMAC_ALTX0;
+		p_fmt = MT_TX_TYPE_CT;
+	}
+
+	val = FIELD_PREP(MT_TXD0_TX_BYTES, skb->len + MT_TXD_SIZE) |
+	      FIELD_PREP(MT_TXD0_PKT_FMT, p_fmt) |
+	      FIELD_PREP(MT_TXD0_Q_IDX, q_idx);
+	txwi[0] = cpu_to_le32(val);
+
+	val = MT_TXD1_LONG_FORMAT |
+	      FIELD_PREP(MT_TXD1_WLAN_IDX, wcid->idx) |
+	      FIELD_PREP(MT_TXD1_HDR_FORMAT, MT_HDR_FORMAT_802_11) |
+	      FIELD_PREP(MT_TXD1_HDR_INFO,
+			 ieee80211_get_hdrlen_from_skb(skb) / 2) |
+	      FIELD_PREP(MT_TXD1_TID,
+			 skb->priority & IEEE80211_QOS_CTL_TID_MASK) |
+	      FIELD_PREP(MT_TXD1_OWN_MAC, omac_idx);
+	if (ext_phy && q_idx >= MT_LMAC_ALTX0 && q_idx <= MT_LMAC_BCN0)
+		val |= cpu_to_le32(MT_TXD1_TGID);
+
+	txwi[1] = cpu_to_le32(val);
+
+	val = FIELD_PREP(MT_TXD2_FRAME_TYPE, fc_type) |
+	      FIELD_PREP(MT_TXD2_SUB_TYPE, fc_stype) |
+	      FIELD_PREP(MT_TXD2_MULTICAST, multicast);
+	if (key) {
+		if (multicast && ieee80211_is_robust_mgmt_frame(skb) &&
+		    key->cipher == WLAN_CIPHER_SUITE_AES_CMAC) {
+			val |= MT_TXD2_BIP;
+			txwi[3] = 0;
+		} else {
+			txwi[3] = cpu_to_le32(MT_TXD3_PROTECT_FRAME);
+		}
+	} else {
+		txwi[3] = 0;
+	}
+	txwi[2] = cpu_to_le32(val);
+
+	txwi[4] = 0;
+	txwi[5] = 0;
+	txwi[6] = 0;
+
+	if (!ieee80211_is_data(fc) || multicast) {
+		u16 rate;
+
+		/* hardware won't add HTC for mgmt/ctrl frame */
+		txwi[2] |= cpu_to_le32(MT_TXD2_FIX_RATE | MT_TXD2_HTC_VLD);
+
+		if (mphy->chandef.chan->band == NL80211_BAND_5GHZ)
+			rate = MT7915_5G_RATE_DEFAULT;
+		else
+			rate = MT7915_2G_RATE_DEFAULT;
+
+		val = MT_TXD6_FIXED_BW |
+		      FIELD_PREP(MT_TXD6_TX_RATE, rate);
+		txwi[6] |= cpu_to_le32(val);
+		txwi[3] |= cpu_to_le32(MT_TXD3_BA_DISABLE);
+	}
+
+	if (!ieee80211_is_beacon(fc))
+		txwi[3] |= cpu_to_le32(MT_TXD3_SW_POWER_MGMT);
+	else
+		tx_count = 0x1f;
+
+	if (info->flags & IEEE80211_TX_CTL_NO_ACK)
+		txwi[3] |= cpu_to_le32(MT_TXD3_NO_ACK);
+
+	val = FIELD_PREP(MT_TXD7_TYPE, fc_type) |
+	      FIELD_PREP(MT_TXD7_SUB_TYPE, fc_stype);
+	txwi[7] = cpu_to_le32(val);
+
+	val = FIELD_PREP(MT_TXD3_REM_TX_COUNT, tx_count);
+	if (ieee80211_is_data_qos(fc)) {
+		seqno = IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl));
+		val |= MT_TXD3_SN_VALID;
+	} else if (ieee80211_is_back_req(fc)) {
+		struct ieee80211_bar *bar;
+
+		bar = (struct ieee80211_bar *)skb->data;
+		seqno = IEEE80211_SEQ_TO_SN(le16_to_cpu(bar->start_seq_num));
+		val |= MT_TXD3_SN_VALID;
+	}
+	val |= FIELD_PREP(MT_TXD3_SEQ, seqno);
+	txwi[3] |= cpu_to_le32(val);
+}
+
+int mt7915_tx_prepare_skb(struct mt76_dev *mdev, void *txwi_ptr,
+			  enum mt76_txq_id qid, struct mt76_wcid *wcid,
+			  struct ieee80211_sta *sta,
+			  struct mt76_tx_info *tx_info)
+{
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)tx_info->skb->data;
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_info->skb);
+	struct ieee80211_key_conf *key = info->control.hw_key;
+	struct ieee80211_vif *vif = info->control.vif;
+	struct mt76_tx_cb *cb = mt76_tx_skb_cb(tx_info->skb);
+	struct mt76_txwi_cache *t;
+	struct mt7915_txp *txp;
+	int id, i, nbuf = tx_info->nbuf - 1;
+	u8 *txwi = (u8 *)txwi_ptr;
+
+	if (!wcid)
+		wcid = &dev->mt76.global_wcid;
+
+	cb->wcid = wcid->idx;
+
+	mt7915_mac_write_txwi(dev, txwi_ptr, tx_info->skb, wcid, key,
+			      false);
+
+	txp = (struct mt7915_txp *)(txwi + MT_TXD_SIZE);
+	for (i = 0; i < nbuf; i++) {
+		txp->buf[i] = cpu_to_le32(tx_info->buf[i + 1].addr);
+		txp->len[i] = cpu_to_le16(tx_info->buf[i + 1].len);
+	}
+	txp->nbuf = nbuf;
+
+	/* pass partial skb header to fw */
+	tx_info->buf[1].len = MT_CT_PARSE_LEN;
+	tx_info->nbuf = MT_CT_DMA_BUF_NUM;
+
+	txp->flags = cpu_to_le16(MT_CT_INFO_APPLY_TXD);
+
+	if (!key)
+		txp->flags |= cpu_to_le16(MT_CT_INFO_NONE_CIPHER_FRAME);
+
+	if (ieee80211_is_mgmt(hdr->frame_control))
+		txp->flags |= cpu_to_le16(MT_CT_INFO_MGMT_FRAME);
+
+	if (vif) {
+		struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+
+		txp->bss_idx = mvif->idx;
+	}
+
+	t = (struct mt76_txwi_cache *)(txwi + mdev->drv->txwi_size);
+	t->skb = tx_info->skb;
+
+	spin_lock_bh(&dev->token_lock);
+	id = idr_alloc(&dev->token, t, 0, MT7915_TOKEN_SIZE, GFP_ATOMIC);
+	spin_unlock_bh(&dev->token_lock);
+	if (id < 0)
+		return id;
+
+	txp->token = cpu_to_le16(id);
+	txp->rept_wds_wcid = 0xff;
+	tx_info->skb = DMA_DUMMY_DATA;
+
+	return 0;
+}
+
+static inline bool
+mt7915_tx_check_aggr_tid(struct mt7915_sta *msta, u8 tid)
+{
+	bool ret = false;
+
+	spin_lock_bh(&msta->ampdu_lock);
+	if (msta->ampdu_state[tid] == MT7915_AGGR_STOP)
+		ret = true;
+	spin_unlock_bh(&msta->ampdu_lock);
+
+	return ret;
+}
+
+static void
+mt7915_tx_check_aggr(struct ieee80211_sta *sta, struct sk_buff *skb)
+{
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
+	struct mt7915_sta *msta;
+	u16 tid;
+
+	if (!sta->ht_cap.ht_supported)
+		return;
+
+	if (skb_get_queue_mapping(skb) == IEEE80211_AC_VO)
+		return;
+
+	if (unlikely(!ieee80211_is_data_qos(hdr->frame_control)))
+		return;
+
+	if (unlikely(skb->protocol == cpu_to_be16(ETH_P_PAE)))
+		return;
+
+	msta = (struct mt7915_sta *)sta->drv_priv;
+	tid = ieee80211_get_tid(hdr);
+
+	if (mt7915_tx_check_aggr_tid(msta, tid)) {
+		ieee80211_start_tx_ba_session(sta, tid, 0);
+		mt7915_set_aggr_state(msta, tid, MT7915_AGGR_PROGRESS);
+	}
+}
+
+static inline void
+mt7915_tx_status(struct ieee80211_sta *sta, struct ieee80211_hw *hw,
+		 struct ieee80211_tx_info *info, struct sk_buff *skb)
+{
+	struct ieee80211_tx_status status = {
+		.sta = sta,
+		.info = info,
+	};
+
+	if (skb)
+		status.skb = skb;
+
+	if (sta) {
+		struct mt7915_sta *msta;
+
+		msta = (struct mt7915_sta *)sta->drv_priv;
+		status.rate = &msta->stats.tx_rate;
+	}
+
+	ieee80211_tx_status_ext(hw, &status);
+}
+
+static void
+mt7915_tx_complete_status(struct mt76_dev *mdev, struct sk_buff *skb,
+			  struct ieee80211_sta *sta, u8 stat)
+{
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
+	struct ieee80211_hw *hw;
+
+	hw = mt76_tx_status_get_hw(mdev, skb);
+
+	if (info->flags & IEEE80211_TX_CTL_AMPDU)
+		info->flags |= IEEE80211_TX_STAT_AMPDU;
+	else if (sta)
+		mt7915_tx_check_aggr(sta, skb);
+
+	if (stat)
+		ieee80211_tx_info_clear_status(info);
+
+	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
+		info->flags |= IEEE80211_TX_STAT_ACK;
+
+	info->status.tx_time = 0;
+
+	if (info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS) {
+		mt7915_tx_status(sta, hw, info, skb);
+		return;
+	}
+
+	if (sta || !(info->flags & IEEE80211_TX_CTL_NO_ACK))
+		mt7915_tx_status(sta, hw, info, NULL);
+
+	dev_kfree_skb(skb);
+}
+
+void mt7915_txp_skb_unmap(struct mt76_dev *dev,
+			  struct mt76_txwi_cache *t)
+{
+	struct mt7915_txp *txp;
+	int i;
+
+	txp = mt7915_txwi_to_txp(dev, t);
+	for (i = 1; i < txp->nbuf; i++)
+		dma_unmap_single(dev->dev, le32_to_cpu(txp->buf[i]),
+				 le16_to_cpu(txp->len[i]), DMA_TO_DEVICE);
+}
+
+void mt7915_mac_tx_free(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt7915_tx_free *free = (struct mt7915_tx_free *)skb->data;
+	struct mt76_dev *mdev = &dev->mt76;
+	struct mt76_txwi_cache *txwi;
+	struct ieee80211_sta *sta = NULL;
+	u8 i, count;
+
+	/*
+	 * TODO: MT_TX_FREE_LATENCY is msdu time from the TXD is queued into PLE,
+	 * to the time ack is received or dropped by hw (air + hw queue time).
+	 * Should avoid accessing WTBL to get Tx airtime, and use it instead.
+	 */
+	count = FIELD_GET(MT_TX_FREE_MSDU_CNT, le16_to_cpu(free->ctrl));
+	for (i = 0; i < count; i++) {
+		u32 msdu, info = le32_to_cpu(free->info[i]);
+		u8 stat;
+
+		/*
+		 * 1'b1: new wcid pair.
+		 * 1'b0: msdu_id with the same 'wcid pair' as above.
+		 */
+		if (info & MT_TX_FREE_PAIR) {
+			struct mt7915_sta *msta;
+			struct mt76_wcid *wcid;
+			u16 idx;
+
+			count++;
+			idx = FIELD_GET(MT_TX_FREE_WLAN_ID, info);
+			wcid = rcu_dereference(dev->mt76.wcid[idx]);
+			sta = wcid_to_sta(wcid);
+			if (!sta)
+				continue;
+
+			msta = container_of(wcid, struct mt7915_sta, wcid);
+			ieee80211_queue_work(mt76_hw(dev), &msta->stats_work);
+			continue;
+		}
+
+		msdu = FIELD_GET(MT_TX_FREE_MSDU_ID, info);
+		stat = FIELD_GET(MT_TX_FREE_STATUS, info);
+
+		spin_lock_bh(&dev->token_lock);
+		txwi = idr_remove(&dev->token, msdu);
+		spin_unlock_bh(&dev->token_lock);
+
+		if (!txwi)
+			continue;
+
+		mt7915_txp_skb_unmap(mdev, txwi);
+		if (txwi->skb) {
+			mt7915_tx_complete_status(mdev, txwi->skb, sta, stat);
+			txwi->skb = NULL;
+		}
+
+		mt76_put_txwi(mdev, txwi);
+	}
+	dev_kfree_skb(skb);
+}
+
+void mt7915_tx_complete_skb(struct mt76_dev *mdev, enum mt76_txq_id qid,
+			    struct mt76_queue_entry *e)
+{
+	struct mt7915_dev *dev;
+
+	if (!e->txwi) {
+		dev_kfree_skb_any(e->skb);
+		return;
+	}
+
+	dev = container_of(mdev, struct mt7915_dev, mt76);
+
+	/* error path */
+	if (e->skb == DMA_DUMMY_DATA) {
+		struct mt76_txwi_cache *t;
+		struct mt7915_txp *txp;
+
+		txp = mt7915_txwi_to_txp(mdev, e->txwi);
+
+		spin_lock_bh(&dev->token_lock);
+		t = idr_remove(&dev->token, le16_to_cpu(txp->token));
+		spin_unlock_bh(&dev->token_lock);
+		e->skb = t ? t->skb : NULL;
+	}
+
+	if (e->skb) {
+		struct mt76_tx_cb *cb = mt76_tx_skb_cb(e->skb);
+		struct mt76_wcid *wcid;
+
+		wcid = rcu_dereference(dev->mt76.wcid[cb->wcid]);
+
+		mt7915_tx_complete_status(mdev, e->skb, wcid_to_sta(wcid), 0);
+	}
+}
+
+void mt7915_mac_cca_stats_reset(struct mt7915_phy *phy)
+{
+	struct mt7915_dev *dev = phy->dev;
+	bool ext_phy = phy != &dev->phy;
+	u32 reg = MT_WF_PHY_RX_CTRL1(ext_phy);
+
+	mt7915_l2_clear(dev, reg, MT_WF_PHY_RX_CTRL1_STSCNT_EN);
+	mt7915_l2_set(dev, reg, BIT(11) | BIT(9));
+}
+
+void mt7915_mac_reset_counters(struct mt7915_phy *phy)
+{
+	struct mt7915_dev *dev = phy->dev;
+	bool ext_phy = phy != &dev->phy;
+	int i;
+
+	for (i = 0; i < 4; i++) {
+		mt76_rr(dev, MT_TX_AGG_CNT(ext_phy, i));
+		mt76_rr(dev, MT_TX_AGG_CNT2(ext_phy, i));
+	}
+
+	if (ext_phy) {
+		dev->mt76.phy2->survey_time = ktime_get_boottime();
+		i = ARRAY_SIZE(dev->mt76.aggr_stats) / 2;
+	} else {
+		dev->mt76.phy.survey_time = ktime_get_boottime();
+		i = 0;
+	}
+	memset(&dev->mt76.aggr_stats[i], 0, sizeof(dev->mt76.aggr_stats) / 2);
+
+	/* reset airtime counters */
+	mt76_rr(dev, MT_MIB_SDR9(ext_phy));
+	mt76_rr(dev, MT_MIB_SDR36(ext_phy));
+	mt76_rr(dev, MT_MIB_SDR37(ext_phy));
+
+	mt76_set(dev, MT_WF_RMAC_MIB_TIME0(ext_phy),
+		 MT_WF_RMAC_MIB_RXTIME_CLR);
+	mt76_set(dev, MT_WF_RMAC_MIB_AIRTIME0(ext_phy),
+		 MT_WF_RMAC_MIB_RXTIME_CLR);
+}
+
+void mt7915_mac_set_timing(struct mt7915_phy *phy)
+{
+	s16 coverage_class = phy->coverage_class;
+	struct mt7915_dev *dev = phy->dev;
+	bool ext_phy = phy != &dev->phy;
+	u32 val, reg_offset;
+	u32 cck = FIELD_PREP(MT_TIMEOUT_VAL_PLCP, 231) |
+		  FIELD_PREP(MT_TIMEOUT_VAL_CCA, 48);
+	u32 ofdm = FIELD_PREP(MT_TIMEOUT_VAL_PLCP, 60) |
+		   FIELD_PREP(MT_TIMEOUT_VAL_CCA, 24);
+	int sifs, offset;
+
+	if (phy->mt76->chandef.chan->band == NL80211_BAND_5GHZ)
+		sifs = 16;
+	else
+		sifs = 10;
+
+	if (ext_phy) {
+		coverage_class = max_t(s16, dev->phy.coverage_class,
+				       coverage_class);
+	} else {
+		struct mt7915_phy *phy_ext = mt7915_ext_phy(dev);
+
+		if (phy_ext)
+			coverage_class = max_t(s16, phy_ext->coverage_class,
+					       coverage_class);
+	}
+	mt76_set(dev, MT_ARB_SCR(ext_phy),
+		 MT_ARB_SCR_TX_DISABLE | MT_ARB_SCR_RX_DISABLE);
+	udelay(1);
+
+	offset = 3 * coverage_class;
+	reg_offset = FIELD_PREP(MT_TIMEOUT_VAL_PLCP, offset) |
+		     FIELD_PREP(MT_TIMEOUT_VAL_CCA, offset);
+
+	mt76_wr(dev, MT_TMAC_CDTR(ext_phy), cck + reg_offset);
+	mt76_wr(dev, MT_TMAC_ODTR(ext_phy), ofdm + reg_offset);
+	mt76_wr(dev, MT_TMAC_ICR0(ext_phy),
+		FIELD_PREP(MT_IFS_EIFS, 360) |
+		FIELD_PREP(MT_IFS_RIFS, 2) |
+		FIELD_PREP(MT_IFS_SIFS, sifs) |
+		FIELD_PREP(MT_IFS_SLOT, phy->slottime));
+
+	if (phy->slottime < 20)
+		val = MT7915_CFEND_RATE_DEFAULT;
+	else
+		val = MT7915_CFEND_RATE_11B;
+
+	mt76_rmw_field(dev, MT_AGG_ACR0(ext_phy), MT_AGG_ACR_CFEND_RATE, val);
+	mt76_clear(dev, MT_ARB_SCR(ext_phy),
+		   MT_ARB_SCR_TX_DISABLE | MT_ARB_SCR_RX_DISABLE);
+}
+
+static void
+mt7915_phy_update_channel(struct mt76_phy *mphy, int idx)
+{
+	struct mt7915_dev *dev = container_of(mphy->dev, struct mt7915_dev, mt76);
+	struct mt76_channel_state *state;
+	u64 busy_time, tx_time, rx_time, obss_time;
+
+	busy_time = mt76_get_field(dev, MT_MIB_SDR9(idx),
+				   MT_MIB_SDR9_BUSY_MASK);
+	tx_time = mt76_get_field(dev, MT_MIB_SDR36(idx),
+				 MT_MIB_SDR36_TXTIME_MASK);
+	rx_time = mt76_get_field(dev, MT_MIB_SDR37(idx),
+				 MT_MIB_SDR37_RXTIME_MASK);
+	obss_time = mt76_get_field(dev, MT_WF_RMAC_MIB_AIRTIME14(idx),
+				   MT_MIB_OBSSTIME_MASK);
+
+	/* TODO: state->noise */
+	state = mphy->chan_state;
+	state->cc_busy += busy_time;
+	state->cc_tx += tx_time;
+	state->cc_rx += rx_time + obss_time;
+	state->cc_bss_rx += rx_time;
+}
+
+void mt7915_update_channel(struct mt76_dev *mdev)
+{
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+
+	mt7915_phy_update_channel(&mdev->phy, 0);
+	if (mdev->phy2)
+		mt7915_phy_update_channel(mdev->phy2, 1);
+
+	/* reset obss airtime */
+	mt76_set(dev, MT_WF_RMAC_MIB_TIME0(0), MT_WF_RMAC_MIB_RXTIME_CLR);
+	if (mdev->phy2)
+		mt76_set(dev, MT_WF_RMAC_MIB_TIME0(1),
+			 MT_WF_RMAC_MIB_RXTIME_CLR);
+}
+
+static bool
+mt7915_wait_reset_state(struct mt7915_dev *dev, u32 state)
+{
+	bool ret;
+
+	ret = wait_event_timeout(dev->reset_wait,
+				 (READ_ONCE(dev->reset_state) & state),
+				 MT7915_RESET_TIMEOUT);
+
+	WARN(!ret, "Timeout waiting for MCU reset state %x\n", state);
+	return ret;
+}
+
+static void
+mt7915_update_vif_beacon(void *priv, u8 *mac, struct ieee80211_vif *vif)
+{
+	struct ieee80211_hw *hw = priv;
+
+	mt7915_mcu_add_beacon(hw, vif, vif->bss_conf.enable_beacon);
+}
+
+static void
+mt7915_update_beacons(struct mt7915_dev *dev)
+{
+	ieee80211_iterate_active_interfaces(dev->mt76.hw,
+		IEEE80211_IFACE_ITER_RESUME_ALL,
+		mt7915_update_vif_beacon, dev->mt76.hw);
+
+	if (!dev->mt76.phy2)
+		return;
+
+	ieee80211_iterate_active_interfaces(dev->mt76.phy2->hw,
+		IEEE80211_IFACE_ITER_RESUME_ALL,
+		mt7915_update_vif_beacon, dev->mt76.phy2->hw);
+}
+
+static void
+mt7915_dma_reset(struct mt7915_dev *dev)
+{
+	int i;
+
+	mt76_clear(dev, MT_WFDMA0_GLO_CFG,
+		   MT_WFDMA0_GLO_CFG_TX_DMA_EN | MT_WFDMA0_GLO_CFG_RX_DMA_EN);
+	mt76_clear(dev, MT_WFDMA1_GLO_CFG,
+		   MT_WFDMA1_GLO_CFG_TX_DMA_EN | MT_WFDMA1_GLO_CFG_RX_DMA_EN);
+	usleep_range(1000, 2000);
+
+	for (i = 0; i < __MT_TXQ_MAX; i++)
+		mt76_queue_tx_cleanup(dev, i, true);
+
+	for (i = 0; i < ARRAY_SIZE(dev->mt76.q_rx); i++)
+		mt76_queue_rx_reset(dev, i);
+
+	/* re-init prefetch settings after reset */
+	mt7915_dma_prefetch(dev);
+
+	mt76_set(dev, MT_WFDMA0_GLO_CFG,
+		 MT_WFDMA0_GLO_CFG_TX_DMA_EN | MT_WFDMA0_GLO_CFG_RX_DMA_EN);
+	mt76_set(dev, MT_WFDMA1_GLO_CFG,
+		 MT_WFDMA1_GLO_CFG_TX_DMA_EN | MT_WFDMA1_GLO_CFG_RX_DMA_EN);
+}
+
+/* system error recovery */
+void mt7915_mac_reset_work(struct work_struct *work)
+{
+	struct mt7915_dev *dev;
+
+	dev = container_of(work, struct mt7915_dev, reset_work);
+
+	if (!(READ_ONCE(dev->reset_state) & MT_MCU_CMD_STOP_DMA))
+		return;
+
+	ieee80211_stop_queues(mt76_hw(dev));
+	if (dev->mt76.phy2)
+		ieee80211_stop_queues(dev->mt76.phy2->hw);
+
+	set_bit(MT76_RESET, &dev->mphy.state);
+	set_bit(MT76_MCU_RESET, &dev->mphy.state);
+	wake_up(&dev->mt76.mcu.wait);
+	cancel_delayed_work_sync(&dev->mt76.mac_work);
+
+	/* lock/unlock all queues to ensure that no tx is pending */
+	mt76_txq_schedule_all(&dev->mphy);
+	if (dev->mt76.phy2)
+		mt76_txq_schedule_all(dev->mt76.phy2);
+
+	tasklet_disable(&dev->mt76.tx_tasklet);
+	napi_disable(&dev->mt76.napi[0]);
+	napi_disable(&dev->mt76.napi[1]);
+	napi_disable(&dev->mt76.napi[2]);
+	napi_disable(&dev->mt76.tx_napi);
+
+	mutex_lock(&dev->mt76.mutex);
+
+	mt76_wr(dev, MT_MCU_INT_EVENT, MT_MCU_INT_EVENT_DMA_STOPPED);
+
+	if (mt7915_wait_reset_state(dev, MT_MCU_CMD_RESET_DONE)) {
+		mt7915_dma_reset(dev);
+
+		mt76_wr(dev, MT_MCU_INT_EVENT, MT_MCU_INT_EVENT_DMA_INIT);
+		mt7915_wait_reset_state(dev, MT_MCU_CMD_RECOVERY_DONE);
+	}
+
+	clear_bit(MT76_MCU_RESET, &dev->mphy.state);
+	clear_bit(MT76_RESET, &dev->mphy.state);
+
+	tasklet_enable(&dev->mt76.tx_tasklet);
+	napi_enable(&dev->mt76.tx_napi);
+	napi_schedule(&dev->mt76.tx_napi);
+
+	napi_enable(&dev->mt76.napi[0]);
+	napi_schedule(&dev->mt76.napi[0]);
+
+	napi_enable(&dev->mt76.napi[1]);
+	napi_schedule(&dev->mt76.napi[1]);
+
+	napi_enable(&dev->mt76.napi[2]);
+	napi_schedule(&dev->mt76.napi[2]);
+
+	ieee80211_wake_queues(mt76_hw(dev));
+	if (dev->mt76.phy2)
+		ieee80211_wake_queues(dev->mt76.phy2->hw);
+
+	mt76_wr(dev, MT_MCU_INT_EVENT, MT_MCU_INT_EVENT_RESET_DONE);
+	mt7915_wait_reset_state(dev, MT_MCU_CMD_NORMAL_STATE);
+
+	mutex_unlock(&dev->mt76.mutex);
+
+	mt7915_update_beacons(dev);
+
+	ieee80211_queue_delayed_work(mt76_hw(dev), &dev->mt76.mac_work,
+				     MT7915_WATCHDOG_TIME);
+}
+
+static void
+mt7915_mac_update_mib_stats(struct mt7915_phy *phy)
+{
+	struct mt7915_dev *dev = phy->dev;
+	struct mib_stats *mib = &phy->mib;
+	bool ext_phy = phy != &dev->phy;
+	int i, aggr0, aggr1;
+
+	memset(mib, 0, sizeof(*mib));
+
+	mib->fcs_err_cnt = mt76_get_field(dev, MT_MIB_SDR3(ext_phy),
+					  MT_MIB_SDR3_FCS_ERR_MASK);
+
+	aggr0 = ext_phy ? ARRAY_SIZE(dev->mt76.aggr_stats) / 2 : 0;
+	for (i = 0, aggr1 = aggr0 + 4; i < 4; i++) {
+		u32 val, val2;
+
+		val = mt76_rr(dev, MT_MIB_MB_SDR1(ext_phy, i));
+
+		val2 = FIELD_GET(MT_MIB_ACK_FAIL_COUNT_MASK, val);
+		if (val2 > mib->ack_fail_cnt)
+			mib->ack_fail_cnt = val2;
+
+		val2 = FIELD_GET(MT_MIB_BA_MISS_COUNT_MASK, val);
+		if (val2 > mib->ba_miss_cnt)
+			mib->ba_miss_cnt = val2;
+
+		val = mt76_rr(dev, MT_MIB_MB_SDR0(ext_phy, i));
+		val2 = FIELD_GET(MT_MIB_RTS_RETRIES_COUNT_MASK, val);
+		if (val2 > mib->rts_retries_cnt) {
+			mib->rts_cnt = FIELD_GET(MT_MIB_RTS_COUNT_MASK, val);
+			mib->rts_retries_cnt = val2;
+		}
+
+		val = mt76_rr(dev, MT_TX_AGG_CNT(ext_phy, i));
+		val2 = mt76_rr(dev, MT_TX_AGG_CNT2(ext_phy, i));
+
+		dev->mt76.aggr_stats[aggr0++] += val & 0xffff;
+		dev->mt76.aggr_stats[aggr0++] += val >> 16;
+		dev->mt76.aggr_stats[aggr1++] += val2 & 0xffff;
+		dev->mt76.aggr_stats[aggr1++] += val2 >> 16;
+	}
+}
+
+void mt7915_mac_sta_stats_work(struct work_struct *work)
+{
+	struct ieee80211_sta *sta;
+	struct ieee80211_vif *vif;
+	struct mt7915_sta_stats *stats;
+	struct mt7915_sta *msta;
+	struct mt7915_dev *dev;
+
+	msta = container_of(work, struct mt7915_sta, stats_work);
+	sta = container_of((void *)msta, struct ieee80211_sta, drv_priv);
+	vif = container_of((void *)msta->vif, struct ieee80211_vif, drv_priv);
+	dev = msta->vif->dev;
+	stats = &msta->stats;
+
+	/* use MT_TX_FREE_RATE to report Tx rate for further devices */
+	if (time_after(jiffies, stats->jiffies + HZ)) {
+		mt7915_mcu_get_rate_info(dev, RATE_CTRL_RU_INFO,
+					 msta->wcid.idx);
+
+		stats->jiffies = jiffies;
+	}
+
+	if (test_and_clear_bit(IEEE80211_RC_SUPP_RATES_CHANGED |
+			       IEEE80211_RC_NSS_CHANGED |
+			       IEEE80211_RC_BW_CHANGED, &stats->changed))
+		mt7915_mcu_add_rate_ctrl(dev, vif, sta);
+
+	if (test_and_clear_bit(IEEE80211_RC_SMPS_CHANGED, &stats->changed))
+		mt7915_mcu_add_smps(dev, vif, sta);
+
+	spin_lock_bh(&dev->sta_poll_lock);
+	if (list_empty(&msta->poll_list))
+		list_add_tail(&msta->poll_list, &dev->sta_poll_list);
+	spin_unlock_bh(&dev->sta_poll_lock);
+}
+
+void mt7915_mac_work(struct work_struct *work)
+{
+	struct mt7915_dev *dev;
+
+	dev = (struct mt7915_dev *)container_of(work, struct mt76_dev,
+						mac_work.work);
+
+	mutex_lock(&dev->mt76.mutex);
+	mt76_update_survey(&dev->mt76);
+	if (++dev->mac_work_count == 5) {
+		struct mt7915_phy *ext_phy = mt7915_ext_phy(dev);
+
+		mt7915_mac_update_mib_stats(&dev->phy);
+		if (ext_phy)
+			mt7915_mac_update_mib_stats(ext_phy);
+
+		dev->mac_work_count = 0;
+	}
+	mutex_unlock(&dev->mt76.mutex);
+
+	ieee80211_queue_delayed_work(mt76_hw(dev), &dev->mt76.mac_work,
+				     MT7915_WATCHDOG_TIME);
+}
+
+static void mt7915_dfs_stop_radar_detector(struct mt7915_phy *phy)
+{
+	struct mt7915_dev *dev = phy->dev;
+
+	if (phy->rdd_state & BIT(0))
+		mt7915_mcu_rdd_cmd(dev, RDD_STOP, 0, MT_RX_SEL0, 0);
+	if (phy->rdd_state & BIT(1))
+		mt7915_mcu_rdd_cmd(dev, RDD_STOP, 1, MT_RX_SEL0, 0);
+}
+
+static int mt7915_dfs_start_rdd(struct mt7915_dev *dev, int chain)
+{
+	int err;
+
+	err = mt7915_mcu_rdd_cmd(dev, RDD_START, chain, MT_RX_SEL0, 0);
+	if (err < 0)
+		return err;
+
+	return mt7915_mcu_rdd_cmd(dev, RDD_DET_MODE, chain, MT_RX_SEL0, 1);
+}
+
+static int mt7915_dfs_start_radar_detector(struct mt7915_phy *phy)
+{
+	struct cfg80211_chan_def *chandef = &phy->mt76->chandef;
+	struct mt7915_dev *dev = phy->dev;
+	bool ext_phy = phy != &dev->phy;
+	int err;
+
+	/* start CAC */
+	err = mt7915_mcu_rdd_cmd(dev, RDD_CAC_START, ext_phy, MT_RX_SEL0, 0);
+	if (err < 0)
+		return err;
+
+	err = mt7915_dfs_start_rdd(dev, ext_phy);
+	if (err < 0)
+		return err;
+
+	phy->rdd_state |= BIT(ext_phy);
+
+	if (chandef->width == NL80211_CHAN_WIDTH_160 ||
+	    chandef->width == NL80211_CHAN_WIDTH_80P80) {
+		err = mt7915_dfs_start_rdd(dev, 1);
+		if (err < 0)
+			return err;
+
+		phy->rdd_state |= BIT(1);
+	}
+
+	return 0;
+}
+
+static int
+mt7915_dfs_init_radar_specs(struct mt7915_phy *phy)
+{
+	const struct mt7915_dfs_radar_spec *radar_specs;
+	struct mt7915_dev *dev = phy->dev;
+	int err, i;
+
+	switch (dev->mt76.region) {
+	case NL80211_DFS_FCC:
+		radar_specs = &fcc_radar_specs;
+		err = mt7915_mcu_set_fcc5_lpn(dev, 8);
+		if (err < 0)
+			return err;
+		break;
+	case NL80211_DFS_ETSI:
+		radar_specs = &etsi_radar_specs;
+		break;
+	case NL80211_DFS_JP:
+		radar_specs = &jp_radar_specs;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(radar_specs->radar_pattern); i++) {
+		err = mt7915_mcu_set_radar_th(dev, i,
+					      &radar_specs->radar_pattern[i]);
+		if (err < 0)
+			return err;
+	}
+
+	return mt7915_mcu_set_pulse_th(dev, &radar_specs->pulse_th);
+}
+
+int mt7915_dfs_init_radar_detector(struct mt7915_phy *phy)
+{
+	struct cfg80211_chan_def *chandef = &phy->mt76->chandef;
+	struct mt7915_dev *dev = phy->dev;
+	bool ext_phy = phy != &dev->phy;
+	int err;
+
+	if (dev->mt76.region == NL80211_DFS_UNSET) {
+		phy->dfs_state = -1;
+		if (phy->rdd_state)
+			goto stop;
+
+		return 0;
+	}
+
+	if (test_bit(MT76_SCANNING, &phy->mt76->state))
+		return 0;
+
+	if (phy->dfs_state == chandef->chan->dfs_state)
+		return 0;
+
+	err = mt7915_dfs_init_radar_specs(phy);
+	if (err < 0) {
+		phy->dfs_state = -1;
+		goto stop;
+	}
+
+	phy->dfs_state = chandef->chan->dfs_state;
+
+	if (chandef->chan->flags & IEEE80211_CHAN_RADAR) {
+		if (chandef->chan->dfs_state != NL80211_DFS_AVAILABLE)
+			return mt7915_dfs_start_radar_detector(phy);
+
+		return mt7915_mcu_rdd_cmd(dev, RDD_CAC_END, ext_phy,
+					  MT_RX_SEL0, 0);
+	}
+
+stop:
+	err = mt7915_mcu_rdd_cmd(dev, RDD_NORMAL_START, ext_phy,
+				 MT_RX_SEL0, 0);
+	if (err < 0)
+		return err;
+
+	mt7915_dfs_stop_radar_detector(phy);
+	return 0;
+}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mac.h b/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
new file mode 100644
index 000000000000..712753484aee
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
@@ -0,0 +1,330 @@
+/* SPDX-License-Identifier: ISC */
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#ifndef __MT7915_MAC_H
+#define __MT7915_MAC_H
+
+#define MT_CT_PARSE_LEN			72
+#define MT_CT_DMA_BUF_NUM		2
+
+#define MT_RXD0_LENGTH			GENMASK(15, 0)
+#define MT_RXD0_PKT_TYPE		GENMASK(31, 27)
+
+#define MT_RXD0_NORMAL_ETH_TYPE_OFS	GENMASK(22, 16)
+#define MT_RXD0_NORMAL_IP_SUM		BIT(23)
+#define MT_RXD0_NORMAL_UDP_TCP_SUM	BIT(24)
+
+enum rx_pkt_type {
+	PKT_TYPE_TXS,
+	PKT_TYPE_TXRXV,
+	PKT_TYPE_NORMAL,
+	PKT_TYPE_RX_DUP_RFB,
+	PKT_TYPE_RX_TMR,
+	PKT_TYPE_RETRIEVE,
+	PKT_TYPE_TXRX_NOTIFY,
+	PKT_TYPE_RX_EVENT,
+};
+
+/* RXD DW1 */
+#define MT_RXD1_NORMAL_WLAN_IDX		GENMASK(9, 0)
+#define MT_RXD1_NORMAL_GROUP_1		BIT(11)
+#define MT_RXD1_NORMAL_GROUP_2		BIT(12)
+#define MT_RXD1_NORMAL_GROUP_3		BIT(13)
+#define MT_RXD1_NORMAL_GROUP_4		BIT(14)
+#define MT_RXD1_NORMAL_GROUP_5		BIT(15)
+#define MT_RXD1_NORMAL_SEC_MODE		GENMASK(20, 16)
+#define MT_RXD1_NORMAL_KEY_ID		GENMASK(22, 21)
+#define MT_RXD1_NORMAL_CM		BIT(23)
+#define MT_RXD1_NORMAL_CLM		BIT(24)
+#define MT_RXD1_NORMAL_ICV_ERR		BIT(25)
+#define MT_RXD1_NORMAL_TKIP_MIC_ERR	BIT(26)
+#define MT_RXD1_NORMAL_FCS_ERR		BIT(27)
+#define MT_RXD1_NORMAL_BAND_IDX		BIT(28)
+#define MT_RXD1_NORMAL_SPP_EN		BIT(29)
+#define MT_RXD1_NORMAL_ADD_OM		BIT(30)
+#define MT_RXD1_NORMAL_SEC_DONE		BIT(31)
+
+/* RXD DW2 */
+#define MT_RXD2_NORMAL_BSSID		GENMASK(5, 0)
+#define MT_RXD2_NORMAL_CO_ANT		BIT(6)
+#define MT_RXD2_NORMAL_BF_CQI		BIT(7)
+#define MT_RXD2_NORMAL_MAC_HDR_LEN	GENMASK(12, 8)
+#define MT_RXD2_NORMAL_HDR_TRANS	BIT(13)
+#define MT_RXD2_NORMAL_HDR_OFFSET	GENMASK(15, 14)
+#define MT_RXD2_NORMAL_TID		GENMASK(19, 16)
+#define MT_RXD2_NORMAL_MU_BAR		BIT(21)
+#define MT_RXD2_NORMAL_SW_BIT		BIT(22)
+#define MT_RXD2_NORMAL_AMSDU_ERR	BIT(23)
+#define MT_RXD2_NORMAL_MAX_LEN_ERROR	BIT(24)
+#define MT_RXD2_NORMAL_HDR_TRANS_ERROR	BIT(25)
+#define MT_RXD2_NORMAL_INT_FRAME	BIT(26)
+#define MT_RXD2_NORMAL_FRAG		BIT(27)
+#define MT_RXD2_NORMAL_NULL_FRAME	BIT(28)
+#define MT_RXD2_NORMAL_NDATA		BIT(29)
+#define MT_RXD2_NORMAL_NON_AMPDU	BIT(30)
+#define MT_RXD2_NORMAL_BF_REPORT	BIT(31)
+
+/* RXD DW3 */
+#define MT_RXD3_NORMAL_RXV_SEQ		GENMASK(7, 0)
+#define MT_RXD3_NORMAL_CH_FREQ		GENMASK(15, 8)
+#define MT_RXD3_NORMAL_ADDR_TYPE	GENMASK(17, 16)
+#define MT_RXD3_NORMAL_U2M		BIT(0)
+#define MT_RXD3_NORMAL_HTC_VLD		BIT(0)
+#define MT_RXD3_NORMAL_TSF_COMPARE_LOSS	BIT(19)
+#define MT_RXD3_NORMAL_BEACON_MC	BIT(20)
+#define MT_RXD3_NORMAL_BEACON_UC	BIT(21)
+#define MT_RXD3_NORMAL_AMSDU		BIT(22)
+#define MT_RXD3_NORMAL_MESH		BIT(23)
+#define MT_RXD3_NORMAL_MHCP		BIT(24)
+#define MT_RXD3_NORMAL_NO_INFO_WB	BIT(25)
+#define MT_RXD3_NORMAL_DISABLE_RX_HDR_TRANS	BIT(26)
+#define MT_RXD3_NORMAL_POWER_SAVE_STAT	BIT(27)
+#define MT_RXD3_NORMAL_MORE		BIT(28)
+#define MT_RXD3_NORMAL_UNWANT		BIT(29)
+#define MT_RXD3_NORMAL_RX_DROP		BIT(30)
+#define MT_RXD3_NORMAL_VLAN2ETH		BIT(31)
+
+/* RXD DW4 */
+#define MT_RXD4_NORMAL_PAYLOAD_FORMAT	GENMASK(1, 0)
+#define MT_RXD4_NORMAL_PATTERN_DROP	BIT(9)
+#define MT_RXD4_NORMAL_CLS		BIT(10)
+#define MT_RXD4_NORMAL_OFLD		GENMASK(12, 11)
+#define MT_RXD4_NORMAL_MAGIC_PKT	BIT(13)
+#define MT_RXD4_NORMAL_WOL		GENMASK(18, 14)
+#define MT_RXD4_NORMAL_CLS_BITMAP	GENMASK(28, 19)
+#define MT_RXD3_NORMAL_PF_MODE		BIT(29)
+#define MT_RXD3_NORMAL_PF_STS		GENMASK(31, 30)
+
+/* P-RXV */
+#define MT_PRXV_TX_RATE			GENMASK(6, 0)
+#define MT_PRXV_TX_DCM			BIT(4)
+#define MT_PRXV_TX_ER_SU_106T		BIT(5)
+#define MT_PRXV_NSTS			GENMASK(9, 7)
+#define MT_PRXV_HT_AD_CODE		BIT(11)
+#define MT_PRXV_RCPI3			GENMASK(31, 24)
+#define MT_PRXV_RCPI2			GENMASK(23, 16)
+#define MT_PRXV_RCPI1			GENMASK(15, 8)
+#define MT_PRXV_RCPI0			GENMASK(7, 0)
+
+/* C-RXV */
+#define MT_CRXV_HT_STBC			GENMASK(1, 0)
+#define MT_CRXV_TX_MODE			GENMASK(7, 4)
+#define MT_CRXV_FRAME_MODE		GENMASK(10, 8)
+#define MT_CRXV_HT_SHORT_GI		GENMASK(14, 13)
+
+struct mt7915_rxv {
+	u32 phy;
+
+	/* P-RXV: bit 0~1, C-RXV: bit 2~19 */
+	__le32 v[20];
+};
+
+enum tx_header_format {
+	MT_HDR_FORMAT_802_3,
+	MT_HDR_FORMAT_CMD,
+	MT_HDR_FORMAT_802_11,
+	MT_HDR_FORMAT_802_11_EXT,
+};
+
+enum tx_pkt_type {
+	MT_TX_TYPE_CT,
+	MT_TX_TYPE_SF,
+	MT_TX_TYPE_CMD,
+	MT_TX_TYPE_FW,
+};
+
+enum tx_pkt_queue_idx {
+	MT_LMAC_AC00,
+	MT_LMAC_AC01,
+	MT_LMAC_AC02,
+	MT_LMAC_AC03,
+	MT_LMAC_ALTX0 = 0x10,
+	MT_LMAC_BMC0 = 0x10,
+	MT_LMAC_BCN0 = 0x12,
+};
+
+enum tx_port_idx {
+	MT_TX_PORT_IDX_LMAC,
+	MT_TX_PORT_IDX_MCU
+};
+
+enum tx_mcu_port_q_idx {
+	MT_TX_MCU_PORT_RX_Q0 = 0x20,
+	MT_TX_MCU_PORT_RX_Q1,
+	MT_TX_MCU_PORT_RX_Q2,
+	MT_TX_MCU_PORT_RX_Q3,
+	MT_TX_MCU_PORT_RX_FWDL = 0x3e
+};
+
+#define MT_CT_INFO_APPLY_TXD		BIT(0)
+#define MT_CT_INFO_COPY_HOST_TXD_ALL	BIT(1)
+#define MT_CT_INFO_MGMT_FRAME		BIT(2)
+#define MT_CT_INFO_NONE_CIPHER_FRAME	BIT(3)
+#define MT_CT_INFO_HSR2_TX		BIT(4)
+
+#define MT_TXD_SIZE			(8 * 4)
+
+#define MT_TXD0_Q_IDX			GENMASK(31, 25)
+#define MT_TXD0_PKT_FMT			GENMASK(24, 23)
+#define MT_TXD0_ETH_TYPE_OFFSET		GENMASK(22, 16)
+#define MT_TXD0_TX_BYTES		GENMASK(15, 0)
+
+#define MT_TXD1_LONG_FORMAT		BIT(31)
+#define MT_TXD1_TGID			BIT(30)
+#define MT_TXD1_OWN_MAC			GENMASK(29, 24)
+#define MT_TXD1_AMSDU			BIT(23)
+#define MT_TXD1_TID			GENMASK(22, 20)
+#define MT_TXD1_HDR_PAD			GENMASK(19, 18)
+#define MT_TXD1_HDR_FORMAT		GENMASK(17, 16)
+#define MT_TXD1_HDR_INFO		GENMASK(15, 11)
+#define MT_TXD1_VTA			BIT(10)
+#define MT_TXD1_WLAN_IDX		GENMASK(9, 0)
+
+#define MT_TXD2_FIX_RATE		BIT(31)
+#define MT_TXD2_FIXED_RATE		BIT(30)
+#define MT_TXD2_POWER_OFFSET		GENMASK(29, 24)
+#define MT_TXD2_MAX_TX_TIME		GENMASK(23, 16)
+#define MT_TXD2_FRAG			GENMASK(15, 14)
+#define MT_TXD2_HTC_VLD			BIT(13)
+#define MT_TXD2_DURATION		BIT(12)
+#define MT_TXD2_BIP			BIT(11)
+#define MT_TXD2_MULTICAST		BIT(10)
+#define MT_TXD2_RTS			BIT(9)
+#define MT_TXD2_SOUNDING		BIT(8)
+#define MT_TXD2_NDPA			BIT(7)
+#define MT_TXD2_NDP			BIT(6)
+#define MT_TXD2_FRAME_TYPE		GENMASK(5, 4)
+#define MT_TXD2_SUB_TYPE		GENMASK(3, 0)
+
+#define MT_TXD3_SN_VALID		BIT(31)
+#define MT_TXD3_PN_VALID		BIT(30)
+#define MT_TXD3_SW_POWER_MGMT		BIT(29)
+#define MT_TXD3_BA_DISABLE		BIT(28)
+#define MT_TXD3_SEQ			GENMASK(27, 16)
+#define MT_TXD3_REM_TX_COUNT		GENMASK(15, 11)
+#define MT_TXD3_TX_COUNT		GENMASK(10, 6)
+#define MT_TXD3_TIMING_MEASURE		BIT(5)
+#define MT_TXD3_DAS			BIT(4)
+#define MT_TXD3_EEOSP			BIT(3)
+#define MT_TXD3_EMRD			BIT(2)
+#define MT_TXD3_PROTECT_FRAME		BIT(1)
+#define MT_TXD3_NO_ACK			BIT(0)
+
+#define MT_TXD4_PN_LOW			GENMASK(31, 0)
+
+#define MT_TXD5_PN_HIGH			GENMASK(31, 16)
+#define MT_TXD5_MD			BIT(15)
+#define MT_TXD5_ADD_BA			BIT(14)
+#define MT_TXD5_TX_STATUS_HOST		BIT(10)
+#define MT_TXD5_TX_STATUS_MCU		BIT(9)
+#define MT_TXD5_TX_STATUS_FMT		BIT(8)
+#define MT_TXD5_PID			GENMASK(7, 0)
+
+#define MT_TXD6_TX_IBF			BIT(31)
+#define MT_TXD6_TX_EBF			BIT(30)
+#define MT_TXD6_TX_RATE			GENMASK(29, 16)
+#define MT_TXD6_SGI			GENMASK(15, 14)
+#define MT_TXD6_HELTF			GENMASK(13, 12)
+#define MT_TXD6_LDPC			BIT(11)
+#define MT_TXD6_SPE_ID_IDX		BIT(10)
+#define MT_TXD6_ANT_ID			GENMASK(7, 4)
+#define MT_TXD6_DYN_BW			BIT(3)
+#define MT_TXD6_FIXED_BW		BIT(2)
+#define MT_TXD6_BW			GENMASK(2, 0)
+
+#define MT_TXD7_TXD_LEN			GENMASK(31, 30)
+#define MT_TXD7_UDP_TCP_SUM		BIT(29)
+#define MT_TXD7_IP_SUM			BIT(28)
+
+#define MT_TXD7_TYPE			GENMASK(21, 20)
+#define MT_TXD7_SUB_TYPE		GENMASK(19, 16)
+
+#define MT_TXD7_PSE_FID			GENMASK(27, 16)
+#define MT_TXD7_SPE_IDX			GENMASK(15, 11)
+#define MT_TXD7_HW_AMSDU		BIT(10)
+#define MT_TXD7_TX_TIME			GENMASK(9, 0)
+
+#define MT_TX_RATE_STBC			BIT(13)
+#define MT_TX_RATE_NSS			GENMASK(12, 10)
+#define MT_TX_RATE_MODE			GENMASK(9, 6)
+#define MT_TX_RATE_IDX			GENMASK(5, 0)
+
+#define MT_TXP_MAX_BUF_NUM		6
+
+struct mt7915_txp {
+	__le16 flags;
+	__le16 token;
+	u8 bss_idx;
+	u8 rept_wds_wcid;
+	u8 rsv;
+	u8 nbuf;
+	__le32 buf[MT_TXP_MAX_BUF_NUM];
+	__le16 len[MT_TXP_MAX_BUF_NUM];
+} __packed __aligned(4);
+
+struct mt7915_tx_free {
+	__le16 rx_byte_cnt;
+	__le16 ctrl;
+	u8 txd_cnt;
+	u8 rsv[3];
+	__le32 info[];
+} __packed __aligned(4);
+
+#define MT_TX_FREE_MSDU_CNT		GENMASK(9, 0)
+#define MT_TX_FREE_WLAN_ID		GENMASK(23, 14)
+#define MT_TX_FREE_LATENCY		GENMASK(12, 0)
+/* 0: success, others: dropped */
+#define MT_TX_FREE_STATUS		GENMASK(14, 13)
+#define MT_TX_FREE_MSDU_ID		GENMASK(30, 16)
+#define MT_TX_FREE_PAIR			BIT(31)
+/* will support this field in further revision */
+#define MT_TX_FREE_RATE			GENMASK(13, 0)
+
+struct mt7915_dfs_pulse {
+	u32 max_width;		/* us */
+	int max_pwr;		/* dbm */
+	int min_pwr;		/* dbm */
+	u32 min_stgr_pri;	/* us */
+	u32 max_stgr_pri;	/* us */
+	u32 min_cr_pri;		/* us */
+	u32 max_cr_pri;		/* us */
+};
+
+struct mt7915_dfs_pattern {
+	u8 enb;
+	u8 stgr;
+	u8 min_crpn;
+	u8 max_crpn;
+	u8 min_crpr;
+	u8 min_pw;
+	u32 min_pri;
+	u32 max_pri;
+	u8 max_pw;
+	u8 min_crbn;
+	u8 max_crbn;
+	u8 min_stgpn;
+	u8 max_stgpn;
+	u8 min_stgpr;
+	u8 rsv[2];
+	u32 min_stgpr_diff;
+} __packed;
+
+struct mt7915_dfs_radar_spec {
+	struct mt7915_dfs_pulse pulse_th;
+	struct mt7915_dfs_pattern radar_pattern[16];
+};
+
+static inline struct mt7915_txp *
+mt7915_txwi_to_txp(struct mt76_dev *dev, struct mt76_txwi_cache *t)
+{
+	u8 *txwi;
+
+	if (!t)
+		return NULL;
+
+	txwi = mt76_get_txwi_ptr(dev, t);
+
+	return (struct mt7915_txp *)(txwi + MT_TXD_SIZE);
+}
+
+#endif
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/main.c b/drivers/net/wireless/mediatek/mt76/mt7915/main.c
new file mode 100644
index 000000000000..e9e9e7e21388
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/main.c
@@ -0,0 +1,743 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#include <linux/etherdevice.h>
+#include <linux/platform_device.h>
+#include <linux/pci.h>
+#include <linux/module.h>
+#include "mt7915.h"
+#include "mcu.h"
+
+static bool mt7915_dev_running(struct mt7915_dev *dev)
+{
+	struct mt7915_phy *phy;
+
+	if (test_bit(MT76_STATE_RUNNING, &dev->mphy.state))
+		return true;
+
+	phy = mt7915_ext_phy(dev);
+
+	return phy && test_bit(MT76_STATE_RUNNING, &phy->mt76->state);
+}
+
+static int mt7915_start(struct ieee80211_hw *hw)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	bool running;
+
+	mutex_lock(&dev->mt76.mutex);
+
+	running = mt7915_dev_running(dev);
+
+	if (!running) {
+		mt7915_mcu_set_pm(dev, 0, 0);
+		mt7915_mcu_set_mac(dev, 0, true, false);
+		mt7915_mcu_set_scs(dev, 0, true);
+	}
+
+	if (phy != &dev->phy) {
+		mt7915_mcu_set_pm(dev, 1, 0);
+		mt7915_mcu_set_mac(dev, 1, true, false);
+		mt7915_mcu_set_scs(dev, 1, true);
+	}
+
+	mt7915_mcu_set_chan_info(phy, MCU_EXT_CMD_SET_RX_PATH);
+
+	set_bit(MT76_STATE_RUNNING, &phy->mt76->state);
+
+	if (running)
+		goto out;
+
+	mt7915_mac_reset_counters(phy);
+
+	ieee80211_queue_delayed_work(mt76_hw(dev), &dev->mt76.mac_work,
+				     MT7915_WATCHDOG_TIME);
+out:
+	mutex_unlock(&dev->mt76.mutex);
+
+	return 0;
+}
+
+static void mt7915_stop(struct ieee80211_hw *hw)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+
+	mutex_lock(&dev->mt76.mutex);
+
+	clear_bit(MT76_STATE_RUNNING, &phy->mt76->state);
+
+	if (phy != &dev->phy) {
+		mt7915_mcu_set_pm(dev, 1, 1);
+		mt7915_mcu_set_mac(dev, 1, false, false);
+	}
+
+	if (!mt7915_dev_running(dev)) {
+		cancel_delayed_work_sync(&dev->mt76.mac_work);
+
+		mt7915_mcu_set_pm(dev, 0, 1);
+		mt7915_mcu_set_mac(dev, 0, false, false);
+	}
+
+	mutex_unlock(&dev->mt76.mutex);
+}
+
+static int get_omac_idx(enum nl80211_iftype type, u32 mask)
+{
+	int i;
+
+	switch (type) {
+	case NL80211_IFTYPE_MONITOR:
+	case NL80211_IFTYPE_AP:
+	case NL80211_IFTYPE_MESH_POINT:
+	case NL80211_IFTYPE_ADHOC:
+		/* ap uses hw bssid 0 and ext bssid */
+		if (~mask & BIT(HW_BSSID_0))
+			return HW_BSSID_0;
+
+		for (i = EXT_BSSID_1; i < EXT_BSSID_END; i++)
+			if (~mask & BIT(i))
+				return i;
+		break;
+	case NL80211_IFTYPE_STATION:
+		/* station uses hw bssid other than 0 */
+		for (i = HW_BSSID_1; i < HW_BSSID_MAX; i++)
+			if (~mask & BIT(i))
+				return i;
+		break;
+	default:
+		WARN_ON(1);
+		break;
+	}
+
+	return -1;
+}
+
+static int mt7915_add_interface(struct ieee80211_hw *hw,
+				struct ieee80211_vif *vif)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	struct mt76_txq *mtxq;
+	bool ext_phy = phy != &dev->phy;
+	int idx, ret = 0;
+
+	mutex_lock(&dev->mt76.mutex);
+
+	mvif->idx = ffs(~dev->vif_mask) - 1;
+	if (mvif->idx >= MT7915_MAX_INTERFACES) {
+		ret = -ENOSPC;
+		goto out;
+	}
+
+	idx = get_omac_idx(vif->type, dev->omac_mask);
+	if (idx < 0) {
+		ret = -ENOSPC;
+		goto out;
+	}
+	mvif->omac_idx = idx;
+	mvif->dev = dev;
+
+	mvif->band_idx = ext_phy;
+	if (mt7915_ext_phy(dev))
+		mvif->wmm_idx = ext_phy * (MT7915_MAX_WMM_SETS / 2) +
+				mvif->idx % (MT7915_MAX_WMM_SETS / 2);
+	else
+		mvif->wmm_idx = mvif->idx % MT7915_MAX_WMM_SETS;
+
+	ret = mt7915_mcu_add_dev_info(dev, vif, true);
+	if (ret)
+		goto out;
+
+	dev->vif_mask |= BIT(mvif->idx);
+	dev->omac_mask |= BIT(mvif->omac_idx);
+	phy->omac_mask |= BIT(mvif->omac_idx);
+
+	idx = MT7915_WTBL_RESERVED - mvif->idx;
+
+	INIT_LIST_HEAD(&mvif->sta.poll_list);
+	mvif->sta.wcid.idx = idx;
+	mvif->sta.wcid.ext_phy = mvif->band_idx;
+	mvif->sta.wcid.hw_key_idx = -1;
+	mvif->sta.wcid.tx_info |= MT_WCID_TX_INFO_SET;
+	mt7915_mac_wtbl_update(dev, idx,
+			       MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
+
+	rcu_assign_pointer(dev->mt76.wcid[idx], &mvif->sta.wcid);
+	if (vif->txq) {
+		mtxq = (struct mt76_txq *)vif->txq->drv_priv;
+		mtxq->wcid = &mvif->sta.wcid;
+		mt76_txq_init(&dev->mt76, vif->txq);
+	}
+
+out:
+	mutex_unlock(&dev->mt76.mutex);
+
+	return ret;
+}
+
+static void mt7915_remove_interface(struct ieee80211_hw *hw,
+				    struct ieee80211_vif *vif)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_sta *msta = &mvif->sta;
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	int idx = msta->wcid.idx;
+
+	/* TODO: disable beacon for the bss */
+
+	mt7915_mcu_add_dev_info(dev, vif, false);
+
+	rcu_assign_pointer(dev->mt76.wcid[idx], NULL);
+	if (vif->txq)
+		mt76_txq_remove(&dev->mt76, vif->txq);
+
+	mutex_lock(&dev->mt76.mutex);
+	dev->vif_mask &= ~BIT(mvif->idx);
+	dev->omac_mask &= ~BIT(mvif->omac_idx);
+	phy->omac_mask &= ~BIT(mvif->omac_idx);
+	mutex_unlock(&dev->mt76.mutex);
+
+	spin_lock_bh(&dev->sta_poll_lock);
+	if (!list_empty(&msta->poll_list))
+		list_del_init(&msta->poll_list);
+	spin_unlock_bh(&dev->sta_poll_lock);
+}
+
+static void mt7915_init_dfs_state(struct mt7915_phy *phy)
+{
+	struct mt76_phy *mphy = phy->mt76;
+	struct ieee80211_hw *hw = mphy->hw;
+	struct cfg80211_chan_def *chandef = &hw->conf.chandef;
+
+	if (hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)
+		return;
+
+	if (!(chandef->chan->flags & IEEE80211_CHAN_RADAR))
+		return;
+
+	if (mphy->chandef.chan->center_freq == chandef->chan->center_freq &&
+	    mphy->chandef.width == chandef->width)
+		return;
+
+	phy->dfs_state = -1;
+}
+
+static int mt7915_set_channel(struct mt7915_phy *phy)
+{
+	struct mt7915_dev *dev = phy->dev;
+	int ret;
+
+	cancel_delayed_work_sync(&dev->mt76.mac_work);
+
+	mutex_lock(&dev->mt76.mutex);
+	set_bit(MT76_RESET, &phy->mt76->state);
+
+	mt7915_init_dfs_state(phy);
+	mt76_set_channel(phy->mt76);
+
+	ret = mt7915_mcu_set_chan_info(phy, MCU_EXT_CMD_CHANNEL_SWITCH);
+	if (ret)
+		goto out;
+
+	mt7915_mac_set_timing(phy);
+	ret = mt7915_dfs_init_radar_detector(phy);
+	mt7915_mac_cca_stats_reset(phy);
+
+	mt7915_mac_reset_counters(phy);
+	phy->noise = 0;
+
+out:
+	clear_bit(MT76_RESET, &phy->mt76->state);
+	mutex_unlock(&dev->mt76.mutex);
+
+	mt76_txq_schedule_all(phy->mt76);
+	ieee80211_queue_delayed_work(mt76_hw(dev), &dev->mt76.mac_work,
+				     MT7915_WATCHDOG_TIME);
+
+	return ret;
+}
+
+static int mt7915_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
+			  struct ieee80211_vif *vif, struct ieee80211_sta *sta,
+			  struct ieee80211_key_conf *key)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_sta *msta = sta ? (struct mt7915_sta *)sta->drv_priv :
+				  &mvif->sta;
+	struct mt76_wcid *wcid = &msta->wcid;
+	int idx = key->keyidx;
+
+	/* The hardware does not support per-STA RX GTK, fallback
+	 * to software mode for these.
+	 */
+	if ((vif->type == NL80211_IFTYPE_ADHOC ||
+	     vif->type == NL80211_IFTYPE_MESH_POINT) &&
+	    (key->cipher == WLAN_CIPHER_SUITE_TKIP ||
+	     key->cipher == WLAN_CIPHER_SUITE_CCMP) &&
+	    !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
+		return -EOPNOTSUPP;
+
+	/* fall back to sw encryption for unsupported ciphers */
+	switch (key->cipher) {
+	case WLAN_CIPHER_SUITE_AES_CMAC:
+		key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIE;
+		break;
+	case WLAN_CIPHER_SUITE_WEP40:
+	case WLAN_CIPHER_SUITE_WEP104:
+	case WLAN_CIPHER_SUITE_TKIP:
+	case WLAN_CIPHER_SUITE_CCMP:
+	case WLAN_CIPHER_SUITE_CCMP_256:
+	case WLAN_CIPHER_SUITE_GCMP:
+	case WLAN_CIPHER_SUITE_GCMP_256:
+	case WLAN_CIPHER_SUITE_SMS4:
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	if (cmd == SET_KEY) {
+		key->hw_key_idx = wcid->idx;
+		wcid->hw_key_idx = idx;
+	} else if (idx == wcid->hw_key_idx) {
+		wcid->hw_key_idx = -1;
+	}
+	mt76_wcid_key_setup(&dev->mt76, wcid,
+			    cmd == SET_KEY ? key : NULL);
+
+	return mt7915_mcu_add_key(dev, vif, msta, key, cmd);
+}
+
+static int mt7915_config(struct ieee80211_hw *hw, u32 changed)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	bool band = phy != &dev->phy;
+	int ret;
+
+	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
+		ieee80211_stop_queues(hw);
+		ret = mt7915_set_channel(phy);
+		if (ret)
+			return ret;
+		ieee80211_wake_queues(hw);
+	}
+
+	mutex_lock(&dev->mt76.mutex);
+
+	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
+		if (!(hw->conf.flags & IEEE80211_CONF_MONITOR))
+			phy->rxfilter |= MT_WF_RFCR_DROP_OTHER_UC;
+		else
+			phy->rxfilter &= ~MT_WF_RFCR_DROP_OTHER_UC;
+
+		mt76_wr(dev, MT_WF_RFCR(band), phy->rxfilter);
+	}
+
+	mutex_unlock(&dev->mt76.mutex);
+
+	return 0;
+}
+
+static int
+mt7915_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
+	       const struct ieee80211_tx_queue_params *params)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+
+	/* no need to update right away, we'll get BSS_CHANGED_QOS */
+	mvif->wmm[queue].cw_min = params->cw_min;
+	mvif->wmm[queue].cw_max = params->cw_max;
+	mvif->wmm[queue].aifs = params->aifs;
+	mvif->wmm[queue].txop = params->txop;
+
+	return 0;
+}
+
+static void mt7915_configure_filter(struct ieee80211_hw *hw,
+				    unsigned int changed_flags,
+				    unsigned int *total_flags,
+				    u64 multicast)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	bool band = phy != &dev->phy;
+
+	u32 ctl_flags = MT_WF_RFCR1_DROP_ACK |
+			MT_WF_RFCR1_DROP_BF_POLL |
+			MT_WF_RFCR1_DROP_BA |
+			MT_WF_RFCR1_DROP_CFEND |
+			MT_WF_RFCR1_DROP_CFACK;
+	u32 flags = 0;
+
+#define MT76_FILTER(_flag, _hw) do {					\
+		flags |= *total_flags & FIF_##_flag;			\
+		phy->rxfilter &= ~(_hw);				\
+		phy->rxfilter |= !(flags & FIF_##_flag) * (_hw);	\
+	} while (0)
+
+	phy->rxfilter &= ~(MT_WF_RFCR_DROP_OTHER_BSS |
+			   MT_WF_RFCR_DROP_OTHER_BEACON |
+			   MT_WF_RFCR_DROP_FRAME_REPORT |
+			   MT_WF_RFCR_DROP_PROBEREQ |
+			   MT_WF_RFCR_DROP_MCAST_FILTERED |
+			   MT_WF_RFCR_DROP_MCAST |
+			   MT_WF_RFCR_DROP_BCAST |
+			   MT_WF_RFCR_DROP_DUPLICATE |
+			   MT_WF_RFCR_DROP_A2_BSSID |
+			   MT_WF_RFCR_DROP_UNWANTED_CTL |
+			   MT_WF_RFCR_DROP_STBC_MULTI);
+
+	MT76_FILTER(OTHER_BSS, MT_WF_RFCR_DROP_OTHER_TIM |
+			       MT_WF_RFCR_DROP_A3_MAC |
+			       MT_WF_RFCR_DROP_A3_BSSID);
+
+	MT76_FILTER(FCSFAIL, MT_WF_RFCR_DROP_FCSFAIL);
+
+	MT76_FILTER(CONTROL, MT_WF_RFCR_DROP_CTS |
+			     MT_WF_RFCR_DROP_RTS |
+			     MT_WF_RFCR_DROP_CTL_RSV |
+			     MT_WF_RFCR_DROP_NDPA);
+
+	*total_flags = flags;
+	mt76_wr(dev, MT_WF_RFCR(band), phy->rxfilter);
+
+	if (*total_flags & FIF_CONTROL)
+		mt76_clear(dev, MT_WF_RFCR1(band), ctl_flags);
+	else
+		mt76_set(dev, MT_WF_RFCR1(band), ctl_flags);
+}
+
+static void mt7915_bss_info_changed(struct ieee80211_hw *hw,
+				    struct ieee80211_vif *vif,
+				    struct ieee80211_bss_conf *info,
+				    u32 changed)
+{
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+
+	mutex_lock(&dev->mt76.mutex);
+
+	/*
+	 * station mode uses BSSID to map the wlan entry to a peer,
+	 * and then peer references bss_info_rfch to set bandwidth cap.
+	 */
+	if (changed & BSS_CHANGED_BSSID &&
+	    vif->type == NL80211_IFTYPE_STATION) {
+		bool join = !is_zero_ether_addr(info->bssid);
+
+		mt7915_mcu_add_bss_info(phy, vif, join);
+		mt7915_mcu_add_sta(dev, vif, NULL, join);
+	}
+
+	if (changed & BSS_CHANGED_ASSOC)
+		mt7915_mcu_add_bss_info(phy, vif, info->assoc);
+
+	if (changed & BSS_CHANGED_ERP_SLOT) {
+		int slottime = info->use_short_slot ? 9 : 20;
+
+		if (slottime != phy->slottime) {
+			phy->slottime = slottime;
+			mt7915_mac_set_timing(phy);
+		}
+	}
+
+	if (changed & BSS_CHANGED_BEACON_ENABLED) {
+		mt7915_mcu_add_bss_info(phy, vif, info->enable_beacon);
+		mt7915_mcu_add_sta(dev, vif, NULL, info->enable_beacon);
+	}
+
+	/* ensure that enable txcmd_mode after bss_info */
+	if (changed & (BSS_CHANGED_QOS | BSS_CHANGED_BEACON_ENABLED))
+		mt7915_mcu_set_tx(dev, vif);
+
+	if (changed & (BSS_CHANGED_BEACON |
+		       BSS_CHANGED_BEACON_ENABLED))
+		mt7915_mcu_add_beacon(hw, vif, info->enable_beacon);
+
+	mutex_unlock(&dev->mt76.mutex);
+}
+
+static void
+mt7915_channel_switch_beacon(struct ieee80211_hw *hw,
+			     struct ieee80211_vif *vif,
+			     struct cfg80211_chan_def *chandef)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+
+	mutex_lock(&dev->mt76.mutex);
+	mt7915_mcu_add_beacon(hw, vif, true);
+	mutex_unlock(&dev->mt76.mutex);
+}
+
+int mt7915_mac_sta_add(struct mt76_dev *mdev, struct ieee80211_vif *vif,
+		       struct ieee80211_sta *sta)
+{
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	int idx;
+
+	idx = mt76_wcid_alloc(dev->mt76.wcid_mask, MT7915_WTBL_STA - 1);
+	if (idx < 0)
+		return -ENOSPC;
+
+	INIT_LIST_HEAD(&msta->poll_list);
+	INIT_WORK(&msta->stats_work, mt7915_mac_sta_stats_work);
+	spin_lock_init(&msta->ampdu_lock);
+	msta->vif = mvif;
+	msta->wcid.sta = 1;
+	msta->wcid.idx = idx;
+	msta->wcid.ext_phy = mvif->band_idx;
+	msta->wcid.tx_info |= MT_WCID_TX_INFO_SET;
+	msta->stats.jiffies = jiffies;
+
+	mt7915_mac_wtbl_update(dev, idx,
+			       MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
+
+	mt7915_mcu_add_sta(dev, vif, sta, true);
+
+	return 0;
+}
+
+void mt7915_mac_sta_remove(struct mt76_dev *mdev, struct ieee80211_vif *vif,
+			   struct ieee80211_sta *sta)
+{
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+
+	mt7915_mcu_add_sta(dev, vif, sta, false);
+
+	mt7915_mac_wtbl_update(dev, msta->wcid.idx,
+			       MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
+
+	spin_lock_bh(&dev->sta_poll_lock);
+	if (!list_empty(&msta->poll_list))
+		list_del_init(&msta->poll_list);
+	spin_unlock_bh(&dev->sta_poll_lock);
+}
+
+static void mt7915_tx(struct ieee80211_hw *hw,
+		      struct ieee80211_tx_control *control,
+		      struct sk_buff *skb)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt76_phy *mphy = hw->priv;
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
+	struct ieee80211_vif *vif = info->control.vif;
+	struct mt76_wcid *wcid = &dev->mt76.global_wcid;
+
+	if (control->sta) {
+		struct mt7915_sta *sta;
+
+		sta = (struct mt7915_sta *)control->sta->drv_priv;
+		wcid = &sta->wcid;
+	}
+
+	if (vif && !control->sta) {
+		struct mt7915_vif *mvif;
+
+		mvif = (struct mt7915_vif *)vif->drv_priv;
+		wcid = &mvif->sta.wcid;
+	}
+
+	mt76_tx(mphy, control->sta, wcid, skb);
+}
+
+static int mt7915_set_rts_threshold(struct ieee80211_hw *hw, u32 val)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+
+	mutex_lock(&dev->mt76.mutex);
+	mt7915_mcu_set_rts_thresh(phy, val);
+	mutex_unlock(&dev->mt76.mutex);
+
+	return 0;
+}
+
+static int
+mt7915_ampdu_action(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
+		    struct ieee80211_ampdu_params *params)
+{
+	enum ieee80211_ampdu_mlme_action action = params->action;
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct ieee80211_sta *sta = params->sta;
+	struct ieee80211_txq *txq = sta->txq[params->tid];
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+	u16 tid = params->tid;
+	u16 ssn = params->ssn;
+	struct mt76_txq *mtxq;
+	int ret = 0;
+
+	if (!txq)
+		return -EINVAL;
+
+	mtxq = (struct mt76_txq *)txq->drv_priv;
+
+	mutex_lock(&dev->mt76.mutex);
+	switch (action) {
+	case IEEE80211_AMPDU_RX_START:
+		mt76_rx_aggr_start(&dev->mt76, &msta->wcid, tid, ssn,
+				   params->buf_size);
+		mt7915_mcu_add_rx_ba(dev, params, true);
+		break;
+	case IEEE80211_AMPDU_RX_STOP:
+		mt76_rx_aggr_stop(&dev->mt76, &msta->wcid, tid);
+		mt7915_mcu_add_rx_ba(dev, params, false);
+		break;
+	case IEEE80211_AMPDU_TX_OPERATIONAL:
+		mtxq->aggr = true;
+		mtxq->send_bar = false;
+		mt7915_set_aggr_state(msta, tid, MT7915_AGGR_OPERATIONAL);
+		mt7915_mcu_add_tx_ba(dev, params, true);
+		break;
+	case IEEE80211_AMPDU_TX_STOP_FLUSH:
+	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
+		mtxq->aggr = false;
+		mt7915_set_aggr_state(msta, tid, MT7915_AGGR_STOP);
+		mt7915_mcu_add_tx_ba(dev, params, false);
+		break;
+	case IEEE80211_AMPDU_TX_START:
+		mtxq->agg_ssn = IEEE80211_SN_TO_SEQ(ssn);
+		mt7915_set_aggr_state(msta, tid, MT7915_AGGR_START);
+		ret = IEEE80211_AMPDU_TX_START_IMMEDIATE;
+		break;
+	case IEEE80211_AMPDU_TX_STOP_CONT:
+		mtxq->aggr = false;
+		mt7915_set_aggr_state(msta, tid, MT7915_AGGR_STOP);
+		mt7915_mcu_add_tx_ba(dev, params, false);
+		ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
+		break;
+	}
+	mutex_unlock(&dev->mt76.mutex);
+
+	return ret;
+}
+
+static int
+mt7915_sta_add(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
+	       struct ieee80211_sta *sta)
+{
+	return mt76_sta_state(hw, vif, sta, IEEE80211_STA_NOTEXIST,
+			      IEEE80211_STA_NONE);
+}
+
+static int
+mt7915_sta_remove(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
+		  struct ieee80211_sta *sta)
+{
+	return mt76_sta_state(hw, vif, sta, IEEE80211_STA_NONE,
+			      IEEE80211_STA_NOTEXIST);
+}
+
+static int
+mt7915_get_stats(struct ieee80211_hw *hw,
+		 struct ieee80211_low_level_stats *stats)
+{
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	struct mib_stats *mib = &phy->mib;
+
+	stats->dot11RTSSuccessCount = mib->rts_cnt;
+	stats->dot11RTSFailureCount = mib->rts_retries_cnt;
+	stats->dot11FCSErrorCount = mib->fcs_err_cnt;
+	stats->dot11ACKFailureCount = mib->ack_fail_cnt;
+
+	return 0;
+}
+
+static void
+mt7915_set_coverage_class(struct ieee80211_hw *hw, s16 coverage_class)
+{
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+
+	phy->coverage_class = max_t(s16, coverage_class, 0);
+	mt7915_mac_set_timing(phy);
+}
+
+static int
+mt7915_set_antenna(struct ieee80211_hw *hw, u32 tx_ant, u32 rx_ant)
+{
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	int max_nss = hweight8(hw->wiphy->available_antennas_tx);
+	bool ext_phy = phy != &dev->phy;
+
+	if (!tx_ant || tx_ant != rx_ant || ffs(tx_ant) > max_nss)
+		return -EINVAL;
+
+	if ((BIT(hweight8(tx_ant)) - 1) != tx_ant)
+		tx_ant = BIT(ffs(tx_ant) - 1) - 1;
+
+	mutex_lock(&dev->mt76.mutex);
+
+	phy->mt76->antenna_mask = tx_ant;
+
+	if (ext_phy) {
+		if (dev->chainmask == 0xf)
+			tx_ant <<= 2;
+		else
+			tx_ant <<= 1;
+	}
+	phy->chainmask = tx_ant;
+
+	mt76_set_stream_caps(&dev->mt76, true);
+
+	mutex_unlock(&dev->mt76.mutex);
+
+	return 0;
+}
+
+static void
+mt7915_sta_rc_update(struct ieee80211_hw *hw,
+		     struct ieee80211_vif *vif,
+		     struct ieee80211_sta *sta,
+		     u32 changed)
+{
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+
+	rcu_read_lock();
+	sta = ieee80211_find_sta(vif, sta->addr);
+	if (!sta) {
+		rcu_read_unlock();
+		return;
+	}
+	rcu_read_lock();
+
+	set_bit(changed, &msta->stats.changed);
+	ieee80211_queue_work(hw, &msta->stats_work);
+}
+
+const struct ieee80211_ops mt7915_ops = {
+	.tx = mt7915_tx,
+	.start = mt7915_start,
+	.stop = mt7915_stop,
+	.add_interface = mt7915_add_interface,
+	.remove_interface = mt7915_remove_interface,
+	.config = mt7915_config,
+	.conf_tx = mt7915_conf_tx,
+	.configure_filter = mt7915_configure_filter,
+	.bss_info_changed = mt7915_bss_info_changed,
+	.sta_add = mt7915_sta_add,
+	.sta_remove = mt7915_sta_remove,
+	.sta_pre_rcu_remove = mt76_sta_pre_rcu_remove,
+	.sta_rc_update = mt7915_sta_rc_update,
+	.set_key = mt7915_set_key,
+	.ampdu_action = mt7915_ampdu_action,
+	.set_rts_threshold = mt7915_set_rts_threshold,
+	.wake_tx_queue = mt76_wake_tx_queue,
+	.sw_scan_start = mt76_sw_scan,
+	.sw_scan_complete = mt76_sw_scan_complete,
+	.release_buffered_frames = mt76_release_buffered_frames,
+	.get_txpower = mt76_get_txpower,
+	.channel_switch_beacon = mt7915_channel_switch_beacon,
+	.get_stats = mt7915_get_stats,
+	.get_survey = mt76_get_survey,
+	.get_antenna = mt76_get_antenna,
+	.set_antenna = mt7915_set_antenna,
+	.set_coverage_class = mt7915_set_coverage_class,
+};
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
new file mode 100644
index 000000000000..5ca6bd9f099c
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -0,0 +1,2319 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#include <linux/firmware.h>
+#include <linux/fs.h>
+#include "mt7915.h"
+#include "mcu.h"
+#include "mac.h"
+#include "eeprom.h"
+
+struct mt7915_patch_hdr {
+	char build_date[16];
+	char platform[4];
+	__be32 hw_sw_ver;
+	__be32 patch_ver;
+	__be16 checksum;
+	u16 reserved;
+	struct {
+		__be32 patch_ver;
+		__be32 subsys;
+		__be32 feature;
+		__be32 n_region;
+		__be32 crc;
+		u32 reserved[11];
+	} desc;
+} __packed;
+
+struct mt7915_patch_sec {
+	__be32 type;
+	__be32 offs;
+	__be32 size;
+	union {
+		__be32 spec[13];
+		struct {
+			__be32 addr;
+			__be32 len;
+			__be32 sec_key_idx;
+			__be32 align_len;
+			u32 reserved[9];
+		} info;
+	};
+} __packed;
+
+struct mt7915_fw_trailer {
+	u8 chip_id;
+	u8 eco_code;
+	u8 n_region;
+	u8 format_ver;
+	u8 format_flag;
+	u8 reserved[2];
+	char fw_ver[10];
+	char build_date[15];
+	u32 crc;
+} __packed;
+
+struct mt7915_fw_region {
+	__le32 decomp_crc;
+	__le32 decomp_len;
+	__le32 decomp_blk_sz;
+	u8 reserved[4];
+	__le32 addr;
+	__le32 len;
+	u8 feature_set;
+	u8 reserved1[15];
+} __packed;
+
+#define MCU_PATCH_ADDRESS		0x200000
+
+#define FW_FEATURE_SET_ENCRYPT		BIT(0)
+#define FW_FEATURE_SET_KEY_IDX		GENMASK(2, 1)
+#define FW_FEATURE_OVERRIDE_ADDR	BIT(5)
+
+#define DL_MODE_ENCRYPT			BIT(0)
+#define DL_MODE_KEY_IDX			GENMASK(2, 1)
+#define DL_MODE_RESET_SEC_IV		BIT(3)
+#define DL_MODE_WORKING_PDA_CR4		BIT(4)
+#define DL_MODE_NEED_RSP		BIT(31)
+
+#define FW_START_OVERRIDE		BIT(0)
+#define FW_START_WORKING_PDA_CR4	BIT(2)
+
+#define PATCH_SEC_TYPE_MASK		GENMASK(15, 0)
+#define PATCH_SEC_TYPE_INFO		0x2
+
+#define to_wcid_lo(id)			FIELD_GET(GENMASK(7, 0), (u16)id)
+#define to_wcid_hi(id)			FIELD_GET(GENMASK(9, 8), (u16)id)
+
+static enum mt7915_cipher_type
+mt7915_mcu_get_cipher(int cipher)
+{
+	switch (cipher) {
+	case WLAN_CIPHER_SUITE_WEP40:
+		return MT_CIPHER_WEP40;
+	case WLAN_CIPHER_SUITE_WEP104:
+		return MT_CIPHER_WEP104;
+	case WLAN_CIPHER_SUITE_TKIP:
+		return MT_CIPHER_TKIP;
+	case WLAN_CIPHER_SUITE_AES_CMAC:
+		return MT_CIPHER_BIP_CMAC_128;
+	case WLAN_CIPHER_SUITE_CCMP:
+		return MT_CIPHER_AES_CCMP;
+	case WLAN_CIPHER_SUITE_CCMP_256:
+		return MT_CIPHER_CCMP_256;
+	case WLAN_CIPHER_SUITE_GCMP:
+		return MT_CIPHER_GCMP;
+	case WLAN_CIPHER_SUITE_GCMP_256:
+		return MT_CIPHER_GCMP_256;
+	case WLAN_CIPHER_SUITE_SMS4:
+		return MT_CIPHER_WAPI;
+	default:
+		return MT_CIPHER_NONE;
+	}
+}
+
+static u8 mt7915_mcu_chan_bw(struct cfg80211_chan_def *chandef)
+{
+	static const u8 width_to_bw[] = {
+		[NL80211_CHAN_WIDTH_40] = CMD_CBW_40MHZ,
+		[NL80211_CHAN_WIDTH_80] = CMD_CBW_80MHZ,
+		[NL80211_CHAN_WIDTH_80P80] = CMD_CBW_8080MHZ,
+		[NL80211_CHAN_WIDTH_160] = CMD_CBW_160MHZ,
+		[NL80211_CHAN_WIDTH_5] = CMD_CBW_5MHZ,
+		[NL80211_CHAN_WIDTH_10] = CMD_CBW_10MHZ,
+		[NL80211_CHAN_WIDTH_20] = CMD_CBW_20MHZ,
+		[NL80211_CHAN_WIDTH_20_NOHT] = CMD_CBW_20MHZ,
+	};
+
+	if (chandef->width >= ARRAY_SIZE(width_to_bw))
+		return 0;
+
+	return width_to_bw[chandef->width];
+}
+
+static u8
+mt7915_get_phy_mode(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+		    enum nl80211_band band, struct ieee80211_sta *sta)
+{
+	struct ieee80211_sta_ht_cap *ht_cap;
+	struct ieee80211_sta_vht_cap *vht_cap;
+	u8 mode = 0;
+
+	if (sta) {
+		ht_cap = &sta->ht_cap;
+		vht_cap = &sta->vht_cap;
+	} else {
+		struct ieee80211_supported_band *sband;
+
+		if (band == NL80211_BAND_2GHZ)
+			sband = &dev->mphy.sband_2g.sband;
+		else
+			sband = &dev->mphy.sband_5g.sband;
+
+		ht_cap = &sband->ht_cap;
+		vht_cap = &sband->vht_cap;
+	}
+
+	if (band == NL80211_BAND_2GHZ) {
+		mode |= PHY_MODE_B | PHY_MODE_G;
+
+		if (ht_cap->ht_supported)
+			mode |= PHY_MODE_GN;
+	} else if (band == NL80211_BAND_5GHZ) {
+		mode |= PHY_MODE_A;
+
+		if (ht_cap->ht_supported)
+			mode |= PHY_MODE_AN;
+
+		if (vht_cap->vht_supported)
+			mode |= PHY_MODE_AC;
+	}
+
+	return mode;
+}
+
+static int __mt7915_mcu_msg_send(struct mt7915_dev *dev, struct sk_buff *skb,
+				 int cmd, int *wait_seq)
+{
+	struct mt7915_mcu_txd *mcu_txd;
+	u8 seq, pkt_fmt, qidx;
+	enum mt7915_txq_id txq;
+	__le32 *txd;
+	u32 val;
+
+	seq = ++dev->mt76.mcu.msg_seq & 0xf;
+	if (!seq)
+		seq = ++dev->mt76.mcu.msg_seq & 0xf;
+
+	if (cmd == -MCU_CMD_FW_SCATTER) {
+		txq = MT_TXQ_FWDL;
+		goto exit;
+	}
+
+	mcu_txd = (struct mt7915_mcu_txd *)skb_push(skb, sizeof(*mcu_txd));
+
+	if (test_bit(MT76_STATE_MCU_RUNNING, &dev->mphy.state)) {
+		txq = MT_TXQ_MCU_WA;
+		qidx = MT_TX_MCU_PORT_RX_Q0;
+		pkt_fmt = MT_TX_TYPE_CMD;
+	} else {
+		txq = MT_TXQ_MCU;
+		qidx = MT_TX_MCU_PORT_RX_Q0;
+		pkt_fmt = MT_TX_TYPE_CMD;
+	}
+
+	txd = mcu_txd->txd;
+
+	val = FIELD_PREP(MT_TXD0_TX_BYTES, skb->len) |
+	      FIELD_PREP(MT_TXD0_PKT_FMT, pkt_fmt) |
+	      FIELD_PREP(MT_TXD0_Q_IDX, qidx);
+	txd[0] = cpu_to_le32(val);
+
+	val = MT_TXD1_LONG_FORMAT |
+	      FIELD_PREP(MT_TXD1_HDR_FORMAT, MT_HDR_FORMAT_CMD);
+	txd[1] = cpu_to_le32(val);
+
+	mcu_txd->len = cpu_to_le16(skb->len - sizeof(mcu_txd->txd));
+	mcu_txd->pq_id = cpu_to_le16(MCU_PQ_ID(MT_TX_PORT_IDX_MCU, qidx));
+	mcu_txd->pkt_type = MCU_PKT_ID;
+	mcu_txd->seq = seq;
+
+	if (cmd < 0) {
+		mcu_txd->set_query = MCU_Q_NA;
+		mcu_txd->cid = -cmd;
+	} else {
+		mcu_txd->cid = MCU_CMD_EXT_CID;
+		mcu_txd->ext_cid = cmd;
+		mcu_txd->ext_cid_ack = 1;
+
+		/* do not use Q_SET for efuse */
+		if (cmd == MCU_EXT_CMD_EFUSE_ACCESS)
+			mcu_txd->set_query = MCU_Q_QUERY;
+		else
+			mcu_txd->set_query = MCU_Q_SET;
+	}
+
+	mcu_txd->s2d_index = MCU_S2D_H2N;
+	BUILD_BUG_ON(cmd == MCU_EXT_CMD_EFUSE_ACCESS &&
+		     mcu_txd->set_query != MCU_Q_QUERY);
+
+exit:
+	if (wait_seq)
+		*wait_seq = seq;
+
+	return mt76_tx_queue_skb_raw(dev, txq, skb, 0);
+}
+
+static int
+mt7915_mcu_parse_eeprom(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt7915_mcu_eeprom_info *res;
+	u8 *buf;
+
+	if (!skb)
+		return -EINVAL;
+
+	skb_pull(skb, sizeof(struct mt7915_mcu_rxd));
+
+	res = (struct mt7915_mcu_eeprom_info *)skb->data;
+	buf = dev->mt76.eeprom.data + le32_to_cpu(res->addr);
+	memcpy(buf, res->data, 16);
+
+	return 0;
+}
+
+static int
+mt7915_mcu_parse_response(struct mt7915_dev *dev, int cmd,
+			  struct sk_buff *skb, int seq)
+{
+	struct mt7915_mcu_rxd *rxd = (struct mt7915_mcu_rxd *)skb->data;
+	int ret = 0;
+
+	if (seq != rxd->seq)
+		return -EAGAIN;
+
+	switch (cmd) {
+	case -MCU_CMD_PATCH_SEM_CONTROL:
+		skb_pull(skb, sizeof(*rxd) - 4);
+		ret = *skb->data;
+		break;
+	case MCU_EXT_CMD_THERMAL_CTRL:
+		skb_pull(skb, sizeof(*rxd) + 4);
+		ret = le32_to_cpu(*(__le32 *)skb->data);
+		break;
+	case MCU_EXT_CMD_EFUSE_ACCESS:
+		ret = mt7915_mcu_parse_eeprom(dev, skb);
+		break;
+	default:
+		break;
+	}
+	dev_kfree_skb(skb);
+
+	return ret;
+}
+
+static int
+mt7915_mcu_wait_response(struct mt7915_dev *dev, int cmd, int seq)
+{
+	unsigned long expires = jiffies + 20 * HZ;
+	struct sk_buff *skb;
+	int ret = 0;
+
+	while (true) {
+		skb = mt76_mcu_get_response(&dev->mt76, expires);
+		if (!skb) {
+			dev_err(dev->mt76.dev, "Message %d (seq %d) timeout\n",
+				cmd, seq);
+			return -ETIMEDOUT;
+		}
+
+		ret = mt7915_mcu_parse_response(dev, cmd, skb, seq);
+		if (ret != -EAGAIN)
+			break;
+	}
+
+	return ret;
+}
+
+static int
+mt7915_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
+			int cmd, bool wait_resp)
+{
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+	int ret, seq;
+
+	mutex_lock(&mdev->mcu.mutex);
+
+	ret = __mt7915_mcu_msg_send(dev, skb, cmd, &seq);
+	if (ret)
+		goto out;
+
+	if (wait_resp)
+		ret = mt7915_mcu_wait_response(dev, cmd, seq);
+
+out:
+	mutex_unlock(&mdev->mcu.mutex);
+
+	return ret;
+}
+
+static int
+mt7915_mcu_msg_send(struct mt76_dev *mdev, int cmd, const void *data,
+		    int len, bool wait_resp)
+{
+	struct sk_buff *skb;
+
+	skb = mt76_mcu_msg_alloc(mdev, data, len);
+	if (!skb)
+		return -ENOMEM;
+
+	return __mt76_mcu_skb_send_msg(mdev, skb, cmd, wait_resp);
+}
+
+static void
+mt7915_mcu_csa_finish(void *priv, u8 *mac, struct ieee80211_vif *vif)
+{
+	if (vif->csa_active)
+		ieee80211_csa_finish(vif);
+}
+
+static void
+mt7915_mcu_rx_radar_detected(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt76_phy *mphy = &dev->mt76.phy;
+	struct mt7915_mcu_rdd_report *r;
+
+	r = (struct mt7915_mcu_rdd_report *)skb->data;
+
+	if (r->idx && dev->mt76.phy2)
+		mphy = dev->mt76.phy2;
+
+	ieee80211_radar_detected(mphy->hw);
+	dev->hw_pattern++;
+}
+
+static void
+mt7915_mcu_tx_rate_cal(struct mt76_phy *mphy, struct mt7915_mcu_ra_info *ra,
+		       struct rate_info *rate, u16 r)
+{
+	struct ieee80211_supported_band *sband;
+	u16 ru_idx = le16_to_cpu(ra->ru_idx);
+	u16 flags = 0;
+
+	rate->mcs = FIELD_GET(MT_RA_RATE_MCS, r);
+	rate->nss = FIELD_GET(MT_RA_RATE_NSS, r) + 1;
+
+	switch (FIELD_GET(MT_RA_RATE_TX_MODE, r)) {
+	case MT_PHY_TYPE_CCK:
+	case MT_PHY_TYPE_OFDM:
+		if (mphy->chandef.chan->band == NL80211_BAND_5GHZ)
+			sband = &mphy->sband_5g.sband;
+		else
+			sband = &mphy->sband_2g.sband;
+
+		rate->legacy = sband->bitrates[rate->mcs].bitrate;
+		break;
+	case MT_PHY_TYPE_HT:
+	case MT_PHY_TYPE_HT_GF:
+		rate->mcs += (rate->nss - 1) * 8;
+		flags |= RATE_INFO_FLAGS_MCS;
+
+		if (ra->gi)
+			flags |= RATE_INFO_FLAGS_SHORT_GI;
+		break;
+	case MT_PHY_TYPE_VHT:
+		flags |= RATE_INFO_FLAGS_VHT_MCS;
+
+		if (ra->gi)
+			flags |= RATE_INFO_FLAGS_SHORT_GI;
+		break;
+	case MT_PHY_TYPE_HE_SU:
+	case MT_PHY_TYPE_HE_EXT_SU:
+	case MT_PHY_TYPE_HE_TB:
+	case MT_PHY_TYPE_HE_MU:
+		rate->he_gi = ra->gi;
+		rate->he_dcm = FIELD_GET(MT_RA_RATE_DCM_EN, r);
+
+		flags |= RATE_INFO_FLAGS_HE_MCS;
+		break;
+	default:
+		break;
+	}
+	rate->flags = flags;
+
+	if (ru_idx) {
+		switch (ru_idx) {
+		case 1 ... 2:
+			rate->he_ru_alloc = NL80211_RATE_INFO_HE_RU_ALLOC_996;
+			break;
+		case 3 ... 6:
+			rate->he_ru_alloc = NL80211_RATE_INFO_HE_RU_ALLOC_484;
+			break;
+		case 7 ... 14:
+			rate->he_ru_alloc = NL80211_RATE_INFO_HE_RU_ALLOC_242;
+			break;
+		default:
+			rate->he_ru_alloc = NL80211_RATE_INFO_HE_RU_ALLOC_106;
+			break;
+		}
+		rate->bw = RATE_INFO_BW_HE_RU;
+	} else {
+		u8 bw = mt7915_mcu_chan_bw(&mphy->chandef) -
+			FIELD_GET(MT_RA_RATE_BW, r);
+
+		switch (bw) {
+		case IEEE80211_STA_RX_BW_160:
+			rate->bw = RATE_INFO_BW_160;
+			break;
+		case IEEE80211_STA_RX_BW_80:
+			rate->bw = RATE_INFO_BW_80;
+			break;
+		case IEEE80211_STA_RX_BW_40:
+			rate->bw = RATE_INFO_BW_40;
+			break;
+		default:
+			rate->bw = RATE_INFO_BW_20;
+			break;
+		}
+	}
+}
+
+static void
+mt7915_mcu_tx_rate_report(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt7915_mcu_ra_info *ra = (struct mt7915_mcu_ra_info *)skb->data;
+	u16 wcidx = le16_to_cpu(ra->wlan_idx);
+	struct mt76_wcid *wcid = rcu_dereference(dev->mt76.wcid[wcidx]);
+	struct mt7915_sta *msta = container_of(wcid, struct mt7915_sta, wcid);
+	struct mt7915_sta_stats *stats = &msta->stats;
+	struct mt76_phy *mphy = &dev->mphy;
+	struct rate_info rate = {}, prob_rate = {};
+	u16 attempts = le16_to_cpu(ra->attempts);
+	u16 curr = le16_to_cpu(ra->curr_rate);
+	u16 probe = le16_to_cpu(ra->prob_up_rate);
+
+	if (msta->wcid.ext_phy && dev->mt76.phy2)
+		mphy = dev->mt76.phy2;
+
+	/* current rate */
+	mt7915_mcu_tx_rate_cal(mphy, ra, &rate, curr);
+	stats->tx_rate = rate;
+
+	/* probing rate */
+	mt7915_mcu_tx_rate_cal(mphy, ra, &prob_rate, probe);
+	stats->prob_rate = prob_rate;
+
+	if (attempts) {
+		u16 success = le16_to_cpu(ra->success);
+
+		stats->per = 1000 * (attempts - success) / attempts;
+	}
+}
+
+static void
+mt7915_mcu_rx_ext_event(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt7915_mcu_rxd *rxd = (struct mt7915_mcu_rxd *)skb->data;
+
+	switch (rxd->ext_eid) {
+	case MCU_EXT_EVENT_RDD_REPORT:
+		mt7915_mcu_rx_radar_detected(dev, skb);
+		break;
+	case MCU_EXT_EVENT_CSA_NOTIFY:
+		ieee80211_iterate_active_interfaces_atomic(dev->mt76.hw,
+				IEEE80211_IFACE_ITER_RESUME_ALL,
+				mt7915_mcu_csa_finish, dev);
+		break;
+	case MCU_EXT_EVENT_RATE_REPORT:
+		mt7915_mcu_tx_rate_report(dev, skb);
+		break;
+	default:
+		break;
+	}
+}
+
+static void
+mt7915_mcu_rx_unsolicited_event(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt7915_mcu_rxd *rxd = (struct mt7915_mcu_rxd *)skb->data;
+
+	switch (rxd->eid) {
+	case MCU_EVENT_EXT:
+		mt7915_mcu_rx_ext_event(dev, skb);
+		break;
+	default:
+		break;
+	}
+	dev_kfree_skb(skb);
+}
+
+void mt7915_mcu_rx_event(struct mt7915_dev *dev, struct sk_buff *skb)
+{
+	struct mt7915_mcu_rxd *rxd = (struct mt7915_mcu_rxd *)skb->data;
+
+	if (rxd->ext_eid == MCU_EXT_EVENT_THERMAL_PROTECT ||
+	    rxd->ext_eid == MCU_EXT_EVENT_ASSERT_DUMP ||
+	    rxd->ext_eid == MCU_EXT_EVENT_PS_SYNC ||
+	    rxd->ext_eid == MCU_EXT_EVENT_RATE_REPORT ||
+	    !rxd->seq)
+		mt7915_mcu_rx_unsolicited_event(dev, skb);
+	else
+		mt76_mcu_rx_event(&dev->mt76, skb);
+}
+
+static struct sk_buff *
+mt7915_mcu_alloc_sta_req(struct mt7915_dev *dev, struct mt7915_vif *mvif,
+			 struct mt7915_sta *msta, int len)
+{
+	struct sta_req_hdr hdr = {
+		.bss_idx = mvif->idx,
+		.wlan_idx_lo = msta ? to_wcid_lo(msta->wcid.idx) : 0,
+		.wlan_idx_hi = msta ? to_wcid_hi(msta->wcid.idx) : 0,
+		.muar_idx = msta ? mvif->omac_idx : 0,
+		.is_tlv_append = 1,
+	};
+	struct sk_buff *skb;
+
+	skb = mt76_mcu_msg_alloc(&dev->mt76, NULL, len);
+	if (!skb)
+		return ERR_PTR(-ENOMEM);
+
+	skb_put_data(skb, &hdr, sizeof(hdr));
+
+	return skb;
+}
+
+static struct wtbl_req_hdr *
+mt7915_mcu_alloc_wtbl_req(struct mt7915_dev *dev, struct mt7915_sta *msta,
+			  int cmd, void *sta_wtbl, struct sk_buff **skb)
+{
+	struct tlv *sta_hdr = sta_wtbl;
+	struct wtbl_req_hdr hdr = {
+		.wlan_idx_lo = to_wcid_lo(msta->wcid.idx),
+		.wlan_idx_hi = to_wcid_hi(msta->wcid.idx),
+		.operation = cmd,
+	};
+	struct sk_buff *nskb = *skb;
+
+	if (!nskb) {
+		nskb = mt76_mcu_msg_alloc(&dev->mt76, NULL,
+					  MT7915_WTBL_UPDATE_BA_SIZE);
+		if (!nskb)
+			return ERR_PTR(-ENOMEM);
+
+		*skb = nskb;
+	}
+
+	if (sta_hdr)
+		sta_hdr->len = cpu_to_le16(sizeof(hdr));
+
+	return skb_put_data(nskb, &hdr, sizeof(hdr));
+}
+
+static struct tlv *
+mt7915_mcu_add_nested_tlv(struct sk_buff *skb, int tag, int len,
+			  void *sta_ntlv, void *sta_wtbl)
+{
+	struct sta_ntlv_hdr *ntlv_hdr = sta_ntlv;
+	struct tlv *sta_hdr = sta_wtbl;
+	struct tlv *ptlv, tlv = {
+		.tag = cpu_to_le16(tag),
+		.len = cpu_to_le16(len),
+	};
+	u16 ntlv;
+
+	ptlv = skb_put(skb, len);
+	memcpy(ptlv, &tlv, sizeof(tlv));
+
+	ntlv = le16_to_cpu(ntlv_hdr->tlv_num);
+	ntlv_hdr->tlv_num = cpu_to_le16(ntlv + 1);
+
+	if (sta_hdr) {
+		u16 size = le16_to_cpu(sta_hdr->len);
+
+		sta_hdr->len = cpu_to_le16(size + len);
+	}
+
+	return ptlv;
+}
+
+static struct tlv *
+mt7915_mcu_add_tlv(struct sk_buff *skb, int tag, int len)
+{
+	return mt7915_mcu_add_nested_tlv(skb, tag, len, skb->data, NULL);
+}
+
+static struct tlv *
+mt7915_mcu_add_nested_subtlv(struct sk_buff *skb, int sub_tag, int sub_len,
+			     __le16 *sub_ntlv, __le16 *len)
+{
+	struct tlv *ptlv, tlv = {
+		.tag = cpu_to_le16(sub_tag),
+		.len = cpu_to_le16(sub_len),
+	};
+
+	ptlv = skb_put(skb, sub_len);
+	memcpy(ptlv, &tlv, sizeof(tlv));
+
+	*sub_ntlv = cpu_to_le16(le16_to_cpu(*sub_ntlv) + 1);
+	*len = cpu_to_le16(le16_to_cpu(*len) + sub_len);
+
+	return ptlv;
+}
+
+/** bss info **/
+static int
+mt7915_mcu_bss_basic_tlv(struct sk_buff *skb, struct ieee80211_vif *vif,
+			 struct mt7915_phy *phy, bool enable)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct cfg80211_chan_def *chandef = &phy->mt76->chandef;
+	enum nl80211_band band = chandef->chan->band;
+	struct bss_info_basic *bss;
+	u16 wlan_idx = mvif->sta.wcid.idx;
+	u32 type = NETWORK_INFRA;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_tlv(skb, BSS_INFO_BASIC, sizeof(*bss));
+
+	switch (vif->type) {
+	case NL80211_IFTYPE_MESH_POINT:
+	case NL80211_IFTYPE_AP:
+		break;
+	case NL80211_IFTYPE_STATION:
+		/* TODO: enable BSS_INFO_UAPSD & BSS_INFO_PM */
+		if (enable) {
+			struct ieee80211_sta *sta;
+			struct mt7915_sta *msta;
+
+			rcu_read_lock();
+			sta = ieee80211_find_sta(vif, vif->bss_conf.bssid);
+			if (!sta) {
+				rcu_read_unlock();
+				return -EINVAL;
+			}
+
+			msta = (struct mt7915_sta *)sta->drv_priv;
+			wlan_idx = msta->wcid.idx;
+			rcu_read_unlock();
+		}
+		break;
+	case NL80211_IFTYPE_ADHOC:
+		type = NETWORK_IBSS;
+		break;
+	default:
+		WARN_ON(1);
+		break;
+	}
+
+	bss = (struct bss_info_basic *)tlv;
+	memcpy(bss->bssid, vif->bss_conf.bssid, ETH_ALEN);
+	bss->bcn_interval = cpu_to_le16(vif->bss_conf.beacon_int);
+	bss->network_type = cpu_to_le32(type);
+	bss->dtim_period = vif->bss_conf.dtim_period;
+	bss->bmc_wcid_lo = to_wcid_lo(wlan_idx);
+	bss->bmc_wcid_hi = to_wcid_hi(wlan_idx);
+	bss->phy_mode = mt7915_get_phy_mode(phy->dev, vif, band, NULL);
+	bss->wmm_idx = mvif->wmm_idx;
+	bss->active = enable;
+
+	return 0;
+}
+
+static void
+mt7915_mcu_bss_omac_tlv(struct sk_buff *skb, struct ieee80211_vif *vif)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct bss_info_omac *omac;
+	struct tlv *tlv;
+	u32 type = 0;
+	u8 idx;
+
+	tlv = mt7915_mcu_add_tlv(skb, BSS_INFO_OMAC, sizeof(*omac));
+
+	switch (vif->type) {
+	case NL80211_IFTYPE_MESH_POINT:
+	case NL80211_IFTYPE_AP:
+		type = CONNECTION_INFRA_AP;
+		break;
+	case NL80211_IFTYPE_STATION:
+		type = CONNECTION_INFRA_STA;
+		break;
+	case NL80211_IFTYPE_ADHOC:
+		type = CONNECTION_IBSS_ADHOC;
+		break;
+	default:
+		WARN_ON(1);
+		break;
+	}
+
+	omac = (struct bss_info_omac *)tlv;
+	idx = mvif->omac_idx > EXT_BSSID_START ? HW_BSSID_0 : mvif->omac_idx;
+	omac->conn_type = cpu_to_le32(type);
+	omac->omac_idx = mvif->omac_idx;
+	omac->band_idx = mvif->band_idx;
+	omac->hw_bss_idx = idx;
+}
+
+static void
+mt7915_mcu_bss_rfch_tlv(struct sk_buff *skb, struct ieee80211_vif *vif,
+			struct mt7915_phy *phy)
+{
+	struct cfg80211_chan_def *chandef = &phy->mt76->chandef;
+	struct bss_info_rf_ch *ch;
+	struct tlv *tlv;
+	int freq1 = chandef->center_freq1;
+
+	tlv = mt7915_mcu_add_tlv(skb, BSS_INFO_RF_CH, sizeof(*ch));
+
+	ch = (struct bss_info_rf_ch *)tlv;
+	ch->pri_ch = chandef->chan->hw_value;
+	ch->center_ch0 = ieee80211_frequency_to_channel(freq1);
+	ch->bw = mt7915_mcu_chan_bw(chandef);
+
+	if (chandef->width == NL80211_CHAN_WIDTH_80P80) {
+		int freq2 = chandef->center_freq2;
+
+		ch->center_ch1 = ieee80211_frequency_to_channel(freq2);
+	}
+
+	ch->he_all_disable = true;
+}
+
+static void
+mt7915_mcu_bss_ra_tlv(struct sk_buff *skb, struct ieee80211_vif *vif,
+		      struct mt7915_phy *phy)
+{
+	struct bss_info_ra *ra;
+	struct tlv *tlv;
+	int max_nss = hweight8(phy->chainmask);
+
+	tlv = mt7915_mcu_add_tlv(skb, BSS_INFO_RA, sizeof(*ra));
+
+	ra = (struct bss_info_ra *)tlv;
+	ra->op_mode = vif->type == NL80211_IFTYPE_AP;
+	ra->adhoc_en = vif->type == NL80211_IFTYPE_ADHOC;
+	ra->short_preamble = true;
+	ra->tx_streams = max_nss;
+	ra->rx_streams = max_nss;
+	ra->algo = 4;
+	ra->train_up_rule = 2;
+	ra->train_up_high_thres = 110;
+	ra->train_up_rule_rssi = -70;
+	ra->low_traffic_thres = 2;
+	ra->phy_cap = cpu_to_le32(0xfdf);
+	ra->interval = cpu_to_le32(500);
+	ra->fast_interval = cpu_to_le32(100);
+}
+
+static void
+mt7915_mcu_bss_ext_tlv(struct sk_buff *skb, struct mt7915_vif *mvif)
+{
+/* SIFS 20us + 512 byte beacon tranmitted by 1Mbps (3906us) */
+#define BCN_TX_ESTIMATE_TIME	(4096 + 20)
+	struct bss_info_ext_bss *ext;
+	int ext_bss_idx, tsf_offset;
+	struct tlv *tlv;
+
+	ext_bss_idx = mvif->omac_idx - EXT_BSSID_START;
+	if (ext_bss_idx < 0)
+		return;
+
+	tlv = mt7915_mcu_add_tlv(skb, BSS_INFO_EXT_BSS, sizeof(*ext));
+
+	ext = (struct bss_info_ext_bss *)tlv;
+	tsf_offset = ext_bss_idx * BCN_TX_ESTIMATE_TIME;
+	ext->mbss_tsf_offset = cpu_to_le32(tsf_offset);
+}
+
+static void
+mt7915_mcu_bss_bmc_tlv(struct sk_buff *skb, struct mt7915_phy *phy)
+{
+	struct bss_info_bmc_rate *bmc;
+	struct cfg80211_chan_def *chandef = &phy->mt76->chandef;
+	enum nl80211_band band = chandef->chan->band;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_tlv(skb, BSS_INFO_BMC_RATE, sizeof(*bmc));
+
+	bmc = (struct bss_info_bmc_rate *)tlv;
+	if (band == NL80211_BAND_2GHZ) {
+		bmc->short_preamble = true;
+	} else {
+		bmc->bc_trans = cpu_to_le16(0x2000);
+		bmc->mc_trans = cpu_to_le16(0x2080);
+	}
+}
+
+static void
+mt7915_mcu_bss_sync_tlv(struct sk_buff *skb, struct ieee80211_vif *vif)
+{
+	struct bss_info_sync_mode *sync;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_tlv(skb, BSS_INFO_SYNC_MODE, sizeof(*sync));
+
+	sync = (struct bss_info_sync_mode *)tlv;
+	sync->bcn_interval = cpu_to_le16(vif->bss_conf.beacon_int);
+	sync->dtim_period = vif->bss_conf.dtim_period;
+	sync->enable = true;
+}
+
+int mt7915_mcu_add_bss_info(struct mt7915_phy *phy,
+			    struct ieee80211_vif *vif, int enable)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct sk_buff *skb;
+
+	skb = mt7915_mcu_alloc_sta_req(phy->dev, mvif, NULL,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	/* bss_omac must be first */
+	if (enable)
+		mt7915_mcu_bss_omac_tlv(skb, vif);
+
+	mt7915_mcu_bss_basic_tlv(skb, vif, phy, enable);
+
+	if (enable) {
+		mt7915_mcu_bss_rfch_tlv(skb, vif, phy);
+		mt7915_mcu_bss_bmc_tlv(skb, phy);
+		mt7915_mcu_bss_ra_tlv(skb, vif, phy);
+
+		if (mvif->omac_idx > HW_BSSID_MAX)
+			mt7915_mcu_bss_ext_tlv(skb, mvif);
+		else
+			mt7915_mcu_bss_sync_tlv(skb, vif);
+	}
+
+	return __mt76_mcu_skb_send_msg(&phy->dev->mt76, skb,
+				       MCU_EXT_CMD_BSS_INFO_UPDATE, true);
+}
+
+/** starec & wtbl **/
+static int
+mt7915_mcu_sta_key_tlv(struct sk_buff *skb, struct ieee80211_key_conf *key,
+		       enum set_key_cmd cmd)
+{
+	struct sta_rec_sec *sec;
+	struct tlv *tlv;
+	u32 len = sizeof(*sec);
+
+	tlv = mt7915_mcu_add_tlv(skb, STA_REC_KEY_V2, sizeof(*sec));
+
+	sec = (struct sta_rec_sec *)tlv;
+	sec->add = cmd;
+
+	if (cmd == SET_KEY) {
+		struct sec_key *sec_key;
+		u8 cipher;
+
+		cipher = mt7915_mcu_get_cipher(key->cipher);
+		if (cipher == MT_CIPHER_NONE)
+			return -EOPNOTSUPP;
+
+		sec_key = &sec->key[0];
+		sec_key->cipher_len = sizeof(*sec_key);
+		sec_key->key_id = key->keyidx;
+
+		if (cipher == MT_CIPHER_BIP_CMAC_128) {
+			sec_key->cipher_id = MT_CIPHER_AES_CCMP;
+			sec_key->key_len = 16;
+			memcpy(sec_key->key, key->key, 16);
+
+			sec_key = &sec->key[1];
+			sec_key->cipher_id = MT_CIPHER_BIP_CMAC_128;
+			sec_key->cipher_len = sizeof(*sec_key);
+			sec_key->key_len = 16;
+			memcpy(sec_key->key, key->key + 16, 16);
+
+			sec->n_cipher = 2;
+		} else {
+			sec_key->cipher_id = cipher;
+			sec_key->key_len = key->keylen;
+			memcpy(sec_key->key, key->key, key->keylen);
+
+			if (cipher == MT_CIPHER_TKIP) {
+				/* Rx/Tx MIC keys are swapped */
+				memcpy(sec_key->key + 16, key->key + 24, 8);
+				memcpy(sec_key->key + 24, key->key + 16, 8);
+			}
+
+			len -= sizeof(*sec_key);
+			sec->n_cipher = 1;
+		}
+	} else {
+		len -= sizeof(sec->key);
+		sec->n_cipher = 0;
+	}
+	sec->len = cpu_to_le16(len);
+
+	return 0;
+}
+
+int mt7915_mcu_add_key(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+		       struct mt7915_sta *msta, struct ieee80211_key_conf *key,
+		       enum set_key_cmd cmd)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct sk_buff *skb;
+	int ret;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	ret = mt7915_mcu_sta_key_tlv(skb, key, cmd);
+	if (ret)
+		return ret;
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
+static void
+mt7915_mcu_sta_ba_tlv(struct sk_buff *skb,
+		      struct ieee80211_ampdu_params *params,
+		      bool enable, bool tx)
+{
+	struct sta_rec_ba *ba;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_tlv(skb, STA_REC_BA, sizeof(*ba));
+
+	ba = (struct sta_rec_ba *)tlv;
+	ba->ba_type = tx ? MT_BA_TYPE_ORIGINATOR : MT_BA_TYPE_RECIPIENT,
+	ba->winsize = cpu_to_le16(params->buf_size);
+	ba->ssn = cpu_to_le16(params->ssn);
+	ba->ba_en = enable << params->tid;
+	ba->amsdu = params->amsdu;
+	ba->tid = params->tid;
+}
+
+static void
+mt7915_mcu_wtbl_ba_tlv(struct sk_buff *skb,
+		       struct ieee80211_ampdu_params *params,
+		       bool enable, bool tx, void *sta_wtbl,
+		       void *wtbl_tlv)
+{
+	struct wtbl_ba *ba;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_nested_tlv(skb, WTBL_BA, sizeof(*ba),
+					wtbl_tlv, sta_wtbl);
+
+	ba = (struct wtbl_ba *)tlv;
+	ba->tid = params->tid;
+
+	if (tx) {
+		ba->ba_type = MT_BA_TYPE_ORIGINATOR;
+		ba->sn = enable ? cpu_to_le16(params->ssn) : 0;
+		ba->ba_en = enable;
+	} else {
+		memcpy(ba->peer_addr, params->sta->addr, ETH_ALEN);
+		ba->ba_type = MT_BA_TYPE_RECIPIENT;
+		ba->rst_ba_tid = params->tid;
+		ba->rst_ba_sel = RST_BA_MAC_TID_MATCH;
+		ba->rst_ba_sb = 1;
+	}
+
+	if (enable && tx)
+		ba->ba_winsize = cpu_to_le16(params->buf_size);
+}
+
+static int
+mt7915_mcu_sta_ba(struct mt7915_dev *dev,
+		  struct ieee80211_ampdu_params *params,
+		  bool enable, bool tx)
+{
+	struct mt7915_sta *msta = (struct mt7915_sta *)params->sta->drv_priv;
+	struct mt7915_vif *mvif = msta->vif;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct tlv *sta_wtbl;
+	struct sk_buff *skb;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7915_mcu_sta_ba_tlv(skb, params, enable, tx);
+	sta_wtbl = mt7915_mcu_add_tlv(skb, STA_REC_WTBL, sizeof(struct tlv));
+
+	wtbl_hdr = mt7915_mcu_alloc_wtbl_req(dev, msta, WTBL_SET, sta_wtbl,
+					     &skb);
+	mt7915_mcu_wtbl_ba_tlv(skb, params, enable, tx, sta_wtbl, wtbl_hdr);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
+int mt7915_mcu_add_tx_ba(struct mt7915_dev *dev,
+			 struct ieee80211_ampdu_params *params,
+			 bool enable)
+{
+	return mt7915_mcu_sta_ba(dev, params, enable, true);
+}
+
+int mt7915_mcu_add_rx_ba(struct mt7915_dev *dev,
+			 struct ieee80211_ampdu_params *params,
+			 bool enable)
+{
+	return mt7915_mcu_sta_ba(dev, params, enable, false);
+}
+
+static void
+mt7915_mcu_wtbl_generic_tlv(struct sk_buff *skb, struct ieee80211_vif *vif,
+			    struct ieee80211_sta *sta, void *sta_wtbl,
+			    void *wtbl_tlv)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct wtbl_generic *generic;
+	struct wtbl_rx *rx;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_nested_tlv(skb, WTBL_GENERIC, sizeof(*generic),
+					wtbl_tlv, sta_wtbl);
+
+	generic = (struct wtbl_generic *)tlv;
+
+	if (sta) {
+		memcpy(generic->peer_addr, sta->addr, ETH_ALEN);
+		generic->partial_aid = cpu_to_le16(sta->aid);
+		generic->muar_idx = mvif->omac_idx;
+		generic->qos = sta->wme;
+	} else {
+		/* use BSSID in station mode */
+		if (vif->type == NL80211_IFTYPE_STATION)
+			memcpy(generic->peer_addr, vif->bss_conf.bssid,
+			       ETH_ALEN);
+		else
+			eth_broadcast_addr(generic->peer_addr);
+
+		generic->muar_idx = 0xe;
+	}
+
+	tlv = mt7915_mcu_add_nested_tlv(skb, WTBL_RX, sizeof(*rx),
+					wtbl_tlv, sta_wtbl);
+
+	rx = (struct wtbl_rx *)tlv;
+	rx->rca1 = sta ? vif->type != NL80211_IFTYPE_AP : 1;
+	rx->rca2 = 1;
+	rx->rv = 1;
+}
+
+static void
+mt7915_mcu_sta_basic_tlv(struct sk_buff *skb, struct ieee80211_vif *vif,
+			 struct ieee80211_sta *sta, bool enable)
+{
+#define EXTRA_INFO_VER          BIT(0)
+#define EXTRA_INFO_NEW          BIT(1)
+	struct sta_rec_basic *basic;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_tlv(skb, STA_REC_BASIC, sizeof(*basic));
+
+	basic = (struct sta_rec_basic *)tlv;
+	basic->extra_info = cpu_to_le16(EXTRA_INFO_VER);
+
+	if (enable) {
+		basic->extra_info |= cpu_to_le16(EXTRA_INFO_NEW);
+		basic->conn_state = CONN_STATE_PORT_SECURE;
+	} else {
+		basic->conn_state = CONN_STATE_DISCONNECT;
+	}
+
+	if (!sta) {
+		basic->conn_type = cpu_to_le32(CONNECTION_INFRA_BC);
+		eth_broadcast_addr(basic->peer_addr);
+		return;
+	}
+
+	switch (vif->type) {
+	case NL80211_IFTYPE_MESH_POINT:
+	case NL80211_IFTYPE_AP:
+		basic->conn_type = cpu_to_le32(CONNECTION_INFRA_STA);
+		break;
+	case NL80211_IFTYPE_STATION:
+		basic->conn_type = cpu_to_le32(CONNECTION_INFRA_AP);
+		break;
+	case NL80211_IFTYPE_ADHOC:
+		basic->conn_type = cpu_to_le32(CONNECTION_IBSS_ADHOC);
+		break;
+	default:
+		WARN_ON(1);
+		break;
+	}
+
+	memcpy(basic->peer_addr, sta->addr, ETH_ALEN);
+	basic->aid = cpu_to_le16(sta->aid);
+	basic->qos = sta->wme;
+}
+
+static void
+mt7915_mcu_sta_tlv(struct mt7915_dev *dev, struct sk_buff *skb,
+		   struct ieee80211_sta *sta)
+{
+	struct tlv *tlv;
+
+	if (sta->ht_cap.ht_supported) {
+		struct sta_rec_ht *ht;
+
+		/* starec ht */
+		tlv = mt7915_mcu_add_tlv(skb, STA_REC_HT, sizeof(*ht));
+		ht = (struct sta_rec_ht *)tlv;
+		ht->ht_cap = cpu_to_le16(sta->ht_cap.cap);
+	}
+
+	/* starec vht */
+	if (sta->vht_cap.vht_supported) {
+		struct sta_rec_vht *vht;
+
+		tlv = mt7915_mcu_add_tlv(skb, STA_REC_VHT, sizeof(*vht));
+		vht = (struct sta_rec_vht *)tlv;
+		vht->vht_cap = cpu_to_le32(sta->vht_cap.cap);
+		vht->vht_rx_mcs_map = sta->vht_cap.vht_mcs.rx_mcs_map;
+		vht->vht_tx_mcs_map = sta->vht_cap.vht_mcs.tx_mcs_map;
+	}
+}
+
+static void
+mt7915_mcu_wtbl_smps_tlv(struct sk_buff *skb, struct ieee80211_sta *sta,
+			 void *sta_wtbl, void *wtbl_tlv)
+{
+	struct wtbl_smps *smps;
+	struct tlv *tlv;
+
+	tlv = mt7915_mcu_add_nested_tlv(skb, WTBL_SMPS, sizeof(*smps),
+					wtbl_tlv, sta_wtbl);
+	smps = (struct wtbl_smps *)tlv;
+
+	if (sta->smps_mode == IEEE80211_SMPS_DYNAMIC)
+		smps->smps = true;
+}
+
+static void
+mt7915_mcu_wtbl_ht_tlv(struct sk_buff *skb, struct ieee80211_sta *sta,
+		       void *sta_wtbl, void *wtbl_tlv)
+{
+	struct wtbl_ht *ht = NULL;
+	struct tlv *tlv;
+
+	/* wtbl ht */
+	if (sta->ht_cap.ht_supported) {
+		tlv = mt7915_mcu_add_nested_tlv(skb, WTBL_HT, sizeof(*ht),
+						wtbl_tlv, sta_wtbl);
+		ht = (struct wtbl_ht *)tlv;
+		ht->ldpc = sta->ht_cap.cap & IEEE80211_HT_CAP_LDPC_CODING;
+		ht->af = sta->ht_cap.ampdu_factor;
+		ht->mm = sta->ht_cap.ampdu_density;
+		ht->ht = true;
+	}
+
+	/* wtbl vht */
+	if (sta->vht_cap.vht_supported) {
+		struct wtbl_vht *vht;
+		u32 af;
+
+		tlv = mt7915_mcu_add_nested_tlv(skb, WTBL_VHT, sizeof(*vht),
+						wtbl_tlv, sta_wtbl);
+		vht = (struct wtbl_vht *)tlv;
+		vht->ldpc = sta->vht_cap.cap & IEEE80211_VHT_CAP_RXLDPC,
+		vht->vht = true;
+
+		af = (sta->vht_cap.cap &
+		      IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK) >>
+		     IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT;
+
+		if (ht && af > ht->af)
+			ht->af = af;
+	}
+
+	mt7915_mcu_wtbl_smps_tlv(skb, sta, sta_wtbl, wtbl_tlv);
+}
+
+int mt7915_mcu_add_smps(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+			struct ieee80211_sta *sta)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct tlv *sta_wtbl;
+	struct sk_buff *skb;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	sta_wtbl = mt7915_mcu_add_tlv(skb, STA_REC_WTBL, sizeof(struct tlv));
+
+	wtbl_hdr = mt7915_mcu_alloc_wtbl_req(dev, msta, WTBL_SET, sta_wtbl,
+					     &skb);
+	mt7915_mcu_wtbl_smps_tlv(skb, sta, sta_wtbl, wtbl_hdr);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
+static void
+mt7915_mcu_sta_rate_ctrl_tlv(struct sk_buff *skb, struct mt7915_dev *dev,
+			     struct ieee80211_vif *vif,
+			     struct ieee80211_sta *sta)
+{
+	struct cfg80211_chan_def *chandef = &dev->mphy.chandef;
+	struct sta_rec_ra *ra;
+	struct tlv *tlv;
+	enum nl80211_band band = chandef->chan->band;
+	u32 supp_rate = sta->supp_rates[band];
+	int n_rates = hweight32(supp_rate);
+	u32 cap = sta->wme ? STA_CAP_WMM : 0;
+	u8 i, nss = sta->rx_nss, mcs = 0;
+
+	tlv = mt7915_mcu_add_tlv(skb, STA_REC_RA, sizeof(*ra));
+
+	ra = (struct sta_rec_ra *)tlv;
+	ra->valid = true;
+	ra->auto_rate = true;
+	ra->phy_mode = mt7915_get_phy_mode(dev, vif, band, sta);
+	ra->channel = chandef->chan->hw_value;
+	ra->bw = sta->bandwidth;
+	ra->rate_len = n_rates;
+	ra->phy.bw = sta->bandwidth;
+
+	if (n_rates) {
+		if (band == NL80211_BAND_2GHZ) {
+			ra->supp_mode = MODE_CCK;
+			ra->supp_cck_rate = supp_rate & GENMASK(3, 0);
+			ra->phy.type = MT_PHY_TYPE_CCK;
+
+			if (n_rates > 4) {
+				ra->supp_mode |= MODE_OFDM;
+				ra->supp_ofdm_rate = supp_rate >> 4;
+				ra->phy.type = MT_PHY_TYPE_OFDM;
+			}
+		} else {
+			ra->supp_mode = MODE_OFDM;
+			ra->supp_ofdm_rate = supp_rate;
+			ra->phy.type = MT_PHY_TYPE_OFDM;
+		}
+	}
+
+	if (sta->ht_cap.ht_supported) {
+		for (i = 0; i < nss; i++)
+			ra->ht_mcs[i] = sta->ht_cap.mcs.rx_mask[i];
+
+		ra->supp_ht_mcs = *(__le32 *)ra->ht_mcs;
+		ra->supp_mode |= MODE_HT;
+		mcs = hweight32(ra->supp_ht_mcs) - 1;
+		ra->af = sta->ht_cap.ampdu_factor;
+		ra->ht_gf = !!(sta->ht_cap.cap & IEEE80211_HT_CAP_GRN_FLD);
+
+		cap |= STA_CAP_HT;
+		if (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20)
+			cap |= STA_CAP_SGI_20;
+		if (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_40)
+			cap |= STA_CAP_SGI_40;
+		if (sta->ht_cap.cap & IEEE80211_HT_CAP_TX_STBC)
+			cap |= STA_CAP_TX_STBC;
+		if (sta->ht_cap.cap & IEEE80211_HT_CAP_RX_STBC)
+			cap |= STA_CAP_RX_STBC;
+		if (sta->ht_cap.cap & IEEE80211_HT_CAP_LDPC_CODING)
+			cap |= STA_CAP_LDPC;
+	}
+
+	if (sta->vht_cap.vht_supported) {
+		__le16 mcs_map = sta->vht_cap.vht_mcs.rx_mcs_map;
+		u32 af;
+		u16 vht_mcs;
+		u8 mcs_prev;
+
+		af = (sta->vht_cap.cap &
+		      IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK) >>
+		     IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT;
+
+		if (af > sta->ht_cap.ampdu_factor)
+			ra->af = af;
+
+		cap |= STA_CAP_VHT;
+		if (sta->vht_cap.cap & IEEE80211_VHT_CAP_SHORT_GI_80)
+			cap |= STA_CAP_VHT_SGI_80;
+		if (sta->vht_cap.cap & IEEE80211_VHT_CAP_SHORT_GI_160)
+			cap |= STA_CAP_VHT_SGI_160;
+		if (sta->vht_cap.cap & IEEE80211_VHT_CAP_TXSTBC)
+			cap |= STA_CAP_VHT_TX_STBC;
+		if (sta->vht_cap.cap & IEEE80211_VHT_CAP_RXSTBC_1)
+			cap |= STA_CAP_VHT_RX_STBC;
+		if (sta->vht_cap.cap & IEEE80211_VHT_CAP_RXLDPC)
+			cap |= STA_CAP_VHT_LDPC;
+
+		ra->supp_mode |= MODE_VHT;
+		for (mcs = 0, i = 0; i < nss; i++, mcs_map >>= 2) {
+			switch (mcs_map & 0x3) {
+			case IEEE80211_VHT_MCS_SUPPORT_0_9:
+				vht_mcs = GENMASK(9, 0);
+				break;
+			case IEEE80211_VHT_MCS_SUPPORT_0_8:
+				vht_mcs = GENMASK(8, 0);
+				break;
+			case IEEE80211_VHT_MCS_SUPPORT_0_7:
+				vht_mcs = GENMASK(7, 0);
+				break;
+			default:
+				vht_mcs = 0;
+			}
+
+			ra->supp_vht_mcs[i] = cpu_to_le16(vht_mcs);
+
+			mcs_prev = hweight16(vht_mcs) - 1;
+			if (mcs_prev > mcs)
+				mcs = mcs_prev;
+
+			/* only support 2ss on 160MHz */
+			if (i > 1 && (ra->bw == CMD_CBW_160MHZ ||
+				      ra->bw == CMD_CBW_8080MHZ))
+				break;
+		}
+	}
+
+	ra->sta_status = cpu_to_le32(cap);
+
+	switch (BIT(fls(ra->supp_mode) - 1)) {
+	case MODE_VHT:
+		ra->phy.type = MT_PHY_TYPE_VHT;
+		ra->phy.mcs = mcs;
+		ra->phy.nss = nss;
+		ra->phy.stbc = !!(sta->vht_cap.cap & IEEE80211_VHT_CAP_TXSTBC);
+		ra->phy.ldpc = !!(sta->vht_cap.cap & IEEE80211_VHT_CAP_RXLDPC);
+		ra->phy.sgi =
+			!!(sta->vht_cap.cap & IEEE80211_VHT_CAP_SHORT_GI_80);
+		break;
+	case MODE_HT:
+		ra->phy.type = MT_PHY_TYPE_HT;
+		ra->phy.mcs = mcs;
+		ra->phy.ldpc = sta->ht_cap.cap & IEEE80211_HT_CAP_LDPC_CODING;
+		ra->phy.stbc = !!(sta->ht_cap.cap & IEEE80211_HT_CAP_TX_STBC);
+		ra->phy.sgi = !!(sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20);
+		break;
+	default:
+		break;
+	}
+}
+
+int mt7915_mcu_add_rate_ctrl(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+			     struct ieee80211_sta *sta)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct mt7915_sta *msta = (struct mt7915_sta *)sta->drv_priv;
+	struct sk_buff *skb;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7915_mcu_sta_rate_ctrl_tlv(skb, dev, vif, sta);
+
+	return __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				       MCU_EXT_CMD_STA_REC_UPDATE, true);
+}
+
+int mt7915_mcu_add_sta(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+		       struct ieee80211_sta *sta, bool enable)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct mt7915_sta *msta;
+	struct tlv *sta_wtbl;
+	struct sk_buff *skb;
+	int ret;
+
+	msta = sta ? (struct mt7915_sta *)sta->drv_priv : &mvif->sta;
+
+	skb = mt7915_mcu_alloc_sta_req(dev, mvif, msta,
+				       MT7915_STA_UPDATE_MAX_SIZE);
+	if (IS_ERR(skb))
+		return PTR_ERR(skb);
+
+	mt7915_mcu_sta_basic_tlv(skb, vif, sta, enable);
+	if (enable && sta)
+		mt7915_mcu_sta_tlv(dev, skb, sta);
+
+	sta_wtbl = mt7915_mcu_add_tlv(skb, STA_REC_WTBL, sizeof(struct tlv));
+
+	wtbl_hdr = mt7915_mcu_alloc_wtbl_req(dev, msta, WTBL_RESET_AND_SET,
+					     sta_wtbl, &skb);
+	if (enable) {
+		mt7915_mcu_wtbl_generic_tlv(skb, vif, sta, sta_wtbl, wtbl_hdr);
+		if (sta)
+			mt7915_mcu_wtbl_ht_tlv(skb, sta, sta_wtbl, wtbl_hdr);
+	}
+
+	ret = __mt76_mcu_skb_send_msg(&dev->mt76, skb,
+				      MCU_EXT_CMD_STA_REC_UPDATE, true);
+	if (ret)
+		return ret;
+
+	if (enable && sta)
+		return mt7915_mcu_add_rate_ctrl(dev, vif, sta);
+
+	return 0;
+}
+
+int mt7915_mcu_add_dev_info(struct mt7915_dev *dev,
+			    struct ieee80211_vif *vif, bool enable)
+{
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct {
+		struct req_hdr {
+			u8 omac_idx;
+			u8 dbdc_idx;
+			__le16 tlv_num;
+			u8 is_tlv_append;
+			u8 rsv[3];
+		} __packed hdr;
+		struct req_tlv {
+			__le16 tag;
+			__le16 len;
+			u8 active;
+			u8 dbdc_idx;
+			u8 omac_addr[ETH_ALEN];
+		} __packed tlv;
+	} data = {
+		.hdr = {
+			.omac_idx = mvif->omac_idx,
+			.dbdc_idx = mvif->band_idx,
+			.tlv_num = cpu_to_le16(1),
+			.is_tlv_append = 1,
+		},
+		.tlv = {
+			.tag = cpu_to_le16(DEV_INFO_ACTIVE),
+			.len = cpu_to_le16(sizeof(struct req_tlv)),
+			.active = enable,
+			.dbdc_idx = mvif->band_idx,
+		},
+	};
+
+	memcpy(data.tlv.omac_addr, vif->addr, ETH_ALEN);
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_DEV_INFO_UPDATE,
+				   &data, sizeof(data), true);
+}
+
+static void
+mt7915_mcu_beacon_csa(struct sk_buff *rskb, struct sk_buff *skb,
+		      struct bss_info_bcn *bcn,
+		      struct ieee80211_mutable_offsets *offs)
+{
+	if (offs->csa_counter_offs[0]) {
+		struct tlv *tlv;
+		struct bss_info_bcn_csa *csa;
+
+		tlv = mt7915_mcu_add_nested_subtlv(rskb, BSS_INFO_BCN_CSA,
+						   sizeof(*csa), &bcn->sub_ntlv,
+						   &bcn->len);
+		csa = (struct bss_info_bcn_csa *)tlv;
+		csa->cnt = skb->data[offs->csa_counter_offs[0]];
+	}
+}
+
+static void
+mt7915_mcu_beacon_cont(struct mt7915_dev *dev, struct sk_buff *rskb,
+		       struct sk_buff *skb, struct bss_info_bcn *bcn,
+		       struct ieee80211_mutable_offsets *offs)
+{
+	struct mt76_wcid *wcid = &dev->mt76.global_wcid;
+	struct bss_info_bcn_cont *cont;
+	struct tlv *tlv;
+	u8 *buf;
+	int len = sizeof(*cont) + MT_TXD_SIZE + skb->len;
+
+	tlv = mt7915_mcu_add_nested_subtlv(rskb, BSS_INFO_BCN_CONTENT,
+					   len, &bcn->sub_ntlv, &bcn->len);
+
+	cont = (struct bss_info_bcn_cont *)tlv;
+	cont->pkt_len = cpu_to_le16(MT_TXD_SIZE + skb->len);
+	cont->tim_ofs = cpu_to_le16(offs->tim_offset);
+
+	if (offs->csa_counter_offs[0])
+		cont->csa_ofs = cpu_to_le16(offs->csa_counter_offs[0] - 4);
+
+	buf = (u8 *)tlv + sizeof(*cont);
+	mt7915_mac_write_txwi(dev, (__le32 *)buf, skb, wcid, NULL,
+			      true);
+	memcpy(buf + MT_TXD_SIZE, skb->data, skb->len);
+}
+
+int mt7915_mcu_add_beacon(struct ieee80211_hw *hw,
+			  struct ieee80211_vif *vif, int en)
+{
+#define MAX_BEACON_SIZE 512
+	struct mt7915_dev *dev = mt7915_hw_dev(hw);
+	struct mt7915_phy *phy = mt7915_hw_phy(hw);
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	struct ieee80211_mutable_offsets offs;
+	struct ieee80211_tx_info *info;
+	struct sk_buff *skb, *rskb;
+	struct tlv *tlv;
+	struct bss_info_bcn *bcn;
+	int len = MT7915_BEACON_UPDATE_SIZE + MAX_BEACON_SIZE;
+
+	rskb = mt7915_mcu_alloc_sta_req(dev, mvif, NULL, len);
+	if (IS_ERR(rskb))
+		return PTR_ERR(rskb);
+
+	tlv = mt7915_mcu_add_tlv(rskb, BSS_INFO_OFFLOAD, sizeof(*bcn));
+	bcn = (struct bss_info_bcn *)tlv;
+	bcn->enable = en;
+
+	skb = ieee80211_beacon_get_template(hw, vif, &offs);
+	if (!skb)
+		return -EINVAL;
+
+	if (skb->len > MAX_BEACON_SIZE - MT_TXD_SIZE) {
+		dev_err(dev->mt76.dev, "Bcn size limit exceed\n");
+		dev_kfree_skb(skb);
+		return -EINVAL;
+	}
+
+	if (mvif->band_idx) {
+		info = IEEE80211_SKB_CB(skb);
+		info->hw_queue |= MT_TX_HW_QUEUE_EXT_PHY;
+	}
+
+	/* TODO: subtag - bss color count & 11v MBSSID */
+	mt7915_mcu_beacon_csa(rskb, skb, bcn, &offs);
+	mt7915_mcu_beacon_cont(dev, rskb, skb, bcn, &offs);
+	dev_kfree_skb(skb);
+
+	return __mt76_mcu_skb_send_msg(&phy->dev->mt76, rskb,
+				       MCU_EXT_CMD_BSS_INFO_UPDATE, true);
+}
+
+static int mt7915_mcu_send_firmware(struct mt7915_dev *dev, const void *data,
+				    int len)
+{
+	int ret = 0, cur_len;
+
+	while (len > 0) {
+		cur_len = min_t(int, 4096 - sizeof(struct mt7915_mcu_txd),
+				len);
+
+		ret = __mt76_mcu_send_msg(&dev->mt76, -MCU_CMD_FW_SCATTER,
+					  data, cur_len, false);
+		if (ret)
+			break;
+
+		data += cur_len;
+		len -= cur_len;
+		mt76_queue_tx_cleanup(dev, MT_TXQ_FWDL, false);
+	}
+
+	return ret;
+}
+
+static int mt7915_mcu_start_firmware(struct mt7915_dev *dev, u32 addr,
+				     u32 option)
+{
+	struct {
+		__le32 option;
+		__le32 addr;
+	} req = {
+		.option = cpu_to_le32(option),
+		.addr = cpu_to_le32(addr),
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, -MCU_CMD_FW_START_REQ,
+				   &req, sizeof(req), true);
+}
+
+static int mt7915_mcu_restart(struct mt76_dev *dev)
+{
+	struct {
+		u8 power_mode;
+		u8 rsv[3];
+	} req = {
+		.power_mode = 1,
+	};
+
+	return __mt76_mcu_send_msg(dev, -MCU_CMD_NIC_POWER_CTRL, &req,
+				   sizeof(req), false);
+}
+
+static int mt7915_mcu_patch_sem_ctrl(struct mt7915_dev *dev, bool get)
+{
+	struct {
+		__le32 op;
+	} req = {
+		.op = cpu_to_le32(get ? PATCH_SEM_GET : PATCH_SEM_RELEASE),
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, -MCU_CMD_PATCH_SEM_CONTROL,
+				   &req, sizeof(req), true);
+}
+
+static int mt7915_mcu_start_patch(struct mt7915_dev *dev)
+{
+	struct {
+		u8 check_crc;
+		u8 reserved[3];
+	} req = {
+		.check_crc = 0,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, -MCU_CMD_PATCH_FINISH_REQ,
+				   &req, sizeof(req), true);
+}
+
+static int mt7915_driver_own(struct mt7915_dev *dev)
+{
+	u32 reg = mt7915_reg_map_l1(dev, MT_TOP_LPCR_HOST_BAND0);
+
+	mt76_wr(dev, reg, MT_TOP_LPCR_HOST_DRV_OWN);
+	if (!mt76_poll_msec(dev, reg, MT_TOP_LPCR_HOST_FW_OWN,
+			    0, 500)) {
+		dev_err(dev->mt76.dev, "Timeout for driver own\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int mt7915_mcu_init_download(struct mt7915_dev *dev, u32 addr,
+				    u32 len, u32 mode)
+{
+	struct {
+		__le32 addr;
+		__le32 len;
+		__le32 mode;
+	} req = {
+		.addr = cpu_to_le32(addr),
+		.len = cpu_to_le32(len),
+		.mode = cpu_to_le32(mode),
+	};
+	int attr;
+
+	if (req.addr == MCU_PATCH_ADDRESS)
+		attr = -MCU_CMD_PATCH_START_REQ;
+	else
+		attr = -MCU_CMD_TARGET_ADDRESS_LEN_REQ;
+
+	return __mt76_mcu_send_msg(&dev->mt76, attr, &req, sizeof(req), true);
+}
+
+static int mt7915_load_patch(struct mt7915_dev *dev)
+{
+	const struct mt7915_patch_hdr *hdr;
+	const struct firmware *fw = NULL;
+	int i, ret, sem;
+
+	sem = mt7915_mcu_patch_sem_ctrl(dev, 1);
+	switch (sem) {
+	case PATCH_IS_DL:
+		return 0;
+	case PATCH_NOT_DL_SEM_SUCCESS:
+		break;
+	default:
+		dev_err(dev->mt76.dev, "Failed to get patch semaphore\n");
+		return -EAGAIN;
+	}
+
+	ret = request_firmware(&fw, MT7915_ROM_PATCH, dev->mt76.dev);
+	if (ret)
+		goto out;
+
+	if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
+		dev_err(dev->mt76.dev, "Invalid firmware\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	hdr = (const struct mt7915_patch_hdr *)(fw->data);
+
+	dev_info(dev->mt76.dev, "HW/SW Version: 0x%x, Build Time: %.16s\n",
+		 be32_to_cpu(hdr->hw_sw_ver), hdr->build_date);
+
+	for (i = 0; i < be32_to_cpu(hdr->desc.n_region); i++) {
+		struct mt7915_patch_sec *sec;
+		const u8 *dl;
+		u32 len, addr;
+
+		sec = (struct mt7915_patch_sec *)(fw->data + sizeof(*hdr) +
+						  i * sizeof(*sec));
+		if ((be32_to_cpu(sec->type) & PATCH_SEC_TYPE_MASK) !=
+		    PATCH_SEC_TYPE_INFO) {
+			ret = -EINVAL;
+			goto out;
+		}
+
+		addr = be32_to_cpu(sec->info.addr);
+		len = be32_to_cpu(sec->info.len);
+		dl = fw->data + be32_to_cpu(sec->offs);
+
+		ret = mt7915_mcu_init_download(dev, addr, len,
+					       DL_MODE_NEED_RSP);
+		if (ret) {
+			dev_err(dev->mt76.dev, "Download request failed\n");
+			goto out;
+		}
+
+		ret = mt7915_mcu_send_firmware(dev, dl, len);
+		if (ret) {
+			dev_err(dev->mt76.dev, "Failed to send patch\n");
+			goto out;
+		}
+	}
+
+	ret = mt7915_mcu_start_patch(dev);
+	if (ret)
+		dev_err(dev->mt76.dev, "Failed to start patch\n");
+
+out:
+	sem = mt7915_mcu_patch_sem_ctrl(dev, 0);
+	switch (sem) {
+	case PATCH_REL_SEM_SUCCESS:
+		break;
+	default:
+		ret = -EAGAIN;
+		dev_err(dev->mt76.dev, "Failed to release patch semaphore\n");
+		goto out;
+	}
+	release_firmware(fw);
+
+	return ret;
+}
+
+static u32 mt7915_mcu_gen_dl_mode(u8 feature_set, bool is_wa)
+{
+	u32 ret = 0;
+
+	ret |= (feature_set & FW_FEATURE_SET_ENCRYPT) ?
+	       (DL_MODE_ENCRYPT | DL_MODE_RESET_SEC_IV) : 0;
+	ret |= FIELD_PREP(DL_MODE_KEY_IDX,
+			  FIELD_GET(FW_FEATURE_SET_KEY_IDX, feature_set));
+	ret |= DL_MODE_NEED_RSP;
+	ret |= is_wa ? DL_MODE_WORKING_PDA_CR4 : 0;
+
+	return ret;
+}
+
+static int
+mt7915_mcu_send_ram_firmware(struct mt7915_dev *dev,
+			     const struct mt7915_fw_trailer *hdr,
+			     const u8 *data, bool is_wa)
+{
+	int i, offset = 0;
+	u32 override = 0, option = 0;
+
+	for (i = 0; i < hdr->n_region; i++) {
+		const struct mt7915_fw_region *region;
+		int err;
+		u32 len, addr, mode;
+
+		region = (const struct mt7915_fw_region *)((const u8 *)hdr -
+			 (hdr->n_region - i) * sizeof(*region));
+		mode = mt7915_mcu_gen_dl_mode(region->feature_set, is_wa);
+		len = le32_to_cpu(region->len);
+		addr = le32_to_cpu(region->addr);
+
+		if (region->feature_set & FW_FEATURE_OVERRIDE_ADDR)
+			override = addr;
+
+		err = mt7915_mcu_init_download(dev, addr, len, mode);
+		if (err) {
+			dev_err(dev->mt76.dev, "Download request failed\n");
+			return err;
+		}
+
+		err = mt7915_mcu_send_firmware(dev, data + offset, len);
+		if (err) {
+			dev_err(dev->mt76.dev, "Failed to send firmware.\n");
+			return err;
+		}
+
+		offset += len;
+	}
+
+	if (override)
+		option |= FW_START_OVERRIDE;
+
+	if (is_wa)
+		option |= FW_START_WORKING_PDA_CR4;
+
+	return mt7915_mcu_start_firmware(dev, override, option);
+}
+
+static int mt7915_load_ram(struct mt7915_dev *dev)
+{
+	const struct mt7915_fw_trailer *hdr;
+	const struct firmware *fw;
+	int ret;
+
+	ret = request_firmware(&fw, MT7915_FIRMWARE_WM, dev->mt76.dev);
+	if (ret)
+		return ret;
+
+	if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
+		dev_err(dev->mt76.dev, "Invalid firmware\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	hdr = (const struct mt7915_fw_trailer *)(fw->data + fw->size -
+					sizeof(*hdr));
+
+	dev_info(dev->mt76.dev, "WM Firmware Version: %.10s, Build Time: %.15s\n",
+		 hdr->fw_ver, hdr->build_date);
+
+	ret = mt7915_mcu_send_ram_firmware(dev, hdr, fw->data, false);
+	if (ret) {
+		dev_err(dev->mt76.dev, "Failed to start WM firmware\n");
+		goto out;
+	}
+
+	release_firmware(fw);
+
+	ret = request_firmware(&fw, MT7915_FIRMWARE_WA, dev->mt76.dev);
+	if (ret)
+		return ret;
+
+	if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
+		dev_err(dev->mt76.dev, "Invalid firmware\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	hdr = (const struct mt7915_fw_trailer *)(fw->data + fw->size -
+					sizeof(*hdr));
+
+	dev_info(dev->mt76.dev, "WA Firmware Version: %.10s, Build Time: %.15s\n",
+		 hdr->fw_ver, hdr->build_date);
+
+	ret = mt7915_mcu_send_ram_firmware(dev, hdr, fw->data, true);
+	if (ret) {
+		dev_err(dev->mt76.dev, "Failed to start WA firmware\n");
+		goto out;
+	}
+
+	snprintf(dev->mt76.hw->wiphy->fw_version,
+		 sizeof(dev->mt76.hw->wiphy->fw_version),
+		 "%.10s-%.15s", hdr->fw_ver, hdr->build_date);
+
+out:
+	release_firmware(fw);
+
+	return ret;
+}
+
+static int mt7915_load_firmware(struct mt7915_dev *dev)
+{
+	int ret;
+	u32 val, reg = mt7915_reg_map_l1(dev, MT_TOP_MISC);
+
+	val = FIELD_PREP(MT_TOP_MISC_FW_STATE, FW_STATE_FW_DOWNLOAD);
+
+	if (!mt76_poll_msec(dev, reg, MT_TOP_MISC_FW_STATE, val, 1000)) {
+		/* restart firmware once */
+		__mt76_mcu_restart(&dev->mt76);
+		if (!mt76_poll_msec(dev, reg, MT_TOP_MISC_FW_STATE,
+				    val, 1000)) {
+			dev_err(dev->mt76.dev,
+				"Firmware is not ready for download\n");
+			return -EIO;
+		}
+	}
+
+	ret = mt7915_load_patch(dev);
+	if (ret)
+		return ret;
+
+	ret = mt7915_load_ram(dev);
+	if (ret)
+		return ret;
+
+	if (!mt76_poll_msec(dev, reg, MT_TOP_MISC_FW_STATE,
+			    FIELD_PREP(MT_TOP_MISC_FW_STATE,
+				       FW_STATE_WACPU_RDY), 1000)) {
+		dev_err(dev->mt76.dev, "Timeout for initializing firmware\n");
+		return -EIO;
+	}
+
+	mt76_queue_tx_cleanup(dev, MT_TXQ_FWDL, false);
+
+	dev_dbg(dev->mt76.dev, "Firmware init done\n");
+
+	return 0;
+}
+
+int mt7915_mcu_init(struct mt7915_dev *dev)
+{
+	static const struct mt76_mcu_ops mt7915_mcu_ops = {
+		.headroom = sizeof(struct mt7915_mcu_txd),
+		.mcu_skb_send_msg = mt7915_mcu_send_message,
+		.mcu_send_msg = mt7915_mcu_msg_send,
+		.mcu_restart = mt7915_mcu_restart,
+	};
+	int ret;
+
+	dev->mt76.mcu_ops = &mt7915_mcu_ops,
+
+	ret = mt7915_driver_own(dev);
+	if (ret)
+		return ret;
+
+	ret = mt7915_load_firmware(dev);
+	if (ret)
+		return ret;
+
+	set_bit(MT76_STATE_MCU_RUNNING, &dev->mphy.state);
+
+	return 0;
+}
+
+void mt7915_mcu_exit(struct mt7915_dev *dev)
+{
+	u32 reg = mt7915_reg_map_l1(dev, MT_TOP_MISC);
+
+	__mt76_mcu_restart(&dev->mt76);
+	if (!mt76_poll_msec(dev, reg, MT_TOP_MISC_FW_STATE,
+			    FIELD_PREP(MT_TOP_MISC_FW_STATE,
+				       FW_STATE_FW_DOWNLOAD), 1000)) {
+		dev_err(dev->mt76.dev, "Failed to exit mcu\n");
+		return;
+	}
+
+	reg = mt7915_reg_map_l1(dev, MT_TOP_LPCR_HOST_BAND0);
+	mt76_wr(dev, reg, MT_TOP_LPCR_HOST_FW_OWN);
+	skb_queue_purge(&dev->mt76.mcu.res_q);
+}
+
+int mt7915_mcu_set_mac(struct mt7915_dev *dev, int band,
+		       bool enable, bool hdr_trans)
+{
+	struct {
+		u8 operation;
+		u8 enable;
+		u8 check_bssid;
+		u8 insert_vlan;
+		u8 remove_vlan;
+		u8 tid;
+		u8 mode;
+		u8 rsv;
+	} __packed req_trans = {
+		.enable = hdr_trans,
+	};
+	struct {
+		u8 enable;
+		u8 band;
+		u8 rsv[2];
+	} __packed req_mac = {
+		.enable = enable,
+		.band = band,
+	};
+	int ret;
+
+	ret = __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_RX_HDR_TRANS,
+				  &req_trans, sizeof(req_trans), false);
+	if (ret)
+		return ret;
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_MAC_INIT_CTRL,
+				   &req_mac, sizeof(req_mac), true);
+}
+
+int mt7915_mcu_set_scs(struct mt7915_dev *dev, u8 band, bool enable)
+{
+	struct {
+		__le32 cmd;
+		u8 band;
+		u8 enable;
+	} __packed req = {
+		.cmd = cpu_to_le32(SCS_ENABLE),
+		.band = band,
+		.enable = enable + 1,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_SCS_CTRL, &req,
+				   sizeof(req), false);
+}
+
+int mt7915_mcu_set_rts_thresh(struct mt7915_phy *phy, u32 val)
+{
+	struct mt7915_dev *dev = phy->dev;
+	struct {
+		u8 prot_idx;
+		u8 band;
+		u8 rsv[2];
+		__le32 len_thresh;
+		__le32 pkt_thresh;
+	} __packed req = {
+		.prot_idx = 1,
+		.band = phy != &dev->phy,
+		.len_thresh = cpu_to_le32(val),
+		.pkt_thresh = cpu_to_le32(0x2),
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_PROTECT_CTRL,
+				   &req, sizeof(req), true);
+}
+
+int mt7915_mcu_set_tx(struct mt7915_dev *dev, struct ieee80211_vif *vif)
+{
+#define WMM_AIFS_SET		BIT(0)
+#define WMM_CW_MIN_SET		BIT(1)
+#define WMM_CW_MAX_SET		BIT(2)
+#define WMM_TXOP_SET		BIT(3)
+#define WMM_PARAM_SET		GENMASK(3, 0)
+#define TX_CMD_MODE		1
+	struct edca {
+		u8 queue;
+		u8 set;
+		u8 aifs;
+		u8 cw_min;
+		__le16 cw_max;
+		__le16 txop;
+	};
+	struct mt7915_mcu_tx {
+		u8 total;
+		u8 action;
+		u8 valid;
+		u8 mode;
+
+		struct edca edca[IEEE80211_NUM_ACS];
+	} __packed req = {
+		.valid = true,
+		.mode = TX_CMD_MODE,
+		.total = IEEE80211_NUM_ACS,
+	};
+	struct mt7915_vif *mvif = (struct mt7915_vif *)vif->drv_priv;
+	int ac;
+
+	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
+		struct edca *e = &req.edca[ac];
+
+		e->queue = ac + mvif->wmm_idx * MT7915_MAX_WMM_SETS;
+		e->aifs = mvif->wmm[ac].aifs;
+		e->txop = cpu_to_le16(mvif->wmm[ac].txop);
+
+		if (mvif->wmm[ac].cw_min)
+			e->cw_min = fls(mvif->wmm[ac].cw_max);
+		else
+			e->cw_min = 5;
+
+		if (mvif->wmm[ac].cw_max)
+			e->cw_max = cpu_to_le16(fls(mvif->wmm[ac].cw_max));
+		else
+			e->cw_max = cpu_to_le16(10);
+	}
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_EDCA_UPDATE,
+				  &req, sizeof(req), true);
+}
+
+int mt7915_mcu_set_pm(struct mt7915_dev *dev, int band, int enter)
+{
+#define ENTER_PM_STATE		1
+#define EXIT_PM_STATE		2
+	struct {
+		u8 pm_number;
+		u8 pm_state;
+		u8 bssid[ETH_ALEN];
+		u8 dtim_period;
+		u8 wlan_idx_lo;
+		__le16 bcn_interval;
+		__le32 aid;
+		__le32 rx_filter;
+		u8 band_idx;
+		u8 wlan_idx_hi;
+		u8 rsv[2];
+		__le32 feature;
+		u8 omac_idx;
+		u8 wmm_idx;
+		u8 bcn_loss_cnt;
+		u8 bcn_sp_duration;
+	} __packed req = {
+		.pm_number = 5,
+		.pm_state = (enter) ? ENTER_PM_STATE : EXIT_PM_STATE,
+		.band_idx = band,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_PM_STATE_CTRL,
+				   &req, sizeof(req), true);
+}
+
+int mt7915_mcu_rdd_cmd(struct mt7915_dev *dev,
+		       enum mt7915_rdd_cmd cmd, u8 index,
+		       u8 rx_sel, u8 val)
+{
+	struct {
+		u8 ctrl;
+		u8 rdd_idx;
+		u8 rdd_rx_sel;
+		u8 val;
+		u8 rsv[4];
+	} __packed req = {
+		.ctrl = cmd,
+		.rdd_idx = index,
+		.rdd_rx_sel = rx_sel,
+		.val = val,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_SET_RDD_CTRL,
+				   &req, sizeof(req), true);
+}
+
+int mt7915_mcu_set_fcc5_lpn(struct mt7915_dev *dev, int val)
+{
+	struct {
+		u32 tag;
+		u16 min_lpn;
+		u8 rsv[2];
+	} __packed req = {
+		.tag = 0x1,
+		.min_lpn = val,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_SET_RDD_TH,
+				   &req, sizeof(req), true);
+}
+
+int mt7915_mcu_set_pulse_th(struct mt7915_dev *dev,
+			    const struct mt7915_dfs_pulse *pulse)
+{
+	struct {
+		u32 tag;
+		struct mt7915_dfs_pulse pulse;
+	} __packed req = {
+		.tag = 0x3,
+	};
+
+	memcpy(&req.pulse, pulse, sizeof(*pulse));
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_SET_RDD_TH,
+				   &req, sizeof(req), true);
+}
+
+int mt7915_mcu_set_radar_th(struct mt7915_dev *dev, int index,
+			    const struct mt7915_dfs_pattern *pattern)
+{
+	struct {
+		u32 tag;
+		u16 radar_type;
+		struct mt7915_dfs_pattern pattern;
+	} __packed req = {
+		.tag = 0x2,
+		.radar_type = index,
+	};
+
+	memcpy(&req.pattern, pattern, sizeof(*pattern));
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_SET_RDD_TH,
+				   &req, sizeof(req), true);
+}
+
+int mt7915_mcu_set_chan_info(struct mt7915_phy *phy, int cmd)
+{
+	struct mt7915_dev *dev = phy->dev;
+	struct cfg80211_chan_def *chandef = &phy->mt76->chandef;
+	int freq1 = chandef->center_freq1;
+	struct {
+		u8 control_ch;
+		u8 center_ch;
+		u8 bw;
+		u8 tx_streams_num;
+		u8 rx_streams;	/* mask or num */
+		u8 switch_reason;
+		u8 band_idx;
+		u8 center_ch2;	/* for 80+80 only */
+		__le16 cac_case;
+		u8 channel_band;
+		u8 rsv0;
+		__le32 outband_freq;
+		u8 txpower_drop;
+		u8 ap_bw;
+		u8 ap_center_ch;
+		u8 rsv1[57];
+	} __packed req = {
+		.control_ch = chandef->chan->hw_value,
+		.center_ch = ieee80211_frequency_to_channel(freq1),
+		.bw = mt7915_mcu_chan_bw(chandef),
+		.tx_streams_num = hweight8(phy->mt76->antenna_mask),
+		.rx_streams = phy->chainmask,
+		.band_idx = phy != &dev->phy,
+		.channel_band = chandef->chan->band,
+	};
+
+	if ((chandef->chan->flags & IEEE80211_CHAN_RADAR) &&
+	    chandef->chan->dfs_state != NL80211_DFS_AVAILABLE)
+		req.switch_reason = CH_SWITCH_DFS;
+	else
+		req.switch_reason = CH_SWITCH_NORMAL;
+
+	if (cmd == MCU_EXT_CMD_CHANNEL_SWITCH)
+		req.rx_streams = hweight8(req.rx_streams);
+
+	if (chandef->width == NL80211_CHAN_WIDTH_80P80) {
+		int freq2 = chandef->center_freq2;
+
+		req.center_ch2 = ieee80211_frequency_to_channel(freq2);
+	}
+
+	return __mt76_mcu_send_msg(&dev->mt76, cmd, &req, sizeof(req), true);
+}
+
+int mt7915_mcu_set_eeprom(struct mt7915_dev *dev)
+{
+	struct req_hdr {
+		u8 buffer_mode;
+		u8 format;
+		__le16 len;
+	} __packed req = {
+		.buffer_mode = EE_MODE_EFUSE,
+		.format = EE_FORMAT_WHOLE,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_EFUSE_BUFFER_MODE,
+				   &req, sizeof(req), true);
+}
+
+int mt7915_mcu_get_eeprom(struct mt7915_dev *dev, u32 offset)
+{
+	struct mt7915_mcu_eeprom_info req = {
+		.addr = cpu_to_le32(round_down(offset, 16)),
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_EFUSE_ACCESS, &req,
+				   sizeof(req), true);
+}
+
+int mt7915_mcu_get_temperature(struct mt7915_dev *dev, int index)
+{
+	struct {
+		u8 ctrl_id;
+		u8 action;
+		u8 band;
+		u8 rsv[5];
+	} req = {
+		.ctrl_id = THERMAL_SENSOR_TEMP_QUERY,
+		.action = index,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_THERMAL_CTRL, &req,
+				   sizeof(req), true);
+}
+
+int mt7915_mcu_get_rate_info(struct mt7915_dev *dev, u32 cmd, u16 wlan_idx)
+{
+	struct {
+		__le32 cmd;
+		u16 wlan_idx;
+		u16 ru_idx;
+		u16 direction;
+		u16 dump_group;
+	} req = {
+		.cmd = cpu_to_le32(cmd),
+		.wlan_idx = wlan_idx,
+		.dump_group = 1,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_RATE_CTRL, &req,
+				   sizeof(req), false);
+}
+
+int mt7915_mcu_set_ser(struct mt7915_dev *dev, u8 action, u8 set, u8 band)
+{
+	struct {
+		u8 action;
+		u8 set;
+		u8 band;
+		u8 rsv;
+	} req = {
+		.action = action,
+		.set = set,
+		.band = band,
+	};
+
+	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_SET_SER_TRIGGER,
+				   &req, sizeof(req), false);
+}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
new file mode 100644
index 000000000000..5e4708861ede
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.h
@@ -0,0 +1,837 @@
+/* SPDX-License-Identifier: ISC */
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#ifndef __MT7915_MCU_H
+#define __MT7915_MCU_H
+
+struct mt7915_mcu_txd {
+	__le32 txd[8];
+
+	__le16 len;
+	__le16 pq_id;
+
+	u8 cid;
+	u8 pkt_type;
+	u8 set_query; /* FW don't care */
+	u8 seq;
+
+	u8 uc_d2b0_rev;
+	u8 ext_cid;
+	u8 s2d_index;
+	u8 ext_cid_ack;
+
+	u32 reserved[5];
+} __packed __aligned(4);
+
+/* event table */
+enum {
+	MCU_EVENT_TARGET_ADDRESS_LEN = 0x01,
+	MCU_EVENT_FW_START = 0x01,
+	MCU_EVENT_GENERIC = 0x01,
+	MCU_EVENT_ACCESS_REG = 0x02,
+	MCU_EVENT_MT_PATCH_SEM = 0x04,
+	MCU_EVENT_CH_PRIVILEGE = 0x18,
+	MCU_EVENT_EXT = 0xed,
+	MCU_EVENT_RESTART_DL = 0xef,
+};
+
+/* ext event table */
+enum {
+	MCU_EXT_EVENT_PS_SYNC = 0x5,
+	MCU_EXT_EVENT_THERMAL_PROTECT = 0x22,
+	MCU_EXT_EVENT_ASSERT_DUMP = 0x23,
+	MCU_EXT_EVENT_RDD_REPORT = 0x3a,
+	MCU_EXT_EVENT_CSA_NOTIFY = 0x4f,
+	MCU_EXT_EVENT_RATE_REPORT = 0x87,
+};
+
+struct mt7915_mcu_rxd {
+	__le32 rxd[6];
+
+	__le16 len;
+	__le16 pkt_type_id;
+
+	u8 eid;
+	u8 seq;
+	__le16 __rsv;
+
+	u8 ext_eid;
+	u8 __rsv1[2];
+	u8 s2d_index;
+};
+
+struct mt7915_mcu_rdd_report {
+	struct mt7915_mcu_rxd rxd;
+
+	u8 idx;
+	u8 long_detected;
+	u8 constant_prf_detected;
+	u8 staggered_prf_detected;
+	u8 radar_type_idx;
+	u8 periodic_pulse_num;
+	u8 long_pulse_num;
+	u8 hw_pulse_num;
+
+	u8 out_lpn;
+	u8 out_spn;
+	u8 out_crpn;
+	u8 out_crpw;
+	u8 out_crbn;
+	u8 out_stgpn;
+	u8 out_stgpw;
+
+	u8 rsv;
+
+	__le32 out_pri_const;
+	__le32 out_pri_stg[3];
+
+	struct {
+		__le32 start;
+		__le16 pulse_width;
+		__le16 pulse_power;
+		u8 mdrdy_flag;
+		u8 rsv[3];
+	} long_pulse[32];
+
+	struct {
+		__le32 start;
+		__le16 pulse_width;
+		__le16 pulse_power;
+		u8 mdrdy_flag;
+		u8 rsv[3];
+	} periodic_pulse[32];
+
+	struct {
+		__le32 start;
+		__le16 pulse_width;
+		__le16 pulse_power;
+		u8 sc_pass;
+		u8 sw_reset;
+		u8 mdrdy_flag;
+		u8 tx_active;
+	} hw_pulse[32];
+} __packed;
+
+struct mt7915_mcu_eeprom_info {
+	__le32 addr;
+	__le32 valid;
+	u8 data[16];
+} __packed;
+
+struct mt7915_mcu_ra_info {
+	struct mt7915_mcu_rxd rxd;
+
+	__le32 event_id;
+	__le16 wlan_idx;
+	__le16 ru_idx;
+	__le16 direction;
+	__le16 dump_group;
+
+	__le32 suggest_rate;
+	__le32 min_rate;	/* for dynamic sounding */
+	__le32 max_rate;	/* for dynamic sounding */
+	__le32 init_rate_down_rate;
+
+	__le16 curr_rate;
+	__le16 init_rate_down_total;
+	__le16 init_rate_down_succ;
+	__le16 success;
+	__le16 attempts;
+
+	__le16 prev_rate;
+	__le16 prob_up_rate;
+	u8 no_rate_up_cnt;
+	u8 ppdu_cnt;
+	u8 gi;
+
+	u8 try_up_fail;
+	u8 try_up_total;
+	u8 suggest_wf;
+	u8 try_up_check;
+	u8 prob_up_period;
+	u8 prob_down_pending;
+} __packed;
+
+#define MT_RA_RATE_NSS			GENMASK(8, 6)
+#define MT_RA_RATE_MCS			GENMASK(3, 0)
+#define MT_RA_RATE_TX_MODE		GENMASK(12, 9)
+#define MT_RA_RATE_DCM_EN		BIT(4)
+#define MT_RA_RATE_BW			GENMASK(14, 13)
+
+#define MCU_PQ_ID(p, q)			(((p) << 15) | ((q) << 10))
+#define MCU_PKT_ID			0xa0
+
+enum {
+	MCU_Q_QUERY,
+	MCU_Q_SET,
+	MCU_Q_RESERVED,
+	MCU_Q_NA
+};
+
+enum {
+	MCU_S2D_H2N,
+	MCU_S2D_C2N,
+	MCU_S2D_H2C,
+	MCU_S2D_H2CN
+};
+
+enum {
+	MCU_CMD_TARGET_ADDRESS_LEN_REQ = 0x01,
+	MCU_CMD_FW_START_REQ = 0x02,
+	MCU_CMD_INIT_ACCESS_REG = 0x3,
+	MCU_CMD_NIC_POWER_CTRL = 0x4,
+	MCU_CMD_PATCH_START_REQ = 0x05,
+	MCU_CMD_PATCH_FINISH_REQ = 0x07,
+	MCU_CMD_PATCH_SEM_CONTROL = 0x10,
+	MCU_CMD_EXT_CID = 0xED,
+	MCU_CMD_FW_SCATTER = 0xEE,
+	MCU_CMD_RESTART_DL_REQ = 0xEF,
+};
+
+enum {
+	MCU_EXT_CMD_EFUSE_ACCESS = 0x01,
+	MCU_EXT_CMD_PM_STATE_CTRL = 0x07,
+	MCU_EXT_CMD_CHANNEL_SWITCH = 0x08,
+	MCU_EXT_CMD_EFUSE_BUFFER_MODE = 0x21,
+	MCU_EXT_CMD_STA_REC_UPDATE = 0x25,
+	MCU_EXT_CMD_BSS_INFO_UPDATE = 0x26,
+	MCU_EXT_CMD_EDCA_UPDATE = 0x27,
+	MCU_EXT_CMD_DEV_INFO_UPDATE = 0x2A,
+	MCU_EXT_CMD_THERMAL_CTRL = 0x2c,
+	MCU_EXT_CMD_SET_RDD_CTRL = 0x3a,
+	MCU_EXT_CMD_PROTECT_CTRL = 0x3e,
+	MCU_EXT_CMD_MAC_INIT_CTRL = 0x46,
+	MCU_EXT_CMD_RX_HDR_TRANS = 0x47,
+	MCU_EXT_CMD_SET_RX_PATH = 0x4e,
+	MCU_EXT_CMD_SET_SER_TRIGGER = 0x81,
+	MCU_EXT_CMD_SCS_CTRL = 0x82,
+	MCU_EXT_CMD_RATE_CTRL = 0x87,
+	MCU_EXT_CMD_SET_RDD_TH = 0x9d,
+};
+
+enum {
+	PATCH_SEM_RELEASE,
+	PATCH_SEM_GET
+};
+
+enum {
+	PATCH_NOT_DL_SEM_FAIL,
+	PATCH_IS_DL,
+	PATCH_NOT_DL_SEM_SUCCESS,
+	PATCH_REL_SEM_SUCCESS
+};
+
+enum {
+	FW_STATE_INITIAL,
+	FW_STATE_FW_DOWNLOAD,
+	FW_STATE_NORMAL_OPERATION,
+	FW_STATE_NORMAL_TRX,
+	FW_STATE_WACPU_RDY        = 7
+};
+
+enum {
+	EE_MODE_EFUSE,
+	EE_MODE_BUFFER,
+};
+
+enum {
+	EE_FORMAT_BIN,
+	EE_FORMAT_WHOLE,
+	EE_FORMAT_MULTIPLE,
+};
+
+#define STA_TYPE_STA			BIT(0)
+#define STA_TYPE_AP			BIT(1)
+#define STA_TYPE_ADHOC			BIT(2)
+#define STA_TYPE_WDS			BIT(4)
+#define STA_TYPE_BC			BIT(5)
+
+#define NETWORK_INFRA			BIT(16)
+#define NETWORK_P2P			BIT(17)
+#define NETWORK_IBSS			BIT(18)
+#define NETWORK_WDS			BIT(21)
+
+#define CONNECTION_INFRA_STA		(STA_TYPE_STA | NETWORK_INFRA)
+#define CONNECTION_INFRA_AP		(STA_TYPE_AP | NETWORK_INFRA)
+#define CONNECTION_P2P_GC		(STA_TYPE_STA | NETWORK_P2P)
+#define CONNECTION_P2P_GO		(STA_TYPE_AP | NETWORK_P2P)
+#define CONNECTION_IBSS_ADHOC		(STA_TYPE_ADHOC | NETWORK_IBSS)
+#define CONNECTION_WDS			(STA_TYPE_WDS | NETWORK_WDS)
+#define CONNECTION_INFRA_BC		(STA_TYPE_BC | NETWORK_INFRA)
+
+#define CONN_STATE_DISCONNECT		0
+#define CONN_STATE_CONNECT		1
+#define CONN_STATE_PORT_SECURE		2
+
+enum {
+	DEV_INFO_ACTIVE,
+	DEV_INFO_MAX_NUM
+};
+
+enum {
+	SCS_SEND_DATA,
+	SCS_SET_MANUAL_PD_TH,
+	SCS_CONFIG,
+	SCS_ENABLE,
+	SCS_SHOW_INFO,
+	SCS_GET_GLO_ADDR,
+	SCS_GET_GLO_ADDR_EVENT,
+};
+
+enum {
+	CMD_CBW_20MHZ = IEEE80211_STA_RX_BW_20,
+	CMD_CBW_40MHZ = IEEE80211_STA_RX_BW_40,
+	CMD_CBW_80MHZ = IEEE80211_STA_RX_BW_80,
+	CMD_CBW_160MHZ = IEEE80211_STA_RX_BW_160,
+	CMD_CBW_10MHZ,
+	CMD_CBW_5MHZ,
+	CMD_CBW_8080MHZ,
+
+	CMD_HE_MCS_BW80 = 0,
+	CMD_HE_MCS_BW160,
+	CMD_HE_MCS_BW8080,
+	CMD_HE_MCS_BW_NUM
+};
+
+struct tlv {
+	__le16 tag;
+	__le16 len;
+} __packed;
+
+struct bss_info_omac {
+	__le16 tag;
+	__le16 len;
+	u8 hw_bss_idx;
+	u8 omac_idx;
+	u8 band_idx;
+	u8 rsv0;
+	__le32 conn_type;
+	u32 rsv1;
+} __packed;
+
+struct bss_info_basic {
+	__le16 tag;
+	__le16 len;
+	__le32 network_type;
+	u8 active;
+	u8 rsv0;
+	__le16 bcn_interval;
+	u8 bssid[ETH_ALEN];
+	u8 wmm_idx;
+	u8 dtim_period;
+	u8 bmc_wcid_lo;
+	u8 cipher;
+	u8 phy_mode;
+	u8 max_bssid;	/* max BSSID. range: 1 ~ 8, 0: MBSSID disabled */
+	u8 non_tx_bssid;/* non-transmitted BSSID, 0: transmitted BSSID */
+	u8 bmc_wcid_hi;	/* high Byte and version */
+	u8 rsv[2];
+} __packed;
+
+struct bss_info_rf_ch {
+	__le16 tag;
+	__le16 len;
+	u8 pri_ch;
+	u8 center_ch0;
+	u8 center_ch1;
+	u8 bw;
+	u8 he_ru26_block;	/* 1: don't send HETB in RU26, 0: allow */
+	u8 he_all_disable;	/* 1: disallow all HETB, 0: allow */
+	u8 rsv[2];
+} __packed;
+
+struct bss_info_ext_bss {
+	__le16 tag;
+	__le16 len;
+	__le32 mbss_tsf_offset; /* in unit of us */
+	u8 rsv[8];
+} __packed;
+
+struct bss_info_sync_mode {
+	__le16 tag;
+	__le16 len;
+	__le16 bcn_interval;
+	u8 enable;
+	u8 dtim_period;
+	u8 rsv[8];
+} __packed;
+
+struct bss_info_bmc_rate {
+	__le16 tag;
+	__le16 len;
+	__le16 bc_trans;
+	__le16 mc_trans;
+	u8 short_preamble;
+	u8 rsv[7];
+} __packed;
+
+struct bss_info_ra {
+	__le16 tag;
+	__le16 len;
+	u8 op_mode;
+	u8 adhoc_en;
+	u8 short_preamble;
+	u8 tx_streams;
+	u8 rx_streams;
+	u8 algo;
+	u8 force_sgi;
+	u8 force_gf;
+	u8 ht_mode;
+	u8 has_20_sta;		/* Check if any sta support GF. */
+	u8 bss_width_trigger_events;
+	u8 vht_nss_cap;
+	u8 vht_bw_signal;	/* not use */
+	u8 vht_force_sgi;	/* not use */
+	u8 se_off;
+	u8 antenna_idx;
+	u8 train_up_rule;
+	u8 rsv[3];
+	unsigned short train_up_high_thres;
+	short train_up_rule_rssi;
+	unsigned short low_traffic_thres;
+	__le16 max_phyrate;
+	__le32 phy_cap;
+	__le32 interval;
+	__le32 fast_interval;
+} __packed;
+
+struct bss_info_bcn {
+	__le16 tag;
+	__le16 len;
+	u8 ver;
+	u8 enable;
+	__le16 sub_ntlv;
+} __packed __aligned(4);
+
+struct bss_info_bcn_csa {
+	__le16 tag;
+	__le16 len;
+	u8 cnt;
+	u8 rsv[3];
+} __packed __aligned(4);
+
+struct bss_info_bcn_bcc {
+	__le16 tag;
+	__le16 len;
+	u8 cnt;
+	u8 rsv[3];
+} __packed __aligned(4);
+
+struct bss_info_bcn_mbss {
+#define MAX_BEACON_NUM	32
+	__le16 tag;
+	__le16 len;
+	__le32 bitmap;
+	__le16 offset[MAX_BEACON_NUM];
+	u8 rsv[8];
+} __packed __aligned(4);
+
+struct bss_info_bcn_cont {
+	__le16 tag;
+	__le16 len;
+	__le16 tim_ofs;
+	__le16 csa_ofs;
+	__le16 bcc_ofs;
+	__le16 pkt_len;
+} __packed __aligned(4);
+
+enum {
+	BSS_INFO_BCN_CSA,
+	BSS_INFO_BCN_BCC,
+	BSS_INFO_BCN_MBSSID,
+	BSS_INFO_BCN_CONTENT,
+	BSS_INFO_BCN_MAX
+};
+
+enum {
+	BSS_INFO_OMAC,
+	BSS_INFO_BASIC,
+	BSS_INFO_RF_CH,		/* optional, for BT/LTE coex */
+	BSS_INFO_PM,		/* sta only */
+	BSS_INFO_UAPSD,		/* sta only */
+	BSS_INFO_ROAM_DETECT,	/* obsoleted */
+	BSS_INFO_LQ_RM,		/* obsoleted */
+	BSS_INFO_EXT_BSS,
+	BSS_INFO_BMC_RATE,	/* for bmc rate control in CR4 */
+	BSS_INFO_SYNC_MODE,
+	BSS_INFO_RA,
+	BSS_INFO_HW_AMSDU,
+	BSS_INFO_BSS_COLOR,
+	BSS_INFO_HE_BASIC,
+	BSS_INFO_PROTECT_INFO,
+	BSS_INFO_OFFLOAD,
+	BSS_INFO_11V_MBSSID,
+	BSS_INFO_MAX_NUM
+};
+
+enum {
+	WTBL_RESET_AND_SET = 1,
+	WTBL_SET,
+	WTBL_QUERY,
+	WTBL_RESET_ALL
+};
+
+struct wtbl_req_hdr {
+	u8 wlan_idx_lo;
+	u8 operation;
+	__le16 tlv_num;
+	u8 wlan_idx_hi;
+	u8 rsv[3];
+} __packed;
+
+struct wtbl_generic {
+	__le16 tag;
+	__le16 len;
+	u8 peer_addr[ETH_ALEN];
+	u8 muar_idx;
+	u8 skip_tx;
+	u8 cf_ack;
+	u8 qos;
+	u8 mesh;
+	u8 adm;
+	__le16 partial_aid;
+	u8 baf_en;
+	u8 aad_om;
+} __packed;
+
+struct wtbl_rx {
+	__le16 tag;
+	__le16 len;
+	u8 rcid;
+	u8 rca1;
+	u8 rca2;
+	u8 rv;
+	u8 rsv[4];
+} __packed;
+
+struct wtbl_ht {
+	__le16 tag;
+	__le16 len;
+	u8 ht;
+	u8 ldpc;
+	u8 af;
+	u8 mm;
+	u8 rsv[4];
+} __packed;
+
+struct wtbl_vht {
+	__le16 tag;
+	__le16 len;
+	u8 ldpc;
+	u8 dyn_bw;
+	u8 vht;
+	u8 txop_ps;
+	u8 rsv[4];
+} __packed;
+
+enum {
+	MT_BA_TYPE_INVALID,
+	MT_BA_TYPE_ORIGINATOR,
+	MT_BA_TYPE_RECIPIENT
+};
+
+enum {
+	RST_BA_MAC_TID_MATCH,
+	RST_BA_MAC_MATCH,
+	RST_BA_NO_MATCH
+};
+
+struct wtbl_ba {
+	__le16 tag;
+	__le16 len;
+	/* common */
+	u8 tid;
+	u8 ba_type;
+	u8 rsv0[2];
+	/* originator only */
+	__le16 sn;
+	u8 ba_en;
+	u8 ba_winsize_idx;
+	__le16 ba_winsize;
+	/* recipient only */
+	u8 peer_addr[ETH_ALEN];
+	u8 rst_ba_tid;
+	u8 rst_ba_sel;
+	u8 rst_ba_sb;
+	u8 band_idx;
+	u8 rsv1[4];
+} __packed;
+
+struct wtbl_bf {
+	__le16 tag;
+	__le16 len;
+	u8 ibf;
+	u8 ebf;
+	u8 ibf_vht;
+	u8 ebf_vht;
+	u8 gid;
+	u8 pfmu_idx;
+	u8 rsv[2];
+} __packed;
+
+struct wtbl_smps {
+	__le16 tag;
+	__le16 len;
+	u8 smps;
+	u8 rsv[3];
+} __packed;
+
+struct wtbl_spe {
+	__le16 tag;
+	__le16 len;
+	u8 spe_idx;
+	u8 rsv[3];
+} __packed;
+
+enum {
+	WTBL_GENERIC,
+	WTBL_RX,
+	WTBL_HT,
+	WTBL_VHT,
+	WTBL_PEER_PS,		/* not used */
+	WTBL_TX_PS,
+	WTBL_HDR_TRANS,
+	WTBL_SEC_KEY,
+	WTBL_BA,
+	WTBL_RDG,		/* obsoleted */
+	WTBL_PROTECT,		/* not used */
+	WTBL_CLEAR,		/* not used */
+	WTBL_BF,
+	WTBL_SMPS,
+	WTBL_RAW_DATA,		/* debug only */
+	WTBL_PN,
+	WTBL_SPE,
+	WTBL_MAX_NUM
+};
+
+struct sta_ntlv_hdr {
+	u8 rsv[2];
+	__le16 tlv_num;
+} __packed;
+
+struct sta_req_hdr {
+	u8 bss_idx;
+	u8 wlan_idx_lo;
+	__le16 tlv_num;
+	u8 is_tlv_append;
+	u8 muar_idx;
+	u8 wlan_idx_hi;
+	u8 rsv;
+} __packed;
+
+struct sta_rec_basic {
+	__le16 tag;
+	__le16 len;
+	__le32 conn_type;
+	u8 conn_state;
+	u8 qos;
+	__le16 aid;
+	u8 peer_addr[ETH_ALEN];
+	__le16 extra_info;
+} __packed;
+
+struct sta_rec_ht {
+	__le16 tag;
+	__le16 len;
+	__le16 ht_cap;
+	u16 rsv;
+} __packed;
+
+struct sta_rec_vht {
+	__le16 tag;
+	__le16 len;
+	__le32 vht_cap;
+	__le16 vht_rx_mcs_map;
+	__le16 vht_tx_mcs_map;
+	u8 rts_bw_sig;
+	u8 rsv[3];
+} __packed;
+
+struct sta_rec_ba {
+	__le16 tag;
+	__le16 len;
+	u8 tid;
+	u8 ba_type;
+	u8 amsdu;
+	u8 ba_en;
+	__le16 ssn;
+	__le16 winsize;
+} __packed;
+
+struct sec_key {
+	u8 cipher_id;
+	u8 cipher_len;
+	u8 key_id;
+	u8 key_len;
+	u8 key[32];
+} __packed;
+
+struct sta_rec_sec {
+	__le16 tag;
+	__le16 len;
+	u8 add;
+	u8 n_cipher;
+	u8 rsv[2];
+
+	struct sec_key key[2];
+} __packed;
+
+struct ra_phy {
+	u8 type;
+	u8 flag;
+	u8 stbc;
+	u8 sgi;
+	u8 bw;
+	u8 ldpc;
+	u8 mcs;
+	u8 nss;
+	u8 he_ltf;
+};
+
+struct sta_rec_ra {
+	__le16 tag;
+	__le16 len;
+
+	u8 valid;
+	u8 auto_rate;
+	u8 phy_mode;
+	u8 channel;
+	u8 bw;
+	u8 disable_cck;
+	u8 ht_mcs32;
+	u8 ht_gf;
+	u8 ht_mcs[4];
+	u8 mmps_mode;
+	u8 gband_256;
+	u8 af;
+	u8 auth_wapi_mode;
+	u8 rate_len;
+
+	u8 supp_mode;
+	u8 supp_cck_rate;
+	u8 supp_ofdm_rate;
+	__le32 supp_ht_mcs;
+	__le16 supp_vht_mcs[4];
+
+	u8 op_mode;
+	u8 op_vht_chan_width;
+	u8 op_vht_rx_nss;
+	u8 op_vht_rx_nss_type;
+
+	__le32 sta_status;
+
+	struct ra_phy phy;
+} __packed;
+
+enum {
+	STA_REC_BASIC,
+	STA_REC_RA,
+	STA_REC_RA_CMM_INFO,
+	STA_REC_RA_UPDATE,
+	STA_REC_BF,
+	STA_REC_AMSDU,
+	STA_REC_BA,
+	STA_REC_RED,		/* not used */
+	STA_REC_TX_PROC,	/* for hdr trans and CSO in CR4 */
+	STA_REC_HT,
+	STA_REC_VHT,
+	STA_REC_APPS,
+	STA_REC_KEY,
+	STA_REC_WTBL,
+	STA_REC_HE,
+	STA_REC_HW_AMSDU,
+	STA_REC_WTBL_AADOM,
+	STA_REC_KEY_V2,
+	STA_REC_MURU,
+	STA_REC_MUEDCA,
+	STA_REC_MAX_NUM
+};
+
+enum mt7915_cipher_type {
+	MT_CIPHER_NONE,
+	MT_CIPHER_WEP40,
+	MT_CIPHER_WEP104,
+	MT_CIPHER_WEP128,
+	MT_CIPHER_TKIP,
+	MT_CIPHER_AES_CCMP,
+	MT_CIPHER_CCMP_256,
+	MT_CIPHER_GCMP,
+	MT_CIPHER_GCMP_256,
+	MT_CIPHER_WAPI,
+	MT_CIPHER_BIP_CMAC_128,
+};
+
+enum {
+	CH_SWITCH_NORMAL = 0,
+	CH_SWITCH_SCAN = 3,
+	CH_SWITCH_MCC = 4,
+	CH_SWITCH_DFS = 5,
+	CH_SWITCH_BACKGROUND_SCAN_START = 6,
+	CH_SWITCH_BACKGROUND_SCAN_RUNNING = 7,
+	CH_SWITCH_BACKGROUND_SCAN_STOP = 8,
+	CH_SWITCH_SCAN_BYPASS_DPD = 9
+};
+
+enum {
+	THERMAL_SENSOR_TEMP_QUERY,
+	THERMAL_SENSOR_MANUAL_CTRL,
+	THERMAL_SENSOR_INFO_QUERY,
+	THERMAL_SENSOR_TASK_CTRL,
+};
+
+#define MT7915_WTBL_UPDATE_MAX_SIZE	(sizeof(struct wtbl_req_hdr) +	\
+					 sizeof(struct wtbl_generic) +	\
+					 sizeof(struct wtbl_rx) +	\
+					 sizeof(struct wtbl_ht) +	\
+					 sizeof(struct wtbl_vht) +	\
+					 sizeof(struct wtbl_ba) +	\
+					 sizeof(struct wtbl_bf) +	\
+					 sizeof(struct wtbl_smps) +	\
+					 sizeof(struct wtbl_spe))
+
+#define MT7915_STA_UPDATE_MAX_SIZE	(sizeof(struct sta_req_hdr) +	\
+					 sizeof(struct sta_rec_basic) +	\
+					 sizeof(struct sta_rec_ht) +	\
+					 sizeof(struct sta_rec_ba) +	\
+					 sizeof(struct sta_rec_vht) +	\
+					 sizeof(struct tlv) +		\
+					 sizeof(struct sta_rec_sec) +	\
+					 sizeof(struct sta_rec_ra) +	\
+					 MT7915_WTBL_UPDATE_MAX_SIZE)
+
+#define MT7915_WTBL_UPDATE_BA_SIZE	(sizeof(struct wtbl_req_hdr) +	\
+					 sizeof(struct wtbl_ba))
+
+#define MT7915_BEACON_UPDATE_SIZE	(sizeof(struct sta_req_hdr) +	\
+					 sizeof(struct bss_info_bcn_csa) + \
+					 sizeof(struct bss_info_bcn_bcc) + \
+					 sizeof(struct bss_info_bcn_mbss) + \
+					 sizeof(struct bss_info_bcn_cont))
+
+#define PHY_MODE_A			BIT(0)
+#define PHY_MODE_B			BIT(1)
+#define PHY_MODE_G			BIT(2)
+#define PHY_MODE_GN			BIT(3)
+#define PHY_MODE_AN			BIT(4)
+#define PHY_MODE_AC			BIT(5)
+
+#define MODE_CCK			BIT(0)
+#define MODE_OFDM			BIT(1)
+#define MODE_HT				BIT(2)
+#define MODE_VHT			BIT(3)
+
+#define STA_CAP_WMM			BIT(0)
+#define STA_CAP_SGI_20			BIT(4)
+#define STA_CAP_SGI_40			BIT(5)
+#define STA_CAP_TX_STBC			BIT(6)
+#define STA_CAP_RX_STBC			BIT(7)
+#define STA_CAP_VHT_SGI_80		BIT(16)
+#define STA_CAP_VHT_SGI_160		BIT(17)
+#define STA_CAP_VHT_TX_STBC		BIT(18)
+#define STA_CAP_VHT_RX_STBC		BIT(19)
+#define STA_CAP_VHT_LDPC		BIT(23)
+#define STA_CAP_LDPC			BIT(24)
+#define STA_CAP_HT			BIT(26)
+#define STA_CAP_VHT			BIT(27)
+
+#endif
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h b/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
new file mode 100644
index 000000000000..f2139a5248d9
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mt7915.h
@@ -0,0 +1,442 @@
+/* SPDX-License-Identifier: ISC */
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#ifndef __MT7915_H
+#define __MT7915_H
+
+#include <linux/interrupt.h>
+#include <linux/ktime.h>
+#include "../mt76.h"
+#include "regs.h"
+
+#define MT7915_MAX_INTERFACES		4
+#define MT7915_MAX_WMM_SETS		4
+#define MT7915_WTBL_SIZE		288
+#define MT7915_WTBL_RESERVED		(MT7915_WTBL_SIZE - 1)
+#define MT7915_WTBL_STA			(MT7915_WTBL_RESERVED - \
+					 MT7915_MAX_INTERFACES)
+
+#define MT7915_WATCHDOG_TIME		(HZ / 10)
+#define MT7915_RESET_TIMEOUT		(30 * HZ)
+
+#define MT7915_TX_RING_SIZE		2048
+#define MT7915_TX_MCU_RING_SIZE		256
+#define MT7915_TX_FWDL_RING_SIZE	128
+
+#define MT7915_RX_RING_SIZE		1536
+#define MT7915_RX_MCU_RING_SIZE		512
+
+#define MT7915_FIRMWARE_WA		"mediatek/mt7915_wa.bin"
+#define MT7915_FIRMWARE_WM		"mediatek/mt7915_wm.bin"
+#define MT7915_ROM_PATCH		"mediatek/mt7915_rom_patch.bin"
+
+#define MT7915_EEPROM_SIZE		3584
+#define MT7915_TOKEN_SIZE		8192
+
+#define MT7915_CFEND_RATE_DEFAULT	0x49	/* OFDM 24M */
+#define MT7915_CFEND_RATE_11B		0x03	/* 11B LP, 11M */
+#define MT7915_5G_RATE_DEFAULT		0x4b	/* OFDM 6M */
+#define MT7915_2G_RATE_DEFAULT		0x0	/* CCK 1M */
+
+
+struct mt7915_vif;
+struct mt7915_sta;
+struct mt7915_dfs_pulse;
+struct mt7915_dfs_pattern;
+
+enum mt7915_txq_id {
+	MT7915_TXQ_FWDL = 16,
+	MT7915_TXQ_MCU_WM,
+	MT7915_TXQ_BAND0,
+	MT7915_TXQ_BAND1,
+	MT7915_TXQ_MCU_WA,
+};
+
+enum mt7915_rxq_id {
+	MT7915_RXQ_BAND0 = 0,
+	MT7915_RXQ_BAND1,
+	MT7915_RXQ_MCU_WM = 0,
+	MT7915_RXQ_MCU_WA,
+};
+
+enum mt7915_ampdu_state {
+	MT7915_AGGR_STOP,
+	MT7915_AGGR_PROGRESS,
+	MT7915_AGGR_START,
+	MT7915_AGGR_OPERATIONAL
+};
+
+struct mt7915_sta_stats {
+	struct rate_info prob_rate;
+	struct rate_info tx_rate;
+
+	unsigned long per;
+	unsigned long changed;
+	unsigned long jiffies;
+};
+
+struct mt7915_sta {
+	struct mt76_wcid wcid; /* must be first */
+
+	struct mt7915_vif *vif;
+
+	struct list_head poll_list;
+	u32 airtime_ac[8];
+
+	struct mt7915_sta_stats stats;
+	struct work_struct stats_work;
+
+	spinlock_t ampdu_lock;
+	enum mt7915_ampdu_state ampdu_state[IEEE80211_NUM_TIDS];
+};
+
+struct mt7915_vif {
+	u16 idx;
+	u8 omac_idx;
+	u8 band_idx;
+	u8 wmm_idx;
+
+	struct {
+		u16 cw_min;
+		u16 cw_max;
+		u16 txop;
+		u8 aifs;
+	} wmm[IEEE80211_NUM_ACS];
+
+	struct mt7915_sta sta;
+	struct mt7915_dev *dev;
+};
+
+struct mib_stats {
+	u16 ack_fail_cnt;
+	u16 fcs_err_cnt;
+	u16 rts_cnt;
+	u16 rts_retries_cnt;
+	u16 ba_miss_cnt;
+};
+
+struct mt7915_phy {
+	struct mt76_phy *mt76;
+	struct mt7915_dev *dev;
+
+	u32 rxfilter;
+	u32 omac_mask;
+
+	u16 noise;
+	u16 chainmask;
+
+	s16 coverage_class;
+	u8 slottime;
+
+	u8 rdd_state;
+	int dfs_state;
+
+	__le32 rx_ampdu_ts;
+	u32 ampdu_ref;
+
+	struct mib_stats mib;
+};
+
+struct mt7915_dev {
+	union { /* must be first */
+		struct mt76_dev mt76;
+		struct mt76_phy mphy;
+	};
+
+	struct mt7915_phy phy;
+	u32 vif_mask;
+	u32 omac_mask;
+
+	u16 chainmask;
+
+	struct work_struct init_work;
+	struct work_struct reset_work;
+	wait_queue_head_t reset_wait;
+	u32 reset_state;
+
+	struct list_head sta_poll_list;
+	spinlock_t sta_poll_lock;
+
+	u32 hw_pattern;
+
+	spinlock_t token_lock;
+	struct idr token;
+
+	u8 mac_work_count;
+	bool fw_debug;
+};
+
+enum {
+	HW_BSSID_0 = 0x0,
+	HW_BSSID_1,
+	HW_BSSID_2,
+	HW_BSSID_3,
+	HW_BSSID_MAX,
+	EXT_BSSID_START = 0x10,
+	EXT_BSSID_1,
+	EXT_BSSID_2,
+	EXT_BSSID_3,
+	EXT_BSSID_4,
+	EXT_BSSID_5,
+	EXT_BSSID_6,
+	EXT_BSSID_7,
+	EXT_BSSID_8,
+	EXT_BSSID_9,
+	EXT_BSSID_10,
+	EXT_BSSID_11,
+	EXT_BSSID_12,
+	EXT_BSSID_13,
+	EXT_BSSID_14,
+	EXT_BSSID_15,
+	EXT_BSSID_END
+};
+
+enum {
+	MT_RX_SEL0,
+	MT_RX_SEL1,
+};
+
+enum mt7915_rdd_cmd {
+	RDD_STOP,
+	RDD_START,
+	RDD_DET_MODE,
+	RDD_RADAR_EMULATE,
+	RDD_START_TXQ = 20,
+	RDD_CAC_START = 50,
+	RDD_CAC_END,
+	RDD_NORMAL_START,
+	RDD_DISABLE_DFS_CAL,
+	RDD_PULSE_DBG,
+	RDD_READ_PULSE,
+	RDD_RESUME_BF,
+	RDD_IRQ_OFF,
+};
+
+enum {
+	RATE_CTRL_RU_INFO,
+	RATE_CTRL_FIXED_RATE_INFO,
+	RATE_CTRL_DUMP_INFO,
+	RATE_CTRL_MU_INFO,
+};
+
+static inline struct mt7915_phy *
+mt7915_hw_phy(struct ieee80211_hw *hw)
+{
+	struct mt76_phy *phy = hw->priv;
+
+	return phy->priv;
+}
+
+static inline struct mt7915_dev *
+mt7915_hw_dev(struct ieee80211_hw *hw)
+{
+	struct mt76_phy *phy = hw->priv;
+
+	return container_of(phy->dev, struct mt7915_dev, mt76);
+}
+
+static inline struct mt7915_phy *
+mt7915_ext_phy(struct mt7915_dev *dev)
+{
+	struct mt76_phy *phy = dev->mt76.phy2;
+
+	if (!phy)
+		return NULL;
+
+	return phy->priv;
+}
+
+static inline void
+mt7915_set_aggr_state(struct mt7915_sta *msta, u8 tid,
+		      enum mt7915_ampdu_state state)
+{
+	spin_lock_bh(&msta->ampdu_lock);
+	msta->ampdu_state[tid] = state;
+	spin_unlock_bh(&msta->ampdu_lock);
+}
+
+extern const struct ieee80211_ops mt7915_ops;
+extern struct pci_driver mt7915_pci_driver;
+
+u32 mt7915_reg_map(struct mt7915_dev *dev, u32 addr);
+
+int mt7915_register_device(struct mt7915_dev *dev);
+void mt7915_unregister_device(struct mt7915_dev *dev);
+int mt7915_register_ext_phy(struct mt7915_dev *dev);
+void mt7915_unregister_ext_phy(struct mt7915_dev *dev);
+int mt7915_eeprom_init(struct mt7915_dev *dev);
+u32 mt7915_eeprom_read(struct mt7915_dev *dev, u32 offset);
+int mt7915_eeprom_get_target_power(struct mt7915_dev *dev,
+				   struct ieee80211_channel *chan,
+				   u8 chain_idx);
+int mt7915_dma_init(struct mt7915_dev *dev);
+void mt7915_dma_prefetch(struct mt7915_dev *dev);
+void mt7915_dma_cleanup(struct mt7915_dev *dev);
+int mt7915_mcu_init(struct mt7915_dev *dev);
+int mt7915_mcu_add_dev_info(struct mt7915_dev *dev,
+			    struct ieee80211_vif *vif, bool enable);
+int mt7915_mcu_add_bss_info(struct mt7915_phy *phy,
+			    struct ieee80211_vif *vif, int enable);
+int mt7915_mcu_add_sta(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+		       struct ieee80211_sta *sta, bool enable);
+int mt7915_mcu_add_tx_ba(struct mt7915_dev *dev,
+			 struct ieee80211_ampdu_params *params,
+			 bool add);
+int mt7915_mcu_add_rx_ba(struct mt7915_dev *dev,
+			 struct ieee80211_ampdu_params *params,
+			 bool add);
+int mt7915_mcu_add_key(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+		       struct mt7915_sta *msta, struct ieee80211_key_conf *key,
+		       enum set_key_cmd cmd);
+int mt7915_mcu_add_beacon(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
+			  int enable);
+int mt7915_mcu_add_rate_ctrl(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+			     struct ieee80211_sta *sta);
+int mt7915_mcu_add_smps(struct mt7915_dev *dev, struct ieee80211_vif *vif,
+			struct ieee80211_sta *sta);
+int mt7915_mcu_set_chan_info(struct mt7915_phy *phy, int cmd);
+int mt7915_mcu_set_tx(struct mt7915_dev *dev, struct ieee80211_vif *vif);
+int mt7915_mcu_set_eeprom(struct mt7915_dev *dev);
+int mt7915_mcu_get_eeprom(struct mt7915_dev *dev, u32 offset);
+int mt7915_mcu_set_mac(struct mt7915_dev *dev, int band, bool enable,
+		       bool hdr_trans);
+int mt7915_mcu_set_scs(struct mt7915_dev *dev, u8 band, bool enable);
+int mt7915_mcu_set_ser(struct mt7915_dev *dev, u8 action, u8 set, u8 band);
+int mt7915_mcu_set_rts_thresh(struct mt7915_phy *phy, u32 val);
+int mt7915_mcu_set_pm(struct mt7915_dev *dev, int band, int enter);
+int mt7915_mcu_set_fcc5_lpn(struct mt7915_dev *dev, int val);
+int mt7915_mcu_set_pulse_th(struct mt7915_dev *dev,
+			    const struct mt7915_dfs_pulse *pulse);
+int mt7915_mcu_set_radar_th(struct mt7915_dev *dev, int index,
+			    const struct mt7915_dfs_pattern *pattern);
+int mt7915_mcu_get_rate_info(struct mt7915_dev *dev, u32 cmd, u16 wlan_idx);
+int mt7915_mcu_get_temperature(struct mt7915_dev *dev, int index);
+int mt7915_mcu_rdd_cmd(struct mt7915_dev *dev, enum mt7915_rdd_cmd cmd,
+		       u8 index, u8 rx_sel, u8 val);
+void mt7915_mcu_rx_event(struct mt7915_dev *dev, struct sk_buff *skb);
+void mt7915_mcu_exit(struct mt7915_dev *dev);
+
+static inline bool is_mt7915(struct mt76_dev *dev)
+{
+	return mt76_chip(dev) == 0x7915;
+}
+
+static inline void mt7915_irq_enable(struct mt7915_dev *dev, u32 mask)
+{
+	mt76_set_irq_mask(&dev->mt76, MT_INT_MASK_CSR, 0, mask);
+}
+
+static inline void mt7915_irq_disable(struct mt7915_dev *dev, u32 mask)
+{
+	mt76_set_irq_mask(&dev->mt76, MT_INT_MASK_CSR, mask, 0);
+}
+
+static inline u32
+mt7915_reg_map_l1(struct mt7915_dev *dev, u32 addr)
+{
+	u32 offset = FIELD_GET(MT_HIF_REMAP_L1_OFFSET, addr);
+	u32 base = FIELD_GET(MT_HIF_REMAP_L1_BASE, addr);
+
+	mt76_rmw_field(dev, MT_HIF_REMAP_L1, MT_HIF_REMAP_L1_MASK, base);
+	/* use read to push write */
+	mt76_rr(dev, MT_HIF_REMAP_L1);
+
+	return MT_HIF_REMAP_BASE_L1 + offset;
+}
+
+static inline u32
+mt7915_l1_rr(struct mt7915_dev *dev, u32 addr)
+{
+	return mt76_rr(dev, mt7915_reg_map_l1(dev, addr));
+}
+
+static inline void
+mt7915_l1_wr(struct mt7915_dev *dev, u32 addr, u32 val)
+{
+	mt76_wr(dev, mt7915_reg_map_l1(dev, addr), val);
+}
+
+static inline u32
+mt7915_l1_rmw(struct mt7915_dev *dev, u32 addr, u32 mask, u32 val)
+{
+	val |= mt7915_l1_rr(dev, addr) & ~mask;
+	mt7915_l1_wr(dev, addr, val);
+
+	return val;
+}
+
+#define mt7915_l1_set(dev, addr, val)	mt7915_l1_rmw(dev, addr, 0, val)
+#define mt7915_l1_clear(dev, addr, val)	mt7915_l1_rmw(dev, addr, val, 0)
+
+static inline u32
+mt7915_reg_map_l2(struct mt7915_dev *dev, u32 addr)
+{
+	u32 offset = FIELD_GET(MT_HIF_REMAP_L2_OFFSET, addr);
+	u32 base = FIELD_GET(MT_HIF_REMAP_L2_BASE, addr);
+
+	mt76_rmw_field(dev, MT_HIF_REMAP_L2, MT_HIF_REMAP_L2_MASK, base);
+	/* use read to push write */
+	mt76_rr(dev, MT_HIF_REMAP_L2);
+
+	return MT_HIF_REMAP_BASE_L2 + offset;
+}
+
+static inline u32
+mt7915_l2_rr(struct mt7915_dev *dev, u32 addr)
+{
+	return mt76_rr(dev, mt7915_reg_map_l2(dev, addr));
+}
+
+static inline void
+mt7915_l2_wr(struct mt7915_dev *dev, u32 addr, u32 val)
+{
+	mt76_wr(dev, mt7915_reg_map_l2(dev, addr), val);
+}
+
+static inline u32
+mt7915_l2_rmw(struct mt7915_dev *dev, u32 addr, u32 mask, u32 val)
+{
+	val |= mt7915_l2_rr(dev, addr) & ~mask;
+	mt7915_l2_wr(dev, addr, val);
+
+	return val;
+}
+
+#define mt7915_l2_set(dev, addr, val)	mt7915_l2_rmw(dev, addr, 0, val)
+#define mt7915_l2_clear(dev, addr, val)	mt7915_l2_rmw(dev, addr, val, 0)
+
+bool mt7915_mac_wtbl_update(struct mt7915_dev *dev, int idx, u32 mask);
+void mt7915_mac_reset_counters(struct mt7915_phy *phy);
+void mt7915_mac_cca_stats_reset(struct mt7915_phy *phy);
+void mt7915_mac_sta_poll(struct mt7915_dev *dev);
+void mt7915_mac_write_txwi(struct mt7915_dev *dev, __le32 *txwi,
+			   struct sk_buff *skb, struct mt76_wcid *wcid,
+			   struct ieee80211_key_conf *key, bool beacon);
+void mt7915_mac_set_timing(struct mt7915_phy *phy);
+int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb);
+void mt7915_mac_tx_free(struct mt7915_dev *dev, struct sk_buff *skb);
+int mt7915_mac_sta_add(struct mt76_dev *mdev, struct ieee80211_vif *vif,
+		       struct ieee80211_sta *sta);
+void mt7915_mac_sta_remove(struct mt76_dev *mdev, struct ieee80211_vif *vif,
+			   struct ieee80211_sta *sta);
+void mt7915_mac_work(struct work_struct *work);
+void mt7915_mac_reset_work(struct work_struct *work);
+void mt7915_mac_sta_stats_work(struct work_struct *work);
+int mt7915_tx_prepare_skb(struct mt76_dev *mdev, void *txwi_ptr,
+			  enum mt76_txq_id qid, struct mt76_wcid *wcid,
+			  struct ieee80211_sta *sta,
+			  struct mt76_tx_info *tx_info);
+void mt7915_tx_complete_skb(struct mt76_dev *mdev, enum mt76_txq_id qid,
+			    struct mt76_queue_entry *e);
+void mt7915_queue_rx_skb(struct mt76_dev *mdev, enum mt76_rxq_id q,
+			 struct sk_buff *skb);
+void mt7915_sta_ps(struct mt76_dev *mdev, struct ieee80211_sta *sta, bool ps);
+void mt7915_stats_work(struct work_struct *work);
+void mt7915_txp_skb_unmap(struct mt76_dev *dev,
+			  struct mt76_txwi_cache *txwi);
+int mt76_dfs_start_rdd(struct mt7915_dev *dev, bool force);
+int mt7915_dfs_init_radar_detector(struct mt7915_phy *phy);
+void mt7915_update_channel(struct mt76_dev *mdev);
+int mt7915_init_debugfs(struct mt7915_dev *dev);
+
+#endif
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/pci.c b/drivers/net/wireless/mediatek/mt76/mt7915/pci.c
new file mode 100644
index 000000000000..12a562d3aa3d
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/pci.c
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: ISC
+/* Copyright (C) 2020 MediaTek Inc.
+ *
+ * Author: Ryder Lee <ryder.lee@mediatek.com>
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+
+#include "mt7915.h"
+#include "mac.h"
+#include "../trace.h"
+
+static const struct pci_device_id mt7915_pci_device_table[] = {
+	{ PCI_DEVICE(0x14c3, 0x7915) },
+	{ },
+};
+
+static void
+mt7915_rx_poll_complete(struct mt76_dev *mdev, enum mt76_rxq_id q)
+{
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+
+	mt7915_irq_enable(dev, MT_INT_RX_DONE(q));
+}
+
+static irqreturn_t mt7915_irq_handler(int irq, void *dev_instance)
+{
+	struct mt7915_dev *dev = dev_instance;
+	u32 intr;
+
+	intr = mt76_rr(dev, MT_INT_SOURCE_CSR);
+	mt76_wr(dev, MT_INT_SOURCE_CSR, intr);
+
+	if (!test_bit(MT76_STATE_INITIALIZED, &dev->mphy.state))
+		return IRQ_NONE;
+
+	trace_dev_irq(&dev->mt76, intr, dev->mt76.mmio.irqmask);
+
+	intr &= dev->mt76.mmio.irqmask;
+
+	if (intr & MT_INT_TX_DONE_ALL) {
+		mt7915_irq_disable(dev, MT_INT_TX_DONE_ALL);
+		napi_schedule(&dev->mt76.tx_napi);
+	}
+
+	if (intr & MT_INT_RX_DONE_DATA) {
+		mt7915_irq_disable(dev, MT_INT_RX_DONE_DATA);
+		napi_schedule(&dev->mt76.napi[0]);
+	}
+
+	if (intr & MT_INT_RX_DONE_WM) {
+		mt7915_irq_disable(dev, MT_INT_RX_DONE_WM);
+		napi_schedule(&dev->mt76.napi[1]);
+	}
+
+	if (intr & MT_INT_RX_DONE_WA) {
+		mt7915_irq_disable(dev, MT_INT_RX_DONE_WA);
+		napi_schedule(&dev->mt76.napi[2]);
+	}
+
+	if (intr & MT_INT_MCU_CMD) {
+		u32 val = mt76_rr(dev, MT_MCU_CMD);
+
+		mt76_wr(dev, MT_MCU_CMD, val);
+		if (val & MT_MCU_CMD_ERROR_MASK) {
+			dev->reset_state = val;
+			ieee80211_queue_work(mt76_hw(dev), &dev->reset_work);
+			wake_up(&dev->reset_wait);
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int mt7915_pci_probe(struct pci_dev *pdev,
+			    const struct pci_device_id *id)
+{
+	static const struct mt76_driver_ops drv_ops = {
+		/* txwi_size = txd size + txp size */
+		.txwi_size = MT_TXD_SIZE + sizeof(struct mt7915_txp),
+		.drv_flags = MT_DRV_TXWI_NO_FREE,
+		.survey_flags = SURVEY_INFO_TIME_TX |
+				SURVEY_INFO_TIME_RX |
+				SURVEY_INFO_TIME_BSS_RX,
+		.tx_prepare_skb = mt7915_tx_prepare_skb,
+		.tx_complete_skb = mt7915_tx_complete_skb,
+		.rx_skb = mt7915_queue_rx_skb,
+		.rx_poll_complete = mt7915_rx_poll_complete,
+		.sta_ps = mt7915_sta_ps,
+		.sta_add = mt7915_mac_sta_add,
+		.sta_remove = mt7915_mac_sta_remove,
+		.update_survey = mt7915_update_channel,
+	};
+	struct mt7915_dev *dev;
+	struct mt76_dev *mdev;
+	int ret;
+
+	ret = pcim_enable_device(pdev);
+	if (ret)
+		return ret;
+
+	ret = pcim_iomap_regions(pdev, BIT(0), pci_name(pdev));
+	if (ret)
+		return ret;
+
+	pci_set_master(pdev);
+
+	ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
+	if (ret)
+		return ret;
+
+	mdev = mt76_alloc_device(&pdev->dev, sizeof(*dev), &mt7915_ops,
+				 &drv_ops);
+	if (!mdev)
+		return -ENOMEM;
+
+	dev = container_of(mdev, struct mt7915_dev, mt76);
+
+	mt76_mmio_init(&dev->mt76, pcim_iomap_table(pdev)[0]);
+	mdev->rev = (mt7915_l1_rr(dev, MT_HW_CHIPID) << 16) |
+		    (mt7915_l1_rr(dev, MT_HW_REV) & 0xff);
+	dev_dbg(mdev->dev, "ASIC revision: %04x\n", mdev->rev);
+
+	/* master switch of PCIe tnterrupt enable */
+	mt7915_l1_wr(dev, MT_PCIE_MAC_INT_ENABLE, 0xff);
+
+	ret = devm_request_irq(mdev->dev, pdev->irq, mt7915_irq_handler,
+			       IRQF_SHARED, KBUILD_MODNAME, dev);
+	if (ret)
+		goto error;
+
+	ret = mt7915_register_device(dev);
+	if (ret)
+		goto error;
+
+	return 0;
+error:
+	ieee80211_free_hw(mt76_hw(dev));
+	return ret;
+}
+
+static void mt7915_pci_remove(struct pci_dev *pdev)
+{
+	struct mt76_dev *mdev = pci_get_drvdata(pdev);
+	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
+
+	mt7915_unregister_device(dev);
+}
+
+struct pci_driver mt7915_pci_driver = {
+	.name		= KBUILD_MODNAME,
+	.id_table	= mt7915_pci_device_table,
+	.probe		= mt7915_pci_probe,
+	.remove		= mt7915_pci_remove,
+};
+
+module_pci_driver(mt7915_pci_driver);
+
+MODULE_DEVICE_TABLE(pci, mt7915_pci_device_table);
+MODULE_FIRMWARE(MT7915_FIRMWARE_WA);
+MODULE_FIRMWARE(MT7915_FIRMWARE_WM);
+MODULE_FIRMWARE(MT7915_ROM_PATCH);
+MODULE_LICENSE("Dual BSD/GPL");
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/regs.h b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
new file mode 100644
index 000000000000..572bdc16fb2d
--- /dev/null
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
@@ -0,0 +1,344 @@
+/* SPDX-License-Identifier: ISC */
+/* Copyright (C) 2020 MediaTek Inc. */
+
+#ifndef __MT7915_REGS_H
+#define __MT7915_REGS_H
+
+/* MCU WFDMA1 */
+#define MT_MCU_WFDMA1_BASE		0x3000
+#define MT_MCU_WFDMA1(ofs)		(MT_MCU_WFDMA1_BASE + (ofs))
+
+#define MT_MCU_INT_EVENT		MT_MCU_WFDMA1(0x108)
+#define MT_MCU_INT_EVENT_DMA_STOPPED	BIT(0)
+#define MT_MCU_INT_EVENT_DMA_INIT	BIT(1)
+#define MT_MCU_INT_EVENT_SER_TRIGGER	BIT(2)
+#define MT_MCU_INT_EVENT_RESET_DONE	BIT(3)
+
+#define MT_PLE_BASE			0x8000
+#define MT_PLE(ofs)			(MT_PLE_BASE + (ofs))
+
+#define MT_PLE_FL_Q0_CTRL		MT_PLE(0x1b0)
+#define MT_PLE_FL_Q1_CTRL		MT_PLE(0x1b4)
+#define MT_PLE_FL_Q2_CTRL		MT_PLE(0x1b8)
+#define MT_PLE_FL_Q3_CTRL		MT_PLE(0x1bc)
+
+#define MT_PLE_AC_QEMPTY(ac, n)		MT_PLE(0x300 + 0x10 * (ac) + \
+					       ((n) << 2))
+#define MT_PLE_AMSDU_PACK_MSDU_CNT(n)	MT_PLE(0x10e0 + ((n) << 2))
+
+#define MT_MDP_BASE			0xf000
+#define MT_MDP(ofs)			(MT_MDP_BASE + (ofs))
+
+#define MT_MDP_DCR0			MT_MDP(0x000)
+#define MT_MDP_DCR0_DAMSDU_EN		BIT(15)
+
+#define MT_MDP_DCR1			MT_MDP(0x004)
+#define MT_MDP_DCR1_MAX_RX_LEN		GENMASK(15, 3)
+
+#define MT_MDP_BNRCFR0(_band)		MT_MDP(0x070 + ((_band) << 8))
+#define MT_MDP_RCFR0_MCU_RX_MGMT	GENMASK(5, 4)
+#define MT_MDP_RCFR0_MCU_RX_CTL_NON_BAR	GENMASK(7, 6)
+#define MT_MDP_RCFR0_MCU_RX_CTL_BAR	GENMASK(9, 8)
+
+#define MT_MDP_BNRCFR1(_band)		MT_MDP(0x074 + ((_band) << 8))
+#define MT_MDP_RCFR1_MCU_RX_BYPASS	GENMASK(23, 22)
+#define MT_MDP_RCFR1_RX_DROPPED_UCAST	GENMASK(28, 27)
+#define MT_MDP_RCFR1_RX_DROPPED_MCAST	GENMASK(30, 29)
+#define MT_MDP_TO_HIF			0
+#define MT_MDP_TO_WM			1
+
+/* TMAC: band 0(0x21000), band 1(0xa1000) */
+#define MT_WF_TMAC_BASE(_band)		((_band) ? 0xa1000 : 0x21000)
+#define MT_WF_TMAC(_band, ofs)		(MT_WF_TMAC_BASE(_band) + (ofs))
+
+#define MT_TMAC_CDTR(_band)		MT_WF_TMAC(_band, 0x090)
+#define MT_TMAC_ODTR(_band)		MT_WF_TMAC(_band, 0x094)
+#define MT_TIMEOUT_VAL_PLCP		GENMASK(15, 0)
+#define MT_TIMEOUT_VAL_CCA		GENMASK(31, 16)
+
+#define MT_TMAC_ICR0(_band)		MT_WF_TMAC(_band, 0x0a4)
+#define MT_IFS_EIFS			GENMASK(8, 0)
+#define MT_IFS_RIFS			GENMASK(14, 10)
+#define MT_IFS_SIFS			GENMASK(22, 16)
+#define MT_IFS_SLOT			GENMASK(30, 24)
+
+#define MT_TMAC_CTCR0(_band)			MT_WF_TMAC(_band, 0x0f4)
+#define MT_TMAC_CTCR0_INS_DDLMT_REFTIME		GENMASK(5, 0)
+#define MT_TMAC_CTCR0_INS_DDLMT_EN		BIT(17)
+#define MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN	BIT(18)
+
+/* DMA Band 0 */
+#define MT_WF_DMA_BASE			0x21e00
+#define MT_WF_DMA(ofs)			(MT_WF_DMA_BASE + (ofs))
+
+#define MT_DMA_DCR0			MT_WF_DMA(0x000)
+#define MT_DMA_DCR0_MAX_RX_LEN		GENMASK(15, 3)
+#define MT_DMA_DCR0_RXD_G5_EN		BIT(23)
+
+/* MIB: band 0(0x24800), band 1(0xa4800) */
+#define MT_WF_MIB_BASE(_band)		((_band) ? 0xa4800 : 0x24800)
+#define MT_WF_MIB(_band, ofs)		(MT_WF_MIB_BASE(_band) + (ofs))
+
+#define MT_MIB_SDR3(_band)		MT_WF_MIB(_band, 0x014)
+#define MT_MIB_SDR3_FCS_ERR_MASK	GENMASK(15, 0)
+
+#define MT_MIB_SDR9(_band)		MT_WF_MIB(_band, 0x02c)
+#define MT_MIB_SDR9_BUSY_MASK		GENMASK(23, 0)
+
+#define MT_MIB_SDR16(_band)		MT_WF_MIB(_band, 0x048)
+#define MT_MIB_SDR16_BUSY_MASK		GENMASK(23, 0)
+
+#define MT_MIB_SDR36(_band)		MT_WF_MIB(_band, 0x098)
+#define MT_MIB_SDR36_TXTIME_MASK	GENMASK(23, 0)
+#define MT_MIB_SDR37(_band)		MT_WF_MIB(_band, 0x09c)
+#define MT_MIB_SDR37_RXTIME_MASK	GENMASK(23, 0)
+
+#define MT_MIB_MB_SDR0(_band, n)	MT_WF_MIB(_band, 0x100 + ((n) << 4))
+#define MT_MIB_RTS_RETRIES_COUNT_MASK	GENMASK(31, 16)
+#define MT_MIB_RTS_COUNT_MASK		GENMASK(15, 0)
+
+#define MT_MIB_MB_SDR1(_band, n)	MT_WF_MIB(_band, 0x104 + ((n) << 4))
+#define MT_MIB_BA_MISS_COUNT_MASK	GENMASK(15, 0)
+#define MT_MIB_ACK_FAIL_COUNT_MASK	GENMASK(31, 16)
+
+#define MT_MIB_MB_SDR2(_band, n)	MT_WF_MIB(_band, 0x108 + ((n) << 4))
+#define MT_MIB_FRAME_RETRIES_COUNT_MASK	GENMASK(15, 0)
+
+#define MT_TX_AGG_CNT(_band, n)		MT_WF_MIB(_band, 0x0a8 + ((n) << 2))
+#define MT_TX_AGG_CNT2(_band, n)	MT_WF_MIB(_band, 0x164 + ((n) << 2))
+#define MT_MIB_ARNG(_band, n)		MT_WF_MIB(_band, 0x4b8 + ((n) << 2))
+#define MT_MIB_ARNCR_RANGE(val, n)	(((val) >> ((n) << 3)) & GENMASK(7, 0))
+
+#define MT_WTBLON_TOP_BASE		0x34000
+#define MT_WTBLON_TOP(ofs)		(MT_WTBLON_TOP_BASE + (ofs))
+#define MT_WTBLON_TOP_WDUCR		MT_WTBLON_TOP(0x0)
+#define MT_WTBLON_TOP_WDUCR_GROUP	GENMASK(2, 0)
+
+#define MT_WTBL_UPDATE			MT_WTBLON_TOP(0x030)
+#define MT_WTBL_UPDATE_WLAN_IDX		GENMASK(9, 0)
+#define MT_WTBL_UPDATE_ADM_COUNT_CLEAR	BIT(12)
+#define MT_WTBL_UPDATE_BUSY		BIT(31)
+
+#define MT_WTBL_BASE			0x38000
+#define MT_WTBL_LMAC_ID			GENMASK(14, 8)
+#define MT_WTBL_LMAC_DW			GENMASK(7, 2)
+#define MT_WTBL_LMAC_OFFS(_id, _dw)	(MT_WTBL_BASE | \
+					FIELD_PREP(MT_WTBL_LMAC_ID, _id) | \
+					FIELD_PREP(MT_WTBL_LMAC_DW, _dw))
+
+/* AGG: band 0(0x20800), band 1(0xa0800) */
+#define MT_WF_AGG_BASE(_band)		((_band) ? 0xa0800 : 0x20800)
+#define MT_WF_AGG(_band, ofs)		(MT_WF_AGG_BASE(_band) + (ofs))
+
+#define MT_AGG_ACR0(_band)		MT_WF_AGG(_band, 0x084)
+#define MT_AGG_ACR_CFEND_RATE		GENMASK(13, 0)
+#define MT_AGG_ACR_BAR_RATE		GENMASK(29, 16)
+
+/* ARB: band 0(0x20c00), band 1(0xa0c00) */
+#define MT_WF_ARB_BASE(_band)		((_band) ? 0xa0c00 : 0x20c00)
+#define MT_WF_ARB(_band, ofs)		(MT_WF_ARB_BASE(_band) + (ofs))
+
+#define MT_ARB_SCR(_band)		MT_WF_ARB(_band, 0x080)
+#define MT_ARB_SCR_TX_DISABLE		BIT(8)
+#define MT_ARB_SCR_RX_DISABLE		BIT(9)
+
+/* RMAC: band 0(0x21400), band 1(0xa1400) */
+#define MT_WF_RMAC_BASE(_band)		((_band) ? 0xa1400 : 0x21400)
+#define MT_WF_RMAC(_band, ofs)		(MT_WF_RMAC_BASE(_band) + (ofs))
+
+#define MT_WF_RFCR(_band)		MT_WF_RMAC(_band, 0x000)
+#define MT_WF_RFCR_DROP_STBC_MULTI	BIT(0)
+#define MT_WF_RFCR_DROP_FCSFAIL		BIT(1)
+#define MT_WF_RFCR_DROP_VERSION		BIT(3)
+#define MT_WF_RFCR_DROP_PROBEREQ	BIT(4)
+#define MT_WF_RFCR_DROP_MCAST		BIT(5)
+#define MT_WF_RFCR_DROP_BCAST		BIT(6)
+#define MT_WF_RFCR_DROP_MCAST_FILTERED	BIT(7)
+#define MT_WF_RFCR_DROP_A3_MAC		BIT(8)
+#define MT_WF_RFCR_DROP_A3_BSSID	BIT(9)
+#define MT_WF_RFCR_DROP_A2_BSSID	BIT(10)
+#define MT_WF_RFCR_DROP_OTHER_BEACON	BIT(11)
+#define MT_WF_RFCR_DROP_FRAME_REPORT	BIT(12)
+#define MT_WF_RFCR_DROP_CTL_RSV		BIT(13)
+#define MT_WF_RFCR_DROP_CTS		BIT(14)
+#define MT_WF_RFCR_DROP_RTS		BIT(15)
+#define MT_WF_RFCR_DROP_DUPLICATE	BIT(16)
+#define MT_WF_RFCR_DROP_OTHER_BSS	BIT(17)
+#define MT_WF_RFCR_DROP_OTHER_UC	BIT(18)
+#define MT_WF_RFCR_DROP_OTHER_TIM	BIT(19)
+#define MT_WF_RFCR_DROP_NDPA		BIT(20)
+#define MT_WF_RFCR_DROP_UNWANTED_CTL	BIT(21)
+
+#define MT_WF_RFCR1(_band)		MT_WF_RMAC(_band, 0x004)
+#define MT_WF_RFCR1_DROP_ACK		BIT(4)
+#define MT_WF_RFCR1_DROP_BF_POLL	BIT(5)
+#define MT_WF_RFCR1_DROP_BA		BIT(6)
+#define MT_WF_RFCR1_DROP_CFEND		BIT(7)
+#define MT_WF_RFCR1_DROP_CFACK		BIT(8)
+
+#define MT_WF_RMAC_MIB_TIME0(_band)	MT_WF_RMAC(_band, 0x03c4)
+#define MT_WF_RMAC_MIB_RXTIME_CLR	BIT(31)
+#define MT_WF_RMAC_MIB_RXTIME_EN	BIT(30)
+
+#define MT_WF_RMAC_MIB_AIRTIME14(_band)	MT_WF_RMAC(_band, 0x03b8)
+#define MT_MIB_OBSSTIME_MASK		GENMASK(23, 0)
+#define MT_WF_RMAC_MIB_AIRTIME0(_band)	MT_WF_RMAC(_band, 0x0380)
+
+/* WFDMA0 */
+#define MT_WFDMA0_BASE			0xd4000
+#define MT_WFDMA0(ofs)			(MT_WFDMA0_BASE + (ofs))
+
+#define MT_WFDMA0_RST			MT_WFDMA0(0x100)
+#define MT_WFDMA0_RST_LOGIC_RST		BIT(4)
+#define MT_WFDMA0_RST_DMASHDL_ALL_RST	BIT(5)
+
+#define MT_WFDMA0_BUSY_ENA		MT_WFDMA0(0x13c)
+#define MT_WFDMA0_BUSY_ENA_TX_FIFO0	BIT(0)
+#define MT_WFDMA0_BUSY_ENA_TX_FIFO1	BIT(1)
+#define MT_WFDMA0_BUSY_ENA_RX_FIFO	BIT(2)
+
+#define MT_WFDMA0_GLO_CFG		MT_WFDMA0(0x208)
+#define MT_WFDMA0_GLO_CFG_TX_DMA_EN	BIT(0)
+#define MT_WFDMA0_GLO_CFG_RX_DMA_EN	BIT(2)
+
+#define MT_WFDMA0_RST_DTX_PTR		MT_WFDMA0(0x20c)
+#define MT_WFDMA0_PRI_DLY_INT_CFG0	MT_WFDMA0(0x2f0)
+
+#define MT_RX_DATA_RING_BASE		MT_WFDMA0(0x500)
+
+#define MT_WFDMA0_RX_RING0_EXT_CTRL	MT_WFDMA0(0x680)
+#define MT_WFDMA0_RX_RING1_EXT_CTRL	MT_WFDMA0(0x684)
+#define MT_WFDMA0_RX_RING2_EXT_CTRL	MT_WFDMA0(0x688)
+
+/* WFDMA1 */
+#define MT_WFDMA1_BASE			0xd5000
+#define MT_WFDMA1(ofs)			(MT_WFDMA1_BASE + (ofs))
+
+#define MT_WFDMA1_RST			MT_WFDMA1(0x100)
+#define MT_WFDMA1_RST_LOGIC_RST		BIT(4)
+#define MT_WFDMA1_RST_DMASHDL_ALL_RST	BIT(5)
+
+#define MT_WFDMA1_BUSY_ENA		MT_WFDMA1(0x13c)
+#define MT_WFDMA1_BUSY_ENA_TX_FIFO0	BIT(0)
+#define MT_WFDMA1_BUSY_ENA_TX_FIFO1	BIT(1)
+#define MT_WFDMA1_BUSY_ENA_RX_FIFO	BIT(2)
+
+#define MT_MCU_CMD			MT_WFDMA1(0x1f0)
+#define MT_MCU_CMD_STOP_DMA_FW_RELOAD	BIT(1)
+#define MT_MCU_CMD_STOP_DMA		BIT(2)
+#define MT_MCU_CMD_RESET_DONE		BIT(3)
+#define MT_MCU_CMD_RECOVERY_DONE	BIT(4)
+#define MT_MCU_CMD_NORMAL_STATE		BIT(5)
+#define MT_MCU_CMD_ERROR_MASK		GENMASK(5, 1)
+
+#define MT_WFDMA1_GLO_CFG		MT_WFDMA1(0x208)
+#define MT_WFDMA1_GLO_CFG_TX_DMA_EN	BIT(0)
+#define MT_WFDMA1_GLO_CFG_RX_DMA_EN	BIT(2)
+#define MT_WFDMA1_GLO_CFG_OMIT_TX_INFO	BIT(28)
+#define MT_WFDMA1_GLO_CFG_OMIT_RX_INFO	BIT(27)
+
+#define MT_WFDMA1_RST_DTX_PTR		MT_WFDMA1(0x20c)
+#define MT_WFDMA1_PRI_DLY_INT_CFG0	MT_WFDMA1(0x2f0)
+
+#define MT_TX_RING_BASE			MT_WFDMA1(0x300)
+#define MT_RX_EVENT_RING_BASE		MT_WFDMA1(0x500)
+
+#define MT_WFDMA1_TX_RING0_EXT_CTRL	MT_WFDMA1(0x600)
+#define MT_WFDMA1_TX_RING1_EXT_CTRL	MT_WFDMA1(0x604)
+#define MT_WFDMA1_TX_RING2_EXT_CTRL	MT_WFDMA1(0x608)
+#define MT_WFDMA1_TX_RING3_EXT_CTRL	MT_WFDMA1(0x60c)
+#define MT_WFDMA1_TX_RING4_EXT_CTRL	MT_WFDMA1(0x610)
+#define MT_WFDMA1_TX_RING5_EXT_CTRL	MT_WFDMA1(0x614)
+#define MT_WFDMA1_TX_RING6_EXT_CTRL	MT_WFDMA1(0x618)
+#define MT_WFDMA1_TX_RING7_EXT_CTRL	MT_WFDMA1(0x61c)
+
+#define MT_WFDMA1_TX_RING16_EXT_CTRL	MT_WFDMA1(0x640)
+#define MT_WFDMA1_TX_RING17_EXT_CTRL	MT_WFDMA1(0x644)
+#define MT_WFDMA1_TX_RING18_EXT_CTRL	MT_WFDMA1(0x648)
+#define MT_WFDMA1_TX_RING19_EXT_CTRL	MT_WFDMA1(0x64c)
+#define MT_WFDMA1_TX_RING20_EXT_CTRL	MT_WFDMA1(0x650)
+#define MT_WFDMA1_TX_RING21_EXT_CTRL	MT_WFDMA1(0x654)
+#define MT_WFDMA1_TX_RING22_EXT_CTRL	MT_WFDMA1(0x658)
+#define MT_WFDMA1_TX_RING23_EXT_CTRL	MT_WFDMA1(0x65c)
+
+#define MT_WFDMA1_RX_RING0_EXT_CTRL	MT_WFDMA1(0x680)
+#define MT_WFDMA1_RX_RING1_EXT_CTRL	MT_WFDMA1(0x684)
+#define MT_WFDMA1_RX_RING2_EXT_CTRL	MT_WFDMA1(0x688)
+#define MT_WFDMA1_RX_RING3_EXT_CTRL	MT_WFDMA1(0x68c)
+
+/* WFDMA CSR */
+#define MT_WFDMA_EXT_CSR_BASE		0xd7000
+#define MT_WFDMA_EXT_CSR(ofs)		(MT_WFDMA_EXT_CSR_BASE + (ofs))
+
+#define MT_INT_SOURCE_CSR		MT_WFDMA_EXT_CSR(0x10)
+#define MT_INT_MASK_CSR			MT_WFDMA_EXT_CSR(0x14)
+#define MT_INT_RX_DONE_DATA		BIT(16)
+#define MT_INT_RX_DONE_WM		BIT(0)
+#define MT_INT_RX_DONE_WA		BIT(1)
+#define MT_INT_RX_DONE(_n)		((_n) ? BIT((_n) - 1) : BIT(16))
+#define MT_INT_RX_DONE_ALL		(BIT(0) | BIT(1) | BIT(16))
+#define MT_INT_TX_DONE_ALL		(BIT(15) | GENMASK(27, 26) | BIT(30))
+#define MT_INT_MCU_CMD			BIT(29)
+
+#define MT_WFDMA_EXT_CSR_HIF_MISC	MT_WFDMA_EXT_CSR(0x44)
+#define MT_WFDMA_EXT_CSR_HIF_MISC_BUSY	BIT(0)
+
+/* WFDMA0 PCIE1 */
+#define MT_WFDMA0_PCIE1_BASE			0xd8000
+#define MT_WFDMA0_PCIE1(ofs)			(MT_WFDMA0_PCIE1_BASE + (ofs))
+
+#define MT_WFDMA0_PCIE1_BUSY_ENA		MT_WFDMA0_PCIE1(0x13c)
+#define MT_WFDMA0_PCIE1_BUSY_ENA_TX_FIFO0	BIT(0)
+#define MT_WFDMA0_PCIE1_BUSY_ENA_TX_FIFO1	BIT(1)
+#define MT_WFDMA0_PCIE1_BUSY_ENA_RX_FIFO	BIT(2)
+
+/* WFDMA1 PCIE1 */
+#define MT_WFDMA1_PCIE1_BASE			0xd9000
+#define MT_WFDMA1_PCIE1(ofs)			(MT_WFDMA0_PCIE1_BASE + (ofs))
+
+#define MT_WFDMA1_PCIE1_BUSY_ENA		MT_WFDMA1_PCIE1(0x13c)
+#define MT_WFDMA1_PCIE1_BUSY_ENA_TX_FIFO0	BIT(0)
+#define MT_WFDMA1_PCIE1_BUSY_ENA_TX_FIFO1	BIT(1)
+#define MT_WFDMA1_PCIE1_BUSY_ENA_RX_FIFO	BIT(2)
+
+#define MT_INFRA_CFG_BASE		0xf1000
+#define MT_INFRA(ofs)			(MT_INFRA_CFG_BASE + (ofs))
+
+#define MT_HIF_REMAP_L1			MT_INFRA(0x1ac)
+#define MT_HIF_REMAP_L1_MASK		GENMASK(15, 0)
+#define MT_HIF_REMAP_L1_OFFSET		GENMASK(15, 0)
+#define MT_HIF_REMAP_L1_BASE		GENMASK(31, 16)
+#define MT_HIF_REMAP_BASE_L1		0xe0000
+
+#define MT_HIF_REMAP_L2			MT_INFRA(0x1b0)
+#define MT_HIF_REMAP_L2_MASK		GENMASK(19, 0)
+#define MT_HIF_REMAP_L2_OFFSET		GENMASK(11, 0)
+#define MT_HIF_REMAP_L2_BASE		GENMASK(31, 12)
+#define MT_HIF_REMAP_BASE_L2		0x00000
+
+#define MT_TOP_BASE			0x18060000
+#define MT_TOP(ofs)			(MT_TOP_BASE + (ofs))
+
+#define MT_TOP_LPCR_HOST_BAND0		MT_TOP(0x10)
+#define MT_TOP_LPCR_HOST_FW_OWN		BIT(0)
+#define MT_TOP_LPCR_HOST_DRV_OWN	BIT(1)
+
+#define MT_TOP_MISC			MT_TOP(0xf0)
+#define MT_TOP_MISC_FW_STATE		GENMASK(2, 0)
+
+#define MT_HW_BOUND			0x70010020
+#define MT_HW_CHIPID			0x70010200
+#define MT_HW_REV			0x70010204
+
+#define MT_PCIE_MAC_BASE		0x74030000
+#define MT_PCIE_MAC(ofs)		(MT_PCIE_MAC_BASE + (ofs))
+#define MT_PCIE_MAC_INT_ENABLE		MT_PCIE_MAC(0x188)
+
+/* PHY: band 0(0x83080000), band 1(0x83090000) */
+#define MT_WF_PHY_BASE			0x83080000
+#define MT_WF_PHY(ofs)			(MT_WF_PHY_BASE + (ofs))
+
+#define MT_WF_PHY_RX_CTRL1(_phy)	MT_WF_PHY(0x2004 + ((_phy) << 16))
+#define MT_WF_PHY_RX_CTRL1_STSCNT_EN	GENMASK(11, 9)
+
+#endif
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
