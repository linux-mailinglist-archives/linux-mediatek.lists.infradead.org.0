Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541C6E7F54
	for <lists+linux-mediatek@lfdr.de>; Tue, 29 Oct 2019 05:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HoB8TKeHsctRdepYP54rnxkY3Wmh3dQ98Ml23Qy3DLM=; b=BEZ86xo/EpIUzo
	iajo9T9XgkVzW3RrTTfOX8vIFNNU2DRquH1YmWfhEEVUjDTr2thEYQmzXPrF2icjBjc3Lvh5oEClh
	VZ/DMio3XfE+mvRweBy0sKOahISE2vlINdGyfLWVZBnFfV0IcvUNbDPNhFqSiSsypMQtH1IjJZoil
	4atuZ5sZPU5pnn1g8yVTQTzjKV+ILesPA4ohuIkBMRMcqttQv0lXuoBJ/441aEHQaGxyK9KpQvtOx
	sfdUMm0MTa9IuRU2LgAAmpFUnoTzE+IWDilwnKAHtRJ/dHH6I9elyOXW4MB2sMVcSKE3it44FPTR8
	wa7Ko+Uxv9tBOtNk9Xtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPJKH-0002HT-S1; Tue, 29 Oct 2019 04:41:49 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPJK0-00024s-DK; Tue, 29 Oct 2019 04:41:34 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5EB26E443D1CB4F03C80;
 Tue, 29 Oct 2019 12:41:23 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Tue, 29 Oct 2019
 12:41:16 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <nbd@nbd.name>, <lorenzo.bianconi83@gmail.com>, <ryder.lee@mediatek.com>, 
 <royluo@google.com>, <kvalo@codeaurora.org>, <davem@davemloft.net>,
 <matthias.bgg@gmail.com>, <linux-wireless@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH] mt76: Remove set but not used variable 'idx'
Date: Tue, 29 Oct 2019 12:48:39 +0800
Message-ID: <1572324519-39669-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_214133_068819_1D67EDF7 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/net/wireless/mediatek/mt76/dma.c: In function mt76_dma_rx_fill:
drivers/net/wireless/mediatek/mt76/dma.c:377:6: warning: variable idx set but not used [-Wunused-but-set-variable]

It is not used since commit 17f1de56df05 ("mt76:
add common code shared between multiple chipsets")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/net/wireless/mediatek/mt76/dma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/dma.c b/drivers/net/wireless/mediatek/mt76/dma.c
index c747eb2..70fab98 100644
--- a/drivers/net/wireless/mediatek/mt76/dma.c
+++ b/drivers/net/wireless/mediatek/mt76/dma.c
@@ -363,7 +363,6 @@ mt76_dma_rx_fill(struct mt76_dev *dev, struct mt76_queue *q)
 	int frames = 0;
 	int len = SKB_WITH_OVERHEAD(q->buf_size);
 	int offset = q->buf_offset;
-	int idx;

 	spin_lock_bh(&q->lock);

@@ -382,7 +381,7 @@ mt76_dma_rx_fill(struct mt76_dev *dev, struct mt76_queue *q)

 		qbuf.addr = addr + offset;
 		qbuf.len = len - offset;
-		idx = mt76_dma_add_buf(dev, q, &qbuf, 1, 0, buf, NULL);
+		mt76_dma_add_buf(dev, q, &qbuf, 1, 0, buf, NULL);
 		frames++;
 	}

--
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
