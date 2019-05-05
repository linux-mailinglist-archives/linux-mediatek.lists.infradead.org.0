Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC87813DA0
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 May 2019 08:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PpjP54yXhmScjteS9GYW0Y9gP7j9Puv+bODqIoaMEhY=; b=W8rF304oyCy4B1
	5nCrcSzfMagQfaIKEAXrHn41PQZJWCpdUmQH6MRK44OmD4ARs77lHUwERGHSP8uB/V0EMt3HhKozi
	XxC/uA0f4nBPEmVomF+4TfKSTBdshm6BxfOs7noacObO+nsg6tvUSYNbxWhRkrrlKYcWEdC47VyMl
	lAMe1Lb245nfBbhFEQqCzH1aVlPam6APq9KlakPipl2tYK4MSo7hsLl2vt1J3wWFq2CQizShYk7aH
	NrnhABx8WlwsnHcoJZ2OcHjXni2XD0DzmT1kAaSgw8CS3pV2/nbIiRYhyzGdzVH2nllalGW88GZ6d
	5g5gepykPvmnbcBsnd5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNAFC-0008V5-Im; Sun, 05 May 2019 06:03:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNAEx-0008Ot-6C; Sun, 05 May 2019 06:03:13 +0000
X-UUID: 9292b722f7e64d44aacd32709195e68d-20190504
X-UUID: 9292b722f7e64d44aacd32709195e68d-20190504
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 960258048; Sat, 04 May 2019 22:03:02 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 4 May 2019 23:03:01 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 May 2019 14:02:58 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 May 2019 14:02:58 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [next PATCH] usb: mtu3: fix up undefined reference to usb_debug_root
Date: Sun, 5 May 2019 14:02:49 +0800
Message-ID: <2b79c411c5d07a6846967c41803b328e300df8c6.1557035810.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_230311_233347_22D3E09A 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-usb@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
there is an issue:

ld:
drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'

usb_debug_root is only built when CONFIG_USB is enabled, so here drop it
and use NULL instead.

Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/usb/mtu3/mtu3_debugfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
index c96e5dab0a48..3ed666f94dd9 100644
--- a/drivers/usb/mtu3/mtu3_debugfs.c
+++ b/drivers/usb/mtu3/mtu3_debugfs.c
@@ -528,8 +528,7 @@ void ssusb_dr_debugfs_init(struct ssusb_mtk *ssusb)
 
 void ssusb_debugfs_create_root(struct ssusb_mtk *ssusb)
 {
-	ssusb->dbgfs_root =
-		debugfs_create_dir(dev_name(ssusb->dev), usb_debug_root);
+	ssusb->dbgfs_root = debugfs_create_dir(dev_name(ssusb->dev), NULL);
 }
 
 void ssusb_debugfs_remove_root(struct ssusb_mtk *ssusb)
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
