Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3873290CC
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 08:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NTdl2ienbO52PwhIT3g/giijTup6qbUZBSIOOed7LmU=; b=tcREB+fQ6qiEOy
	c5A1SXUoKgVnIxex7gjm5QW5B1L+savlA7kmu+iBxMZ20c/8NXoIQnESjGbDP7QUQ6niwE9h+0H3N
	y85vwZqhjpcJiCPUIXswHrLz35rlmIOE942w+9c4LKoMcaAfIDsw2ZyCfno7Ksbq1I3Oq0jzQx6YJ
	VkBUFCDu7z3jmIPxVinsaoc+4Vidvr3b34u1OAn+H58C5x+ixqOipVhXIxFfPaEgPgte1kgm2RpHB
	nuo25JPTrKV7EJymMthBCRfssphe05t8lXlNz43J0kMwpJQjk0GHa5Qrx5kEFABSHJ6b6EI866Qs5
	cuOnjgcXBxyrcDFn57/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3Qw-0003n4-B3; Fri, 24 May 2019 06:12:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3Qm-0003fZ-DH; Fri, 24 May 2019 06:11:53 +0000
X-UUID: dd6fffee33ba4aefba538bc940fe8d45-20190523
X-UUID: dd6fffee33ba4aefba538bc940fe8d45-20190523
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1834007914; Thu, 23 May 2019 22:11:47 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 23:11:45 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 14:11:43 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 14:11:42 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH] usb: mtu3: fix up undefined reference to usb_debug_root
Date: Fri, 24 May 2019 14:11:33 +0800
Message-ID: <ee71197a681165aa72cb73c7f6cb402953351805.1558678075.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_231152_459039_96F11EB4 
X-CRM114-Status: GOOD (  10.10  )
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
Acked-by: Randy Dunlap <rdunlap@infradead.org>
---
 drivers/usb/mtu3/mtu3_debugfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
index 62c57ddc554e..b7c86ccd50b4 100644
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
