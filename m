Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBADC4C967
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 10:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qq6uNruLa77DLJ0VpRgWWvX+HCJTyFWMMn04uA4wFgk=; b=O5arOgduVly2TW
	It0czrkGpk1ydxtW9w8j5UX7oFZaj70yuXvLOJ0Oft4InI/JegisA5FwPlOjcyYmINvR1q5qWC1Ai
	QgCV3FdRiyVXGeIJtsWNUHc4kze4BDqhlLugx75zBVfejuYLaAv4xu5S+FBzgMCZs5rNbDkYeJO8U
	uUYwKSkVKiMoUxuMkHE83H22J8LZoS8PVdhfPAJf0yrhHY+XALaoXdvi7gmKezVGAuhpK+NYCE41I
	Ttt4M+82FqEPMwcXSYw2idv+udGsSKY6j+r0atVhMvKfYNC/Z+Dlul5Im+ccK8RhBmI2N8cR/WK5I
	d/prfqAE+6HEMLztBl1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsNW-0004RV-Al; Thu, 20 Jun 2019 08:25:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsNS-00041g-Mi; Thu, 20 Jun 2019 08:25:04 +0000
X-UUID: 87090dbf2e0e45d8aa3fd84faa2e0e5c-20190620
X-UUID: 87090dbf2e0e45d8aa3fd84faa2e0e5c-20190620
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1072327297; Thu, 20 Jun 2019 00:24:57 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 01:24:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 16:24:53 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Jun 2019 16:24:53 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: [v2 PATCH] usb: dwc3: remove unused @lock member of dwc3_ep struct
Date: Thu, 20 Jun 2019 16:24:48 +0800
Message-ID: <674c9b71735b3fd58e9a8599ab9ea05ad41a1a62.1561018843.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_012502_776162_03F454F8 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The member @lock of dwc3_ep struct is only initialized,
and not used elsewhere, so remove it.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2: fix typo of dwc3_ep in commit log
---
 drivers/usb/dwc3/core.h   | 2 --
 drivers/usb/dwc3/gadget.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index f19cbeb01087..72d28cb14bdf 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -649,7 +649,6 @@ struct dwc3_event_buffer {
  * @cancelled_list: list of cancelled requests for this endpoint
  * @pending_list: list of pending requests for this endpoint
  * @started_list: list of started requests on this endpoint
- * @lock: spinlock for endpoint request queue traversal
  * @regs: pointer to first endpoint register
  * @trb_pool: array of transaction buffers
  * @trb_pool_dma: dma address of @trb_pool
@@ -677,7 +676,6 @@ struct dwc3_ep {
 	struct list_head	pending_list;
 	struct list_head	started_list;
 
-	spinlock_t		lock;
 	void __iomem		*regs;
 
 	struct dwc3_trb		*trb_pool;
diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index d67655384eb2..7f75da30caba 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -2251,8 +2251,6 @@ static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
 		dep->endpoint.comp_desc = NULL;
 	}
 
-	spin_lock_init(&dep->lock);
-
 	if (num == 0)
 		ret = dwc3_gadget_init_control_endpoint(dep);
 	else if (direction)
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
