Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408DF14049F
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Jan 2020 08:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PUhesEAoBCyLv3sNoVUVnL3DPBiKR2iR++aVUtZFsnc=; b=b1HGgg5rdPgfFT
	OuHUMTbkqU51/kFwTbWYb41c4cdH93HH/RozKBIdGjfHXyFTe8XJ4fUfXO38vnvbSXjb+EBa/gykF
	8tFoWAbH5II5nwair3abg03bet1BAqjqnzen4wg/k4sVDn0ROaDw6I5fBDAKoFT1x1okpkFgEZ74u
	5oAF5Jimtjs5yO7tO3tRUCpaT4OhGr2gJnDY2VZfHHm1Jnsd7M1VgbsU3D+JZqP0Gi4kpNprLMeZ7
	yLEo7zokguRcdehEPcN3f1/vdsE4b8qZkUL5ozsre3ue433XiXXLsQRl+RW0px6PC02ul4GWGgxtB
	A+8ik5C+RGYTF2ma510w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMQS-0002lT-BM; Fri, 17 Jan 2020 07:52:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMQM-0002kz-NF; Fri, 17 Jan 2020 07:52:14 +0000
X-UUID: d1d56721978b4e04a2cab1b5c033353c-20200116
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=XlVHRJUiQa0Jm/lTprpguXiXjS3b7Bht7uRo2za199k=; 
 b=izdTNWFqdjMNAZtC4TMrjRJqR7uydOUzTwPTMWwgbMNFRRdhKsruhxQ8XqwdwQ4H8QCQqE5VeuCoCE3HFk+Ph51sqchHrDhIXo1LRH24121x0aoe/J6YDu29INUT94yIJAtVCrgS7TCTgU4DcYzk5IvilT4rA7hFFswPLfzAvHA=;
X-UUID: d1d56721978b4e04a2cab1b5c033353c-20200116
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 697601633; Thu, 16 Jan 2020 23:52:01 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 Jan 2020 23:42:05 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 Jan 2020 15:41:33 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 17 Jan 2020 15:41:10 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Mathias Nyman <mathias.nyman@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: [PATCH] xhci-mtk: Fix NULL pointer dereference with xhci_irq() for
 shared_hcd
Date: Fri, 17 Jan 2020 15:41:50 +0800
Message-ID: <1579246910-22736-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_235210_770096_5DFC517A 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sriharsha Allenki <sallenki@codeaurora.org>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

According to NULL pointer fix: https://tinyurl.com/uqft5ra
xhci: Fix NULL pointer dereference with xhci_irq() for shared_hcd
The similar issue has also been found in QC activities in Mediatek.

Here quote the description from the referenced patch as follows.
"Commit ("f068090426ea xhci: Fix leaking USB3 shared_hcd
at xhci removal") sets xhci_shared_hcd to NULL without
stopping xhci host. This results into a race condition
where shared_hcd (super speed roothub) related interrupts
are being handled with xhci_irq happens when the
xhci_plat_remove is called and shared_hcd is set to NULL.
Fix this by setting the shared_hcd to NULL only after the
controller is halted and no interrupts are generated."

Signed-off-by: Sriharsha Allenki <sallenki@codeaurora.org>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/host/xhci-mtk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
index b18a6baef204..c227c67f5dc5 100644
--- a/drivers/usb/host/xhci-mtk.c
+++ b/drivers/usb/host/xhci-mtk.c
@@ -593,11 +593,11 @@ static int xhci_mtk_remove(struct platform_device *dev)
 	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
 
 	usb_remove_hcd(shared_hcd);
-	xhci->shared_hcd = NULL;
 	device_init_wakeup(&dev->dev, false);
 
 	usb_remove_hcd(hcd);
 	usb_put_hcd(shared_hcd);
+	xhci->shared_hcd = NULL;
 	usb_put_hcd(hcd);
 	xhci_mtk_sch_exit(mtk);
 	xhci_mtk_clks_disable(mtk);
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
