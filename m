Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54A892034
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 11:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZnPz48wbYexLn1dx+WO2/B1oPLbDmaQfmvD0NlUrEg=; b=rFWGi00GASHWyq
	mPRGgusbmDFRVg7ETorNi3uDbsADAwUQllwaVIyjCWttFPao8tNzENfNh4OS9DRPXGqYQzTOF5s+b
	PXFc3HqzgMlyrlxxIojldC4x3rCJfMTWU0dePKxBCAYHt3BPXskKRG0ykk/YKoY37WuCD+0kRwuoW
	Uf9289epqFLkhLIUfWn2OS4dlc55zZ3BH+17WvwCl5D2XgQAXtZ0boRSHZcLkF4hj/0ngy4tRd1Hj
	OPh0TDDD3cG52K68pAEuBq3fj/KYLOaxgewE9ya9OwSdty4OFdy4qayU1cjKpEGpj/IUH4eok9L8b
	Kv6l+b2fZgDZQSNzOJ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdsq-0006bF-1g; Mon, 19 Aug 2019 09:23:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdrl-0005LR-MO
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 09:22:29 +0000
X-UUID: ac06ef73429e4e40b4ab194bab5cceb5-20190819
X-UUID: ac06ef73429e4e40b4ab194bab5cceb5-20190819
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1877396738; Mon, 19 Aug 2019 01:22:03 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 02:22:02 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 17:22:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 19 Aug 2019 17:22:01 +0800
From: Mars Cheng <mars.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
 Marc Zyngier <marc.zyngier@arm.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 06/11] pinctrl: mediatek: add pinctrl support for MT6779 SoC
Date: Mon, 19 Aug 2019 17:21:37 +0800
Message-ID: <1566206502-4347-7-git-send-email-mars.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022217_888856_6C8B6E4E 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds MT6779 pinctrl driver based on MediaTek pinctrl-paris core.

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
Signed-off-by: Andy Teng <andy.teng@mediatek.com>
---
 drivers/pinctrl/mediatek/Kconfig              |    7 +
 drivers/pinctrl/mediatek/Makefile             |    1 +
 drivers/pinctrl/mediatek/pinctrl-mt6779.c     |  775 +++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h | 2085 +++++++++++++++++++++++++
 4 files changed, 2868 insertions(+)
 create mode 100644 drivers/pinctrl/mediatek/pinctrl-mt6779.c
 create mode 100644 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h

diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
index 701f9af..f628d01 100644
--- a/drivers/pinctrl/mediatek/Kconfig
+++ b/drivers/pinctrl/mediatek/Kconfig
@@ -86,6 +86,13 @@ config PINCTRL_MT6765
 	default ARM64 && ARCH_MEDIATEK
 	select PINCTRL_MTK_PARIS
 
+config PINCTRL_MT6779
+	bool "Mediatek MT6779 pin control"
+	depends on OF
+	depends on ARM64 || COMPILE_TEST
+	default ARM64 && ARCH_MEDIATEK
+	select PINCTRL_MTK_PARIS
+
 config PINCTRL_MT6797
 	bool "Mediatek MT6797 pin control"
 	depends on OF
diff --git a/drivers/pinctrl/mediatek/Makefile b/drivers/pinctrl/mediatek/Makefile
index a74325a..59c1c60 100644
--- a/drivers/pinctrl/mediatek/Makefile
+++ b/drivers/pinctrl/mediatek/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_PINCTRL_MT2712)	+= pinctrl-mt2712.o
 obj-$(CONFIG_PINCTRL_MT8135)	+= pinctrl-mt8135.o
 obj-$(CONFIG_PINCTRL_MT8127)	+= pinctrl-mt8127.o
 obj-$(CONFIG_PINCTRL_MT6765)	+= pinctrl-mt6765.o
+obj-$(CONFIG_PINCTRL_MT6779)	+= pinctrl-mt6779.o
 obj-$(CONFIG_PINCTRL_MT6797)	+= pinctrl-mt6797.o
 obj-$(CONFIG_PINCTRL_MT7622)	+= pinctrl-mt7622.o
 obj-$(CONFIG_PINCTRL_MT7623)	+= pinctrl-mt7623.o
diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6779.c b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
new file mode 100644
index 0000000..145bf22
--- /dev/null
+++ b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
@@ -0,0 +1,775 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ * Author: Andy Teng <andy.teng@mediatek.com>
+ *
+ */
+
+#include "pinctrl-mtk-mt6779.h"
+#include "pinctrl-paris.h"
+
+/* MT6779 have multiple bases to program pin configuration listed as the below:
+ * gpio:0x10005000,     iocfg_rm:0x11C20000, iocfg_br:0x11D10000,
+ * iocfg_lm:0x11E20000, iocfg_lb:0x11E70000, iocfg_rt:0x11EA0000,
+ * iocfg_lt:0x11F20000, iocfg_tl:0x11F30000
+ * _i_based could be used to indicate what base the pin should be mapped into.
+ */
+
+#define PIN_FIELD_BASE(s_pin, e_pin, i_base, s_addr, x_addrs, s_bit, x_bits) \
+	PIN_FIELD_CALC(s_pin, e_pin, i_base, s_addr, x_addrs, s_bit, x_bits, \
+		       32, 0)
+
+#define PINS_FIELD_BASE(s_pin, e_pin, i_base, s_addr, x_addrs, s_bit, x_bits) \
+	PIN_FIELD_CALC(s_pin, e_pin, i_base, s_addr, x_addrs, s_bit, x_bits,  \
+		       32, 1)
+
+static const struct mtk_pin_field_calc mt6779_pin_mode_range[] = {
+	PIN_FIELD_BASE(0, 7, 0, 0x0300, 0x10, 0, 4),
+	PIN_FIELD_BASE(8, 15, 0, 0x0310, 0x10, 0, 4),
+	PIN_FIELD_BASE(16, 23, 0, 0x0320, 0x10, 0, 4),
+	PIN_FIELD_BASE(24, 31, 0, 0x0330, 0x10, 0, 4),
+	PIN_FIELD_BASE(32, 39, 0, 0x0340, 0x10, 0, 4),
+	PIN_FIELD_BASE(40, 47, 0, 0x0350, 0x10, 0, 4),
+	PIN_FIELD_BASE(48, 55, 0, 0x0360, 0x10, 0, 4),
+	PIN_FIELD_BASE(56, 63, 0, 0x0370, 0x10, 0, 4),
+	PIN_FIELD_BASE(64, 71, 0, 0x0380, 0x10, 0, 4),
+	PIN_FIELD_BASE(72, 79, 0, 0x0390, 0x10, 0, 4),
+	PIN_FIELD_BASE(80, 87, 0, 0x03A0, 0x10, 0, 4),
+	PIN_FIELD_BASE(88, 95, 0, 0x03B0, 0x10, 0, 4),
+	PIN_FIELD_BASE(96, 103, 0, 0x03C0, 0x10, 0, 4),
+	PIN_FIELD_BASE(104, 111, 0, 0x03D0, 0x10, 0, 4),
+	PIN_FIELD_BASE(112, 119, 0, 0x03E0, 0x10, 0, 4),
+	PIN_FIELD_BASE(120, 127, 0, 0x03F0, 0x10, 0, 4),
+	PIN_FIELD_BASE(128, 135, 0, 0x0400, 0x10, 0, 4),
+	PIN_FIELD_BASE(136, 143, 0, 0x0410, 0x10, 0, 4),
+	PIN_FIELD_BASE(144, 151, 0, 0x0420, 0x10, 0, 4),
+	PIN_FIELD_BASE(152, 159, 0, 0x0430, 0x10, 0, 4),
+	PIN_FIELD_BASE(160, 167, 0, 0x0440, 0x10, 0, 4),
+	PIN_FIELD_BASE(168, 175, 0, 0x0450, 0x10, 0, 4),
+	PIN_FIELD_BASE(176, 183, 0, 0x0460, 0x10, 0, 4),
+	PIN_FIELD_BASE(184, 191, 0, 0x0470, 0x10, 0, 4),
+	PIN_FIELD_BASE(192, 199, 0, 0x0480, 0x10, 0, 4),
+	PIN_FIELD_BASE(200, 202, 0, 0x0490, 0x10, 0, 4),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_dir_range[] = {
+	PIN_FIELD_BASE(0, 31, 0, 0x0000, 0x10, 0, 1),
+	PIN_FIELD_BASE(32, 63, 0, 0x0010, 0x10, 0, 1),
+	PIN_FIELD_BASE(64, 95, 0, 0x0020, 0x10, 0, 1),
+	PIN_FIELD_BASE(96, 127, 0, 0x0030, 0x10, 0, 1),
+	PIN_FIELD_BASE(128, 159, 0, 0x0040, 0x10, 0, 1),
+	PIN_FIELD_BASE(160, 191, 0, 0x0050, 0x10, 0, 1),
+	PIN_FIELD_BASE(192, 202, 0, 0x0060, 0x10, 0, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_di_range[] = {
+	PIN_FIELD_BASE(0, 31, 0, 0x0200, 0x10, 0, 1),
+	PIN_FIELD_BASE(32, 63, 0, 0x0210, 0x10, 0, 1),
+	PIN_FIELD_BASE(64, 95, 0, 0x0220, 0x10, 0, 1),
+	PIN_FIELD_BASE(96, 127, 0, 0x0230, 0x10, 0, 1),
+	PIN_FIELD_BASE(128, 159, 0, 0x0240, 0x10, 0, 1),
+	PIN_FIELD_BASE(160, 191, 0, 0x0250, 0x10, 0, 1),
+	PIN_FIELD_BASE(192, 202, 0, 0x0260, 0x10, 0, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_do_range[] = {
+	PIN_FIELD_BASE(0, 31, 0, 0x0100, 0x10, 0, 1),
+	PIN_FIELD_BASE(32, 63, 0, 0x0110, 0x10, 0, 1),
+	PIN_FIELD_BASE(64, 95, 0, 0x0120, 0x10, 0, 1),
+	PIN_FIELD_BASE(96, 127, 0, 0x0130, 0x10, 0, 1),
+	PIN_FIELD_BASE(128, 159, 0, 0x0140, 0x10, 0, 1),
+	PIN_FIELD_BASE(160, 191, 0, 0x0150, 0x10, 0, 1),
+	PIN_FIELD_BASE(192, 202, 0, 0x0160, 0x10, 0, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_ies_range[] = {
+	PIN_FIELD_BASE(0, 9, 6, 0x0030, 0x10, 3, 1),
+	PIN_FIELD_BASE(10, 16, 3, 0x0050, 0x10, 0, 1),
+	PIN_FIELD_BASE(17, 18, 6, 0x0030, 0x10, 28, 1),
+	PIN_FIELD_BASE(19, 19, 6, 0x0030, 0x10, 27, 1),
+	PIN_FIELD_BASE(20, 20, 6, 0x0030, 0x10, 26, 1),
+	PIN_FIELD_BASE(21, 24, 6, 0x0030, 0x10, 19, 1),
+	PIN_FIELD_BASE(25, 25, 6, 0x0030, 0x10, 30, 1),
+	PIN_FIELD_BASE(26, 26, 6, 0x0030, 0x10, 23, 1),
+	PIN_FIELD_BASE(27, 27, 6, 0x0030, 0x10, 0, 1),
+	PIN_FIELD_BASE(28, 29, 6, 0x0030, 0x10, 24, 1),
+	PIN_FIELD_BASE(30, 30, 6, 0x0030, 0x10, 16, 1),
+	PIN_FIELD_BASE(31, 31, 6, 0x0030, 0x10, 13, 1),
+	PIN_FIELD_BASE(32, 32, 6, 0x0030, 0x10, 15, 1),
+	PIN_FIELD_BASE(33, 33, 6, 0x0030, 0x10, 17, 1),
+	PIN_FIELD_BASE(34, 34, 6, 0x0030, 0x10, 14, 1),
+	PIN_FIELD_BASE(35, 35, 6, 0x0040, 0x10, 4, 1),
+	PIN_FIELD_BASE(36, 36, 6, 0x0030, 0x10, 31, 1),
+	PIN_FIELD_BASE(37, 37, 6, 0x0040, 0x10, 5, 1),
+	PIN_FIELD_BASE(38, 41, 6, 0x0040, 0x10, 0, 1),
+	PIN_FIELD_BASE(42, 43, 6, 0x0030, 0x10, 1, 1),
+	PIN_FIELD_BASE(44, 44, 6, 0x0030, 0x10, 18, 1),
+	PIN_FIELD_BASE(45, 45, 3, 0x0050, 0x10, 14, 1),
+	PIN_FIELD_BASE(46, 46, 3, 0x0050, 0x10, 22, 1),
+	PIN_FIELD_BASE(47, 47, 3, 0x0050, 0x10, 25, 1),
+	PIN_FIELD_BASE(48, 48, 3, 0x0050, 0x10, 24, 1),
+	PIN_FIELD_BASE(49, 49, 3, 0x0050, 0x10, 26, 1),
+	PIN_FIELD_BASE(50, 50, 3, 0x0050, 0x10, 23, 1),
+	PIN_FIELD_BASE(51, 51, 3, 0x0050, 0x10, 11, 1),
+	PIN_FIELD_BASE(52, 52, 3, 0x0050, 0x10, 19, 1),
+	PIN_FIELD_BASE(53, 54, 3, 0x0050, 0x10, 27, 1),
+	PIN_FIELD_BASE(55, 55, 3, 0x0050, 0x10, 13, 1),
+	PIN_FIELD_BASE(56, 56, 3, 0x0050, 0x10, 21, 1),
+	PIN_FIELD_BASE(57, 57, 3, 0x0050, 0x10, 10, 1),
+	PIN_FIELD_BASE(58, 58, 3, 0x0050, 0x10, 9, 1),
+	PIN_FIELD_BASE(59, 60, 3, 0x0050, 0x10, 7, 1),
+	PIN_FIELD_BASE(61, 61, 3, 0x0050, 0x10, 12, 1),
+	PIN_FIELD_BASE(62, 62, 3, 0x0050, 0x10, 20, 1),
+	PIN_FIELD_BASE(63, 63, 3, 0x0050, 0x10, 17, 1),
+	PIN_FIELD_BASE(64, 64, 3, 0x0050, 0x10, 16, 1),
+	PIN_FIELD_BASE(65, 65, 3, 0x0050, 0x10, 18, 1),
+	PIN_FIELD_BASE(66, 66, 3, 0x0050, 0x10, 15, 1),
+	PIN_FIELD_BASE(67, 67, 2, 0x0060, 0x10, 7, 1),
+	PIN_FIELD_BASE(68, 68, 2, 0x0060, 0x10, 6, 1),
+	PIN_FIELD_BASE(69, 69, 2, 0x0060, 0x10, 8, 1),
+	PIN_FIELD_BASE(70, 71, 2, 0x0060, 0x10, 4, 1),
+	PIN_FIELD_BASE(72, 72, 4, 0x0020, 0x10, 3, 1),
+	PIN_FIELD_BASE(73, 73, 4, 0x0020, 0x10, 2, 1),
+	PIN_FIELD_BASE(74, 74, 4, 0x0020, 0x10, 1, 1),
+	PIN_FIELD_BASE(75, 75, 4, 0x0020, 0x10, 4, 1),
+	PIN_FIELD_BASE(76, 76, 4, 0x0020, 0x10, 12, 1),
+	PIN_FIELD_BASE(77, 77, 4, 0x0020, 0x10, 11, 1),
+	PIN_FIELD_BASE(78, 78, 2, 0x0050, 0x10, 18, 1),
+	PIN_FIELD_BASE(79, 79, 2, 0x0050, 0x10, 17, 1),
+	PIN_FIELD_BASE(80, 81, 2, 0x0050, 0x10, 19, 1),
+	PIN_FIELD_BASE(82, 88, 2, 0x0050, 0x10, 1, 1),
+	PIN_FIELD_BASE(89, 89, 2, 0x0050, 0x10, 16, 1),
+	PIN_FIELD_BASE(90, 90, 2, 0x0050, 0x10, 15, 1),
+	PIN_FIELD_BASE(91, 91, 2, 0x0050, 0x10, 14, 1),
+	PIN_FIELD_BASE(92, 92, 2, 0x0050, 0x10, 8, 1),
+	PIN_FIELD_BASE(93, 93, 4, 0x0020, 0x10, 0, 1),
+	PIN_FIELD_BASE(94, 94, 2, 0x0050, 0x10, 0, 1),
+	PIN_FIELD_BASE(95, 95, 4, 0x0020, 0x10, 7, 1),
+	PIN_FIELD_BASE(96, 96, 4, 0x0020, 0x10, 5, 1),
+	PIN_FIELD_BASE(97, 97, 4, 0x0020, 0x10, 8, 1),
+	PIN_FIELD_BASE(98, 98, 4, 0x0020, 0x10, 6, 1),
+	PIN_FIELD_BASE(99, 99, 2, 0x0060, 0x10, 9, 1),
+	PIN_FIELD_BASE(100, 100, 2, 0x0060, 0x10, 12, 1),
+	PIN_FIELD_BASE(101, 101, 2, 0x0060, 0x10, 10, 1),
+	PIN_FIELD_BASE(102, 102, 2, 0x0060, 0x10, 13, 1),
+	PIN_FIELD_BASE(103, 103, 2, 0x0060, 0x10, 11, 1),
+	PIN_FIELD_BASE(104, 104, 2, 0x0060, 0x10, 14, 1),
+	PIN_FIELD_BASE(105, 105, 2, 0x0050, 0x10, 10, 1),
+	PIN_FIELD_BASE(106, 106, 2, 0x0050, 0x10, 9, 1),
+	PIN_FIELD_BASE(107, 108, 2, 0x0050, 0x10, 12, 1),
+	PIN_FIELD_BASE(109, 109, 2, 0x0050, 0x10, 11, 1),
+	PIN_FIELD_BASE(110, 110, 2, 0x0060, 0x10, 16, 1),
+	PIN_FIELD_BASE(111, 111, 2, 0x0060, 0x10, 18, 1),
+	PIN_FIELD_BASE(112, 112, 2, 0x0060, 0x10, 15, 1),
+	PIN_FIELD_BASE(113, 113, 2, 0x0060, 0x10, 17, 1),
+	PIN_FIELD_BASE(114, 115, 2, 0x0050, 0x10, 26, 1),
+	PIN_FIELD_BASE(116, 117, 2, 0x0050, 0x10, 21, 1),
+	PIN_FIELD_BASE(118, 118, 2, 0x0050, 0x10, 31, 1),
+	PIN_FIELD_BASE(119, 119, 2, 0x0060, 0x10, 0, 1),
+	PIN_FIELD_BASE(120, 121, 2, 0x0050, 0x10, 23, 1),
+	PIN_FIELD_BASE(122, 123, 2, 0x0050, 0x10, 28, 1),
+	PIN_FIELD_BASE(124, 125, 2, 0x0060, 0x10, 1, 1),
+	PIN_FIELD_BASE(126, 127, 1, 0x0030, 0x10, 8, 1),
+	PIN_FIELD_BASE(128, 129, 1, 0x0030, 0x10, 17, 1),
+	PIN_FIELD_BASE(130, 130, 1, 0x0030, 0x10, 16, 1),
+	PIN_FIELD_BASE(131, 131, 1, 0x0030, 0x10, 19, 1),
+	PIN_FIELD_BASE(132, 132, 1, 0x0030, 0x10, 21, 1),
+	PIN_FIELD_BASE(133, 133, 1, 0x0030, 0x10, 20, 1),
+	PIN_FIELD_BASE(134, 135, 1, 0x0030, 0x10, 2, 1),
+	PIN_FIELD_BASE(136, 136, 1, 0x0030, 0x10, 7, 1),
+	PIN_FIELD_BASE(137, 137, 1, 0x0030, 0x10, 4, 1),
+	PIN_FIELD_BASE(138, 138, 1, 0x0030, 0x10, 6, 1),
+	PIN_FIELD_BASE(139, 139, 1, 0x0030, 0x10, 5, 1),
+	PIN_FIELD_BASE(140, 141, 1, 0x0030, 0x10, 0, 1),
+	PIN_FIELD_BASE(142, 142, 1, 0x0030, 0x10, 15, 1),
+	PIN_FIELD_BASE(143, 143, 5, 0x0020, 0x10, 15, 1),
+	PIN_FIELD_BASE(144, 144, 5, 0x0020, 0x10, 17, 1),
+	PIN_FIELD_BASE(145, 145, 5, 0x0020, 0x10, 16, 1),
+	PIN_FIELD_BASE(146, 146, 5, 0x0020, 0x10, 12, 1),
+	PIN_FIELD_BASE(147, 155, 5, 0x0020, 0x10, 0, 1),
+	PIN_FIELD_BASE(156, 157, 5, 0x0020, 0x10, 22, 1),
+	PIN_FIELD_BASE(158, 158, 5, 0x0020, 0x10, 21, 1),
+	PIN_FIELD_BASE(159, 159, 5, 0x0020, 0x10, 24, 1),
+	PIN_FIELD_BASE(160, 161, 5, 0x0020, 0x10, 19, 1),
+	PIN_FIELD_BASE(162, 166, 5, 0x0020, 0x10, 25, 1),
+	PIN_FIELD_BASE(167, 168, 7, 0x0010, 0x10, 1, 1),
+	PIN_FIELD_BASE(169, 169, 7, 0x0010, 0x10, 4, 1),
+	PIN_FIELD_BASE(170, 170, 7, 0x0010, 0x10, 6, 1),
+	PIN_FIELD_BASE(171, 171, 7, 0x0010, 0x10, 8, 1),
+	PIN_FIELD_BASE(172, 172, 7, 0x0010, 0x10, 3, 1),
+	PIN_FIELD_BASE(173, 173, 7, 0x0010, 0x10, 7, 1),
+	PIN_FIELD_BASE(174, 175, 7, 0x0010, 0x10, 9, 1),
+	PIN_FIELD_BASE(176, 176, 7, 0x0010, 0x10, 0, 1),
+	PIN_FIELD_BASE(177, 177, 7, 0x0010, 0x10, 5, 1),
+	PIN_FIELD_BASE(178, 178, 7, 0x0010, 0x10, 11, 1),
+	PIN_FIELD_BASE(179, 179, 4, 0x0020, 0x10, 13, 1),
+	PIN_FIELD_BASE(180, 180, 4, 0x0020, 0x10, 10, 1),
+	PIN_FIELD_BASE(181, 183, 1, 0x0030, 0x10, 22, 1),
+	PIN_FIELD_BASE(184, 184, 1, 0x0030, 0x10, 12, 1),
+	PIN_FIELD_BASE(185, 185, 1, 0x0030, 0x10, 11, 1),
+	PIN_FIELD_BASE(186, 186, 1, 0x0030, 0x10, 13, 1),
+	PIN_FIELD_BASE(187, 187, 1, 0x0030, 0x10, 10, 1),
+	PIN_FIELD_BASE(188, 188, 1, 0x0030, 0x10, 14, 1),
+	PIN_FIELD_BASE(189, 189, 5, 0x0020, 0x10, 9, 1),
+	PIN_FIELD_BASE(190, 190, 5, 0x0020, 0x10, 18, 1),
+	PIN_FIELD_BASE(191, 192, 5, 0x0020, 0x10, 13, 1),
+	PIN_FIELD_BASE(193, 194, 5, 0x0020, 0x10, 10, 1),
+	PIN_FIELD_BASE(195, 195, 2, 0x0050, 0x10, 30, 1),
+	PIN_FIELD_BASE(196, 196, 2, 0x0050, 0x10, 25, 1),
+	PIN_FIELD_BASE(197, 197, 2, 0x0060, 0x10, 3, 1),
+	PIN_FIELD_BASE(198, 199, 4, 0x0020, 0x10, 14, 1),
+	PIN_FIELD_BASE(200, 201, 6, 0x0040, 0x10, 6, 1),
+	PIN_FIELD_BASE(202, 202, 4, 0x0020, 0x10, 9, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_smt_range[] = {
+	PINS_FIELD_BASE(0, 9, 6, 0x00c0, 0x10, 3, 1),
+	PIN_FIELD_BASE(10, 11, 3, 0x00e0, 0x10, 0, 1),
+	PINS_FIELD_BASE(12, 15, 3, 0x00e0, 0x10, 2, 1),
+	PIN_FIELD_BASE(16, 16, 3, 0x00e0, 0x10, 3, 1),
+	PINS_FIELD_BASE(17, 20, 6, 0x00c0, 0x10, 11, 1),
+	PINS_FIELD_BASE(21, 24, 6, 0x00c0, 0x10, 7, 1),
+	PIN_FIELD_BASE(25, 25, 6, 0x00c0, 0x10, 12, 1),
+	PIN_FIELD_BASE(26, 26, 6, 0x00c0, 0x10, 8, 1),
+	PIN_FIELD_BASE(27, 27, 6, 0x00c0, 0x10, 0, 1),
+	PIN_FIELD_BASE(28, 29, 6, 0x00c0, 0x10, 9, 1),
+	PINS_FIELD_BASE(30, 32, 6, 0x00c0, 0x10, 4, 1),
+	PIN_FIELD_BASE(33, 33, 6, 0x00c0, 0x10, 5, 1),
+	PIN_FIELD_BASE(34, 34, 6, 0x00c0, 0x10, 4, 1),
+	PINS_FIELD_BASE(35, 41, 6, 0x00c0, 0x10, 13, 1),
+	PIN_FIELD_BASE(42, 43, 6, 0x00c0, 0x10, 1, 1),
+	PIN_FIELD_BASE(44, 44, 6, 0x00c0, 0x10, 6, 1),
+	PIN_FIELD_BASE(45, 45, 3, 0x00e0, 0x10, 8, 1),
+	PIN_FIELD_BASE(46, 46, 3, 0x00e0, 0x10, 13, 1),
+	PINS_FIELD_BASE(47, 50, 3, 0x00e0, 0x10, 14, 1),
+	PIN_FIELD_BASE(51, 51, 3, 0x00e0, 0x10, 5, 1),
+	PIN_FIELD_BASE(52, 52, 3, 0x00e0, 0x10, 10, 1),
+	PIN_FIELD_BASE(53, 54, 3, 0x00e0, 0x10, 15, 1),
+	PIN_FIELD_BASE(55, 55, 3, 0x00e0, 0x10, 7, 1),
+	PIN_FIELD_BASE(56, 56, 3, 0x00e0, 0x10, 12, 1),
+	PINS_FIELD_BASE(57, 60, 3, 0x00e0, 0x10, 4, 1),
+	PIN_FIELD_BASE(61, 61, 3, 0x00e0, 0x10, 6, 1),
+	PIN_FIELD_BASE(62, 62, 3, 0x00e0, 0x10, 11, 1),
+	PINS_FIELD_BASE(63, 66, 3, 0x00e0, 0x10, 9, 1),
+	PINS_FIELD_BASE(67, 69, 2, 0x00e0, 0x10, 11, 1),
+	PIN_FIELD_BASE(70, 71, 2, 0x00e0, 0x10, 10, 1),
+	PINS_FIELD_BASE(72, 75, 4, 0x0070, 0x10, 1, 1),
+	PINS_FIELD_BASE(76, 77, 4, 0x0070, 0x10, 4, 1),
+	PINS_FIELD_BASE(78, 86, 2, 0x00e0, 0x10, 1, 1),
+	PINS_FIELD_BASE(87, 92, 2, 0x00e0, 0x10, 2, 1),
+	PIN_FIELD_BASE(93, 93, 4, 0x0070, 0x10, 0, 1),
+	PIN_FIELD_BASE(94, 94, 2, 0x00e0, 0x10, 2, 1),
+	PINS_FIELD_BASE(95, 98, 4, 0x0070, 0x10, 2, 1),
+	PINS_FIELD_BASE(99, 104, 2, 0x00e0, 0x10, 12, 1),
+	PINS_FIELD_BASE(105, 109, 2, 0x00e0, 0x10, 0, 1),
+	PIN_FIELD_BASE(110, 110, 2, 0x00e0, 0x10, 14, 1),
+	PIN_FIELD_BASE(111, 111, 2, 0x00e0, 0x10, 16, 1),
+	PIN_FIELD_BASE(112, 112, 2, 0x00e0, 0x10, 13, 1),
+	PIN_FIELD_BASE(113, 113, 2, 0x00e0, 0x10, 15, 1),
+	PINS_FIELD_BASE(114, 115, 2, 0x00e0, 0x10, 4, 1),
+	PIN_FIELD_BASE(116, 117, 2, 0x00e0, 0x10, 5, 1),
+	PINS_FIELD_BASE(118, 119, 2, 0x00e0, 0x10, 4, 1),
+	PIN_FIELD_BASE(120, 121, 2, 0x00e0, 0x10, 7, 1),
+	PINS_FIELD_BASE(122, 125, 2, 0x00e0, 0x10, 3, 1),
+	PINS_FIELD_BASE(126, 127, 1, 0x00c0, 0x10, 5, 1),
+	PINS_FIELD_BASE(128, 130, 1, 0x00c0, 0x10, 9, 1),
+	PINS_FIELD_BASE(131, 133, 1, 0x00c0, 0x10, 10, 1),
+	PIN_FIELD_BASE(134, 135, 1, 0x00c0, 0x10, 2, 1),
+	PINS_FIELD_BASE(136, 139, 1, 0x00c0, 0x10, 4, 1),
+	PIN_FIELD_BASE(140, 141, 1, 0x00c0, 0x10, 0, 1),
+	PIN_FIELD_BASE(142, 142, 1, 0x00c0, 0x10, 8, 1),
+	PINS_FIELD_BASE(143, 146, 5, 0x0060, 0x10, 1, 1),
+	PINS_FIELD_BASE(147, 155, 5, 0x0060, 0x10, 0, 1),
+	PIN_FIELD_BASE(156, 157, 5, 0x0060, 0x10, 6, 1),
+	PIN_FIELD_BASE(158, 158, 5, 0x0060, 0x10, 5, 1),
+	PIN_FIELD_BASE(159, 159, 5, 0x0060, 0x10, 8, 1),
+	PIN_FIELD_BASE(160, 161, 5, 0x0060, 0x10, 3, 1),
+	PINS_FIELD_BASE(162, 166, 5, 0x0060, 0x10, 2, 1),
+	PIN_FIELD_BASE(167, 167, 7, 0x0060, 0x10, 1, 1),
+	PINS_FIELD_BASE(168, 174, 7, 0x0060, 0x10, 2, 1),
+	PIN_FIELD_BASE(175, 175, 7, 0x0060, 0x10, 3, 1),
+	PIN_FIELD_BASE(176, 176, 7, 0x0060, 0x10, 0, 1),
+	PINS_FIELD_BASE(177, 178, 7, 0x0060, 0x10, 2, 1),
+	PINS_FIELD_BASE(179, 180, 4, 0x0070, 0x10, 4, 1),
+	PIN_FIELD_BASE(181, 183, 1, 0x00c0, 0x10, 11, 1),
+	PINS_FIELD_BASE(184, 187, 1, 0x00c0, 0x10, 6, 1),
+	PIN_FIELD_BASE(188, 188, 1, 0x00c0, 0x10, 7, 1),
+	PINS_FIELD_BASE(189, 194, 5, 0x0060, 0x10, 1, 1),
+	PIN_FIELD_BASE(195, 195, 2, 0x00e0, 0x10, 3, 1),
+	PIN_FIELD_BASE(196, 196, 2, 0x00e0, 0x10, 9, 1),
+	PIN_FIELD_BASE(197, 197, 2, 0x00e0, 0x10, 3, 1),
+	PIN_FIELD_BASE(198, 199, 4, 0x0070, 0x10, 5, 1),
+	PIN_FIELD_BASE(200, 201, 6, 0x00c0, 0x10, 14, 1),
+	PIN_FIELD_BASE(202, 202, 4, 0x0070, 0x10, 3, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_pu_range[] = {
+	PIN_FIELD_BASE(0, 9, 6, 0x0070, 0x10, 3, 1),
+	PIN_FIELD_BASE(16, 16, 3, 0x0080, 0x10, 0, 1),
+	PIN_FIELD_BASE(17, 18, 6, 0x0070, 0x10, 28, 1),
+	PIN_FIELD_BASE(19, 19, 6, 0x0070, 0x10, 27, 1),
+	PIN_FIELD_BASE(20, 20, 6, 0x0070, 0x10, 26, 1),
+	PIN_FIELD_BASE(21, 24, 6, 0x0070, 0x10, 19, 1),
+	PIN_FIELD_BASE(25, 25, 6, 0x0070, 0x10, 30, 1),
+	PIN_FIELD_BASE(26, 26, 6, 0x0070, 0x10, 23, 1),
+	PIN_FIELD_BASE(27, 27, 6, 0x0070, 0x10, 0, 1),
+	PIN_FIELD_BASE(28, 29, 6, 0x0070, 0x10, 24, 1),
+	PIN_FIELD_BASE(30, 30, 6, 0x0070, 0x10, 16, 1),
+	PIN_FIELD_BASE(31, 31, 6, 0x0070, 0x10, 13, 1),
+	PIN_FIELD_BASE(32, 32, 6, 0x0070, 0x10, 15, 1),
+	PIN_FIELD_BASE(33, 33, 6, 0x0070, 0x10, 17, 1),
+	PIN_FIELD_BASE(34, 34, 6, 0x0070, 0x10, 14, 1),
+	PIN_FIELD_BASE(35, 35, 6, 0x0080, 0x10, 5, 1),
+	PIN_FIELD_BASE(36, 36, 6, 0x0080, 0x10, 0, 1),
+	PIN_FIELD_BASE(37, 37, 6, 0x0080, 0x10, 6, 1),
+	PIN_FIELD_BASE(38, 41, 6, 0x0080, 0x10, 1, 1),
+	PIN_FIELD_BASE(42, 43, 6, 0x0070, 0x10, 1, 1),
+	PIN_FIELD_BASE(44, 44, 6, 0x0070, 0x10, 18, 1),
+	PIN_FIELD_BASE(45, 45, 3, 0x0080, 0x10, 4, 1),
+	PIN_FIELD_BASE(46, 46, 3, 0x0080, 0x10, 12, 1),
+	PIN_FIELD_BASE(47, 47, 3, 0x0080, 0x10, 15, 1),
+	PIN_FIELD_BASE(48, 48, 3, 0x0080, 0x10, 14, 1),
+	PIN_FIELD_BASE(49, 49, 3, 0x0080, 0x10, 16, 1),
+	PIN_FIELD_BASE(50, 50, 3, 0x0080, 0x10, 13, 1),
+	PIN_FIELD_BASE(51, 51, 3, 0x0080, 0x10, 1, 1),
+	PIN_FIELD_BASE(52, 52, 3, 0x0080, 0x10, 9, 1),
+	PIN_FIELD_BASE(53, 54, 3, 0x0080, 0x10, 18, 1),
+	PIN_FIELD_BASE(55, 55, 3, 0x0080, 0x10, 3, 1),
+	PIN_FIELD_BASE(56, 56, 3, 0x0080, 0x10, 11, 1),
+	PIN_FIELD_BASE(61, 61, 3, 0x0080, 0x10, 2, 1),
+	PIN_FIELD_BASE(62, 62, 3, 0x0080, 0x10, 10, 1),
+	PIN_FIELD_BASE(63, 63, 3, 0x0080, 0x10, 7, 1),
+	PIN_FIELD_BASE(64, 64, 3, 0x0080, 0x10, 6, 1),
+	PIN_FIELD_BASE(65, 65, 3, 0x0080, 0x10, 8, 1),
+	PIN_FIELD_BASE(66, 66, 3, 0x0080, 0x10, 5, 1),
+	PIN_FIELD_BASE(67, 67, 2, 0x00a0, 0x10, 7, 1),
+	PIN_FIELD_BASE(68, 68, 2, 0x00a0, 0x10, 6, 1),
+	PIN_FIELD_BASE(69, 69, 2, 0x00a0, 0x10, 8, 1),
+	PIN_FIELD_BASE(70, 71, 2, 0x00a0, 0x10, 4, 1),
+	PIN_FIELD_BASE(72, 72, 4, 0x0040, 0x10, 3, 1),
+	PIN_FIELD_BASE(73, 73, 4, 0x0040, 0x10, 2, 1),
+	PIN_FIELD_BASE(74, 74, 4, 0x0040, 0x10, 1, 1),
+	PIN_FIELD_BASE(75, 75, 4, 0x0040, 0x10, 4, 1),
+	PIN_FIELD_BASE(76, 76, 4, 0x0040, 0x10, 12, 1),
+	PIN_FIELD_BASE(77, 77, 4, 0x0040, 0x10, 11, 1),
+	PIN_FIELD_BASE(78, 78, 2, 0x0090, 0x10, 18, 1),
+	PIN_FIELD_BASE(79, 79, 2, 0x0090, 0x10, 17, 1),
+	PIN_FIELD_BASE(80, 81, 2, 0x0090, 0x10, 19, 1),
+	PIN_FIELD_BASE(82, 88, 2, 0x0090, 0x10, 1, 1),
+	PIN_FIELD_BASE(89, 89, 2, 0x0090, 0x10, 16, 1),
+	PIN_FIELD_BASE(90, 90, 2, 0x0090, 0x10, 15, 1),
+	PIN_FIELD_BASE(91, 91, 2, 0x0090, 0x10, 14, 1),
+	PIN_FIELD_BASE(92, 92, 2, 0x0090, 0x10, 8, 1),
+	PIN_FIELD_BASE(93, 93, 4, 0x0040, 0x10, 0, 1),
+	PIN_FIELD_BASE(94, 94, 2, 0x0090, 0x10, 0, 1),
+	PIN_FIELD_BASE(95, 95, 4, 0x0040, 0x10, 7, 1),
+	PIN_FIELD_BASE(96, 96, 4, 0x0040, 0x10, 5, 1),
+	PIN_FIELD_BASE(97, 97, 4, 0x0040, 0x10, 8, 1),
+	PIN_FIELD_BASE(98, 98, 4, 0x0040, 0x10, 6, 1),
+	PIN_FIELD_BASE(99, 99, 2, 0x00a0, 0x10, 9, 1),
+	PIN_FIELD_BASE(100, 100, 2, 0x00a0, 0x10, 12, 1),
+	PIN_FIELD_BASE(101, 101, 2, 0x00a0, 0x10, 10, 1),
+	PIN_FIELD_BASE(102, 102, 2, 0x00a0, 0x10, 13, 1),
+	PIN_FIELD_BASE(103, 103, 2, 0x00a0, 0x10, 11, 1),
+	PIN_FIELD_BASE(104, 104, 2, 0x00a0, 0x10, 14, 1),
+	PIN_FIELD_BASE(105, 105, 2, 0x0090, 0x10, 10, 1),
+	PIN_FIELD_BASE(106, 106, 2, 0x0090, 0x10, 9, 1),
+	PIN_FIELD_BASE(107, 108, 2, 0x0090, 0x10, 12, 1),
+	PIN_FIELD_BASE(109, 109, 2, 0x0090, 0x10, 11, 1),
+	PIN_FIELD_BASE(110, 110, 2, 0x00a0, 0x10, 16, 1),
+	PIN_FIELD_BASE(111, 111, 2, 0x00a0, 0x10, 18, 1),
+	PIN_FIELD_BASE(112, 112, 2, 0x00a0, 0x10, 15, 1),
+	PIN_FIELD_BASE(113, 113, 2, 0x00a0, 0x10, 17, 1),
+	PIN_FIELD_BASE(114, 115, 2, 0x0090, 0x10, 26, 1),
+	PIN_FIELD_BASE(116, 117, 2, 0x0090, 0x10, 21, 1),
+	PIN_FIELD_BASE(118, 118, 2, 0x0090, 0x10, 31, 1),
+	PIN_FIELD_BASE(119, 119, 2, 0x00a0, 0x10, 0, 1),
+	PIN_FIELD_BASE(120, 121, 2, 0x0090, 0x10, 23, 1),
+	PIN_FIELD_BASE(122, 123, 2, 0x0090, 0x10, 28, 1),
+	PIN_FIELD_BASE(124, 125, 2, 0x00a0, 0x10, 1, 1),
+	PIN_FIELD_BASE(126, 127, 1, 0x0070, 0x10, 2, 1),
+	PIN_FIELD_BASE(140, 141, 1, 0x0070, 0x10, 0, 1),
+	PIN_FIELD_BASE(142, 142, 1, 0x0070, 0x10, 9, 1),
+	PIN_FIELD_BASE(143, 143, 5, 0x0040, 0x10, 15, 1),
+	PIN_FIELD_BASE(144, 144, 5, 0x0040, 0x10, 17, 1),
+	PIN_FIELD_BASE(145, 145, 5, 0x0040, 0x10, 16, 1),
+	PIN_FIELD_BASE(146, 146, 5, 0x0040, 0x10, 12, 1),
+	PIN_FIELD_BASE(147, 155, 5, 0x0040, 0x10, 0, 1),
+	PIN_FIELD_BASE(156, 157, 5, 0x0040, 0x10, 22, 1),
+	PIN_FIELD_BASE(158, 158, 5, 0x0040, 0x10, 21, 1),
+	PIN_FIELD_BASE(159, 159, 5, 0x0040, 0x10, 24, 1),
+	PIN_FIELD_BASE(160, 161, 5, 0x0040, 0x10, 19, 1),
+	PIN_FIELD_BASE(162, 166, 5, 0x0040, 0x10, 25, 1),
+	PIN_FIELD_BASE(179, 179, 4, 0x0040, 0x10, 13, 1),
+	PIN_FIELD_BASE(180, 180, 4, 0x0040, 0x10, 10, 1),
+	PIN_FIELD_BASE(181, 183, 1, 0x0070, 0x10, 10, 1),
+	PIN_FIELD_BASE(184, 184, 1, 0x0070, 0x10, 6, 1),
+	PIN_FIELD_BASE(185, 185, 1, 0x0070, 0x10, 5, 1),
+	PIN_FIELD_BASE(186, 186, 1, 0x0070, 0x10, 7, 1),
+	PIN_FIELD_BASE(187, 187, 1, 0x0070, 0x10, 4, 1),
+	PIN_FIELD_BASE(188, 188, 1, 0x0070, 0x10, 8, 1),
+	PIN_FIELD_BASE(189, 189, 5, 0x0040, 0x10, 9, 1),
+	PIN_FIELD_BASE(190, 190, 5, 0x0040, 0x10, 18, 1),
+	PIN_FIELD_BASE(191, 192, 5, 0x0040, 0x10, 13, 1),
+	PIN_FIELD_BASE(193, 194, 5, 0x0040, 0x10, 10, 1),
+	PIN_FIELD_BASE(195, 195, 2, 0x0090, 0x10, 30, 1),
+	PIN_FIELD_BASE(196, 196, 2, 0x0090, 0x10, 25, 1),
+	PIN_FIELD_BASE(197, 197, 2, 0x00a0, 0x10, 3, 1),
+	PIN_FIELD_BASE(198, 199, 4, 0x0040, 0x10, 14, 1),
+	PIN_FIELD_BASE(200, 201, 6, 0x0080, 0x10, 7, 1),
+	PIN_FIELD_BASE(202, 202, 4, 0x0040, 0x10, 9, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_pd_range[] = {
+	PIN_FIELD_BASE(0, 9, 6, 0x0050, 0x10, 3, 1),
+	PIN_FIELD_BASE(16, 16, 3, 0x0060, 0x10, 0, 1),
+	PIN_FIELD_BASE(17, 18, 6, 0x0050, 0x10, 28, 1),
+	PIN_FIELD_BASE(19, 19, 6, 0x0050, 0x10, 27, 1),
+	PIN_FIELD_BASE(20, 20, 6, 0x0050, 0x10, 26, 1),
+	PIN_FIELD_BASE(21, 24, 6, 0x0050, 0x10, 19, 1),
+	PIN_FIELD_BASE(25, 25, 6, 0x0050, 0x10, 30, 1),
+	PIN_FIELD_BASE(26, 26, 6, 0x0050, 0x10, 23, 1),
+	PIN_FIELD_BASE(27, 27, 6, 0x0050, 0x10, 0, 1),
+	PIN_FIELD_BASE(28, 29, 6, 0x0050, 0x10, 24, 1),
+	PIN_FIELD_BASE(30, 30, 6, 0x0050, 0x10, 16, 1),
+	PIN_FIELD_BASE(31, 31, 6, 0x0050, 0x10, 13, 1),
+	PIN_FIELD_BASE(32, 32, 6, 0x0050, 0x10, 15, 1),
+	PIN_FIELD_BASE(33, 33, 6, 0x0050, 0x10, 17, 1),
+	PIN_FIELD_BASE(34, 34, 6, 0x0050, 0x10, 14, 1),
+	PIN_FIELD_BASE(35, 35, 6, 0x0060, 0x10, 5, 1),
+	PIN_FIELD_BASE(36, 36, 6, 0x0060, 0x10, 0, 1),
+	PIN_FIELD_BASE(37, 37, 6, 0x0060, 0x10, 6, 1),
+	PIN_FIELD_BASE(38, 41, 6, 0x0060, 0x10, 1, 1),
+	PIN_FIELD_BASE(42, 43, 6, 0x0050, 0x10, 1, 1),
+	PIN_FIELD_BASE(44, 44, 6, 0x0050, 0x10, 18, 1),
+	PIN_FIELD_BASE(45, 45, 3, 0x0060, 0x10, 4, 1),
+	PIN_FIELD_BASE(46, 46, 3, 0x0060, 0x10, 12, 1),
+	PIN_FIELD_BASE(47, 47, 3, 0x0060, 0x10, 15, 1),
+	PIN_FIELD_BASE(48, 48, 3, 0x0060, 0x10, 14, 1),
+	PIN_FIELD_BASE(49, 49, 3, 0x0060, 0x10, 16, 1),
+	PIN_FIELD_BASE(50, 50, 3, 0x0060, 0x10, 13, 1),
+	PIN_FIELD_BASE(51, 51, 3, 0x0060, 0x10, 1, 1),
+	PIN_FIELD_BASE(52, 52, 3, 0x0060, 0x10, 9, 1),
+	PIN_FIELD_BASE(53, 54, 3, 0x0060, 0x10, 18, 1),
+	PIN_FIELD_BASE(55, 55, 3, 0x0060, 0x10, 3, 1),
+	PIN_FIELD_BASE(56, 56, 3, 0x0060, 0x10, 11, 1),
+	PIN_FIELD_BASE(61, 61, 3, 0x0060, 0x10, 2, 1),
+	PIN_FIELD_BASE(62, 62, 3, 0x0060, 0x10, 10, 1),
+	PIN_FIELD_BASE(63, 63, 3, 0x0060, 0x10, 7, 1),
+	PIN_FIELD_BASE(64, 64, 3, 0x0060, 0x10, 6, 1),
+	PIN_FIELD_BASE(65, 65, 3, 0x0060, 0x10, 8, 1),
+	PIN_FIELD_BASE(66, 66, 3, 0x0060, 0x10, 5, 1),
+	PIN_FIELD_BASE(67, 67, 2, 0x0080, 0x10, 7, 1),
+	PIN_FIELD_BASE(68, 68, 2, 0x0080, 0x10, 6, 1),
+	PIN_FIELD_BASE(69, 69, 2, 0x0080, 0x10, 8, 1),
+	PIN_FIELD_BASE(70, 71, 2, 0x0080, 0x10, 4, 1),
+	PIN_FIELD_BASE(72, 72, 4, 0x0030, 0x10, 3, 1),
+	PIN_FIELD_BASE(73, 73, 4, 0x0030, 0x10, 2, 1),
+	PIN_FIELD_BASE(74, 74, 4, 0x0030, 0x10, 1, 1),
+	PIN_FIELD_BASE(75, 75, 4, 0x0030, 0x10, 4, 1),
+	PIN_FIELD_BASE(76, 76, 4, 0x0030, 0x10, 12, 1),
+	PIN_FIELD_BASE(77, 77, 4, 0x0030, 0x10, 11, 1),
+	PIN_FIELD_BASE(78, 78, 2, 0x0070, 0x10, 18, 1),
+	PIN_FIELD_BASE(79, 79, 2, 0x0070, 0x10, 17, 1),
+	PIN_FIELD_BASE(80, 81, 2, 0x0070, 0x10, 19, 1),
+	PIN_FIELD_BASE(82, 88, 2, 0x0070, 0x10, 1, 1),
+	PIN_FIELD_BASE(89, 89, 2, 0x0070, 0x10, 16, 1),
+	PIN_FIELD_BASE(90, 90, 2, 0x0070, 0x10, 15, 1),
+	PIN_FIELD_BASE(91, 91, 2, 0x0070, 0x10, 14, 1),
+	PIN_FIELD_BASE(92, 92, 2, 0x0070, 0x10, 8, 1),
+	PIN_FIELD_BASE(93, 93, 4, 0x0030, 0x10, 0, 1),
+	PIN_FIELD_BASE(94, 94, 2, 0x0070, 0x10, 0, 1),
+	PIN_FIELD_BASE(95, 95, 4, 0x0030, 0x10, 7, 1),
+	PIN_FIELD_BASE(96, 96, 4, 0x0030, 0x10, 5, 1),
+	PIN_FIELD_BASE(97, 97, 4, 0x0030, 0x10, 8, 1),
+	PIN_FIELD_BASE(98, 98, 4, 0x0030, 0x10, 6, 1),
+	PIN_FIELD_BASE(99, 99, 2, 0x0080, 0x10, 9, 1),
+	PIN_FIELD_BASE(100, 100, 2, 0x0080, 0x10, 12, 1),
+	PIN_FIELD_BASE(101, 101, 2, 0x0080, 0x10, 10, 1),
+	PIN_FIELD_BASE(102, 102, 2, 0x0080, 0x10, 13, 1),
+	PIN_FIELD_BASE(103, 103, 2, 0x0080, 0x10, 11, 1),
+	PIN_FIELD_BASE(104, 104, 2, 0x0080, 0x10, 14, 1),
+	PIN_FIELD_BASE(105, 105, 2, 0x0070, 0x10, 10, 1),
+	PIN_FIELD_BASE(106, 106, 2, 0x0070, 0x10, 9, 1),
+	PIN_FIELD_BASE(107, 108, 2, 0x0070, 0x10, 12, 1),
+	PIN_FIELD_BASE(109, 109, 2, 0x0070, 0x10, 11, 1),
+	PIN_FIELD_BASE(110, 110, 2, 0x0080, 0x10, 16, 1),
+	PIN_FIELD_BASE(111, 111, 2, 0x0080, 0x10, 18, 1),
+	PIN_FIELD_BASE(112, 112, 2, 0x0080, 0x10, 15, 1),
+	PIN_FIELD_BASE(113, 113, 2, 0x0080, 0x10, 17, 1),
+	PIN_FIELD_BASE(114, 115, 2, 0x0070, 0x10, 26, 1),
+	PIN_FIELD_BASE(116, 117, 2, 0x0070, 0x10, 21, 1),
+	PIN_FIELD_BASE(118, 118, 2, 0x0070, 0x10, 31, 1),
+	PIN_FIELD_BASE(119, 119, 2, 0x0080, 0x10, 0, 1),
+	PIN_FIELD_BASE(120, 121, 2, 0x0070, 0x10, 23, 1),
+	PIN_FIELD_BASE(122, 123, 2, 0x0070, 0x10, 28, 1),
+	PIN_FIELD_BASE(124, 125, 2, 0x0080, 0x10, 1, 1),
+	PIN_FIELD_BASE(126, 127, 1, 0x0050, 0x10, 2, 1),
+	PIN_FIELD_BASE(140, 141, 1, 0x0050, 0x10, 0, 1),
+	PIN_FIELD_BASE(142, 142, 1, 0x0050, 0x10, 9, 1),
+	PIN_FIELD_BASE(143, 143, 5, 0x0030, 0x10, 15, 1),
+	PIN_FIELD_BASE(144, 144, 5, 0x0030, 0x10, 17, 1),
+	PIN_FIELD_BASE(145, 145, 5, 0x0030, 0x10, 16, 1),
+	PIN_FIELD_BASE(146, 146, 5, 0x0030, 0x10, 12, 1),
+	PIN_FIELD_BASE(147, 155, 5, 0x0030, 0x10, 0, 1),
+	PIN_FIELD_BASE(156, 157, 5, 0x0030, 0x10, 22, 1),
+	PIN_FIELD_BASE(158, 158, 5, 0x0030, 0x10, 21, 1),
+	PIN_FIELD_BASE(159, 159, 5, 0x0030, 0x10, 24, 1),
+	PIN_FIELD_BASE(160, 161, 5, 0x0030, 0x10, 19, 1),
+	PIN_FIELD_BASE(162, 166, 5, 0x0030, 0x10, 25, 1),
+	PIN_FIELD_BASE(179, 179, 4, 0x0030, 0x10, 13, 1),
+	PIN_FIELD_BASE(180, 180, 4, 0x0030, 0x10, 10, 1),
+	PIN_FIELD_BASE(181, 183, 1, 0x0050, 0x10, 10, 1),
+	PIN_FIELD_BASE(184, 184, 1, 0x0050, 0x10, 6, 1),
+	PIN_FIELD_BASE(185, 185, 1, 0x0050, 0x10, 5, 1),
+	PIN_FIELD_BASE(186, 186, 1, 0x0050, 0x10, 7, 1),
+	PIN_FIELD_BASE(187, 187, 1, 0x0050, 0x10, 4, 1),
+	PIN_FIELD_BASE(188, 188, 1, 0x0050, 0x10, 8, 1),
+	PIN_FIELD_BASE(189, 189, 5, 0x0030, 0x10, 9, 1),
+	PIN_FIELD_BASE(190, 190, 5, 0x0030, 0x10, 18, 1),
+	PIN_FIELD_BASE(191, 192, 5, 0x0030, 0x10, 13, 1),
+	PIN_FIELD_BASE(193, 194, 5, 0x0030, 0x10, 10, 1),
+	PIN_FIELD_BASE(195, 195, 2, 0x0070, 0x10, 30, 1),
+	PIN_FIELD_BASE(196, 196, 2, 0x0070, 0x10, 25, 1),
+	PIN_FIELD_BASE(197, 197, 2, 0x0080, 0x10, 3, 1),
+	PIN_FIELD_BASE(198, 199, 4, 0x0030, 0x10, 14, 1),
+	PIN_FIELD_BASE(200, 201, 6, 0x0060, 0x10, 7, 1),
+	PIN_FIELD_BASE(202, 202, 4, 0x0030, 0x10, 9, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_drv_range[] = {
+	PINS_FIELD_BASE(0, 9, 6, 0x0000, 0x10, 9, 3),
+	PIN_FIELD_BASE(10, 16, 3, 0x0000, 0x10, 0, 3),
+	PINS_FIELD_BASE(17, 19, 6, 0x0010, 0x10, 3, 3),
+	PIN_FIELD_BASE(20, 20, 6, 0x0010, 0x10, 6, 3),
+	PINS_FIELD_BASE(21, 24, 6, 0x0000, 0x10, 21, 3),
+	PIN_FIELD_BASE(25, 25, 6, 0x0010, 0x10, 9, 3),
+	PIN_FIELD_BASE(26, 26, 6, 0x0000, 0x10, 24, 3),
+	PIN_FIELD_BASE(27, 27, 6, 0x0000, 0x10, 0, 3),
+	PIN_FIELD_BASE(28, 28, 6, 0x0000, 0x10, 27, 3),
+	PIN_FIELD_BASE(29, 29, 6, 0x0010, 0x10, 0, 3),
+	PINS_FIELD_BASE(30, 32, 6, 0x0000, 0x10, 12, 3),
+	PIN_FIELD_BASE(33, 33, 6, 0x0000, 0x10, 15, 3),
+	PIN_FIELD_BASE(34, 34, 6, 0x0000, 0x10, 12, 3),
+	PINS_FIELD_BASE(35, 41, 6, 0x0010, 0x10, 12, 3),
+	PIN_FIELD_BASE(42, 43, 6, 0x0000, 0x10, 3, 3),
+	PIN_FIELD_BASE(44, 44, 6, 0x0000, 0x10, 18, 3),
+	PIN_FIELD_BASE(45, 45, 3, 0x0010, 0x10, 12, 3),
+	PIN_FIELD_BASE(46, 46, 3, 0x0020, 0x10, 0, 3),
+	PINS_FIELD_BASE(47, 49, 3, 0x0020, 0x10, 3, 3),
+	PIN_FIELD_BASE(50, 50, 3, 0x0020, 0x10, 6, 3),
+	PIN_FIELD_BASE(51, 51, 3, 0x0010, 0x10, 3, 3),
+	PIN_FIELD_BASE(52, 52, 3, 0x0010, 0x10, 21, 3),
+	PINS_FIELD_BASE(53, 54, 3, 0x0020, 0x10, 9, 3),
+	PIN_FIELD_BASE(55, 55, 3, 0x0010, 0x10, 9, 3),
+	PIN_FIELD_BASE(56, 56, 3, 0x0010, 0x10, 27, 3),
+	PIN_FIELD_BASE(57, 57, 3, 0x0010, 0x10, 0, 3),
+	PIN_FIELD_BASE(58, 58, 3, 0x0000, 0x10, 27, 3),
+	PIN_FIELD_BASE(59, 60, 3, 0x0000, 0x10, 21, 3),
+	PIN_FIELD_BASE(61, 61, 3, 0x0010, 0x10, 6, 3),
+	PIN_FIELD_BASE(62, 62, 3, 0x0010, 0x10, 24, 3),
+	PINS_FIELD_BASE(63, 65, 3, 0x0010, 0x10, 15, 3),
+	PIN_FIELD_BASE(66, 66, 3, 0x0010, 0x10, 18, 3),
+	PINS_FIELD_BASE(67, 69, 2, 0x0010, 0x10, 3, 3),
+	PIN_FIELD_BASE(70, 71, 2, 0x0010, 0x10, 0, 3),
+	PINS_FIELD_BASE(72, 75, 4, 0x0000, 0x10, 0, 3),
+	PINS_FIELD_BASE(76, 77, 4, 0x0000, 0x10, 15, 3),
+	PINS_FIELD_BASE(78, 86, 2, 0x0000, 0x10, 3, 3),
+	PINS_FIELD_BASE(87, 92, 2, 0x0000, 0x10, 6, 3),
+	PIN_FIELD_BASE(93, 93, 4, 0x0000, 0x10, 3, 3),
+	PIN_FIELD_BASE(94, 94, 2, 0x0000, 0x10, 6, 3),
+	PINS_FIELD_BASE(95, 96, 4, 0x0000, 0x10, 6, 3),
+	PINS_FIELD_BASE(97, 98, 4, 0x0000, 0x10, 9, 3),
+	PINS_FIELD_BASE(99, 100, 2, 0x0010, 0x10, 6, 3),
+	PINS_FIELD_BASE(101, 102, 2, 0x0010, 0x10, 9, 3),
+	PINS_FIELD_BASE(103, 104, 2, 0x0010, 0x10, 12, 3),
+	PINS_FIELD_BASE(105, 109, 2, 0x0000, 0x10, 0, 3),
+	PIN_FIELD_BASE(110, 110, 2, 0x0010, 0x10, 18, 3),
+	PIN_FIELD_BASE(111, 111, 2, 0x0010, 0x10, 24, 3),
+	PIN_FIELD_BASE(112, 112, 2, 0x0010, 0x10, 15, 3),
+	PIN_FIELD_BASE(113, 113, 2, 0x0010, 0x10, 21, 3),
+	PINS_FIELD_BASE(114, 115, 2, 0x0000, 0x10, 12, 3),
+	PIN_FIELD_BASE(116, 117, 2, 0x0000, 0x10, 15, 3),
+	PINS_FIELD_BASE(118, 119, 2, 0x0000, 0x10, 12, 3),
+	PIN_FIELD_BASE(120, 121, 2, 0x0000, 0x10, 21, 3),
+	PINS_FIELD_BASE(122, 125, 2, 0x0000, 0x10, 9, 3),
+	PINS_FIELD_BASE(126, 127, 1, 0x0000, 0x10, 12, 3),
+	PIN_FIELD_BASE(128, 128, 1, 0x0000, 0x10, 29, 2),
+	PIN_FIELD_BASE(129, 129, 1, 0x0010, 0x10, 0, 2),
+	PIN_FIELD_BASE(130, 130, 1, 0x0000, 0x10, 27, 2),
+	PIN_FIELD_BASE(131, 131, 1, 0x0010, 0x10, 2, 2),
+	PIN_FIELD_BASE(132, 132, 1, 0x0010, 0x10, 6, 2),
+	PIN_FIELD_BASE(133, 133, 1, 0x0010, 0x10, 4, 2),
+	PIN_FIELD_BASE(134, 135, 1, 0x0000, 0x10, 3, 3),
+	PINS_FIELD_BASE(136, 139, 1, 0x0000, 0x10, 9, 3),
+	PINS_FIELD_BASE(140, 141, 1, 0x0000, 0x10, 0, 3),
+	PIN_FIELD_BASE(142, 142, 1, 0x0000, 0x10, 24, 3),
+	PINS_FIELD_BASE(143, 146, 5, 0x0000, 0x10, 3, 3),
+	PINS_FIELD_BASE(147, 155, 5, 0x0000, 0x10, 0, 3),
+	PIN_FIELD_BASE(156, 157, 5, 0x0000, 0x10, 21, 3),
+	PIN_FIELD_BASE(158, 158, 5, 0x0000, 0x10, 15, 3),
+	PIN_FIELD_BASE(159, 159, 5, 0x0000, 0x10, 27, 3),
+	PIN_FIELD_BASE(160, 161, 5, 0x0000, 0x10, 9, 3),
+	PINS_FIELD_BASE(162, 166, 5, 0x0000, 0x10, 18, 3),
+	PIN_FIELD_BASE(167, 167, 7, 0x0000, 0x10, 3, 3),
+	PINS_FIELD_BASE(168, 174, 7, 0x0000, 0x10, 6, 3),
+	PIN_FIELD_BASE(175, 175, 7, 0x0000, 0x10, 9, 3),
+	PIN_FIELD_BASE(176, 176, 7, 0x0000, 0x10, 0, 3),
+	PINS_FIELD_BASE(177, 178, 7, 0x0000, 0x10, 6, 3),
+	PIN_FIELD_BASE(179, 180, 4, 0x0000, 0x10, 15, 3),
+	PIN_FIELD_BASE(181, 183, 1, 0x0010, 0x10, 8, 3),
+	PINS_FIELD_BASE(184, 186, 1, 0x0000, 0x10, 15, 3),
+	PIN_FIELD_BASE(187, 188, 1, 0x0000, 0x10, 18, 3),
+	PIN_FIELD_BASE(189, 189, 5, 0x0000, 0x10, 6, 3),
+	PINS_FIELD_BASE(190, 194, 5, 0x0000, 0x10, 3, 3),
+	PIN_FIELD_BASE(195, 195, 2, 0x0000, 0x10, 9, 3),
+	PIN_FIELD_BASE(196, 196, 2, 0x0000, 0x10, 27, 3),
+	PIN_FIELD_BASE(197, 197, 2, 0x0000, 0x10, 9, 3),
+	PIN_FIELD_BASE(198, 199, 4, 0x0000, 0x10, 21, 3),
+	PINS_FIELD_BASE(200, 201, 6, 0x0010, 0x10, 15, 3),
+	PIN_FIELD_BASE(202, 202, 4, 0x0000, 0x10, 12, 3),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_pupd_range[] = {
+	PIN_FIELD_BASE(10, 15, 3, 0x0070, 0x10, 0, 1),
+	PIN_FIELD_BASE(57, 57, 3, 0x0070, 0x10, 9, 1),
+	PIN_FIELD_BASE(58, 58, 3, 0x0070, 0x10, 8, 1),
+	PIN_FIELD_BASE(59, 60, 3, 0x0070, 0x10, 6, 1),
+	PIN_FIELD_BASE(128, 129, 1, 0x0060, 0x10, 7, 1),
+	PIN_FIELD_BASE(130, 130, 1, 0x0060, 0x10, 6, 1),
+	PIN_FIELD_BASE(131, 131, 1, 0x0060, 0x10, 9, 1),
+	PIN_FIELD_BASE(132, 132, 1, 0x0060, 0x10, 11, 1),
+	PIN_FIELD_BASE(133, 133, 1, 0x0060, 0x10, 10, 1),
+	PIN_FIELD_BASE(134, 135, 1, 0x0060, 0x10, 0, 1),
+	PIN_FIELD_BASE(136, 136, 1, 0x0060, 0x10, 5, 1),
+	PIN_FIELD_BASE(137, 137, 1, 0x0060, 0x10, 2, 1),
+	PIN_FIELD_BASE(138, 138, 1, 0x0060, 0x10, 4, 1),
+	PIN_FIELD_BASE(139, 139, 1, 0x0060, 0x10, 3, 1),
+	PIN_FIELD_BASE(167, 168, 7, 0x0020, 0x10, 1, 1),
+	PIN_FIELD_BASE(169, 169, 7, 0x0020, 0x10, 4, 1),
+	PIN_FIELD_BASE(170, 170, 7, 0x0020, 0x10, 6, 1),
+	PIN_FIELD_BASE(171, 171, 7, 0x0020, 0x10, 8, 1),
+	PIN_FIELD_BASE(172, 172, 7, 0x0020, 0x10, 3, 1),
+	PIN_FIELD_BASE(173, 173, 7, 0x0020, 0x10, 7, 1),
+	PIN_FIELD_BASE(174, 175, 7, 0x0020, 0x10, 9, 1),
+	PIN_FIELD_BASE(176, 176, 7, 0x0020, 0x10, 0, 1),
+	PIN_FIELD_BASE(177, 177, 7, 0x0020, 0x10, 5, 1),
+	PIN_FIELD_BASE(178, 178, 7, 0x0020, 0x10, 11, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_r0_range[] = {
+	PIN_FIELD_BASE(10, 15, 3, 0x0090, 0x10, 0, 1),
+	PIN_FIELD_BASE(57, 57, 3, 0x0090, 0x10, 9, 1),
+	PIN_FIELD_BASE(58, 58, 3, 0x0090, 0x10, 8, 1),
+	PIN_FIELD_BASE(59, 60, 3, 0x0090, 0x10, 6, 1),
+	PIN_FIELD_BASE(128, 129, 1, 0x0080, 0x10, 7, 1),
+	PIN_FIELD_BASE(130, 130, 1, 0x0080, 0x10, 6, 1),
+	PIN_FIELD_BASE(131, 131, 1, 0x0080, 0x10, 9, 1),
+	PIN_FIELD_BASE(132, 132, 1, 0x0080, 0x10, 11, 1),
+	PIN_FIELD_BASE(133, 133, 1, 0x0080, 0x10, 10, 1),
+	PIN_FIELD_BASE(134, 135, 1, 0x0080, 0x10, 0, 1),
+	PIN_FIELD_BASE(136, 136, 1, 0x0080, 0x10, 5, 1),
+	PIN_FIELD_BASE(137, 137, 1, 0x0080, 0x10, 2, 1),
+	PIN_FIELD_BASE(138, 138, 1, 0x0080, 0x10, 4, 1),
+	PIN_FIELD_BASE(139, 139, 1, 0x0080, 0x10, 3, 1),
+	PIN_FIELD_BASE(167, 168, 7, 0x0030, 0x10, 1, 1),
+	PIN_FIELD_BASE(169, 169, 7, 0x0030, 0x10, 4, 1),
+	PIN_FIELD_BASE(170, 170, 7, 0x0030, 0x10, 6, 1),
+	PIN_FIELD_BASE(171, 171, 7, 0x0030, 0x10, 8, 1),
+	PIN_FIELD_BASE(172, 172, 7, 0x0030, 0x10, 3, 1),
+	PIN_FIELD_BASE(173, 173, 7, 0x0030, 0x10, 7, 1),
+	PIN_FIELD_BASE(174, 175, 7, 0x0030, 0x10, 9, 1),
+	PIN_FIELD_BASE(176, 176, 7, 0x0030, 0x10, 0, 1),
+	PIN_FIELD_BASE(177, 177, 7, 0x0030, 0x10, 5, 1),
+	PIN_FIELD_BASE(178, 178, 7, 0x0030, 0x10, 11, 1),
+};
+
+static const struct mtk_pin_field_calc mt6779_pin_r1_range[] = {
+	PIN_FIELD_BASE(10, 15, 3, 0x00a0, 0x10, 0, 1),
+	PIN_FIELD_BASE(57, 57, 3, 0x00a0, 0x10, 9, 1),
+	PIN_FIELD_BASE(58, 58, 3, 0x00a0, 0x10, 8, 1),
+	PIN_FIELD_BASE(59, 60, 3, 0x00a0, 0x10, 6, 1),
+	PIN_FIELD_BASE(128, 129, 1, 0x0090, 0x10, 7, 1),
+	PIN_FIELD_BASE(130, 130, 1, 0x0090, 0x10, 6, 1),
+	PIN_FIELD_BASE(131, 131, 1, 0x0090, 0x10, 9, 1),
+	PIN_FIELD_BASE(132, 132, 1, 0x0090, 0x10, 11, 1),
+	PIN_FIELD_BASE(133, 133, 1, 0x0090, 0x10, 10, 1),
+	PIN_FIELD_BASE(134, 135, 1, 0x0090, 0x10, 0, 1),
+	PIN_FIELD_BASE(136, 136, 1, 0x0090, 0x10, 5, 1),
+	PIN_FIELD_BASE(137, 137, 1, 0x0090, 0x10, 2, 1),
+	PIN_FIELD_BASE(138, 138, 1, 0x0090, 0x10, 4, 1),
+	PIN_FIELD_BASE(139, 139, 1, 0x0090, 0x10, 3, 1),
+	PIN_FIELD_BASE(167, 168, 7, 0x0040, 0x10, 1, 1),
+	PIN_FIELD_BASE(169, 169, 7, 0x0040, 0x10, 4, 1),
+	PIN_FIELD_BASE(170, 170, 7, 0x0040, 0x10, 6, 1),
+	PIN_FIELD_BASE(171, 171, 7, 0x0040, 0x10, 8, 1),
+	PIN_FIELD_BASE(172, 172, 7, 0x0040, 0x10, 3, 1),
+	PIN_FIELD_BASE(173, 173, 7, 0x0040, 0x10, 7, 1),
+	PIN_FIELD_BASE(174, 175, 7, 0x0040, 0x10, 9, 1),
+	PIN_FIELD_BASE(176, 176, 7, 0x0040, 0x10, 0, 1),
+	PIN_FIELD_BASE(177, 177, 7, 0x0040, 0x10, 5, 1),
+	PIN_FIELD_BASE(178, 178, 7, 0x0040, 0x10, 11, 1),
+};
+
+static const struct mtk_pin_reg_calc mt6779_reg_cals[PINCTRL_PIN_REG_MAX] = {
+	[PINCTRL_PIN_REG_MODE] = MTK_RANGE(mt6779_pin_mode_range),
+	[PINCTRL_PIN_REG_DIR] = MTK_RANGE(mt6779_pin_dir_range),
+	[PINCTRL_PIN_REG_DI] = MTK_RANGE(mt6779_pin_di_range),
+	[PINCTRL_PIN_REG_DO] = MTK_RANGE(mt6779_pin_do_range),
+	[PINCTRL_PIN_REG_SMT] = MTK_RANGE(mt6779_pin_smt_range),
+	[PINCTRL_PIN_REG_IES] = MTK_RANGE(mt6779_pin_ies_range),
+	[PINCTRL_PIN_REG_PU] = MTK_RANGE(mt6779_pin_pu_range),
+	[PINCTRL_PIN_REG_PD] = MTK_RANGE(mt6779_pin_pd_range),
+	[PINCTRL_PIN_REG_DRV] = MTK_RANGE(mt6779_pin_drv_range),
+	[PINCTRL_PIN_REG_PUPD] = MTK_RANGE(mt6779_pin_pupd_range),
+	[PINCTRL_PIN_REG_R0] = MTK_RANGE(mt6779_pin_r0_range),
+	[PINCTRL_PIN_REG_R1] = MTK_RANGE(mt6779_pin_r1_range),
+};
+
+static const char * const mt6779_pinctrl_register_base_names[] = {
+	"gpio", "iocfg_rm", "iocfg_br", "iocfg_lm", "iocfg_lb",
+	"iocfg_rt", "iocfg_lt", "iocfg_tl",
+};
+
+static const struct mtk_pin_soc mt6779_data = {
+	.reg_cal = mt6779_reg_cals,
+	.pins = mtk_pins_mt6779,
+	.npins = ARRAY_SIZE(mtk_pins_mt6779),
+	.ngrps = ARRAY_SIZE(mtk_pins_mt6779),
+	.gpio_m = 0,
+	.ies_present = true,
+	.base_names = mt6779_pinctrl_register_base_names,
+	.nbase_names = ARRAY_SIZE(mt6779_pinctrl_register_base_names),
+	.bias_disable_set = mtk_pinconf_bias_disable_set,
+	.bias_disable_get = mtk_pinconf_bias_disable_get,
+	.bias_set = mtk_pinconf_bias_set,
+	.bias_get = mtk_pinconf_bias_get,
+	.drive_set = mtk_pinconf_drive_set_rev1,
+	.drive_get = mtk_pinconf_drive_get_rev1,
+	.adv_pull_get = mtk_pinconf_adv_pull_get,
+	.adv_pull_set = mtk_pinconf_adv_pull_set,
+};
+
+static const struct of_device_id mt6779_pinctrl_of_match[] = {
+	{ .compatible = "mediatek,mt6779-pinctrl", },
+	{ }
+};
+
+static int mt6779_pinctrl_probe(struct platform_device *pdev)
+{
+	return mtk_paris_pinctrl_probe(pdev, &mt6779_data);
+}
+
+static struct platform_driver mt6779_pinctrl_driver = {
+	.driver = {
+		.name = "mt6779-pinctrl",
+		.of_match_table = mt6779_pinctrl_of_match,
+	},
+	.probe = mt6779_pinctrl_probe,
+};
+
+static int __init mt6779_pinctrl_init(void)
+{
+	return platform_driver_register(&mt6779_pinctrl_driver);
+}
+arch_initcall(mt6779_pinctrl_init);
diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h b/drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
new file mode 100644
index 0000000..e309eba
--- /dev/null
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
@@ -0,0 +1,2085 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ * Author: Andy Teng <andy.teng@mediatek.com>
+ *
+ */
+
+#ifndef __PINCTRL_MTK_MT6779_H
+#define __PINCTRL_MTK_MT6779_H
+
+#include "pinctrl-paris.h"
+
+static const struct mtk_pin_desc mtk_pins_mt6779[] = {
+	MTK_PIN(
+		0, "GPIO0",
+		MTK_EINT_FUNCTION(0, 0),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO0"),
+		MTK_FUNCTION(1, "SPI6_MI"),
+		MTK_FUNCTION(2, "I2S5_LRCK"),
+		MTK_FUNCTION(3, "TDM_LRCK_2ND"),
+		MTK_FUNCTION(4, "PCM1_SYNC"),
+		MTK_FUNCTION(5, "SCL_6306"),
+		MTK_FUNCTION(6, "TP_GPIO0_AO"),
+		MTK_FUNCTION(7, "PTA_RXD")
+	),
+	MTK_PIN(
+		1, "GPIO1",
+		MTK_EINT_FUNCTION(0, 1),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO1"),
+		MTK_FUNCTION(1, "SPI6_CSB"),
+		MTK_FUNCTION(2, "I2S5_DO"),
+		MTK_FUNCTION(3, "TDM_DATA0_2ND"),
+		MTK_FUNCTION(4, "PCM1_DO0"),
+		MTK_FUNCTION(5, "SDA_6306"),
+		MTK_FUNCTION(6, "TP_GPIO1_AO"),
+		MTK_FUNCTION(7, "PTA_TXD")
+	),
+	MTK_PIN(
+		2, "GPIO2",
+		MTK_EINT_FUNCTION(0, 2),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO2"),
+		MTK_FUNCTION(1, "SPI6_MO"),
+		MTK_FUNCTION(2, "I2S5_BCK"),
+		MTK_FUNCTION(3, "TDM_BCK_2ND"),
+		MTK_FUNCTION(4, "PCM1_CLK"),
+		MTK_FUNCTION(5, "MD_INT1_C2K_UIM0_HOT_PLUG"),
+		MTK_FUNCTION(6, "TP_GPIO2_AO")
+	),
+	MTK_PIN(
+		3, "GPIO3",
+		MTK_EINT_FUNCTION(0, 3),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO3"),
+		MTK_FUNCTION(1, "SPI6_CLK"),
+		MTK_FUNCTION(2, "I2S5_MCK"),
+		MTK_FUNCTION(3, "TDM_MCK_2ND"),
+		MTK_FUNCTION(4, "EXT_FRAME_SYNC"),
+		MTK_FUNCTION(5, "MD_INT2_C2K_UIM1_HOT_PLUG"),
+		MTK_FUNCTION(6, "TP_GPIO3_AO")
+	),
+	MTK_PIN(
+		4, "GPIO4",
+		MTK_EINT_FUNCTION(0, 4),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO4"),
+		MTK_FUNCTION(1, "SPI7_MI"),
+		MTK_FUNCTION(2, "I2S0_MCK"),
+		MTK_FUNCTION(3, "TDM_DATA1_2ND"),
+		MTK_FUNCTION(4, "PCM1_DO1"),
+		MTK_FUNCTION(5, "DMIC1_CLK"),
+		MTK_FUNCTION(6, "TP_GPIO4_AO"),
+		MTK_FUNCTION(7, "SCL8")
+	),
+	MTK_PIN(
+		5, "GPIO5",
+		MTK_EINT_FUNCTION(0, 5),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO5"),
+		MTK_FUNCTION(1, "SPI7_CSB"),
+		MTK_FUNCTION(2, "I2S0_BCK"),
+		MTK_FUNCTION(3, "TDM_DATA2_2ND"),
+		MTK_FUNCTION(4, "PCM1_DO2"),
+		MTK_FUNCTION(5, "DMIC1_DAT"),
+		MTK_FUNCTION(6, "TP_GPIO5_AO"),
+		MTK_FUNCTION(7, "SDA8")
+	),
+	MTK_PIN(
+		6, "GPIO6",
+		MTK_EINT_FUNCTION(0, 6),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO6"),
+		MTK_FUNCTION(1, "SPI7_MO"),
+		MTK_FUNCTION(2, "I2S0_LRCK"),
+		MTK_FUNCTION(3, "TDM_DATA3_2ND"),
+		MTK_FUNCTION(4, "PCM1_DI"),
+		MTK_FUNCTION(5, "DMIC_CLK"),
+		MTK_FUNCTION(6, "TP_GPIO6_AO"),
+		MTK_FUNCTION(7, "SCL9")
+	),
+	MTK_PIN(
+		7, "GPIO7",
+		MTK_EINT_FUNCTION(0, 7),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO7"),
+		MTK_FUNCTION(1, "SPI7_CLK"),
+		MTK_FUNCTION(2, "I2S0_DI"),
+		MTK_FUNCTION(3, "SRCLKENAI1"),
+		MTK_FUNCTION(4, "DVFSRC_EXT_REQ"),
+		MTK_FUNCTION(5, "DMIC_DAT"),
+		MTK_FUNCTION(6, "TP_GPIO7_AO"),
+		MTK_FUNCTION(7, "SDA9")
+	),
+	MTK_PIN(
+		8, "GPIO8",
+		MTK_EINT_FUNCTION(0, 8),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO8"),
+		MTK_FUNCTION(1, "PWM_0"),
+		MTK_FUNCTION(2, "I2S2_DI2"),
+		MTK_FUNCTION(3, "SRCLKENAI0"),
+		MTK_FUNCTION(4, "URXD1"),
+		MTK_FUNCTION(5, "I2S0_MCK"),
+		MTK_FUNCTION(6, "CONN_MCU_DBGACK_N"),
+		MTK_FUNCTION(7, "IDDIG")
+	),
+	MTK_PIN(
+		9, "GPIO9",
+		MTK_EINT_FUNCTION(0, 9),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO9"),
+		MTK_FUNCTION(1, "PWM_3"),
+		MTK_FUNCTION(2, "MD_INT0"),
+		MTK_FUNCTION(3, "SRCLKENAI1"),
+		MTK_FUNCTION(4, "UTXD1"),
+		MTK_FUNCTION(5, "I2S0_BCK"),
+		MTK_FUNCTION(6, "CONN_MCU_TRST_B"),
+		MTK_FUNCTION(7, "USB_DRVVBUS")
+	),
+	MTK_PIN(
+		10, "GPIO10",
+		MTK_EINT_FUNCTION(0, 10),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO10"),
+		MTK_FUNCTION(1, "MSDC1_CLK_A"),
+		MTK_FUNCTION(2, "TP_URXD1_AO"),
+		MTK_FUNCTION(3, "I2S1_LRCK"),
+		MTK_FUNCTION(4, "UCTS0"),
+		MTK_FUNCTION(5, "DMIC1_CLK"),
+		MTK_FUNCTION(6, "KPCOL2"),
+		MTK_FUNCTION(7, "SCL8")
+	),
+	MTK_PIN(
+		11, "GPIO11",
+		MTK_EINT_FUNCTION(0, 11),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO11"),
+		MTK_FUNCTION(1, "MSDC1_CMD_A"),
+		MTK_FUNCTION(2, "TP_UTXD1_AO"),
+		MTK_FUNCTION(3, "I2S1_DO"),
+		MTK_FUNCTION(4, "URTS0"),
+		MTK_FUNCTION(5, "DMIC1_DAT"),
+		MTK_FUNCTION(6, "KPROW2"),
+		MTK_FUNCTION(7, "SDA8")
+	),
+	MTK_PIN(
+		12, "GPIO12",
+		MTK_EINT_FUNCTION(0, 12),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO12"),
+		MTK_FUNCTION(1, "MSDC1_DAT3_A"),
+		MTK_FUNCTION(2, "TP_URXD2_AO"),
+		MTK_FUNCTION(3, "I2S1_MCK"),
+		MTK_FUNCTION(4, "UCTS1"),
+		MTK_FUNCTION(5, "DMIC_CLK"),
+		MTK_FUNCTION(6, "ANT_SEL9"),
+		MTK_FUNCTION(7, "SCL9")
+	),
+	MTK_PIN(
+		13, "GPIO13",
+		MTK_EINT_FUNCTION(0, 13),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO13"),
+		MTK_FUNCTION(1, "MSDC1_DAT0_A"),
+		MTK_FUNCTION(2, "TP_UTXD2_AO"),
+		MTK_FUNCTION(3, "I2S1_BCK"),
+		MTK_FUNCTION(4, "URTS1"),
+		MTK_FUNCTION(5, "DMIC_DAT"),
+		MTK_FUNCTION(6, "ANT_SEL10"),
+		MTK_FUNCTION(7, "SDA9")
+	),
+	MTK_PIN(
+		14, "GPIO14",
+		MTK_EINT_FUNCTION(0, 14),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO14"),
+		MTK_FUNCTION(1, "MSDC1_DAT2_A"),
+		MTK_FUNCTION(2, "PWM_3"),
+		MTK_FUNCTION(3, "IDDIG"),
+		MTK_FUNCTION(4, "MD_INT0"),
+		MTK_FUNCTION(5, "PTA_RXD"),
+		MTK_FUNCTION(6, "ANT_SEL11")
+	),
+	MTK_PIN(
+		15, "GPIO15",
+		MTK_EINT_FUNCTION(0, 15),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO15"),
+		MTK_FUNCTION(1, "MSDC1_DAT1_A"),
+		MTK_FUNCTION(2, "DVFSRC_EXT_REQ"),
+		MTK_FUNCTION(3, "USB_DRVVBUS"),
+		MTK_FUNCTION(4, "MD_INT1_C2K_UIM0_HOT_PLUG"),
+		MTK_FUNCTION(5, "PTA_TXD"),
+		MTK_FUNCTION(6, "ANT_SEL12")
+	),
+	MTK_PIN(
+		16, "GPIO16",
+		MTK_EINT_FUNCTION(0, 16),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO16"),
+		MTK_FUNCTION(1, "SRCLKENAI0"),
+		MTK_FUNCTION(2, "EXT_FRAME_SYNC"),
+		MTK_FUNCTION(3, "MFG_EJTAG_TRSTN"),
+		MTK_FUNCTION(4, "MD_INT2_C2K_UIM1_HOT_PLUG"),
+		MTK_FUNCTION(5, "CONN_TCXOENA_REQ"),
+		MTK_FUNCTION(6, "PWM_2"),
+		MTK_FUNCTION(7, "JTRSTN_SEL1")
+	),
+	MTK_PIN(
+		17, "GPIO17",
+		MTK_EINT_FUNCTION(0, 17),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO17"),
+		MTK_FUNCTION(1, "SPI0_A_MI"),
+		MTK_FUNCTION(2, "SCP_SPI0_MI"),
+		MTK_FUNCTION(3, "MFG_EJTAG_TDO"),
+		MTK_FUNCTION(4, "DPI_HSYNC"),
+		MTK_FUNCTION(5, "MFG_DFD_JTAG_TDO"),
+		MTK_FUNCTION(6, "DFD_TDO"),
+		MTK_FUNCTION(7, "JTDO_SEL1")
+	),
+	MTK_PIN(
+		18, "GPIO18",
+		MTK_EINT_FUNCTION(0, 18),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO18"),
+		MTK_FUNCTION(1, "SPI0_A_MO"),
+		MTK_FUNCTION(2, "SCP_SPI0_MO"),
+		MTK_FUNCTION(3, "MFG_EJTAG_TDI"),
+		MTK_FUNCTION(4, "DPI_VSYNC"),
+		MTK_FUNCTION(5, "MFG_DFD_JTAG_TDI"),
+		MTK_FUNCTION(6, "DFD_TDI"),
+		MTK_FUNCTION(7, "JTDI_SEL1")
+	),
+	MTK_PIN(
+		19, "GPIO19",
+		MTK_EINT_FUNCTION(0, 19),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO19"),
+		MTK_FUNCTION(1, "SPI0_A_CSB"),
+		MTK_FUNCTION(2, "SCP_SPI0_CS"),
+		MTK_FUNCTION(3, "MFG_EJTAG_TMS"),
+		MTK_FUNCTION(4, "DPI_DE"),
+		MTK_FUNCTION(5, "MFG_DFD_JTAG_TMS"),
+		MTK_FUNCTION(6, "DFD_TMS"),
+		MTK_FUNCTION(7, "JTMS_SEL1")
+	),
+	MTK_PIN(
+		20, "GPIO20",
+		MTK_EINT_FUNCTION(0, 20),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO20"),
+		MTK_FUNCTION(1, "SPI0_A_CLK"),
+		MTK_FUNCTION(2, "SCP_SPI0_CK"),
+		MTK_FUNCTION(3, "MFG_EJTAG_TCK"),
+		MTK_FUNCTION(4, "DPI_CK"),
+		MTK_FUNCTION(5, "MFG_DFD_JTAG_TCK"),
+		MTK_FUNCTION(6, "DFD_TCK_XI"),
+		MTK_FUNCTION(7, "JTCK_SEL1")
+	),
+	MTK_PIN(
+		21, "GPIO21",
+		MTK_EINT_FUNCTION(0, 21),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO21"),
+		MTK_FUNCTION(1, "PWM_0"),
+		MTK_FUNCTION(2, "CMFLASH0"),
+		MTK_FUNCTION(3, "CMVREF2"),
+		MTK_FUNCTION(4, "CLKM0"),
+		MTK_FUNCTION(5, "ANT_SEL9"),
+		MTK_FUNCTION(6, "CONN_TCXOENA_REQ"),
+		MTK_FUNCTION(7, "DBG_MON_A27")
+	),
+	MTK_PIN(
+		22, "GPIO22",
+		MTK_EINT_FUNCTION(0, 22),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO22"),
+		MTK_FUNCTION(1, "PWM_1"),
+		MTK_FUNCTION(2, "CMFLASH1"),
+		MTK_FUNCTION(3, "CMVREF3"),
+		MTK_FUNCTION(4, "CLKM1"),
+		MTK_FUNCTION(5, "ANT_SEL10"),
+		MTK_FUNCTION(7, "DBG_MON_A28")
+	),
+	MTK_PIN(
+		23, "GPIO23",
+		MTK_EINT_FUNCTION(0, 23),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO23"),
+		MTK_FUNCTION(1, "PWM_2"),
+		MTK_FUNCTION(2, "CMFLASH2"),
+		MTK_FUNCTION(3, "CMVREF0"),
+		MTK_FUNCTION(4, "CLKM2"),
+		MTK_FUNCTION(5, "ANT_SEL11"),
+		MTK_FUNCTION(7, "DBG_MON_A29")
+	),
+	MTK_PIN(
+		24, "GPIO24",
+		MTK_EINT_FUNCTION(0, 24),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO24"),
+		MTK_FUNCTION(1, "PWM_0"),
+		MTK_FUNCTION(2, "CMFLASH3"),
+		MTK_FUNCTION(3, "CMVREF1"),
+		MTK_FUNCTION(4, "CLKM3"),
+		MTK_FUNCTION(5, "ANT_SEL12"),
+		MTK_FUNCTION(7, "DBG_MON_A30")
+	),
+	MTK_PIN(
+		25, "GPIO25",
+		MTK_EINT_FUNCTION(0, 25),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO25"),
+		MTK_FUNCTION(1, "SRCLKENAI0"),
+		MTK_FUNCTION(2, "UCTS0"),
+		MTK_FUNCTION(3, "SCL8"),
+		MTK_FUNCTION(4, "CMVREF4"),
+		MTK_FUNCTION(5, "I2S0_LRCK"),
+		MTK_FUNCTION(6, "CONN_TCXOENA_REQ"),
+		MTK_FUNCTION(7, "DBG_MON_A31")
+	),
+	MTK_PIN(
+		26, "GPIO26",
+		MTK_EINT_FUNCTION(0, 26),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO26"),
+		MTK_FUNCTION(1, "PWM_0"),
+		MTK_FUNCTION(2, "URTS0"),
+		MTK_FUNCTION(3, "SDA8"),
+		MTK_FUNCTION(4, "CLKM0"),
+		MTK_FUNCTION(5, "I2S0_DI"),
+		MTK_FUNCTION(6, "AGPS_SYNC"),
+		MTK_FUNCTION(7, "DBG_MON_A32")
+	),
+	MTK_PIN(
+		27, "GPIO27",
+		MTK_EINT_FUNCTION(0, 27),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO27"),
+		MTK_FUNCTION(1, "AP_GOOD")
+	),
+	MTK_PIN(
+		28, "GPIO28",
+		MTK_EINT_FUNCTION(0, 28),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO28"),
+		MTK_FUNCTION(1, "SCL5")
+	),
+	MTK_PIN(
+		29, "GPIO29",
+		MTK_EINT_FUNCTION(0, 29),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO29"),
+		MTK_FUNCTION(1, "SDA5")
+	),
+	MTK_PIN(
+		30, "GPIO30",
+		MTK_EINT_FUNCTION(0, 30),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO30"),
+		MTK_FUNCTION(1, "I2S1_MCK"),
+		MTK_FUNCTION(2, "I2S3_MCK"),
+		MTK_FUNCTION(3, "I2S2_MCK"),
+		MTK_FUNCTION(4, "DPI_D0"),
+		MTK_FUNCTION(5, "SPI4_MI"),
+		MTK_FUNCTION(6, "CONN_MCU_DBGI_N")
+	),
+	MTK_PIN(
+		31, "GPIO31",
+		MTK_EINT_FUNCTION(0, 31),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO31"),
+		MTK_FUNCTION(1, "I2S1_BCK"),
+		MTK_FUNCTION(2, "I2S3_BCK"),
+		MTK_FUNCTION(3, "I2S2_BCK"),
+		MTK_FUNCTION(4, "DPI_D1"),
+		MTK_FUNCTION(5, "SPI4_CSB"),
+		MTK_FUNCTION(6, "CONN_MCU_TDO")
+	),
+	MTK_PIN(
+		32, "GPIO32",
+		MTK_EINT_FUNCTION(0, 32),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO32"),
+		MTK_FUNCTION(1, "I2S1_LRCK"),
+		MTK_FUNCTION(2, "I2S3_LRCK"),
+		MTK_FUNCTION(3, "I2S2_LRCK"),
+		MTK_FUNCTION(4, "DPI_D2"),
+		MTK_FUNCTION(5, "SPI4_MO"),
+		MTK_FUNCTION(6, "CONN_MCU_TDI")
+	),
+	MTK_PIN(
+		33, "GPIO33",
+		MTK_EINT_FUNCTION(0, 33),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO33"),
+		MTK_FUNCTION(1, "I2S2_DI"),
+		MTK_FUNCTION(2, "I2S0_DI"),
+		MTK_FUNCTION(3, "I2S5_DO"),
+		MTK_FUNCTION(4, "DPI_D3"),
+		MTK_FUNCTION(5, "SPI4_CLK"),
+		MTK_FUNCTION(6, "CONN_MCU_TMS")
+	),
+	MTK_PIN(
+		34, "GPIO34",
+		MTK_EINT_FUNCTION(0, 34),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO34"),
+		MTK_FUNCTION(1, "I2S1_DO"),
+		MTK_FUNCTION(2, "I2S3_DO"),
+		MTK_FUNCTION(3, "I2S2_DI2"),
+		MTK_FUNCTION(4, "DPI_D4"),
+		MTK_FUNCTION(5, "AGPS_SYNC"),
+		MTK_FUNCTION(6, "CONN_MCU_TCK")
+	),
+	MTK_PIN(
+		35, "GPIO35",
+		MTK_EINT_FUNCTION(0, 35),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO35"),
+		MTK_FUNCTION(1, "TDM_LRCK"),
+		MTK_FUNCTION(2, "I2S1_LRCK"),
+		MTK_FUNCTION(3, "I2S5_LRCK"),
+		MTK_FUNCTION(4, "DPI_D5"),
+		MTK_FUNCTION(5, "SPI5_A_MO"),
+		MTK_FUNCTION(6, "IO_JTAG_TDI"),
+		MTK_FUNCTION(7, "PWM_2")
+	),
+	MTK_PIN(
+		36, "GPIO36",
+		MTK_EINT_FUNCTION(0, 36),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO36"),
+		MTK_FUNCTION(1, "TDM_BCK"),
+		MTK_FUNCTION(2, "I2S1_BCK"),
+		MTK_FUNCTION(3, "I2S5_BCK"),
+		MTK_FUNCTION(4, "DPI_D6"),
+		MTK_FUNCTION(5, "SPI5_A_CSB"),
+		MTK_FUNCTION(6, "IO_JTAG_TRSTN"),
+		MTK_FUNCTION(7, "SRCLKENAI1")
+	),
+	MTK_PIN(
+		37, "GPIO37",
+		MTK_EINT_FUNCTION(0, 37),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO37"),
+		MTK_FUNCTION(1, "TDM_MCK"),
+		MTK_FUNCTION(2, "I2S1_MCK"),
+		MTK_FUNCTION(3, "I2S5_MCK"),
+		MTK_FUNCTION(4, "DPI_D7"),
+		MTK_FUNCTION(5, "SPI5_A_MI"),
+		MTK_FUNCTION(6, "IO_JTAG_TCK"),
+		MTK_FUNCTION(7, "SRCLKENAI0")
+	),
+	MTK_PIN(
+		38, "GPIO38",
+		MTK_EINT_FUNCTION(0, 38),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO38"),
+		MTK_FUNCTION(1, "TDM_DATA0"),
+		MTK_FUNCTION(2, "I2S2_DI"),
+		MTK_FUNCTION(3, "I2S5_DO"),
+		MTK_FUNCTION(4, "DPI_D8"),
+		MTK_FUNCTION(5, "SPI5_A_CLK"),
+		MTK_FUNCTION(6, "IO_JTAG_TDO"),
+		MTK_FUNCTION(7, "CONN_TCXOENA_REQ")
+	),
+	MTK_PIN(
+		39, "GPIO39",
+		MTK_EINT_FUNCTION(0, 39),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO39"),
+		MTK_FUNCTION(1, "TDM_DATA1"),
+		MTK_FUNCTION(2, "I2S1_DO"),
+		MTK_FUNCTION(3, "I2S2_DI2"),
+		MTK_FUNCTION(4, "DPI_D9"),
+		MTK_FUNCTION(5, "DVFSRC_EXT_REQ"),
+		MTK_FUNCTION(6, "IO_JTAG_TMS"),
+		MTK_FUNCTION(7, "IDDIG")
+	),
+	MTK_PIN(
+		40, "GPIO40",
+		MTK_EINT_FUNCTION(0, 40),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO40"),
+		MTK_FUNCTION(1, "TDM_DATA2"),
+		MTK_FUNCTION(2, "SCL9"),
+		MTK_FUNCTION(3, "PWM_3"),
+		MTK_FUNCTION(4, "DPI_D10"),
+		MTK_FUNCTION(5, "SRCLKENAI0"),
+		MTK_FUNCTION(6, "DAP_MD32_SWD"),
+		MTK_FUNCTION(7, "USB_DRVVBUS")
+	),
+	MTK_PIN(
+		41, "GPIO41",
+		MTK_EINT_FUNCTION(0, 41),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO41"),
+		MTK_FUNCTION(1, "TDM_DATA3"),
+		MTK_FUNCTION(2, "SDA9"),
+		MTK_FUNCTION(3, "PWM_1"),
+		MTK_FUNCTION(4, "DPI_D11"),
+		MTK_FUNCTION(5, "CLKM1"),
+		MTK_FUNCTION(6, "DAP_MD32_SWCK")
+	),
+	MTK_PIN(
+		42, "GPIO42",
+		MTK_EINT_FUNCTION(0, 42),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO42"),
+		MTK_FUNCTION(1, "DISP_PWM")
+	),
+	MTK_PIN(
+		43, "GPIO43",
+		MTK_EINT_FUNCTION(0, 43),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO43"),
+		MTK_FUNCTION(1, "DSI_TE")
+	),
+	MTK_PIN(
+		44, "GPIO44",
+		MTK_EINT_FUNCTION(0, 44),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO44"),
+		MTK_FUNCTION(1, "LCM_RST")
+	),
+	MTK_PIN(
+		45, "GPIO45",
+		MTK_EINT_FUNCTION(0, 45),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO45"),
+		MTK_FUNCTION(1, "SCL6"),
+		MTK_FUNCTION(2, "SCP_SCL0"),
+		MTK_FUNCTION(3, "SCP_SCL1"),
+		MTK_FUNCTION(4, "SCL_6306")
+	),
+	MTK_PIN(
+		46, "GPIO46",
+		MTK_EINT_FUNCTION(0, 46),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO46"),
+		MTK_FUNCTION(1, "SDA6"),
+		MTK_FUNCTION(2, "SCP_SDA0"),
+		MTK_FUNCTION(3, "SCP_SDA1"),
+		MTK_FUNCTION(4, "SDA_6306")
+	),
+	MTK_PIN(
+		47, "GPIO47",
+		MTK_EINT_FUNCTION(0, 47),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO47"),
+		MTK_FUNCTION(1, "SPI1_A_MI"),
+		MTK_FUNCTION(2, "SCP_SPI1_A_MI"),
+		MTK_FUNCTION(3, "KPCOL2"),
+		MTK_FUNCTION(4, "MD_URXD0"),
+		MTK_FUNCTION(5, "CONN_UART0_RXD"),
+		MTK_FUNCTION(6, "SSPM_URXD_AO"),
+		MTK_FUNCTION(7, "DBG_MON_B32")
+	),
+	MTK_PIN(
+		48, "GPIO48",
+		MTK_EINT_FUNCTION(0, 48),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO48"),
+		MTK_FUNCTION(1, "SPI1_A_CSB"),
+		MTK_FUNCTION(2, "SCP_SPI1_A_CS"),
+		MTK_FUNCTION(3, "KPROW2"),
+		MTK_FUNCTION(4, "MD_UTXD0"),
+		MTK_FUNCTION(5, "CONN_UART0_TXD"),
+		MTK_FUNCTION(6, "SSPM_UTXD_AO"),
+		MTK_FUNCTION(7, "DBG_MON_B31")
+	),
+	MTK_PIN(
+		49, "GPIO49",
+		MTK_EINT_FUNCTION(0, 49),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO49"),
+		MTK_FUNCTION(1, "SPI1_A_MO"),
+		MTK_FUNCTION(2, "SCP_SPI1_A_MO"),
+		MTK_FUNCTION(3, "UCTS0"),
+		MTK_FUNCTION(4, "MD_URXD1"),
+		MTK_FUNCTION(5, "PWM_1"),
+		MTK_FUNCTION(6, "TP_URXD2_AO"),
+		MTK_FUNCTION(7, "DBG_MON_B30")
+	),
+	MTK_PIN(
+		50, "GPIO50",
+		MTK_EINT_FUNCTION(0, 50),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO50"),
+		MTK_FUNCTION(1, "SPI1_A_CLK"),
+		MTK_FUNCTION(2, "SCP_SPI1_A_CK"),
+		MTK_FUNCTION(3, "URTS0"),
+		MTK_FUNCTION(4, "MD_UTXD1"),
+		MTK_FUNCTION(5, "WIFI_TXD"),
+		MTK_FUNCTION(6, "TP_UTXD2_AO"),
+		MTK_FUNCTION(7, "DBG_MON_B29")
+	),
+	MTK_PIN(
+		51, "GPIO51",
+		MTK_EINT_FUNCTION(0, 51),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO51"),
+		MTK_FUNCTION(1, "SCL0")
+	),
+	MTK_PIN(
+		52, "GPIO52",
+		MTK_EINT_FUNCTION(0, 52),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO52"),
+		MTK_FUNCTION(1, "SDA0")
+	),
+	MTK_PIN(
+		53, "GPIO53",
+		MTK_EINT_FUNCTION(0, 53),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO53"),
+		MTK_FUNCTION(1, "URXD0"),
+		MTK_FUNCTION(2, "UTXD0"),
+		MTK_FUNCTION(3, "MD_URXD0"),
+		MTK_FUNCTION(4, "MD_URXD1"),
+		MTK_FUNCTION(5, "SSPM_URXD_AO"),
+		MTK_FUNCTION(7, "CONN_UART0_RXD")
+	),
+	MTK_PIN(
+		54, "GPIO54",
+		MTK_EINT_FUNCTION(0, 54),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO54"),
+		MTK_FUNCTION(1, "UTXD0"),
+		MTK_FUNCTION(2, "URXD0"),
+		MTK_FUNCTION(3, "MD_UTXD0"),
+		MTK_FUNCTION(4, "MD_UTXD1"),
+		MTK_FUNCTION(5, "SSPM_UTXD_AO"),
+		MTK_FUNCTION(6, "WIFI_TXD"),
+		MTK_FUNCTION(7, "CONN_UART0_TXD")
+	),
+	MTK_PIN(
+		55, "GPIO55",
+		MTK_EINT_FUNCTION(0, 55),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO55"),
+		MTK_FUNCTION(1, "SCL3"),
+		MTK_FUNCTION(2, "SCP_SCL0"),
+		MTK_FUNCTION(3, "SCP_SCL1"),
+		MTK_FUNCTION(4, "SCL_6306")
+	),
+	MTK_PIN(
+		56, "GPIO56",
+		MTK_EINT_FUNCTION(0, 56),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO56"),
+		MTK_FUNCTION(1, "SDA3"),
+		MTK_FUNCTION(2, "SCP_SDA0"),
+		MTK_FUNCTION(3, "SCP_SDA1"),
+		MTK_FUNCTION(4, "SDA_6306")
+	),
+	MTK_PIN(
+		57, "GPIO57",
+		MTK_EINT_FUNCTION(0, 57),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO57"),
+		MTK_FUNCTION(1, "KPROW1"),
+		MTK_FUNCTION(2, "PWM_1"),
+		MTK_FUNCTION(3, "DVFSRC_EXT_REQ"),
+		MTK_FUNCTION(4, "CLKM1"),
+		MTK_FUNCTION(5, "IDDIG"),
+		MTK_FUNCTION(6, "CONN_TCXOENA_REQ"),
+		MTK_FUNCTION(7, "MBISTREADEN_TRIGGER")
+	),
+	MTK_PIN(
+		58, "GPIO58",
+		MTK_EINT_FUNCTION(0, 58),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO58"),
+		MTK_FUNCTION(1, "KPROW0"),
+		MTK_FUNCTION(7, "DBG_MON_B28")
+	),
+	MTK_PIN(
+		59, "GPIO59",
+		MTK_EINT_FUNCTION(0, 59),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO59"),
+		MTK_FUNCTION(1, "KPCOL0"),
+		MTK_FUNCTION(7, "DBG_MON_B27")
+	),
+	MTK_PIN(
+		60, "GPIO60",
+		MTK_EINT_FUNCTION(0, 60),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO60"),
+		MTK_FUNCTION(1, "KPCOL1"),
+		MTK_FUNCTION(2, "PWM_2"),
+		MTK_FUNCTION(3, "UCTS1"),
+		MTK_FUNCTION(4, "CLKM2"),
+		MTK_FUNCTION(5, "USB_DRVVBUS"),
+		MTK_FUNCTION(7, "MBISTWRITEEN_TRIGGER")
+	),
+	MTK_PIN(
+		61, "GPIO61",
+		MTK_EINT_FUNCTION(0, 61),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO61"),
+		MTK_FUNCTION(1, "SCL1"),
+		MTK_FUNCTION(2, "SCP_SCL0"),
+		MTK_FUNCTION(3, "SCP_SCL1")
+	),
+	MTK_PIN(
+		62, "GPIO62",
+		MTK_EINT_FUNCTION(0, 62),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO62"),
+		MTK_FUNCTION(1, "SDA1"),
+		MTK_FUNCTION(2, "SCP_SDA0"),
+		MTK_FUNCTION(3, "SCP_SDA1")
+	),
+	MTK_PIN(
+		63, "GPIO63",
+		MTK_EINT_FUNCTION(0, 63),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO63"),
+		MTK_FUNCTION(1, "SPI2_MI"),
+		MTK_FUNCTION(2, "SCP_SPI2_MI"),
+		MTK_FUNCTION(3, "KPCOL2"),
+		MTK_FUNCTION(4, "MRG_DI"),
+		MTK_FUNCTION(5, "MD_URXD0"),
+		MTK_FUNCTION(6, "CONN_UART0_RXD"),
+		MTK_FUNCTION(7, "DBG_MON_B26")
+	),
+	MTK_PIN(
+		64, "GPIO64",
+		MTK_EINT_FUNCTION(0, 64),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO64"),
+		MTK_FUNCTION(1, "SPI2_CSB"),
+		MTK_FUNCTION(2, "SCP_SPI2_CS"),
+		MTK_FUNCTION(3, "KPROW2"),
+		MTK_FUNCTION(4, "MRG_SYNC"),
+		MTK_FUNCTION(5, "MD_UTXD0"),
+		MTK_FUNCTION(6, "CONN_UART0_TXD"),
+		MTK_FUNCTION(7, "DBG_MON_B25")
+	),
+	MTK_PIN(
+		65, "GPIO65",
+		MTK_EINT_FUNCTION(0, 65),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO65"),
+		MTK_FUNCTION(1, "SPI2_MO"),
+		MTK_FUNCTION(2, "SCP_SPI2_MO"),
+		MTK_FUNCTION(3, "SCP_SDA1"),
+		MTK_FUNCTION(4, "MRG_DO"),
+		MTK_FUNCTION(5, "MD_URXD1"),
+		MTK_FUNCTION(6, "PWM_3")
+	),
+	MTK_PIN(
+		66, "GPIO66",
+		MTK_EINT_FUNCTION(0, 66),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO66"),
+		MTK_FUNCTION(1, "SPI2_CLK"),
+		MTK_FUNCTION(2, "SCP_SPI2_CK"),
+		MTK_FUNCTION(3, "SCP_SCL1"),
+		MTK_FUNCTION(4, "MRG_CLK"),
+		MTK_FUNCTION(5, "MD_UTXD1"),
+		MTK_FUNCTION(6, "WIFI_TXD")
+	),
+	MTK_PIN(
+		67, "GPIO67",
+		MTK_EINT_FUNCTION(0, 67),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO67"),
+		MTK_FUNCTION(1, "I2S3_LRCK"),
+		MTK_FUNCTION(2, "I2S1_LRCK"),
+		MTK_FUNCTION(3, "URXD1"),
+		MTK_FUNCTION(4, "PCM0_SYNC"),
+		MTK_FUNCTION(5, "I2S5_LRCK"),
+		MTK_FUNCTION(6, "ANT_SEL9"),
+		MTK_FUNCTION(7, "DBG_MON_B10")
+	),
+	MTK_PIN(
+		68, "GPIO68",
+		MTK_EINT_FUNCTION(0, 68),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO68"),
+		MTK_FUNCTION(1, "I2S3_DO"),
+		MTK_FUNCTION(2, "I2S1_DO"),
+		MTK_FUNCTION(3, "UTXD1"),
+		MTK_FUNCTION(4, "PCM0_DO"),
+		MTK_FUNCTION(5, "I2S5_DO"),
+		MTK_FUNCTION(6, "ANT_SEL10"),
+		MTK_FUNCTION(7, "DBG_MON_B9")
+	),
+	MTK_PIN(
+		69, "GPIO69",
+		MTK_EINT_FUNCTION(0, 69),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO69"),
+		MTK_FUNCTION(1, "I2S3_MCK"),
+		MTK_FUNCTION(2, "I2S1_MCK"),
+		MTK_FUNCTION(3, "URTS1"),
+		MTK_FUNCTION(4, "AGPS_SYNC"),
+		MTK_FUNCTION(5, "I2S5_MCK"),
+		MTK_FUNCTION(6, "DVFSRC_EXT_REQ"),
+		MTK_FUNCTION(7, "DBG_MON_B8")
+	),
+	MTK_PIN(
+		70, "GPIO70",
+		MTK_EINT_FUNCTION(0, 70),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO70"),
+		MTK_FUNCTION(1, "I2S0_DI"),
+		MTK_FUNCTION(2, "I2S2_DI"),
+		MTK_FUNCTION(3, "KPCOL2"),
+		MTK_FUNCTION(4, "PCM0_DI"),
+		MTK_FUNCTION(5, "I2S2_DI2"),
+		MTK_FUNCTION(6, "ANT_SEL11"),
+		MTK_FUNCTION(7, "DBG_MON_B7")
+	),
+	MTK_PIN(
+		71, "GPIO71",
+		MTK_EINT_FUNCTION(0, 71),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO71"),
+		MTK_FUNCTION(1, "I2S3_BCK"),
+		MTK_FUNCTION(2, "I2S1_BCK"),
+		MTK_FUNCTION(3, "KPROW2"),
+		MTK_FUNCTION(4, "PCM0_CLK"),
+		MTK_FUNCTION(5, "I2S5_BCK"),
+		MTK_FUNCTION(6, "ANT_SEL12"),
+		MTK_FUNCTION(7, "DBG_MON_B6")
+	),
+	MTK_PIN(
+		72, "GPIO72",
+		MTK_EINT_FUNCTION(0, 72),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO72"),
+		MTK_FUNCTION(1, "BPI_BUS19_OLAT0"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS19_OLAT0")
+	),
+	MTK_PIN(
+		73, "GPIO73",
+		MTK_EINT_FUNCTION(0, 73),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO73"),
+		MTK_FUNCTION(1, "BPI_BUS18_PA_VM1"),
+		MTK_FUNCTION(2, "CONN_MIPI5_SCLK"),
+		MTK_FUNCTION(3, "MIPI5_SCLK")
+	),
+	MTK_PIN(
+		74, "GPIO74",
+		MTK_EINT_FUNCTION(0, 74),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO74"),
+		MTK_FUNCTION(1, "BPI_BUS17_PA_VM0"),
+		MTK_FUNCTION(2, "CONN_MIPI5_SDATA"),
+		MTK_FUNCTION(3, "MIPI5_SDATA")
+	),
+	MTK_PIN(
+		75, "GPIO75",
+		MTK_EINT_FUNCTION(0, 75),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO75"),
+		MTK_FUNCTION(1, "BPI_BUS20_OLAT1"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS20_OLAT1"),
+		MTK_FUNCTION(3, "RFIC0_BSI_D2")
+	),
+	MTK_PIN(
+		76, "GPIO76",
+		MTK_EINT_FUNCTION(0, 76),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO76"),
+		MTK_FUNCTION(1, "RFIC0_BSI_D1")
+	),
+	MTK_PIN(
+		77, "GPIO77",
+		MTK_EINT_FUNCTION(0, 77),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO77"),
+		MTK_FUNCTION(1, "RFIC0_BSI_D0")
+	),
+	MTK_PIN(
+		78, "GPIO78",
+		MTK_EINT_FUNCTION(0, 78),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO78"),
+		MTK_FUNCTION(1, "BPI_BUS7"),
+		MTK_FUNCTION(7, "DBG_MON_B24")
+	),
+	MTK_PIN(
+		79, "GPIO79",
+		MTK_EINT_FUNCTION(0, 79),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO79"),
+		MTK_FUNCTION(1, "BPI_BUS6"),
+		MTK_FUNCTION(7, "DBG_MON_B23")
+	),
+	MTK_PIN(
+		80, "GPIO80",
+		MTK_EINT_FUNCTION(0, 80),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO80"),
+		MTK_FUNCTION(1, "BPI_BUS8"),
+		MTK_FUNCTION(7, "DBG_MON_B22")
+	),
+	MTK_PIN(
+		81, "GPIO81",
+		MTK_EINT_FUNCTION(0, 81),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO81"),
+		MTK_FUNCTION(1, "BPI_BUS9"),
+		MTK_FUNCTION(7, "DBG_MON_B21")
+	),
+	MTK_PIN(
+		82, "GPIO82",
+		MTK_EINT_FUNCTION(0, 82),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO82"),
+		MTK_FUNCTION(1, "BPI_BUS10"),
+		MTK_FUNCTION(7, "DBG_MON_B20")
+	),
+	MTK_PIN(
+		83, "GPIO83",
+		MTK_EINT_FUNCTION(0, 83),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO83"),
+		MTK_FUNCTION(1, "BPI_BUS11"),
+		MTK_FUNCTION(7, "DBG_MON_B19")
+	),
+	MTK_PIN(
+		84, "GPIO84",
+		MTK_EINT_FUNCTION(0, 84),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO84"),
+		MTK_FUNCTION(1, "BPI_BUS12"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS12")
+	),
+	MTK_PIN(
+		85, "GPIO85",
+		MTK_EINT_FUNCTION(0, 85),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO85"),
+		MTK_FUNCTION(1, "BPI_BUS13"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS13")
+	),
+	MTK_PIN(
+		86, "GPIO86",
+		MTK_EINT_FUNCTION(0, 86),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO86"),
+		MTK_FUNCTION(1, "BPI_BUS14"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS14")
+	),
+	MTK_PIN(
+		87, "GPIO87",
+		MTK_EINT_FUNCTION(0, 87),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO87"),
+		MTK_FUNCTION(1, "BPI_BUS15"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS15")
+	),
+	MTK_PIN(
+		88, "GPIO88",
+		MTK_EINT_FUNCTION(0, 88),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO88"),
+		MTK_FUNCTION(1, "BPI_BUS16"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS16")
+	),
+	MTK_PIN(
+		89, "GPIO89",
+		MTK_EINT_FUNCTION(0, 89),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO89"),
+		MTK_FUNCTION(1, "BPI_BUS5"),
+		MTK_FUNCTION(7, "DBG_MON_B18")
+	),
+	MTK_PIN(
+		90, "GPIO90",
+		MTK_EINT_FUNCTION(0, 90),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO90"),
+		MTK_FUNCTION(1, "BPI_BUS4"),
+		MTK_FUNCTION(7, "DBG_MON_B17")
+	),
+	MTK_PIN(
+		91, "GPIO91",
+		MTK_EINT_FUNCTION(0, 91),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO91"),
+		MTK_FUNCTION(1, "BPI_BUS3")
+	),
+	MTK_PIN(
+		92, "GPIO92",
+		MTK_EINT_FUNCTION(0, 92),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO92"),
+		MTK_FUNCTION(1, "BPI_BUS2"),
+		MTK_FUNCTION(7, "DBG_MON_B16")
+	),
+	MTK_PIN(
+		93, "GPIO93",
+		MTK_EINT_FUNCTION(0, 93),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO93"),
+		MTK_FUNCTION(1, "BPI_BUS1")
+	),
+	MTK_PIN(
+		94, "GPIO94",
+		MTK_EINT_FUNCTION(0, 94),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO94"),
+		MTK_FUNCTION(1, "BPI_BUS0"),
+		MTK_FUNCTION(7, "DBG_MON_B15")
+	),
+	MTK_PIN(
+		95, "GPIO95",
+		MTK_EINT_FUNCTION(0, 95),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO95"),
+		MTK_FUNCTION(1, "MIPI0_SDATA")
+	),
+	MTK_PIN(
+		96, "GPIO96",
+		MTK_EINT_FUNCTION(0, 96),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO96"),
+		MTK_FUNCTION(1, "MIPI0_SCLK")
+	),
+	MTK_PIN(
+		97, "GPIO97",
+		MTK_EINT_FUNCTION(0, 97),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO97"),
+		MTK_FUNCTION(1, "MIPI1_SDATA")
+	),
+	MTK_PIN(
+		98, "GPIO98",
+		MTK_EINT_FUNCTION(0, 98),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO98"),
+		MTK_FUNCTION(1, "MIPI1_SCLK")
+	),
+	MTK_PIN(
+		99, "GPIO99",
+		MTK_EINT_FUNCTION(0, 99),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO99"),
+		MTK_FUNCTION(1, "MIPI2_SCLK"),
+		MTK_FUNCTION(7, "DBG_MON_B14")
+	),
+	MTK_PIN(
+		100, "GPIO100",
+		MTK_EINT_FUNCTION(0, 100),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO100"),
+		MTK_FUNCTION(1, "MIPI2_SDATA"),
+		MTK_FUNCTION(7, "DBG_MON_B13")
+	),
+	MTK_PIN(
+		101, "GPIO101",
+		MTK_EINT_FUNCTION(0, 101),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO101"),
+		MTK_FUNCTION(1, "MIPI3_SCLK"),
+		MTK_FUNCTION(7, "DBG_MON_B12")
+	),
+	MTK_PIN(
+		102, "GPIO102",
+		MTK_EINT_FUNCTION(0, 102),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO102"),
+		MTK_FUNCTION(1, "MIPI3_SDATA"),
+		MTK_FUNCTION(7, "DBG_MON_B11")
+	),
+	MTK_PIN(
+		103, "GPIO103",
+		MTK_EINT_FUNCTION(0, 103),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO103"),
+		MTK_FUNCTION(1, "MIPI4_SCLK"),
+		MTK_FUNCTION(2, "CONN_MIPI4_SCLK")
+	),
+	MTK_PIN(
+		104, "GPIO104",
+		MTK_EINT_FUNCTION(0, 104),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO104"),
+		MTK_FUNCTION(1, "MIPI4_SDATA"),
+		MTK_FUNCTION(2, "CONN_MIPI4_SDATA")
+	),
+	MTK_PIN(
+		105, "GPIO105",
+		MTK_EINT_FUNCTION(0, 105),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO105"),
+		MTK_FUNCTION(1, "BPI_BUS22_OLAT3"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS22_OLAT3")
+	),
+	MTK_PIN(
+		106, "GPIO106",
+		MTK_EINT_FUNCTION(0, 106),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO106"),
+		MTK_FUNCTION(1, "BPI_BUS21_OLAT2"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS21_OLAT2")
+	),
+	MTK_PIN(
+		107, "GPIO107",
+		MTK_EINT_FUNCTION(0, 107),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO107"),
+		MTK_FUNCTION(1, "BPI_BUS24_ANT1"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS24_ANT1")
+	),
+	MTK_PIN(
+		108, "GPIO108",
+		MTK_EINT_FUNCTION(0, 108),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO108"),
+		MTK_FUNCTION(1, "BPI_BUS25_ANT2"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS25_ANT2")
+	),
+	MTK_PIN(
+		109, "GPIO109",
+		MTK_EINT_FUNCTION(0, 109),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO109"),
+		MTK_FUNCTION(1, "BPI_BUS23_ANT0"),
+		MTK_FUNCTION(2, "CONN_BPI_BUS23_ANT0")
+	),
+	MTK_PIN(
+		110, "GPIO110",
+		MTK_EINT_FUNCTION(0, 110),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO110"),
+		MTK_FUNCTION(1, "SCL4")
+	),
+	MTK_PIN(
+		111, "GPIO111",
+		MTK_EINT_FUNCTION(0, 111),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO111"),
+		MTK_FUNCTION(1, "SDA4")
+	),
+	MTK_PIN(
+		112, "GPIO112",
+		MTK_EINT_FUNCTION(0, 112),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO112"),
+		MTK_FUNCTION(1, "SCL2")
+	),
+	MTK_PIN(
+		113, "GPIO113",
+		MTK_EINT_FUNCTION(0, 113),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO113"),
+		MTK_FUNCTION(1, "SDA2")
+	),
+	MTK_PIN(
+		114, "GPIO114",
+		MTK_EINT_FUNCTION(0, 114),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO114"),
+		MTK_FUNCTION(1, "CLKM0"),
+		MTK_FUNCTION(2, "SPI3_MI"),
+		MTK_FUNCTION(7, "DBG_MON_B5")
+	),
+	MTK_PIN(
+		115, "GPIO115",
+		MTK_EINT_FUNCTION(0, 115),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO115"),
+		MTK_FUNCTION(1, "CLKM1"),
+		MTK_FUNCTION(2, "SPI3_CSB"),
+		MTK_FUNCTION(7, "DBG_MON_B4")
+	),
+	MTK_PIN(
+		116, "GPIO116",
+		MTK_EINT_FUNCTION(0, 116),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO116"),
+		MTK_FUNCTION(1, "CMMCLK0"),
+		MTK_FUNCTION(7, "DBG_MON_B3")
+	),
+	MTK_PIN(
+		117, "GPIO117",
+		MTK_EINT_FUNCTION(0, 117),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO117"),
+		MTK_FUNCTION(1, "CMMCLK1"),
+		MTK_FUNCTION(2, "DVFSRC_EXT_REQ"),
+		MTK_FUNCTION(7, "DBG_MON_B2")
+	),
+	MTK_PIN(
+		118, "GPIO118",
+		MTK_EINT_FUNCTION(0, 118),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO118"),
+		MTK_FUNCTION(1, "CLKM2"),
+		MTK_FUNCTION(2, "SPI3_MO"),
+		MTK_FUNCTION(7, "DBG_MON_B1")
+	),
+	MTK_PIN(
+		119, "GPIO119",
+		MTK_EINT_FUNCTION(0, 119),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO119"),
+		MTK_FUNCTION(1, "CLKM3"),
+		MTK_FUNCTION(2, "SPI3_CLK"),
+		MTK_FUNCTION(7, "DBG_MON_B0")
+	),
+	MTK_PIN(
+		120, "GPIO120",
+		MTK_EINT_FUNCTION(0, 120),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO120"),
+		MTK_FUNCTION(1, "CMMCLK2"),
+		MTK_FUNCTION(2, "CLKM2"),
+		MTK_FUNCTION(6, "ANT_SEL12"),
+		MTK_FUNCTION(7, "TP_UCTS2_AO")
+	),
+	MTK_PIN(
+		121, "GPIO121",
+		MTK_EINT_FUNCTION(0, 121),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO121"),
+		MTK_FUNCTION(1, "CMMCLK3"),
+		MTK_FUNCTION(2, "CLKM3"),
+		MTK_FUNCTION(3, "DVFSRC_EXT_REQ"),
+		MTK_FUNCTION(6, "ANT_SEL11"),
+		MTK_FUNCTION(7, "TP_URTS2_AO")
+	),
+	MTK_PIN(
+		122, "GPIO122",
+		MTK_EINT_FUNCTION(0, 122),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO122"),
+		MTK_FUNCTION(1, "CMVREF1"),
+		MTK_FUNCTION(2, "PCM0_SYNC"),
+		MTK_FUNCTION(3, "SRCLKENAI1"),
+		MTK_FUNCTION(4, "AGPS_SYNC"),
+		MTK_FUNCTION(5, "PWM_1"),
+		MTK_FUNCTION(6, "ANT_SEL9"),
+		MTK_FUNCTION(7, "TP_UCTS1_AO")
+	),
+	MTK_PIN(
+		123, "GPIO123",
+		MTK_EINT_FUNCTION(0, 123),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO123"),
+		MTK_FUNCTION(2, "PCM0_DI"),
+		MTK_FUNCTION(3, "ADSP_JTAG_TRSTN"),
+		MTK_FUNCTION(4, "VPU_UDI_NTRST"),
+		MTK_FUNCTION(5, "SPM_JTAG_TRSTN"),
+		MTK_FUNCTION(6, "SSPM_JTAG_TRSTN")
+	),
+	MTK_PIN(
+		124, "GPIO124",
+		MTK_EINT_FUNCTION(0, 124),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO124"),
+		MTK_FUNCTION(1, "CMVREF2"),
+		MTK_FUNCTION(2, "PCM0_CLK"),
+		MTK_FUNCTION(3, "MD_INT0"),
+		MTK_FUNCTION(4, "EXT_FRAME_SYNC"),
+		MTK_FUNCTION(5, "PWM_2"),
+		MTK_FUNCTION(6, "ANT_SEL10"),
+		MTK_FUNCTION(7, "TP_URTS1_AO")
+	),
+	MTK_PIN(
+		125, "GPIO125",
+		MTK_EINT_FUNCTION(0, 125),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO125"),
+		MTK_FUNCTION(1, "CMVREF3"),
+		MTK_FUNCTION(2, "PCM0_DO"),
+		MTK_FUNCTION(3, "ADSP_JTAG_TMS"),
+		MTK_FUNCTION(4, "VPU_UDI_TMS"),
+		MTK_FUNCTION(5, "SPM_JTAG_TMS"),
+		MTK_FUNCTION(6, "SSPM_JTAG_TMS")
+	),
+	MTK_PIN(
+		126, "GPIO126",
+		MTK_EINT_FUNCTION(0, 126),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO126"),
+		MTK_FUNCTION(1, "CMVREF4"),
+		MTK_FUNCTION(2, "CMFLASH0"),
+		MTK_FUNCTION(6, "CONN_MCU_AICE_TMSC")
+	),
+	MTK_PIN(
+		127, "GPIO127",
+		MTK_EINT_FUNCTION(0, 127),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO127"),
+		MTK_FUNCTION(1, "CMVREF0"),
+		MTK_FUNCTION(2, "CMFLASH1"),
+		MTK_FUNCTION(6, "CONN_MCU_AICE_TCKC")
+	),
+	MTK_PIN(
+		128, "GPIO128",
+		MTK_EINT_FUNCTION(0, 128),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO128"),
+		MTK_FUNCTION(1, "MD1_SIM1_SIO"),
+		MTK_FUNCTION(2, "MD1_SIM2_SIO"),
+		MTK_FUNCTION(3, "CCU_JTAG_TRST"),
+		MTK_FUNCTION(4, "CONN_DSP_JINTP"),
+		MTK_FUNCTION(5, "SCP_JTAG_TRSTN"),
+		MTK_FUNCTION(6, "LVTS_FOUT"),
+		MTK_FUNCTION(7, "DBG_MON_A3")
+	),
+	MTK_PIN(
+		129, "GPIO129",
+		MTK_EINT_FUNCTION(0, 129),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO129"),
+		MTK_FUNCTION(1, "MD1_SIM1_SRST"),
+		MTK_FUNCTION(2, "MD1_SIM2_SRST"),
+		MTK_FUNCTION(3, "CCU_JTAG_TCK"),
+		MTK_FUNCTION(4, "CONN_DSP_JCK"),
+		MTK_FUNCTION(5, "SCP_JTAG_TCK"),
+		MTK_FUNCTION(6, "LVTS_SDO"),
+		MTK_FUNCTION(7, "DBG_MON_A4")
+	),
+	MTK_PIN(
+		130, "GPIO130",
+		MTK_EINT_FUNCTION(0, 130),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO130"),
+		MTK_FUNCTION(1, "MD1_SIM1_SCLK"),
+		MTK_FUNCTION(2, "MD1_SIM2_SCLK"),
+		MTK_FUNCTION(6, "LVTS_26M"),
+		MTK_FUNCTION(7, "DBG_MON_A5")
+	),
+	MTK_PIN(
+		131, "GPIO131",
+		MTK_EINT_FUNCTION(0, 131),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO131"),
+		MTK_FUNCTION(1, "MD1_SIM2_SCLK"),
+		MTK_FUNCTION(2, "MD1_SIM1_SCLK"),
+		MTK_FUNCTION(3, "CCU_JTAG_TDI"),
+		MTK_FUNCTION(4, "CONN_DSP_JDI"),
+		MTK_FUNCTION(5, "SCP_JTAG_TDI"),
+		MTK_FUNCTION(6, "LVTS_SCK"),
+		MTK_FUNCTION(7, "DBG_MON_A0")
+	),
+	MTK_PIN(
+		132, "GPIO132",
+		MTK_EINT_FUNCTION(0, 132),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO132"),
+		MTK_FUNCTION(1, "MD1_SIM2_SRST"),
+		MTK_FUNCTION(2, "MD1_SIM1_SRST"),
+		MTK_FUNCTION(3, "CCU_JTAG_TMS"),
+		MTK_FUNCTION(4, "CONN_DSP_JMS"),
+		MTK_FUNCTION(5, "SCP_JTAG_TMS"),
+		MTK_FUNCTION(6, "LVTS_SDI"),
+		MTK_FUNCTION(7, "DBG_MON_A1")
+	),
+	MTK_PIN(
+		133, "GPIO133",
+		MTK_EINT_FUNCTION(0, 133),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO133"),
+		MTK_FUNCTION(1, "MD1_SIM2_SIO"),
+		MTK_FUNCTION(2, "MD1_SIM1_SIO"),
+		MTK_FUNCTION(3, "CCU_JTAG_TDO"),
+		MTK_FUNCTION(4, "CONN_DSP_JDO"),
+		MTK_FUNCTION(5, "SCP_JTAG_TDO"),
+		MTK_FUNCTION(6, "LVTS_SCF"),
+		MTK_FUNCTION(7, "DBG_MON_A2")
+	),
+	MTK_PIN(
+		134, "GPIO134",
+		MTK_EINT_FUNCTION(0, 134),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO134"),
+		MTK_FUNCTION(1, "MSDC1_CLK"),
+		MTK_FUNCTION(2, "PCM1_CLK"),
+		MTK_FUNCTION(3, "SPI5_B_MI"),
+		MTK_FUNCTION(4, "UDI_TCK"),
+		MTK_FUNCTION(5, "CONN_DSP_JCK"),
+		MTK_FUNCTION(6, "IPU_JTAG_TCK"),
+		MTK_FUNCTION(7, "JTCK_SEL3")
+	),
+	MTK_PIN(
+		135, "GPIO135",
+		MTK_EINT_FUNCTION(0, 135),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO135"),
+		MTK_FUNCTION(1, "MSDC1_CMD"),
+		MTK_FUNCTION(2, "PCM1_SYNC"),
+		MTK_FUNCTION(3, "SPI5_B_CSB"),
+		MTK_FUNCTION(4, "UDI_TMS"),
+		MTK_FUNCTION(5, "CONN_DSP_JMS"),
+		MTK_FUNCTION(6, "IPU_JTAG_TMS"),
+		MTK_FUNCTION(7, "JTMS_SEL3")
+	),
+	MTK_PIN(
+		136, "GPIO136",
+		MTK_EINT_FUNCTION(0, 136),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO136"),
+		MTK_FUNCTION(1, "MSDC1_DAT3"),
+		MTK_FUNCTION(2, "PCM1_DI"),
+		MTK_FUNCTION(3, "SPI5_B_MO"),
+		MTK_FUNCTION(4, "CONN_TCXOENA_REQ"),
+		MTK_FUNCTION(5, "CONN_DSP_JINTP"),
+		MTK_FUNCTION(6, "CONN_MCU_AICE_TMSC")
+	),
+	MTK_PIN(
+		137, "GPIO137",
+		MTK_EINT_FUNCTION(0, 137),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO137"),
+		MTK_FUNCTION(1, "MSDC1_DAT0"),
+		MTK_FUNCTION(2, "PCM1_DO0"),
+		MTK_FUNCTION(3, "SPI5_B_CLK"),
+		MTK_FUNCTION(4, "UDI_TDI"),
+		MTK_FUNCTION(5, "CONN_DSP_JDI"),
+		MTK_FUNCTION(6, "IPU_JTAG_TDI"),
+		MTK_FUNCTION(7, "JTDI_SEL3")
+	),
+	MTK_PIN(
+		138, "GPIO138",
+		MTK_EINT_FUNCTION(0, 138),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO138"),
+		MTK_FUNCTION(1, "MSDC1_DAT2"),
+		MTK_FUNCTION(2, "PCM1_DO2"),
+		MTK_FUNCTION(3, "ANT_SEL11"),
+		MTK_FUNCTION(4, "UDI_NTRST"),
+		MTK_FUNCTION(5, "CONN_MCU_AICE_TCKC"),
+		MTK_FUNCTION(6, "IPU_JTAG_TRST"),
+		MTK_FUNCTION(7, "JTRSTN_SEL3")
+	),
+	MTK_PIN(
+		139, "GPIO139",
+		MTK_EINT_FUNCTION(0, 139),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO139"),
+		MTK_FUNCTION(1, "MSDC1_DAT1"),
+		MTK_FUNCTION(2, "PCM1_DO1"),
+		MTK_FUNCTION(3, "ANT_SEL12"),
+		MTK_FUNCTION(4, "UDI_TDO"),
+		MTK_FUNCTION(5, "CONN_DSP_JDO"),
+		MTK_FUNCTION(6, "IPU_JTAG_TDO"),
+		MTK_FUNCTION(7, "JTDO_SEL3")
+	),
+	MTK_PIN(
+		140, "GPIO140",
+		MTK_EINT_FUNCTION(0, 140),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO140"),
+		MTK_FUNCTION(1, "MD_INT1_C2K_UIM0_HOT_PLUG"),
+		MTK_FUNCTION(2, "MD_INT2_C2K_UIM1_HOT_PLUG"),
+		MTK_FUNCTION(3, "ADSP_URXD0"),
+		MTK_FUNCTION(4, "SCL_6306"),
+		MTK_FUNCTION(5, "PTA_RXD"),
+		MTK_FUNCTION(6, "SSPM_URXD_AO")
+	),
+	MTK_PIN(
+		141, "GPIO141",
+		MTK_EINT_FUNCTION(0, 141),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO141"),
+		MTK_FUNCTION(1, "MD_INT2_C2K_UIM1_HOT_PLUG"),
+		MTK_FUNCTION(2, "MD_INT1_C2K_UIM0_HOT_PLUG"),
+		MTK_FUNCTION(3, "ADSP_UTXD0"),
+		MTK_FUNCTION(4, "SDA_6306"),
+		MTK_FUNCTION(5, "PTA_TXD"),
+		MTK_FUNCTION(6, "SSPM_UTXD_AO")
+	),
+	MTK_PIN(
+		142, "GPIO142",
+		MTK_EINT_FUNCTION(0, 142),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO142"),
+		MTK_FUNCTION(1, "SCP_VREQ_VAO"),
+		MTK_FUNCTION(2, "DVFSRC_EXT_REQ")
+	),
+	MTK_PIN(
+		143, "GPIO143",
+		MTK_EINT_FUNCTION(0, 143),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO143"),
+		MTK_FUNCTION(1, "AUD_DAT_MOSI2"),
+		MTK_FUNCTION(7, "DBG_MON_A9")
+	),
+	MTK_PIN(
+		144, "GPIO144",
+		MTK_EINT_FUNCTION(0, 144),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO144"),
+		MTK_FUNCTION(1, "AUD_NLE_MOSI1"),
+		MTK_FUNCTION(2, "AUD_CLK_MISO"),
+		MTK_FUNCTION(3, "I2S2_MCK"),
+		MTK_FUNCTION(5, "UDI_TCK"),
+		MTK_FUNCTION(6, "UFS_UNIPRO_SDA"),
+		MTK_FUNCTION(7, "DBG_MON_A10")
+	),
+	MTK_PIN(
+		145, "GPIO145",
+		MTK_EINT_FUNCTION(0, 145),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO145"),
+		MTK_FUNCTION(1, "AUD_NLE_MOSI0"),
+		MTK_FUNCTION(2, "AUD_SYNC_MISO"),
+		MTK_FUNCTION(3, "I2S2_BCK"),
+		MTK_FUNCTION(5, "UDI_TMS"),
+		MTK_FUNCTION(7, "DBG_MON_A11")
+	),
+	MTK_PIN(
+		146, "GPIO146",
+		MTK_EINT_FUNCTION(0, 146),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO146"),
+		MTK_FUNCTION(1, "AUD_DAT_MISO2"),
+		MTK_FUNCTION(3, "I2S2_DI2"),
+		MTK_FUNCTION(5, "UDI_TDO"),
+		MTK_FUNCTION(7, "DBG_MON_A14")
+	),
+	MTK_PIN(
+		147, "GPIO147",
+		MTK_EINT_FUNCTION(0, 147),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO147"),
+		MTK_FUNCTION(1, "ANT_SEL0"),
+		MTK_FUNCTION(2, "PWM_3")
+	),
+	MTK_PIN(
+		148, "GPIO148",
+		MTK_EINT_FUNCTION(0, 148),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO148"),
+		MTK_FUNCTION(1, "ANT_SEL1"),
+		MTK_FUNCTION(2, "SPI0_B_MI"),
+		MTK_FUNCTION(3, "SSPM_URXD_AO"),
+		MTK_FUNCTION(5, "TP_UCTS2_AO"),
+		MTK_FUNCTION(6, "CLKM0")
+	),
+	MTK_PIN(
+		149, "GPIO149",
+		MTK_EINT_FUNCTION(0, 149),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO149"),
+		MTK_FUNCTION(1, "ANT_SEL2"),
+		MTK_FUNCTION(2, "SPI0_B_CSB"),
+		MTK_FUNCTION(3, "SSPM_UTXD_AO"),
+		MTK_FUNCTION(5, "TP_URTS2_AO"),
+		MTK_FUNCTION(6, "CONN_TCXOENA_REQ")
+	),
+	MTK_PIN(
+		150, "GPIO150",
+		MTK_EINT_FUNCTION(0, 150),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO150"),
+		MTK_FUNCTION(1, "ANT_SEL3"),
+		MTK_FUNCTION(2, "SPI0_B_MO"),
+		MTK_FUNCTION(3, "UCTS1"),
+		MTK_FUNCTION(5, "TP_UCTS1_AO"),
+		MTK_FUNCTION(6, "IDDIG"),
+		MTK_FUNCTION(7, "SCL9")
+	),
+	MTK_PIN(
+		151, "GPIO151",
+		MTK_EINT_FUNCTION(0, 151),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO151"),
+		MTK_FUNCTION(1, "ANT_SEL4"),
+		MTK_FUNCTION(2, "SPI0_B_CLK"),
+		MTK_FUNCTION(3, "URTS1"),
+		MTK_FUNCTION(5, "TP_URTS1_AO"),
+		MTK_FUNCTION(6, "USB_DRVVBUS"),
+		MTK_FUNCTION(7, "SDA9")
+	),
+	MTK_PIN(
+		152, "GPIO152",
+		MTK_EINT_FUNCTION(0, 152),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO152"),
+		MTK_FUNCTION(1, "ANT_SEL5"),
+		MTK_FUNCTION(2, "SPI1_B_MI"),
+		MTK_FUNCTION(3, "CLKM3"),
+		MTK_FUNCTION(5, "TP_URXD1_AO"),
+		MTK_FUNCTION(6, "SCP_SPI1_B_MI"),
+		MTK_FUNCTION(7, "SCL8")
+	),
+	MTK_PIN(
+		153, "GPIO153",
+		MTK_EINT_FUNCTION(0, 153),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO153"),
+		MTK_FUNCTION(1, "ANT_SEL6"),
+		MTK_FUNCTION(2, "SPI1_B_CSB"),
+		MTK_FUNCTION(3, "SRCLKENAI0"),
+		MTK_FUNCTION(4, "PWM_0"),
+		MTK_FUNCTION(5, "TP_UTXD1_AO"),
+		MTK_FUNCTION(6, "SCP_SPI1_B_CS"),
+		MTK_FUNCTION(7, "SDA8")
+	),
+	MTK_PIN(
+		154, "GPIO154",
+		MTK_EINT_FUNCTION(0, 154),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO154"),
+		MTK_FUNCTION(1, "ANT_SEL7"),
+		MTK_FUNCTION(2, "SPI1_B_MO"),
+		MTK_FUNCTION(3, "SRCLKENAI1"),
+		MTK_FUNCTION(5, "TP_URXD2_AO"),
+		MTK_FUNCTION(6, "SCP_SPI1_B_MO")
+	),
+	MTK_PIN(
+		155, "GPIO155",
+		MTK_EINT_FUNCTION(0, 155),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO155"),
+		MTK_FUNCTION(1, "ANT_SEL8"),
+		MTK_FUNCTION(2, "SPI1_B_CLK"),
+		MTK_FUNCTION(3, "MD_INT0"),
+		MTK_FUNCTION(5, "TP_UTXD2_AO"),
+		MTK_FUNCTION(6, "SCP_SPI1_B_CK"),
+		MTK_FUNCTION(7, "DBG_MON_A15")
+	),
+	MTK_PIN(
+		156, "GPIO156",
+		MTK_EINT_FUNCTION(0, 156),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO156"),
+		MTK_FUNCTION(1, "CONN_TOP_CLK"),
+		MTK_FUNCTION(2, "AUXIF_CLK0"),
+		MTK_FUNCTION(7, "DBG_MON_A16")
+	),
+	MTK_PIN(
+		157, "GPIO157",
+		MTK_EINT_FUNCTION(0, 157),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO157"),
+		MTK_FUNCTION(1, "CONN_TOP_DATA"),
+		MTK_FUNCTION(2, "AUXIF_ST0"),
+		MTK_FUNCTION(7, "DBG_MON_A17")
+	),
+	MTK_PIN(
+		158, "GPIO158",
+		MTK_EINT_FUNCTION(0, 158),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO158"),
+		MTK_FUNCTION(1, "CONN_HRST_B"),
+		MTK_FUNCTION(7, "DBG_MON_A18")
+	),
+	MTK_PIN(
+		159, "GPIO159",
+		MTK_EINT_FUNCTION(0, 159),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO159"),
+		MTK_FUNCTION(1, "CONN_WB_PTA"),
+		MTK_FUNCTION(7, "DBG_MON_A19")
+	),
+	MTK_PIN(
+		160, "GPIO160",
+		MTK_EINT_FUNCTION(0, 160),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO160"),
+		MTK_FUNCTION(1, "CONN_BT_CLK"),
+		MTK_FUNCTION(2, "AUXIF_CLK1"),
+		MTK_FUNCTION(7, "DBG_MON_A20")
+	),
+	MTK_PIN(
+		161, "GPIO161",
+		MTK_EINT_FUNCTION(0, 161),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO161"),
+		MTK_FUNCTION(1, "CONN_BT_DATA"),
+		MTK_FUNCTION(2, "AUXIF_ST1"),
+		MTK_FUNCTION(7, "DBG_MON_A21")
+	),
+	MTK_PIN(
+		162, "GPIO162",
+		MTK_EINT_FUNCTION(0, 162),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO162"),
+		MTK_FUNCTION(1, "CONN_WF_CTRL0"),
+		MTK_FUNCTION(7, "DBG_MON_A22")
+	),
+	MTK_PIN(
+		163, "GPIO163",
+		MTK_EINT_FUNCTION(0, 163),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO163"),
+		MTK_FUNCTION(1, "CONN_WF_CTRL1"),
+		MTK_FUNCTION(2, "UFS_MPHY_SCL"),
+		MTK_FUNCTION(7, "DBG_MON_A23")
+	),
+	MTK_PIN(
+		164, "GPIO164",
+		MTK_EINT_FUNCTION(0, 164),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO164"),
+		MTK_FUNCTION(1, "CONN_WF_CTRL2"),
+		MTK_FUNCTION(2, "UFS_MPHY_SDA"),
+		MTK_FUNCTION(7, "DBG_MON_A24")
+	),
+	MTK_PIN(
+		165, "GPIO165",
+		MTK_EINT_FUNCTION(0, 165),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO165"),
+		MTK_FUNCTION(1, "CONN_WF_CTRL3"),
+		MTK_FUNCTION(2, "UFS_UNIPRO_SDA"),
+		MTK_FUNCTION(7, "DBG_MON_A25")
+	),
+	MTK_PIN(
+		166, "GPIO166",
+		MTK_EINT_FUNCTION(0, 166),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO166"),
+		MTK_FUNCTION(1, "CONN_WF_CTRL4"),
+		MTK_FUNCTION(2, "UFS_UNIPRO_SCL"),
+		MTK_FUNCTION(7, "DBG_MON_A26")
+	),
+	MTK_PIN(
+		167, "GPIO167",
+		MTK_EINT_FUNCTION(0, 167),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO167"),
+		MTK_FUNCTION(1, "MSDC0_CMD")
+	),
+	MTK_PIN(
+		168, "GPIO168",
+		MTK_EINT_FUNCTION(0, 168),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO168"),
+		MTK_FUNCTION(1, "MSDC0_DAT0")
+	),
+	MTK_PIN(
+		169, "GPIO169",
+		MTK_EINT_FUNCTION(0, 169),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO169"),
+		MTK_FUNCTION(1, "MSDC0_DAT2")
+	),
+	MTK_PIN(
+		170, "GPIO170",
+		MTK_EINT_FUNCTION(0, 170),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO170"),
+		MTK_FUNCTION(1, "MSDC0_DAT4")
+	),
+	MTK_PIN(
+		171, "GPIO171",
+		MTK_EINT_FUNCTION(0, 171),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO171"),
+		MTK_FUNCTION(1, "MSDC0_DAT6")
+	),
+	MTK_PIN(
+		172, "GPIO172",
+		MTK_EINT_FUNCTION(0, 172),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO172"),
+		MTK_FUNCTION(1, "MSDC0_DAT1")
+	),
+	MTK_PIN(
+		173, "GPIO173",
+		MTK_EINT_FUNCTION(0, 173),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO173"),
+		MTK_FUNCTION(1, "MSDC0_DAT5")
+	),
+	MTK_PIN(
+		174, "GPIO174",
+		MTK_EINT_FUNCTION(0, 174),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO174"),
+		MTK_FUNCTION(1, "MSDC0_DAT7")
+	),
+	MTK_PIN(
+		175, "GPIO175",
+		MTK_EINT_FUNCTION(0, 175),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO175"),
+		MTK_FUNCTION(1, "MSDC0_DSL"),
+		MTK_FUNCTION(2, "ANT_SEL9")
+	),
+	MTK_PIN(
+		176, "GPIO176",
+		MTK_EINT_FUNCTION(0, 176),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO176"),
+		MTK_FUNCTION(1, "MSDC0_CLK"),
+		MTK_FUNCTION(2, "ANT_SEL10")
+	),
+	MTK_PIN(
+		177, "GPIO177",
+		MTK_EINT_FUNCTION(0, 177),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO177"),
+		MTK_FUNCTION(1, "MSDC0_DAT3")
+	),
+	MTK_PIN(
+		178, "GPIO178",
+		MTK_EINT_FUNCTION(0, 178),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO178"),
+		MTK_FUNCTION(1, "MSDC0_RSTB")
+	),
+	MTK_PIN(
+		179, "GPIO179",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO179"),
+		MTK_FUNCTION(1, "RFIC0_BSI_EN")
+	),
+	MTK_PIN(
+		180, "GPIO180",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO180"),
+		MTK_FUNCTION(1, "RFIC0_BSI_CK")
+	),
+	MTK_PIN(
+		181, "GPIO181",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO181"),
+		MTK_FUNCTION(1, "SRCLKENA0")
+	),
+	MTK_PIN(
+		182, "GPIO182",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO182"),
+		MTK_FUNCTION(1, "SRCLKENA1")
+	),
+	MTK_PIN(
+		183, "GPIO183",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO183"),
+		MTK_FUNCTION(1, "WATCHDOG")
+	),
+	MTK_PIN(
+		184, "GPIO184",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO184"),
+		MTK_FUNCTION(1, "PWRAP_SPI0_MI"),
+		MTK_FUNCTION(2, "PWRAP_SPI0_MO")
+	),
+	MTK_PIN(
+		185, "GPIO185",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO185"),
+		MTK_FUNCTION(1, "PWRAP_SPI0_CSN")
+	),
+	MTK_PIN(
+		186, "GPIO186",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO186"),
+		MTK_FUNCTION(1, "PWRAP_SPI0_MO"),
+		MTK_FUNCTION(2, "PWRAP_SPI0_MI")
+	),
+	MTK_PIN(
+		187, "GPIO187",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO187"),
+		MTK_FUNCTION(1, "PWRAP_SPI0_CK")
+	),
+	MTK_PIN(
+		188, "GPIO188",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO188"),
+		MTK_FUNCTION(1, "RTC32K_CK")
+	),
+	MTK_PIN(
+		189, "GPIO189",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO189"),
+		MTK_FUNCTION(1, "AUD_CLK_MOSI"),
+		MTK_FUNCTION(3, "I2S1_MCK"),
+		MTK_FUNCTION(6, "UFS_UNIPRO_SCL")
+	),
+	MTK_PIN(
+		190, "GPIO190",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO190"),
+		MTK_FUNCTION(1, "AUD_SYNC_MOSI"),
+		MTK_FUNCTION(3, "I2S1_BCK"),
+		MTK_FUNCTION(7, "DBG_MON_A6")
+	),
+	MTK_PIN(
+		191, "GPIO191",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO191"),
+		MTK_FUNCTION(1, "AUD_DAT_MOSI0"),
+		MTK_FUNCTION(3, "I2S1_LRCK"),
+		MTK_FUNCTION(7, "DBG_MON_A7")
+	),
+	MTK_PIN(
+		192, "GPIO192",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO192"),
+		MTK_FUNCTION(1, "AUD_DAT_MOSI1"),
+		MTK_FUNCTION(3, "I2S1_DO"),
+		MTK_FUNCTION(6, "UFS_MPHY_SDA"),
+		MTK_FUNCTION(7, "DBG_MON_A8")
+	),
+	MTK_PIN(
+		193, "GPIO193",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO193"),
+		MTK_FUNCTION(1, "AUD_DAT_MISO0"),
+		MTK_FUNCTION(2, "VOW_DAT_MISO"),
+		MTK_FUNCTION(3, "I2S2_LRCK"),
+		MTK_FUNCTION(5, "UDI_TDI"),
+		MTK_FUNCTION(7, "DBG_MON_A12")
+	),
+	MTK_PIN(
+		194, "GPIO194",
+		MTK_EINT_FUNCTION(NO_EINT_SUPPORT, NO_EINT_SUPPORT),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO194"),
+		MTK_FUNCTION(1, "AUD_DAT_MISO1"),
+		MTK_FUNCTION(2, "VOW_CLK_MISO"),
+		MTK_FUNCTION(3, "I2S2_DI"),
+		MTK_FUNCTION(5, "UDI_NTRST"),
+		MTK_FUNCTION(6, "UFS_MPHY_SCL"),
+		MTK_FUNCTION(7, "DBG_MON_A13")
+	),
+	MTK_PIN(
+		195, "GPIO195",
+		MTK_EINT_FUNCTION(0, 179),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO195"),
+		MTK_FUNCTION(3, "ADSP_JTAG_TCK"),
+		MTK_FUNCTION(4, "VPU_UDI_TCK"),
+		MTK_FUNCTION(5, "SPM_JTAG_TCK"),
+		MTK_FUNCTION(6, "SSPM_JTAG_TCK")
+	),
+	MTK_PIN(
+		196, "GPIO196",
+		MTK_EINT_FUNCTION(0, 180),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO196"),
+		MTK_FUNCTION(1, "CMMCLK4"),
+		MTK_FUNCTION(3, "ADSP_JTAG_TDI"),
+		MTK_FUNCTION(4, "VPU_UDI_TDI"),
+		MTK_FUNCTION(5, "SPM_JTAG_TDI"),
+		MTK_FUNCTION(6, "SSPM_JTAG_TDI")
+	),
+	MTK_PIN(
+		197, "GPIO197",
+		MTK_EINT_FUNCTION(0, 181),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO197"),
+		MTK_FUNCTION(3, "ADSP_JTAG_TDO"),
+		MTK_FUNCTION(4, "VPU_UDI_TDO"),
+		MTK_FUNCTION(5, "SPM_JTAG_TDO"),
+		MTK_FUNCTION(6, "SSPM_JTAG_TDO")
+	),
+	MTK_PIN(
+		198, "GPIO198",
+		MTK_EINT_FUNCTION(0, 182),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO198"),
+		MTK_FUNCTION(1, "SCL7")
+	),
+	MTK_PIN(
+		199, "GPIO199",
+		MTK_EINT_FUNCTION(0, 183),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO199"),
+		MTK_FUNCTION(1, "SDA7")
+	),
+	MTK_PIN(
+		200, "GPIO200",
+		MTK_EINT_FUNCTION(0, 184),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO200"),
+		MTK_FUNCTION(1, "URXD1"),
+		MTK_FUNCTION(2, "ADSP_URXD0"),
+		MTK_FUNCTION(3, "TP_URXD1_AO"),
+		MTK_FUNCTION(4, "SSPM_URXD_AO"),
+		MTK_FUNCTION(5, "TP_URXD2_AO"),
+		MTK_FUNCTION(6, "MBISTREADEN_TRIGGER")
+	),
+	MTK_PIN(
+		201, "GPIO201",
+		MTK_EINT_FUNCTION(0, 185),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO201"),
+		MTK_FUNCTION(1, "UTXD1"),
+		MTK_FUNCTION(2, "ADSP_UTXD0"),
+		MTK_FUNCTION(3, "TP_UTXD1_AO"),
+		MTK_FUNCTION(4, "SSPM_UTXD_AO"),
+		MTK_FUNCTION(5, "TP_UTXD2_AO"),
+		MTK_FUNCTION(6, "MBISTWRITEEN_TRIGGER")
+	),
+	MTK_PIN(
+		202, "GPIO202",
+		MTK_EINT_FUNCTION(0, 186),
+		DRV_GRP4,
+		MTK_FUNCTION(0, "GPIO202"),
+		MTK_FUNCTION(1, "PWM_3"),
+		MTK_FUNCTION(2, "CLKM3")
+	),
+	MTK_PIN(
+		203, "GPIO203",
+		MTK_EINT_FUNCTION(0, 187),
+		DRV_GRP4,
+		MTK_FUNCTION(0, NULL)
+	),
+	MTK_PIN(
+		204, "GPIO204",
+		MTK_EINT_FUNCTION(0, 188),
+		DRV_GRP4,
+		MTK_FUNCTION(0, NULL)
+	),
+	MTK_PIN(
+		205, "GPIO205",
+		MTK_EINT_FUNCTION(0, 189),
+		DRV_GRP4,
+		MTK_FUNCTION(0, NULL)
+	),
+	MTK_PIN(
+		206, "GPIO206",
+		MTK_EINT_FUNCTION(0, 190),
+		DRV_GRP4,
+		MTK_FUNCTION(0, NULL)
+	),
+	MTK_PIN(
+		207, "GPIO207",
+		MTK_EINT_FUNCTION(0, 191),
+		DRV_GRP4,
+		MTK_FUNCTION(0, NULL)
+	),
+	MTK_PIN(
+		208, "GPIO208",
+		MTK_EINT_FUNCTION(0, 193),
+		DRV_GRP4,
+		MTK_FUNCTION(0, NULL)
+	),
+	MTK_PIN(
+		209, "GPIO209",
+		MTK_EINT_FUNCTION(0, 194),
+		DRV_GRP4,
+		MTK_FUNCTION(0, NULL)
+	),
+};
+
+#endif /* __PINCTRL-MTK-MT6779_H */
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
