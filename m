Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F572118DE
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 14:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMzaCMNC/JrysxNNmtKm90vdYKcr36O/9sALFxXvqJg=; b=SOCRSBaHrnt18y
	p8mhTsyob8IsAuQx8b21FUY5vjK4PLT9ctZcQZkw2WlUwxVfcRr473iOOO/mn3eEnfo7OhApqc8fq
	HztG95Qu8ubCvoHYBNLDaIP68EfdSePOKHglX8nydEC3jumRTi3K5dJKs3NvuYKcjBPElBWOtrR8c
	cBntben8hL7tuIe9NK9diZJqNY1DvszsxFlNM6ZC0bXuZayZ2uxCv0sDNugKvs8Vo+TQ8ljl2iuHa
	v8LXYFt4GwzjsFl4USYbQYqNU/Atz/IkYIuXJ88ato/hr0rnlTlL3lr8wkf1SABkJ3CX8NzMBsR/S
	1PJDz7Fp9CAGmpo1dRjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAgC-00062U-2l; Thu, 02 May 2019 12:19:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAfp-0005Xt-7W
 for linux-mediatek@lists.infradead.org; Thu, 02 May 2019 12:18:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id s15so3007715wra.12
 for <linux-mediatek@lists.infradead.org>; Thu, 02 May 2019 05:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GgusURE/W8WQalA33cEWfpRjVdXD5wgJb44vpMIQJIA=;
 b=WjOwbub2CHS1lEAR4PJpFWurl6WPeh5AUPx3XVhxTlB6Hx86nhqpr263GBgcxcM371
 oyHujRiVkACMN1FmTMuu7oidpncrUfL4EK/riYLsKOaYPbYTy7/nFKhRrjFoP/zJraWF
 bz57mAh+V/aGF9idDq1WN/BXsmcjYfS0wLI7EZsoUxJxQ7u7dK9fBCELS9QnTvftpObc
 eLlBZDIVmoH4/Fvi11y80wkptE+q88nT8V6Se+GdtbVr9lw063HhUsOSSShj+cts5QCA
 CtveCcOCx65P9jYCKjp0ajcbpQSbVCyJyRTj04XI4KH8fGKae6luNAC+Wye4E/SmHYsi
 ZLaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GgusURE/W8WQalA33cEWfpRjVdXD5wgJb44vpMIQJIA=;
 b=mRzj5qvo8yjbfpgvWuJ6fRzIV+i2t2KUIQQW9YhZ5jkI0pCVg/y4cT4JO0b3BGKpQk
 I/UtxcfjjTQKaqPly9tI29+stOAmQgxIkIRl5XJCJeTnuKOn1gkAwOwG+BzmwlXDXNmH
 kWwThDqYoW3J1byDDoNuXBZ0Q1xKFsM8vIOxdyQb/9dIucUrLWb/GvMZwVrZYtyH7Hw7
 To0IuJtGGGZn/AHoegpmFPgbxheqPM4i910QlGgcCMBKb+VazCttwIOZTFk/5G3rVwpW
 Xjr9xlbz7iQN54w/ajvck8dzK1VK0Mt1dNgoF2XNJ5q5VTiULua6mbsVMCzqESiQytaa
 Ul3A==
X-Gm-Message-State: APjAAAU5zy2986s/GrSVKRxfrD9kJUTbJ+RqDVjbsKVGBmakNGurzmLN
 2QAvESMQV2S8Yw4HgwiifK1rQw==
X-Google-Smtp-Source: APXvYqzI3XtuiIeyOUfzg89EuKrmLgDXyD/nCaZXAAQHkUUw4+T5rfoLd5ak94G/nvhN2sm24ARLVw==
X-Received: by 2002:a5d:55cc:: with SMTP id i12mr2560960wrw.179.1556799527780; 
 Thu, 02 May 2019 05:18:47 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id f6sm4392842wmh.13.2019.05.02.05.18.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:18:47 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 sboyd@kernel.org, matthias.bgg@gmail.com, wenzhen.yu@mediatek.com,
 sean.wang@mediatek.com, ryder.lee@mediatek.com
Subject: [PATCH 2/2] clk: mediatek: add audsys clock driver for MT8516
Date: Thu,  2 May 2019 14:18:43 +0200
Message-Id: <20190502121843.14493-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121843.14493-1-fparent@baylibre.com>
References: <20190502121843.14493-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051849_264640_73E93358 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add audsys clock driver for MediaTek MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/clk/mediatek/Kconfig          |  6 +++
 drivers/clk/mediatek/Makefile         |  1 +
 drivers/clk/mediatek/clk-mt8516-aud.c | 65 +++++++++++++++++++++++++++
 3 files changed, 72 insertions(+)
 create mode 100644 drivers/clk/mediatek/clk-mt8516-aud.c

diff --git a/drivers/clk/mediatek/Kconfig b/drivers/clk/mediatek/Kconfig
index 1e951ae49982..f9cd45e7760a 100644
--- a/drivers/clk/mediatek/Kconfig
+++ b/drivers/clk/mediatek/Kconfig
@@ -225,4 +225,10 @@ config COMMON_CLK_MT8516
 	help
 	  This driver supports MediaTek MT8516 clocks.
 
+config COMMON_CLK_MT8516_AUDSYS
+	bool "Clock driver for MediaTek MT8516 audsys"
+	depends on COMMON_CLK_MT8516
+	help
+	  This driver supports MediaTek MT8516 audsys clocks.
+
 endmenu
diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefile
index c4f413ef5aad..a2557b0c9273 100644
--- a/drivers/clk/mediatek/Makefile
+++ b/drivers/clk/mediatek/Makefile
@@ -32,3 +32,4 @@ obj-$(CONFIG_COMMON_CLK_MT7629_HIFSYS) += clk-mt7629-hif.o
 obj-$(CONFIG_COMMON_CLK_MT8135) += clk-mt8135.o
 obj-$(CONFIG_COMMON_CLK_MT8173) += clk-mt8173.o
 obj-$(CONFIG_COMMON_CLK_MT8516) += clk-mt8516.o
+obj-$(CONFIG_COMMON_CLK_MT8516_AUDSYS) += clk-mt8516-aud.o
diff --git a/drivers/clk/mediatek/clk-mt8516-aud.c b/drivers/clk/mediatek/clk-mt8516-aud.c
new file mode 100644
index 000000000000..6ab3a06dc9d5
--- /dev/null
+++ b/drivers/clk/mediatek/clk-mt8516-aud.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: James Liao <jamesjj.liao@mediatek.com>
+ *         Fabien Parent <fparent@baylibre.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+
+#include "clk-mtk.h"
+#include "clk-gate.h"
+
+#include <dt-bindings/clock/mt8516-clk.h>
+
+static const struct mtk_gate_regs aud_cg_regs = {
+	.set_ofs = 0x0,
+	.clr_ofs = 0x0,
+	.sta_ofs = 0x0,
+};
+
+#define GATE_AUD(_id, _name, _parent, _shift) {	\
+		.id = _id,			\
+		.name = _name,			\
+		.parent_name = _parent,		\
+		.regs = &aud_cg_regs,		\
+		.shift = _shift,		\
+		.ops = &mtk_clk_gate_ops_no_setclr,		\
+	}
+
+static const struct mtk_gate aud_clks[] __initconst = {
+	GATE_AUD(CLK_AUD_AFE, "aud_afe", "clk26m_ck", 2),
+	GATE_AUD(CLK_AUD_I2S, "aud_i2s", "i2s_infra_bck", 6),
+	GATE_AUD(CLK_AUD_22M, "aud_22m", "rg_aud_engen1", 8),
+	GATE_AUD(CLK_AUD_24M, "aud_24m", "rg_aud_engen2", 9),
+	GATE_AUD(CLK_AUD_INTDIR, "aud_intdir", "rg_aud_spdif_in", 15),
+	GATE_AUD(CLK_AUD_APLL2_TUNER, "aud_apll2_tuner", "rg_aud_engen2", 18),
+	GATE_AUD(CLK_AUD_APLL_TUNER, "aud_apll_tuner", "rg_aud_engen1", 19),
+	GATE_AUD(CLK_AUD_HDMI, "aud_hdmi", "apll12_div4", 20),
+	GATE_AUD(CLK_AUD_SPDF, "aud_spdf", "apll12_div6", 21),
+	GATE_AUD(CLK_AUD_ADC, "aud_adc", "aud_afe", 24),
+	GATE_AUD(CLK_AUD_DAC, "aud_dac", "aud_afe", 25),
+	GATE_AUD(CLK_AUD_DAC_PREDIS, "aud_dac_predis", "aud_afe", 26),
+	GATE_AUD(CLK_AUD_TML, "aud_tml", "aud_afe", 27),
+};
+
+static void __init mtk_audsys_init(struct device_node *node)
+{
+	struct clk_onecell_data *clk_data;
+	int r;
+
+	clk_data = mtk_alloc_clk_data(CLK_AUD_NR_CLK);
+
+	mtk_clk_register_gates(node, aud_clks, ARRAY_SIZE(aud_clks), clk_data);
+
+	r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
+	if (r)
+		pr_err("%s(): could not register clock provider: %d\n",
+			__func__, r);
+
+}
+CLK_OF_DECLARE(mtk_audsys, "mediatek,mt8516-audsys", mtk_audsys_init);
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
