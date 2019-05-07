Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC5516042
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 11:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1NQieHRUjpJN2UqwBXMfjCCthp5SWu1Jwjf3Kch9C2w=; b=fezJVZAuek6GyK
	6trWVWpzbO+KQ3bbZtdUZmd/AWMOYjdUgDfpDPL8UrQ13CuOYhIfnKN2cyndfgMCvhrL6/cIrjdNb
	SEot8MmMR35oh9E08zFW7LsU3psXIDTL5UTKYync0lxMaCSx4SGnamhjeGQMCzBzwSBHhWnKtW49V
	Vg29CIjYP6HvQ1G4XR3CTtUzhcpThXt/PoAcfG7AwU/UJtgc0gcwTvV5IiJntlZJTriwk5KGVoH84
	AdvI1OOiqK6P3BW5zCzq9M/GnUyKGqzoi2mUXJKDnf6Gf9+R01c5uYk+d6dGcTOGT3+ZbTfo9qJOu
	SMTxkustBr9bZ9PBZPzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwCJ-00009z-Ih; Tue, 07 May 2019 09:15:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwCG-00009c-4N
 for linux-mediatek@lists.infradead.org; Tue, 07 May 2019 09:15:37 +0000
X-UUID: c37164fc2afb49b6bdea347f1f1017a9-20190507
X-UUID: c37164fc2afb49b6bdea347f1f1017a9-20190507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1022164973; Tue, 07 May 2019 01:15:32 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 02:15:30 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 17:15:25 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 17:15:25 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [v2,1/3] dt-bindings: soc: Add MT8183 emi dt-bindings
Date: Tue, 7 May 2019 17:15:23 +0800
Message-ID: <1557220523-24992-1-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 05CE6694E687DD29975CE0BAB73FFFC718C9514A030ED2FE8830E3F468F8339B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_021536_178920_B06D6C75 
X-CRM114-Status: UNSURE (   7.81  )
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

Add emi dt-bindings of MT8183 in binding document.

Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
---
 .../bindings/memory-controllers/mediatek,emi.txt      | 19 +++++++++++++++++++
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
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
