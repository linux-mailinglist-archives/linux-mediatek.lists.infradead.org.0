Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7745D7798D
	for <lists+linux-mediatek@lfdr.de>; Sat, 27 Jul 2019 17:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LDIr8kt6dSqVAPeGrZcD86oTZOIKJcPGPsjHwZ2gT8=; b=I8p8TGmb9q7tWf
	+MQoLQKr92er9EBqUC9FBj1nwVf2Zp5YgpNPlDBC1n4qr/oFHYbjn28fp+fISIfCj9dnE97Hr5mA3
	LzpJzpJAsqdAgCSo1oY0VId3R9VeGFadptLSJqLYw5zEVSr6nHoPHUlIbgJVRksO1yL/p3AvQhZ26
	Y3j36MA+ktH66V1x7CbSN2GbRyE3h8iig5XM3E5O5Qg3UXwNQPIvIcMSXvY4O9ajTNX3r5m61CXtS
	mZM55+EKMGbZ+l5gnjszZiEXLnicN2LkhcJ4bKiwpAvccm3lI+oATaj8jClbpdKByvq/brAfJfpUr
	A9Z521Qb7nvrglqyIKlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrOKv-0005jW-1H; Sat, 27 Jul 2019 15:10:17 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrOKG-00041g-OO; Sat, 27 Jul 2019 15:09:38 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1784322AD0B011E65047;
 Sat, 27 Jul 2019 23:09:34 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Sat, 27 Jul 2019
 23:09:27 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <paul@crapouillou.net>,
 <timur@kernel.org>, <nicoleotsuka@gmail.com>, <Xiubo.Lee@gmail.com>,
 <festevam@gmail.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <linux-imx@nxp.com>, <matthias.bgg@gmail.com>,
 <jbrunet@baylibre.com>, <khilman@baylibre.com>, <daniel@zonque.org>,
 <haojian.zhuang@gmail.com>, <robert.jarzmik@free.fr>, <baohua@kernel.org>,
 <olivier.moysan@st.com>, <arnaud.pouliquen@st.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <mripard@kernel.org>, 
 <wens@csie.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <yamada.masahiro@socionext.com>, <michal.simek@xilinx.com>,
 <jcmvbkbc@gmail.com>
Subject: [PATCH -next 02/34] ASoC: tegra: use devm_platform_ioremap_resource()
 to simplify code
Date: Sat, 27 Jul 2019 23:07:06 +0800
Message-ID: <20190727150738.54764-3-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190727150738.54764-1-yuehaibing@huawei.com>
References: <20190727150738.54764-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_080937_351063_09C4A853 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-xtensa@linux-xtensa.org, alsa-devel@alsa-project.org,
 gregkh@linuxfoundation.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/tegra/tegra30_i2s.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/tegra/tegra30_i2s.c b/sound/soc/tegra/tegra30_i2s.c
index ac6983c..e6d548f 100644
--- a/sound/soc/tegra/tegra30_i2s.c
+++ b/sound/soc/tegra/tegra30_i2s.c
@@ -368,7 +368,6 @@ static int tegra30_i2s_platform_probe(struct platform_device *pdev)
 	struct tegra30_i2s *i2s;
 	const struct of_device_id *match;
 	u32 cif_ids[2];
-	struct resource *mem;
 	void __iomem *regs;
 	int ret;
 
@@ -406,8 +405,7 @@ static int tegra30_i2s_platform_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	regs = devm_ioremap_resource(&pdev->dev, mem);
+	regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(regs)) {
 		ret = PTR_ERR(regs);
 		goto err_clk_put;
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
