Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958377FA70
	for <lists+linux-mediatek@lfdr.de>; Fri,  2 Aug 2019 15:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UW92HzkECNOcQuLlV9PDuay5F5E4pzhMqt+5GAgx14U=; b=sF0ErP0sxJRad4
	uaMS4dT+S8Ula0g5yrM/J7gA09FTjsVTZJa8lYn3ucIeoAo15Pert/SCnFNkIqnw/KNWys/BlZLvf
	rI2Y/5Dgh+k2nTJSD5HI9sPD6QTeo8i9PztzP7iF7j5jjPllpHaV6KSSUIO9YHYgQZrxezdcVcjHi
	BAISh93qloO64g2ENToTU3fJj8OVjSJmfHKdigRpDlHFzC5AH5ehhC5GFe0P/hJT4LD/syjT5zz4W
	bKjC7tljCm738rAycWysGqFE5hwRa5XoRFbNqA5TiofI2nyiTCYri2W7AmqBThlYny92fAffkua5R
	UXCXzml1rH3cSaKuNx7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXgk-0004QX-3Y; Fri, 02 Aug 2019 13:33:42 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXek-00017q-29; Fri, 02 Aug 2019 13:31:39 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A59F7FD3EBDACD2476D6;
 Fri,  2 Aug 2019 21:31:35 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 2 Aug 2019
 21:31:26 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <herbert@gondor.apana.org.au>, <lars.persson@axis.com>,
 <jesper.nilsson@axis.com>, <davem@davemloft.net>, <thomas.lendacky@amd.com>,
 <gary.hook@amd.com>, <krzk@kernel.org>, <kgene@kernel.org>,
 <antoine.tenart@bootlin.com>, <matthias.bgg@gmail.com>,
 <jamie@jamieiles.com>, <agross@kernel.org>, <heiko@sntech.de>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <clabbe.montjoie@gmail.com>, <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH -next 11/12] crypto: qce - use
 devm_platform_ioremap_resource() to simplify code
Date: Fri, 2 Aug 2019 21:28:08 +0800
Message-ID: <20190802132809.8116-12-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190802132809.8116-1-yuehaibing@huawei.com>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_063138_294045_84E6F393 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
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
 drivers/crypto/qce/core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index ef1d74e..08d4ce3 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -167,7 +167,6 @@ static int qce_crypto_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct qce_device *qce;
-	struct resource *res;
 	int ret;
 
 	qce = devm_kzalloc(dev, sizeof(*qce), GFP_KERNEL);
@@ -177,8 +176,7 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	qce->dev = dev;
 	platform_set_drvdata(pdev, qce);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	qce->base = devm_ioremap_resource(&pdev->dev, res);
+	qce->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(qce->base))
 		return PTR_ERR(qce->base);
 
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
