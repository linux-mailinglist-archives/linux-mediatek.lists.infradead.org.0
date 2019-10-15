Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39B9D752B
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 13:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FFMImCJ7L9//ZIom8LAhT3YqLFKjpnezKOJ88rQWS4o=; b=RXZf3omIo3c0z1
	zwr6bIGdVS9hxITczKCLUkMG89P2mXU09s0B8QGFD9Rh8mQCDShZ7PmII/Xzz3m5+ohsPUKG5g9y0
	VH/ABv0IT0AJVMIc9z/yDUD0jzghNpsvNBvoM+cGfkLFrpLt2tl2RSFr23cmYqQDaFjuXOnY6VhLl
	q214ixJvsxi5ynMyKe7G6RW68CFWCKQsdRd+Mb6kTd2tiW/PJl2F315dijlrDoDzKPE1yLNglNoHl
	4dnhxguc2QD/3aKZLPoUNkgHQK3t10ze33kFVqJcpoeABP7FbfkOgYvmfKZJ2vgMfgpO0Tuei10F0
	zk5eOBMfcmt/BohoDQpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKL8Q-0006PM-PY; Tue, 15 Oct 2019 11:37:02 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKL8H-0006H9-4p; Tue, 15 Oct 2019 11:36:54 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0CEA856F593A920B9B6C;
 Tue, 15 Oct 2019 19:36:47 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Tue, 15 Oct 2019
 19:36:36 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <matthias.bgg@gmail.com>,
 <kstewart@linuxfoundation.org>, <allison@lohutok.net>,
 <yuehaibing@huawei.com>, <tglx@linutronix.de>, <weiyi.lu@mediatek.com>
Subject: [PATCH -next] clk: mediatek: mt2712: use
 devm_platform_ioremap_resource() to simplify code
Date: Tue, 15 Oct 2019 19:26:44 +0800
Message-ID: <20191015112644.19816-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_043653_362798_46195A33 
X-CRM114-Status: UNSURE (   7.84  )
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
Cc: linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/clk/mediatek/clk-mt2712.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt2712.c b/drivers/clk/mediatek/clk-mt2712.c
index 354c26f..a3bd9a1 100644
--- a/drivers/clk/mediatek/clk-mt2712.c
+++ b/drivers/clk/mediatek/clk-mt2712.c
@@ -1306,9 +1306,8 @@ static int clk_mt2712_top_probe(struct platform_device *pdev)
 	int r, i;
 	struct device_node *node = pdev->dev.of_node;
 	void __iomem *base;
-	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base)) {
 		pr_err("%s(): ioremap failed\n", __func__);
 		return PTR_ERR(base);
@@ -1394,9 +1393,8 @@ static int clk_mt2712_mcu_probe(struct platform_device *pdev)
 	int r;
 	struct device_node *node = pdev->dev.of_node;
 	void __iomem *base;
-	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base)) {
 		pr_err("%s(): ioremap failed\n", __func__);
 		return PTR_ERR(base);
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
