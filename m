Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764145A85D
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 04:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2IYhS6mK7iuCvJnGlYiz1vYVw89MnEvmfemDUt4MLdk=; b=VyFG97Ecs2NyTZ
	HSMcu6zWGTJzCvYw3j3DD9dq+Kg1stpMytGCSFSSIl01ZtS8XJZo7uSnjpC8iO2TLPQZMMJXhJkWo
	dOXuGOFFok6UtdCNIMq5PJrEn5ie/UexhGCGQJB90uiERL6YgaDiCW5zSRHGtzmQnqA39CS+jQt6e
	hbMMibdNYwhM5/0rZCaDhcDyrP6lPHRKa9+5jb9/XQAYYQpgXYSMFXiaZEAx+2YF1/G9NBRJnyntr
	igmlakpZpqIXpDlkz0Ls884yNnhVlBzpVbDNhLGppN1TV5V7pX6AoABLSFp982u0ES1rI8WGgCVVO
	ggk+p+JKpTFqSLLpFdjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh3Fm-0000BF-JS; Sat, 29 Jun 2019 02:38:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh3FT-0008SX-5z; Sat, 29 Jun 2019 02:37:57 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 02B6616EC55B0AE355EE;
 Sat, 29 Jun 2019 10:37:42 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Sat, 29 Jun 2019 10:37:35 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Stefan Roese <sr@denx.de>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH -next] i2c: mt7621: Fix platform_no_drv_owner.cocci warnings
Date: Sat, 29 Jun 2019 02:44:21 +0000
Message-ID: <20190629024421.177153-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_193756_575315_A93A83CF 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-mediatek@lists.infradead.org, kernel-janitors@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Remove .owner field if calls are used which set it automatically
Generated by: scripts/coccinelle/api/platform_no_drv_owner.cocci

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/i2c/busses/i2c-mt7621.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-mt7621.c b/drivers/i2c/busses/i2c-mt7621.c
index 2a1cb414766d..62df8379bc89 100644
--- a/drivers/i2c/busses/i2c-mt7621.c
+++ b/drivers/i2c/busses/i2c-mt7621.c
@@ -343,7 +343,6 @@ static struct platform_driver mtk_i2c_driver = {
 	.probe		= mtk_i2c_probe,
 	.remove		= mtk_i2c_remove,
 	.driver		= {
-		.owner	= THIS_MODULE,
 		.name	= "i2c-mt7621",
 		.of_match_table = i2c_mtk_dt_ids,
 	},






_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
