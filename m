Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915961E59B7
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 09:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZlL/1jUmCTwp3GvLkq1B1uY3bV3FU11Hv3xW15DJKIs=; b=b73txmag3pYhgQ
	XMHrK08RCfbML9nw8EuNIZydo+8gos0F03ApS2wCwJaeQkPBnAv/mp1LEMcFggL/rqxdEi5Sf2DoQ
	+gvOYuYvjIjKLAjtrLblJn5S+iqjQVbnaGXozjXB3E3SxAsrgWERu/Nz2Mm2lzbOilXRXwBEGl13N
	hxtc5op5pEMUC+zmFqGJa+kGvNF2/ncu52vTt8P/+jdpEqwjaG39VGuhyyIdxE4uxMCPcPdCjw48x
	m4WxqsaVMlVqMXtSSloKfQQ1Aw63OZXJPbN7Lldr27PXVQ+mujGvgzifEQ809aNjYua+JoZuCBLa6
	Y1hMHdkNmXEqAghpvlGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDFs-0007iw-Vj; Thu, 28 May 2020 07:47:08 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDDO-0002ok-W7; Thu, 28 May 2020 07:44:37 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D494069D223870CB3645;
 Thu, 28 May 2020 15:44:24 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Thu, 28 May 2020 15:44:15 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi83@gmail.com>, Ryder Lee <ryder.lee@mediatek.com>, "Kalle
 Valo" <kvalo@codeaurora.org>, Jakub Kicinski <kuba@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH] mt76: mt7615: Use kmemdup in mt7615_queue_key_update()
Date: Thu, 28 May 2020 07:48:56 +0000
Message-ID: <20200528074856.118279-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_004435_210052_04B4B73F 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: YueHaibing <yuehaibing@huawei.com>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use kmemdup rather than duplicating its implementation

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 2e9e9d3519d7..c32f06c85f0f 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -289,12 +289,11 @@ mt7615_queue_key_update(struct mt7615_dev *dev, enum set_key_cmd cmd,
 	wd->type = MT7615_WTBL_KEY_DESC;
 	wd->sta = msta;
 
-	wd->key.key = kzalloc(key->keylen, GFP_KERNEL);
+	wd->key.key = kmemdup(key->key, key->keylen, GFP_KERNEL);
 	if (!wd->key.key) {
 		kfree(wd);
 		return -ENOMEM;
 	}
-	memcpy(wd->key.key, key->key, key->keylen);
 	wd->key.cipher = key->cipher;
 	wd->key.keyidx = key->keyidx;
 	wd->key.keylen = key->keylen;




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
