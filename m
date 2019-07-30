Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD887A25D
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Jul 2019 09:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D0ZcE/X2PqH8N1KBX4BoZvQi7/B9KlGOclFX/Hcjpp4=; b=lP1hvlrTILV2yU
	WewmbF/0pqcDwsxN5DZWRq3/4VZhgU4miHI6z3qJlx7fhStlkLBTXrdD4LqUCAJvrb9Ol5OhfAByV
	ywGq6XhW4wZKZwabbDLqzX+l39w421Z0TB/wS2Mh75apynIlXgPnfu5STZmkke+vBXase17mn+ZzX
	+Yy+GuWiayO3zZbSTvimay6DmD+OQ8T2OY2PaHALwOZsYD3kSmGlhm716I4aG5P45O4N0DW3Geiq/
	Z/XqiQZwLMZsJojl47qsFPK6OTHeUyyg/5MM7Tf88UD0aZ9LTTvY77W2gcq/P3wT1HJQoTW381p5/
	fCi4DEQrXpik9HflSeDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMfy-0001Fu-6T; Tue, 30 Jul 2019 07:36:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsMej-00080q-I2; Tue, 30 Jul 2019 07:34:46 +0000
X-UUID: 75af2a43d7154709be8d114fc3354446-20190729
X-UUID: 75af2a43d7154709be8d114fc3354446-20190729
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1330924041; Mon, 29 Jul 2019 23:34:39 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 00:34:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 15:34:33 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Jul 2019 15:34:33 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v2 1/2] dt-bindings: usb: mtk-xhci: add an optional xhci_ck
 clock
Date: Tue, 30 Jul 2019 15:34:15 +0800
Message-ID: <1564472056-27875-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 147A02A2D28A053AF47239BB8AEC3BDE4930BA5F6B6165F1BDEBE0E466D4E08B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_003445_596825_EAE4E99D 
X-CRM114-Status: UNSURE (   9.81  )
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add a new optional clock xhci_ck

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2 changes:
  1. add the new clock at the end, suggested by Rob
---
 Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
index 266c2d917a28..f3e4acecabe8 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
@@ -30,7 +30,8 @@ Required properties:
 	the following ones are optional:
 	"ref_ck": reference clock used by low power mode etc,
 	"mcu_ck": mcu_bus clock for register access,
-	"dma_ck": dma_bus clock for data transfer by DMA
+	"dma_ck": dma_bus clock for data transfer by DMA,
+	"xhci_ck": controller clock
 
  - phys : see usb-hcd.txt in the current directory
 
@@ -100,7 +101,7 @@ Required properties:
  - clocks : a list of phandle + clock-specifier pairs, one for each
 	entry in clock-names
  - clock-names : must contain "sys_ck", and the following ones are optional:
-	"ref_ck", "mcu_ck" and "dma_ck"
+	"ref_ck", "mcu_ck" and "dma_ck", "xhci_ck"
 
 Optional properties:
  - vbus-supply : reference to the VBUS regulator;
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
