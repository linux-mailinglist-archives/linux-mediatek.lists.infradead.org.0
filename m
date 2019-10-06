Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E9CD135
	for <lists+linux-mediatek@lfdr.de>; Sun,  6 Oct 2019 12:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPikbx0IwAKSol+V9iNSDxHIK2kKTevx02spRJwKdak=; b=F2T7S0vN4OhLz0
	GYIIg0IV1NUNplBNlMpd0jh8Ernf3PsipXbqYwTQGIm5woBCr36VVglZDBxPAI+PdCsgO6TGdEsLt
	pYgEXGACVxNdSf6pSRNPaLBjdaGFOvqVVVKzGk7FLvhP+RK5EPLTGz3w/720B8GFWx92LuZT//tnx
	8wbpdQh8oZGaHJUJ5mB3QXDUQo2m6qYHyrIN67lU/isqIt+hUgR2Pm+HvV4i3vTy8H/TDno8Oi/O1
	hP69RhEd3wjrf/n0BKn0DInY/0Xp879I7YyMFRy6kZY7zvKk16vTCKp5tlKZd1bH/l9d3Aeg+TYVm
	YaACmvQ8mfpfEgCPG2Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3y1-0007d8-4e; Sun, 06 Oct 2019 10:40:45 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH3qt-0006pi-LX; Sun, 06 Oct 2019 10:33:25 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C92F8C8BB3CA3C0A97D1;
 Sun,  6 Oct 2019 18:33:20 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 18:33:10 +0800
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
Subject: [PATCH -next 20/34] rtc: pic32: use devm_platform_ioremap_resource()
 to simplify code
Date: Sun, 6 Oct 2019 18:29:39 +0800
Message-ID: <20191006102953.57536-21-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191006102953.57536-1-yuehaibing@huawei.com>
References: <20191006102953.57536-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_033323_886462_8AA46870 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
 drivers/rtc/rtc-pic32.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-pic32.c b/drivers/rtc/rtc-pic32.c
index 17653ed..2b69467 100644
--- a/drivers/rtc/rtc-pic32.c
+++ b/drivers/rtc/rtc-pic32.c
@@ -298,7 +298,6 @@ static int pic32_rtc_remove(struct platform_device *pdev)
 static int pic32_rtc_probe(struct platform_device *pdev)
 {
 	struct pic32_rtc_dev *pdata;
-	struct resource *res;
 	int ret;
 
 	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
@@ -311,8 +310,7 @@ static int pic32_rtc_probe(struct platform_device *pdev)
 	if (pdata->alarm_irq < 0)
 		return pdata->alarm_irq;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pdata->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	pdata->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pdata->reg_base))
 		return PTR_ERR(pdata->reg_base);
 
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
