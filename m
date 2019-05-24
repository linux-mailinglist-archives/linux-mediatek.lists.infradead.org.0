Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D56228FBF
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 05:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAVzfKsMqQDoIfBjMH7XI14VjprRIMHE/oQsOy3mGWw=; b=O/4vKeLg3jSSo9
	ORzbbSIdETst2eM3ke+cFaJpvdjfTaqhN8C3mn0EjiBq1CZEnDvDadam55yrEeMT2uwMJqMbleF9H
	FRUv92Mngyln8dq0p8r1oqJirFFYdZtp9cxqhqtCUpgj9UIorJxidNbZhwGtzMWC+fCRJizi7m9WT
	nz1uQrX/oD9gTgUYX/PPaShsMVx4D7lQmPAKnrzEnGsmi7bBv0kXWDTH3DSgqaARiAKtTAvg/V/je
	CJsyrA5bHDNLtC282TuA/QMGcZ+tjRkdEG4YvT60Xo613wXJ/YS/YBACczCJ1kYoEAW2K7BUkIAp9
	/ZxFDkjqP7gzdIkR7M0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1IU-00066r-QG; Fri, 24 May 2019 03:55:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1IR-0005qc-46
 for linux-mediatek@lists.infradead.org; Fri, 24 May 2019 03:55:08 +0000
X-UUID: 03bcf1269f8a44ec8dcd87a9bf1680e9-20190523
X-UUID: 03bcf1269f8a44ec8dcd87a9bf1680e9-20190523
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 499742833; Thu, 23 May 2019 19:54:46 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 20:54:44 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 11:54:30 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 11:54:30 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <ck.hu@mediatek.com>
Subject: [PATCH v2, 2/3] arm64: dts: mt8183: add emi node
Date: Fri, 24 May 2019 11:54:25 +0800
Message-ID: <1558670066-22484-3-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_205507_179571_1D5ADD77 
X-CRM114-Status: UNSURE (   8.21  )
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

Add emi dts node.

Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 75c4881..2a176e9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -269,6 +269,17 @@
 			clock-names = "spi", "wrap";
 		};
 
+		emi@10219000 {
+			compatible = "mediatek,mt8183-emi";
+			reg = <0 0x10219000 0 0x1000>, /* CEN EMI */
+				  <0 0x10226000 0 0x1000>, /* EMI MPU */
+				  <0 0x1022d000 0 0x1000>, /* CHA EMI */
+			      <0 0x10235000 0 0x1000>; /* CHB EMI */
+			interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_LOW>, /* MPU */
+						 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>, /* CGM */
+						 <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>; /* ELM */
+		};
+
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt8183-uart",
 				     "mediatek,mt6577-uart";
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
