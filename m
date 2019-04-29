Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF47E046
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 12:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XGUgvIAkO+hLLLYQ3s7+hxVz4Ei9vDXDYBjHjfSMsjc=; b=syVwNSnAlEar4q
	9LLfK8XY7RH4oRoCJA8hql1srBC1M4vBT34S+8uEauBbJdqgSdo2vkIDGShDWaWJ63v7vRPD08RQQ
	m8PuRl7bJiPBPHN29pmCzdlc7pJNqp2YYy4cc+vTbzPAywRTgvZKfH2kCzXBr90Q4iJSBzbwcFHKL
	fRQCBQM00VFibgFUjlV9KVcq7qhGq8fYniIRsidU2Rbr6cRZTQ7un2Daa7xlzxS9lgWJ0YvQAMplr
	BphvCNzDiKtGGMGTx6hvOcg10Lhe8YfoYkyIQCpffCrJKm/nQliVUJBBFL9+YpPgdlfSt+blCgo5M
	KWWze20FS9bpAytrh24g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL3EQ-0006F7-7o; Mon, 29 Apr 2019 10:09:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL3EM-0006DO-VW
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 10:09:52 +0000
X-UUID: 69a220a3504f420795cb3a58b1c47f05-20190429
X-UUID: 69a220a3504f420795cb3a58b1c47f05-20190429
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jjian.zhou@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1352100904; Mon, 29 Apr 2019 02:09:47 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 03:09:45 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 18:09:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 18:09:36 +0800
From: Jjian Zhou <jjian.zhou@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH 1/2] arm64: dts: mt8183: add emi node
Date: Mon, 29 Apr 2019 18:09:30 +0800
Message-ID: <1556532571-8234-1-git-send-email-jjian.zhou@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 51898FB411B3FA3339E6CC321AB8E4059616E46E9E49FE57282BE04F62B582042000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_030951_020941_52490138 
X-CRM114-Status: UNSURE (   6.69  )
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

Add emi dts node.

Change-Id: I965fe2fa5258bdd92547282c96c3d86cb0c76427
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi |   11 +++++++++++
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
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
