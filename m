Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8961D0AE8
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 11:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4jhL/0e1/i7dSAspLhwZ7Jg2P0B8t2d6tqX6bcYRq+g=; b=UPSAEd3PzpsSbO
	Z4IH26vcad5gzivvFHTALEUQEPVWcGOtYf7IifIRImtOD0iatIr8HWoru0ID3PgBiWjNoDjLp5tNR
	6sUCeLG0le6Mxu2Gqxrt6I4oEfJtCOD3wXkebHDOTk2VNU4Zr77e7QSnblc7vP1Cp4eGKu/JbSJcP
	O+rZWABpKGEnSTxsGOAjs1sY24/Wlm7xqA7/MB/pJSyUdxONX4d+SmITK0TYpO8oheW4Sf5ZbJJ/L
	dpPR/GnRT309VkrZrAeVeH7cfyZin3uqZF+ri//0EsfLIl0T0STZyCZXWDfI/KgEcVzy7asO4BCE1
	gmljhk2ieSPMEuk1SicA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI88x-0006Qn-Ax; Wed, 09 Oct 2019 09:20:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI88o-0006Ka-8G; Wed, 09 Oct 2019 09:20:19 +0000
X-UUID: 7fb7761674a7438a83d7e0cf86b430cc-20191009
X-UUID: 7fb7761674a7438a83d7e0cf86b430cc-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1101275733; Wed, 09 Oct 2019 01:20:16 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:20:11 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:05:04 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:05:03 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] usb: mtu3: add a new function to do status stage
Date: Wed, 9 Oct 2019 17:04:59 +0800
Message-ID: <1570611900-7112-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 78F6DC5777EFE46E7CDDFEAA2B0951DD3B205190962CA1F84679D165410B24462000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_022018_298779_B3A94A78 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Exact a new static function to do status stage

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/usb/mtu3/mtu3_gadget_ep0.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/mtu3/mtu3_gadget_ep0.c b/drivers/usb/mtu3/mtu3_gadget_ep0.c
index 4da216c99726..df3fd055792f 100644
--- a/drivers/usb/mtu3/mtu3_gadget_ep0.c
+++ b/drivers/usb/mtu3/mtu3_gadget_ep0.c
@@ -153,6 +153,15 @@ static void ep0_stall_set(struct mtu3_ep *mep0, bool set, u32 pktrdy)
 		set ? "SEND" : "CLEAR", decode_ep0_state(mtu));
 }
 
+static void ep0_do_status_stage(struct mtu3 *mtu)
+{
+	void __iomem *mbase = mtu->mac_base;
+	u32 value;
+
+	value = mtu3_readl(mbase, U3D_EP0CSR) & EP0_W1C_BITS;
+	mtu3_writel(mbase, U3D_EP0CSR, value | EP0_SETUPPKTRDY | EP0_DATAEND);
+}
+
 static int ep0_queue(struct mtu3_ep *mep0, struct mtu3_request *mreq);
 
 static void ep0_dummy_complete(struct usb_ep *ep, struct usb_request *req)
@@ -297,8 +306,7 @@ static int handle_test_mode(struct mtu3 *mtu, struct usb_ctrlrequest *setup)
 		ep0_load_test_packet(mtu);
 
 	/* send status before entering test mode. */
-	value = mtu3_readl(mbase, U3D_EP0CSR) & EP0_W1C_BITS;
-	mtu3_writel(mbase, U3D_EP0CSR, value | EP0_SETUPPKTRDY | EP0_DATAEND);
+	ep0_do_status_stage(mtu);
 
 	/* wait for ACK status sent by host */
 	readl_poll_timeout_atomic(mbase + U3D_EP0CSR, value,
@@ -632,7 +640,6 @@ __acquires(mtu->lock)
 {
 	struct usb_ctrlrequest setup;
 	struct mtu3_request *mreq;
-	void __iomem *mbase = mtu->mac_base;
 	int handled = 0;
 
 	ep0_read_setup(mtu, &setup);
@@ -668,10 +675,7 @@ __acquires(mtu->lock)
 		mtu->delayed_status = true;
 	} else if (le16_to_cpu(setup.wLength) == 0) { /* no data stage */
 
-		mtu3_writel(mbase, U3D_EP0CSR,
-			(mtu3_readl(mbase, U3D_EP0CSR) & EP0_W1C_BITS)
-			| EP0_SETUPPKTRDY | EP0_DATAEND);
-
+		ep0_do_status_stage(mtu);
 		/* complete zlp request directly */
 		mreq = next_ep0_request(mtu);
 		if (mreq && !mreq->request.length)
@@ -802,12 +806,9 @@ static int ep0_queue(struct mtu3_ep *mep, struct mtu3_request *mreq)
 	}
 
 	if (mtu->delayed_status) {
-		u32 csr;
 
 		mtu->delayed_status = false;
-		csr = mtu3_readl(mtu->mac_base, U3D_EP0CSR) & EP0_W1C_BITS;
-		csr |= EP0_SETUPPKTRDY | EP0_DATAEND;
-		mtu3_writel(mtu->mac_base, U3D_EP0CSR, csr);
+		ep0_do_status_stage(mtu);
 		/* needn't giveback the request for handling delay STATUS */
 		return 0;
 	}
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
