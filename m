Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C95CD15A
	for <lists+linux-mediatek@lfdr.de>; Sun,  6 Oct 2019 12:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGQouoWORxSIWstDHPPzLjHicoTnXERLRrLFoK0AI80=; b=TMXHJyqddVhhRC
	E4qycR8lsA4bPN9rmX3m0lXHPrZlvDx58XMGbu/RIqIddqaJdaVCm+keIHdK5rEJLLHSZOCpQuxua
	KgmBVZST0D9DN5pkcNSYb2rIpF85eIzKtGmVjEqxtWeaCWNKSF/gZeRc9RVD8UmiTNLrq1RLM4tva
	hJ1jBVzdxvg4iyu8TbvfbNTY5lhXuME7ASZ8eDvDR1D9zDuNSlu3blRDzZGXHIy1u/Y3gEiARpR11
	ogo5cH5XjYfY9CE0/Mq1MpBCfuX8x/ZcDMPm5uWChKFdutbkvyJk+C3Ywgvq+XsSCvZY4uguybihl
	zqEZHWNKofoFUJqbhc8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH42E-0003zu-G7; Sun, 06 Oct 2019 10:45:06 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH3rc-0007Wh-OA; Sun, 06 Oct 2019 10:34:10 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 18EA8E99386BAB02B13E;
 Sun,  6 Oct 2019 18:34:07 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 18:33:59 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>, <joel@jms.id.au>, 
 <andrew@aj.id.au>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <computersforpeace@gmail.com>,
 <gregory.0xf0@gmail.com>, <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <linus.walleij@linaro.org>,
 <baruch@tkos.co.il>, <paul@crapouillou.net>, <vz@mleia.com>,
 <slemieux.tyco@gmail.com>, <khilman@baylibre.com>,
 <eddie.huang@mediatek.com>, <sean.wang@mediatek.com>,
 <matthias.bgg@gmail.com>, <patrice.chotard@st.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <mripard@kernel.org>, 
 <wens@csie.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <linux@prisktech.co.nz>, <michal.simek@xilinx.com>
Subject: [PATCH -next 33/34] rtc: xgene: use devm_platform_ioremap_resource()
 to simplify code
Date: Sun, 6 Oct 2019 18:29:52 +0800
Message-ID: <20191006102953.57536-34-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191006102953.57536-1-yuehaibing@huawei.com>
References: <20191006102953.57536-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_033408_969953_5BDF462A 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/rtc/rtc-xgene.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-xgene.c b/drivers/rtc/rtc-xgene.c
index 9683fbf..603c4e4 100644
--- a/drivers/rtc/rtc-xgene.c
+++ b/drivers/rtc/rtc-xgene.c
@@ -137,7 +137,6 @@ static irqreturn_t xgene_rtc_interrupt(int irq, void *id)
 static int xgene_rtc_probe(struct platform_device *pdev)
 {
 	struct xgene_rtc_dev *pdata;
-	struct resource *res;
 	int ret;
 	int irq;
 
@@ -147,8 +146,7 @@ static int xgene_rtc_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, pdata);
 	pdata->dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pdata->csr_base = devm_ioremap_resource(&pdev->dev, res);
+	pdata->csr_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pdata->csr_base))
 		return PTR_ERR(pdata->csr_base);
 
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
