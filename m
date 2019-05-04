Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0387D138B4
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 May 2019 12:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=shUL9N5mTieaD5Pe1eTuH4Baz7pSHvmHDUUXW6MXlu0=; b=dsNLJ2qTVr9SQn
	EVIfNKKuEYfpCBSRlstkvXw8MzNoasQbWmiMbhtBQXpiY4JFV69qOHLo+G5SnDp+Ws+THx5Rk6Wnh
	KU4OGH0gTKTP1fcKQ72f6tJFrcpEs4T1bJ9yfHIwlRzdZJ5ZOKaD494lAc1yOCdq+aGodF3mO5Eao
	fTl76iNKlNiQ5u0V+9ot+uw/C8XPZUGrQAzRaV9d0R/aXKsr1MpxHW7GWclpGiU2tRuiSlTgtjONH
	VpLb7R4icvjOtCo6JRw6Bx4FtJnLynjNCdBHVbX+pV78KDbW9z2mFyzipW0OmM10uMZYAplJLa7Uz
	t690j4j9BCRLV6RDkq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMrp7-00018t-T2; Sat, 04 May 2019 10:23:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMroz-00010w-Hd; Sat, 04 May 2019 10:23:10 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C39828FB586CBB087327;
 Sat,  4 May 2019 18:23:04 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Sat, 4 May 2019
 18:22:54 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nbd@nbd.name>, <lorenzo.bianconi83@gmail.com>, <ryder.lee@mediatek.com>, 
 <royluo@google.com>, <kvalo@codeaurora.org>, <matthias.bgg@gmail.com>
Subject: [PATCH] mt76: mt7615: Make mt7615_irq_handler static
Date: Sat, 4 May 2019 18:22:47 +0800
Message-ID: <20190504102247.43720-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_032309_760561_2626402E 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: YueHaibing <yuehaibing@huawei.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix sparse warning:

drivers/net/wireless/mediatek/mt76/mt7615/pci.c:37:13:
 warning: symbol 'mt7615_irq_handler' was not declared. Should it be static?

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
index 11122bd..c181e59 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
@@ -34,7 +34,7 @@ void mt7615_rx_poll_complete(struct mt76_dev *mdev, enum mt76_rxq_id q)
 	mt7615_irq_enable(dev, MT_INT_RX_DONE(q));
 }
 
-irqreturn_t mt7615_irq_handler(int irq, void *dev_instance)
+static irqreturn_t mt7615_irq_handler(int irq, void *dev_instance)
 {
 	struct mt7615_dev *dev = dev_instance;
 	u32 intr;
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
