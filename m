Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FD4FA489
	for <lists+linux-mediatek@lfdr.de>; Wed, 13 Nov 2019 03:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NlCTeYGvUkg/mCtRLwxHEPm4Mkd8n4CEwm2/XCFKoJ4=; b=P4SHuMDfF8rB/v
	XZUL+6yIBSsojGB9iHSD02/tWhBObG/5W6rpSPtKwhzxFg+gbRj5aT9wJ3A+QFbGszvG9jWUYhap9
	gM/2Jj+/D4ES5be/CADa7TuVWMMxPvSCaW5cYvO+QB6PMZrpRb9QO4ByDmyU4okukgQbeDC51SDUD
	yM/nBAAahMXXaxTU5TrHH71/1wy0KepYNKXX0SI69qWvKYRiFOC+0r8MC9/vkkOy7Xklp1Bpesxf0
	KAVL/etQ2fn1g8vA8GDMWsJxEtRssSb6MJoFx7O9cHBey3h2z95uU4OiMo6wPDKL7XhrdrQwqHmHE
	j4h6ypsCizBAcLKHbc/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiFB-0002Ly-1c; Wed, 13 Nov 2019 02:18:53 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiF0-0002CJ-TW; Wed, 13 Nov 2019 02:18:44 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 10EACF2AFB7F7B0C771E;
 Wed, 13 Nov 2019 10:18:34 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Wed, 13 Nov 2019 10:18:27 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Eddie Huang <eddie.huang@mediatek.com>, Sean Wang
 <sean.wang@mediatek.com>, Alessandro Zummo <a.zummo@towertech.it>,
 "Alexandre Belloni" <alexandre.belloni@bootlin.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Josef Friedl <josef.friedl@speed.at>
Subject: [PATCH -next] rtc: mt6397: drop free_irq of devm_ allocated irq
Date: Wed, 13 Nov 2019 02:17:20 +0000
Message-ID: <20191113021720.9527-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_181843_122636_AA329526 
X-CRM114-Status: UNSURE (   9.54  )
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
Cc: linux-rtc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, linux-mediatek@lists.infradead.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The devm_request_threaded_irq function allocates irq that is
released when a driver detaches. Thus, there is no reason to
explicitly call free_irq in probe function.

Fixes: 851b87148aa2 ("rtc: mt6397: improvements of rtc driver")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/rtc/rtc-mt6397.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 5249fc99fd5f..6c585cd1ce10 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -286,15 +286,7 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 
 	rtc->rtc_dev->ops = &mtk_rtc_ops;
 
-	ret = rtc_register_device(rtc->rtc_dev);
-	if (ret)
-		goto out_free_irq;
-
-	return 0;
-
-out_free_irq:
-	free_irq(rtc->irq, rtc);
-	return ret;
+	return rtc_register_device(rtc->rtc_dev);
 }
 
 #ifdef CONFIG_PM_SLEEP




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
