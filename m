Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B8116FCC
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 06:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VE16MZ+vsM7PjWjyzdVn1iWT11QYPyyuWUMwpJPdMXw=; b=B9T1c+PLc/tdEL
	vUkDmFy0uCqsuaVOxG5KGAvtZFL0qRFzBXXzRqNeRKCIyzHmU6X/AzEE+NW3IZBiZZe6zSN/u60iA
	RaH/YwThV9YeO3DE4xUg5s0W3gQc7WBpMhEyT992uqqGbN/boNmR4vIlQWm1Vvj+bjA6EN22SAyhc
	C0Dvqur94UOn8Iko55CRf+CBxHfcYhbfvhPzDEJQLV1SXOysOdHRjdGWMLGfo8yNJ2iLRD00fnT/R
	jjB0il3tytWZxLoOfEKH2pzKb7uYLxU4Ampf2ZImm+7EwjbGr9P7hPLgQV2KapX2gyUHjyAJRsKgy
	2Wcpi0KncqiYvM1H9qTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODl0-0007JM-F0; Wed, 08 May 2019 04:00:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODku-0007Hj-RG
 for linux-mediatek@lists.infradead.org; Wed, 08 May 2019 04:00:34 +0000
X-UUID: 049bd0bfd4f24a578e40e49c462696c5-20190507
X-UUID: 049bd0bfd4f24a578e40e49c462696c5-20190507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1761341131; Tue, 07 May 2019 19:59:57 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 20:59:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 11:59:49 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 8 May 2019 11:59:49 +0800
From: <neal.liu@mediatek.com>
To: <mpm@selenic.com>, <herbert@gondor.apana.org.au>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH 3/3] hwrng: add mt67xx-rng driver
Date: Wed, 8 May 2019 11:58:57 +0800
Message-ID: <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
References: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_210032_885058_D5C772F2 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Neal Liu <neal.liu@mediatek.com>,
 linux-crypto@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Neal Liu <neal.liu@mediatek.com>

For Mediatek SoCs on ARMv8 with TrustZone enabled, peripherals like
entropy sources is not accessible from normal world (linux) and
rather accessible from secure world (ATF/TEE) only. This driver aims
to provide a generic interface to ATF rng service.

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 drivers/char/hw_random/Kconfig      |   16 ++++++
 drivers/char/hw_random/Makefile     |    1 +
 drivers/char/hw_random/mt67xx-rng.c |  104 +++++++++++++++++++++++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 drivers/char/hw_random/mt67xx-rng.c

diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
index 25a7d8f..98751d3 100644
--- a/drivers/char/hw_random/Kconfig
+++ b/drivers/char/hw_random/Kconfig
@@ -398,6 +398,22 @@ config HW_RANDOM_MTK
 
 	  If unsure, say Y.
 
+config HW_RANDOM_MT67XX
+	tristate "Mediatek MT67XX Random Number Generator support"
+	depends on HW_RANDOM
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	default HW_RANDOM
+	help
+	  This driver provides kernel-side support for the Random Number
+	  Generator hardware found on Mediatek MT67xx SoCs. The difference
+	  with mtk-rng is the Random Number Generator hardware is secure
+	  access only.
+
+	  To compile this driver as a module, choose M here. the
+	  module will be called mt67xx-rng.
+
+	  If unsure, say Y.
+
 config HW_RANDOM_S390
 	tristate "S390 True Random Number Generator support"
 	depends on S390
diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
index 7c9ef4a..4be95ab 100644
--- a/drivers/char/hw_random/Makefile
+++ b/drivers/char/hw_random/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
 obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
 obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
 obj-$(CONFIG_HW_RANDOM_MTK)	+= mtk-rng.o
+obj-$(CONFIG_HW_RANDOM_MT67XX) += mt67xx-rng.o
 obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
 obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
 obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
diff --git a/drivers/char/hw_random/mt67xx-rng.c b/drivers/char/hw_random/mt67xx-rng.c
new file mode 100644
index 0000000..e70cbbe
--- /dev/null
+++ b/drivers/char/hw_random/mt67xx-rng.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ */
+
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/hw_random.h>
+#include <linux/of.h>
+#include <linux/arm-smccc.h>
+#include <linux/soc/mediatek/mtk_sip_svc.h>
+
+#define PFX			KBUILD_MODNAME ": "
+#define MT67XX_RNG_MAGIC	0x74726e67
+#define SMC_RET_NUM		4
+
+struct mt67xx_rng_priv {
+	struct hwrng rng;
+};
+
+
+static void __rng_sec_read(uint32_t *val)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
+		      MT67XX_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
+
+	val[0] = res.a0;
+	val[1] = res.a1;
+	val[2] = res.a2;
+	val[3] = res.a3;
+}
+
+static int mt67xx_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
+{
+	int i, retval = 0;
+	uint32_t val[4] = {0};
+	size_t get_rnd_size = sizeof(u32) * SMC_RET_NUM;
+
+	if (!buf) {
+		pr_err("%s, buf is NULL\n", __func__);
+		return -EFAULT;
+	}
+
+	while (max >= get_rnd_size) {
+		__rng_sec_read(val);
+
+		for (i = 0; i < SMC_RET_NUM; i++) {
+			*(u32 *)buf = val[i];
+			buf += sizeof(u32);
+		}
+
+		retval += get_rnd_size;
+		max -= get_rnd_size;
+	}
+
+	return retval;
+}
+
+static int mt67xx_rng_probe(struct platform_device *pdev)
+{
+	int ret;
+	struct mt67xx_rng_priv *priv;
+
+	pr_info(PFX "driver registered\n");
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->rng.name = KBUILD_MODNAME;
+	priv->rng.read = mt67xx_rng_read;
+	priv->rng.priv = (unsigned long)&pdev->dev;
+	priv->rng.quality = 900;
+
+	ret = devm_hwrng_register(&pdev->dev, &priv->rng);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register rng device: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id mt67xx_rng_match[] = {
+	{ .compatible = "mediatek,mt67xx-rng", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, mt67xx_rng_match);
+
+static struct platform_driver mt67xx_rng_driver = {
+	.probe = mt67xx_rng_probe,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.owner = THIS_MODULE,
+		.of_match_table = mt67xx_rng_match,
+	},
+};
+
+module_platform_driver(mt67xx_rng_driver);
+
+MODULE_DESCRIPTION("Mediatek MT67XX Random Number Generator Driver");
+MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
+MODULE_LICENSE("GPL");
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
