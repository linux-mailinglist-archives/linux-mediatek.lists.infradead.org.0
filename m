Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763801719A
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 08:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNsFdxLdu98w1uQDVGRYHFEjtAwwaIE2UQyYIchzRL8=; b=VMJWViPjxjNWqL
	TAh2l7DqWisbfOvxxMhNBcJc8frPWfWhQcTYvhy4vq0KfUuTdc/ob2zzuSlyby7QQdP6mbXfLwx+4
	Zh277BZRL6ESM4wJzqxNCEpMvhtFXNgd5KiV22nM5PPrVf1ESKtT93OjGWyF51CBNlK17YIrVAW8v
	8wTfIyTltOoSBNDfbe+jtRbsMmPABzkrZ5ch+ntEcXfQcIB4aeSlqzRsEDptQLbKvCB+MUJmCK6xF
	7g0gvtceYOsaMT3sc9ButKmCKVIXxaOI9nvs3xWs3HxICde9hddNeYexAvy631k1CZNer3aNtvMb+
	y6RlGv/iYoWui34m7MEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOG5w-000072-4s; Wed, 08 May 2019 06:30:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFuy-0001ij-FI
 for linux-mediatek@lists.infradead.org; Wed, 08 May 2019 06:19:24 +0000
X-UUID: 85e24f14da6242c590a2b6365deca5cc-20190507
X-UUID: 85e24f14da6242c590a2b6365deca5cc-20190507
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2054580209; Tue, 07 May 2019 22:18:22 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 23:18:21 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 14:18:20 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 14:18:19 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] [v5,1/2] arm64: dts: mt8183: add emi node
Date: Wed, 8 May 2019 14:18:16 +0800
Message-ID: <1557296297-28138-2-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557296297-28138-1-git-send-email-xixi.chen@mediatek.com>
References: <1557296297-28138-1-git-send-email-xixi.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_231905_028150_ABF678EE 
X-CRM114-Status: UNSURE (   8.67  )
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

Add emi dts node.

Change-Id: Ic12dd7a425e98eaf0e5e853e2e80dec29d874f6a
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
