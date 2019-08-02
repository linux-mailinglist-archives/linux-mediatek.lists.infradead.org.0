Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B13C7FA65
	for <lists+linux-mediatek@lfdr.de>; Fri,  2 Aug 2019 15:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycXsoPVG9BZnGArhe23YK7Mqa6Sa8CRQrmZuLIAVpqI=; b=BqlgBL96i5ghvE
	C5UlAsn1yZ2in1+ImlV+H2cb8rxHvtkLjzrYvy24eCFvfN0c3Tyw8jSpu9oJ5L2vPiTlUlRVtEnt4
	UgA8OsPlcwm5h0XCtHAA186b19LQbtf9BLm/vE1F6rm7DaQZh8mxQS5YRTpS4MvUQSY41G0GrH+5P
	XmmpRwuoq+OPKO7cyprBOJv66C/VtjyVTm4rZLf3+vO3fn53Og6LSXRZVrJUOb9BBjalPad1DNnxj
	2ZlVa/LfDVqx3Q6+zNIFDxMMFuPI5tawYTrpWEx5+gLCYBzdLrXq7U9fngRFNzrk6/CEz2h18cKtR
	ECi1uGnXeVxPFtWYEQUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXg8-0003Mv-9p; Fri, 02 Aug 2019 13:33:04 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXeZ-0000uP-4K; Fri, 02 Aug 2019 13:31:29 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8921D36A4EFDC54AC5A2;
 Fri,  2 Aug 2019 21:31:25 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 2 Aug 2019
 21:31:19 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <herbert@gondor.apana.org.au>, <lars.persson@axis.com>,
 <jesper.nilsson@axis.com>, <davem@davemloft.net>, <thomas.lendacky@amd.com>,
 <gary.hook@amd.com>, <krzk@kernel.org>, <kgene@kernel.org>,
 <antoine.tenart@bootlin.com>, <matthias.bgg@gmail.com>,
 <jamie@jamieiles.com>, <agross@kernel.org>, <heiko@sntech.de>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <clabbe.montjoie@gmail.com>, <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH -next 08/12] crypto: sunxi-ss - use
 devm_platform_ioremap_resource() to simplify code
Date: Fri, 2 Aug 2019 21:28:05 +0800
Message-ID: <20190802132809.8116-9-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190802132809.8116-1-yuehaibing@huawei.com>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_063127_926001_C76B10DF 
X-CRM114-Status: UNSURE (   8.51  )
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
 drivers/crypto/sunxi-ss/sun4i-ss-core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
index 2e87042..9aa6fe0 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
@@ -225,7 +225,6 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 
 static int sun4i_ss_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	u32 v;
 	int err, i;
 	unsigned long cr;
@@ -240,8 +239,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 	if (!ss)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ss->base = devm_ioremap_resource(&pdev->dev, res);
+	ss->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ss->base)) {
 		dev_err(&pdev->dev, "Cannot request MMIO\n");
 		return PTR_ERR(ss->base);
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
