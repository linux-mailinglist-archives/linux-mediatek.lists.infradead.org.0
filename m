Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BF7DCAA
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 09:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rae7wc0qTv43L6Aj8IkLJ2UVi+uMYRBQGyYBZIuZWF4=; b=THTTW1pGUJUHga
	j3tQ/eB60rQDSduy9Z5lMCOadHfOgprBdhbDhN3B50c3R6Mvf4gYghG0VVH32iuKmXqHsbblU1wSN
	acOVPV8fiYK281I5hpcBe3ttA1aL3lpP2ucH83o6+/1Xc8q5xooCYURaSwUFFsbCPIE0IvhgZqhHW
	lQodbKguec6zU7OjYjA6YjW1QVdB/07FQjJrdU3utcBpe3pHDzkUP0jSS6BKl6BJAIsaECgm8nJZz
	TkYXp1rHdkKlO1gdqCaoFNxtOzz7/8CCz+tiYOcEgeUMbwC+Tetq3S3D430Y6sADnwdlgLlfRgK4I
	bBLduo+y8l9Y/Ts3PspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Sz-0000Lk-AE; Mon, 29 Apr 2019 07:12:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Sw-0000LO-GR
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 07:12:43 +0000
X-UUID: 4cdffd54236e44c3a0aadeacb064f99e-20190428
X-UUID: 4cdffd54236e44c3a0aadeacb064f99e-20190428
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jjian.zhou@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1079705022; Sun, 28 Apr 2019 23:12:32 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 00:12:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 15:12:28 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 15:12:28 +0800
From: Jjian Zhou <jjian.zhou@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] dt-bindings: soc: Add MT8183 emi dt-bindings
Date: Mon, 29 Apr 2019 15:12:25 +0800
Message-ID: <1556521945-3045-1-git-send-email-jjian.zhou@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 71E632B873B2ABB20CA8F760E2E241CD5DD4415A468E3D5679D5BB47B8A4AC9D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_001242_545426_57E8ECDB 
X-CRM114-Status: UNSURE (   7.09  )
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
Cc: linux-mediatek@lists.infradead.org, Xi
 Chen <xixi.chen@mediatek.com>, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Xi Chen <xixi.chen@mediatek.com>

Add emi dt-bindings of MT8183 in binding document.

Change-Id: I73b44ccc851acb393ef94f00b1484d6a040b4b5e
Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
---
 .../bindings/memory-controllers/mediatek,emi.txt   |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt

diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
new file mode 100644
index 0000000..a19e3b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
@@ -0,0 +1,19 @@
+EMI (External Memory Interface)
+
+Required properties:
+- compatible : must be one of :
+	"mediatek,mt8183-emi"
+- reg : the register and size of the EMI block.
+- interrupts : includes MPU, CGM, ELM.
+
+Example:
+	emi@10219000 {
+	compatible = "mediatek,mt8183-emi";
+	reg = <0 0x10219000 0 0x1000>, /* CEN EMI */
+		  <0 0x10226000 0 0x1000>, /* EMI MPU */
+		  <0 0x1022d000 0 0x1000>, /* CHA EMI */
+		  <0 0x10235000 0 0x1000>; /* CHB EMI */
+	interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_LOW>, /* MPU */
+			 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>, /* CGM */
+			 <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>; /* ELM */
+};
--
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
