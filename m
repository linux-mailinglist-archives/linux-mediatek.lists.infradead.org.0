Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0F49E9CF
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 15:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yveDHWwaJFQcK7VIVF2Rbzxe+qtZRChmi4Dp2ooCeCc=; b=sEIH1+6h8gPNd8
	WgOCWphL3M3g1CUS0mQyPcxmGNyUpetx3li+fhSZXLetsXWvCa1twi6VQLB1h6Ae2QwJGN3e8LBnl
	ytKVz7ukfSkM2y18HL041CU/sNyukQJvfWxkNSJ4WxgBguXjQpEeRoyp0V1r2Rsj2YKEC0aZys/i/
	LbRj+ACLLx8xS0FfU9IVpCH9TlSE0A7O0Rpz+zaFcmGZ1fAytwH0XVdVXg3/FInp1Emp2zfhL6i0H
	83jucJyyHIW9+CGjvhuswezmI6pMuPwNtYk6jL7rxKqvZ9mYDJ+AZH03eXb8HObJVzA/xeoL3ucmj
	GlGGyMKp5gylyn23SkBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bmt-0003mF-Fn; Tue, 27 Aug 2019 13:45:31 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bmc-0003bL-Gh; Tue, 27 Aug 2019 13:45:16 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 710D265B4F12DA65DFD3;
 Tue, 27 Aug 2019 21:45:09 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Tue, 27 Aug 2019
 21:45:01 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nbd@nbd.name>, <lorenzo.bianconi83@gmail.com>, <ryder.lee@mediatek.com>, 
 <royluo@google.com>, <kvalo@codeaurora.org>, <davem@davemloft.net>,
 <matthias.bgg@gmail.com>, <swboyd@chromium.org>, <yuehaibing@huawei.com>,
 <weiyongjun1@huawei.com>
Subject: [PATCH] mt76: mt7603: use devm_platform_ioremap_resource() to
 simplify code
Date: Tue, 27 Aug 2019 21:44:45 +0800
Message-ID: <20190827134445.14696-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_064514_721895_30A97272 
X-CRM114-Status: UNSURE (   9.82  )
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
Cc: netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/wireless/mediatek/mt76/mt7603/soc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/soc.c b/drivers/net/wireless/mediatek/mt76/mt7603/soc.c
index c6c1ce6..c22715e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/soc.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/soc.c
@@ -9,7 +9,6 @@
 static int
 mt76_wmac_probe(struct platform_device *pdev)
 {
-	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	struct mt7603_dev *dev;
 	void __iomem *mem_base;
 	struct mt76_dev *mdev;
@@ -20,7 +19,7 @@ mt76_wmac_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	mem_base = devm_ioremap_resource(&pdev->dev, res);
+	mem_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mem_base)) {
 		dev_err(&pdev->dev, "Failed to get memory resource\n");
 		return PTR_ERR(mem_base);
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
