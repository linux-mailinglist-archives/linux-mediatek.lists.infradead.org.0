Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B24640E7
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 08:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ikPItupWHT0/GuUjZkBtgmnAIGt5/mqNplmIYwWtLg=; b=D5JjnnyffqCwQX
	6NQ+5XThz83/f0BRhDAw3XuhIYVliaaFY8jWpBZ92I2khgLf8MkJR2hcCL08ApRaisCx/GvxsSiWi
	MZGSwpH3ZcwzqI91N55WjUctJj/9JZeDLDlQmWX2xgNDerVyxl21/oBUg3M3+UmBo4JYxbuWRSin3
	FaGaYo7R5pbyUtBjWfoJUKbGKLbF2rtvOqzpFa1RAsvzuZ1KKqpBEnUSZs0znRsen9ctY4TKz/YDA
	XSPtSVOHGFMuWp0pqf5L9z4HZ3h2DaQjEFPAKUBp9lCjMuq7aKvf2420fTjj3U2pWVikPxvx0VqB0
	d2B8Nva0AzixgxmC1xNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl5ko-0005VD-Am; Wed, 10 Jul 2019 06:06:58 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl5kW-0005BI-8g; Wed, 10 Jul 2019 06:06:43 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C9567DB7EBE5D5FCFC01;
 Wed, 10 Jul 2019 14:06:23 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Wed, 10 Jul 2019 14:06:13 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg
 <johan.hedberg@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Sean
 Wang" <sean.wang@mediatek.com>
Subject: [PATCH -next] Bluetooth: btusb: Fix error return code in
 btusb_mtk_setup_firmware()
Date: Wed, 10 Jul 2019 06:12:22 +0000
Message-ID: <20190710061222.141247-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_230641_368336_808D4EC8 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-bluetooth@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Wei Yongjun <weiyongjun1@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix to return error code -EINVAL from the error handling
case instead of 0, as done elsewhere in this function.

Fixes: a1c49c434e15 ("Bluetooth: btusb: Add protocol support for MediaTek MT7668U USB devices")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/bluetooth/btusb.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/bluetooth/btusb.c b/drivers/bluetooth/btusb.c
index 3876fee6ad13..5cf0734eb31b 100644
--- a/drivers/bluetooth/btusb.c
+++ b/drivers/bluetooth/btusb.c
@@ -2762,8 +2762,10 @@ static int btusb_mtk_setup_firmware(struct hci_dev *hdev, const char *fwname)
 	fw_size = fw->size;
 
 	/* The size of patch header is 30 bytes, should be skip */
-	if (fw_size < 30)
+	if (fw_size < 30) {
+		err = -EINVAL;
 		goto err_release_fw;
+	}
 
 	fw_size -= 30;
 	fw_ptr += 30;




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
