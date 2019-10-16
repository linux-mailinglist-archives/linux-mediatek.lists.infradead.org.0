Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEFFD8BFB
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 10:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y72C6cyxs+8gpRfk8XQ+w7PylI/ZJwhiLeIVA/p9xO4=; b=iJbKREyu9UbXuY
	chGPtHUfrm2/hcoSUUj9YM1/6FS3ImJIyRa4GoPLviA9mpYlrjrcS1TcYL1LYh+z0nvbyjxg/215p
	E72MtcBO6XGzj4M8jYGAz8jQNwv/I4FEAJIZpUx2L0rOOssdQ28yHgSNp6dtYNZBhIQqZDSc8G8dY
	VSlj7Q7mblFfQRpb4OFu7Pmv3J1plyZl4k8wkWe0ExMCv/vkccaI0XT1IfjIyoBeKstuUkfu45BHr
	fvtyMVosHKZqefN+WbVecaGcf4MH3mA2B3b2rkcFRoQoYr8nWZzv33iIjxxdDOVHFIYnBXzLYk9pQ
	I091xiS6YmorH5ReosIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKf9l-0007bP-Mg; Wed, 16 Oct 2019 08:59:45 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKf9h-0007Zz-FJ
 for linux-mediatek@lists.infradead.org; Wed, 16 Oct 2019 08:59:43 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0D8C0BE2ADF6A9344CCD;
 Wed, 16 Oct 2019 16:59:38 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 16:59:30 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <matthias.bgg@gmail.com>,
 <bhanusreemahesh@gmail.com>, <jbi.octave@gmail.com>, <swboyd@chromium.org>,
 <yuehaibing@huawi.com>, <sergio.paracuellos@gmail.com>,
 <puranjay12@gmail.com>, <arma2ff0@gmail.com>, <kimbrownkd@gmail.com>
Subject: [PATCH -next] staging: mt7621-dma: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 16 Oct 2019 16:58:33 +0800
Message-ID: <20191016085833.26376-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_015941_687542_9F5DD070 
X-CRM114-Status: UNSURE (   7.48  )
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.ifradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d964642..4d541c4 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -650,7 +650,6 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	struct mtk_hsdma_chan *chan;
 	struct mtk_hsdam_engine *hsdma;
 	struct dma_device *dd;
-	struct resource *res;
 	int ret;
 	int irq;
 	void __iomem *base;
@@ -667,8 +666,7 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	if (!hsdma)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 	hsdma->base = base + HSDMA_BASE_OFFSET;
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
