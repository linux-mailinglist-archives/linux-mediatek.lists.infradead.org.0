Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9562928FBE
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 05:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NQieHRUjpJN2UqwBXMfjCCthp5SWu1Jwjf3Kch9C2w=; b=XBdyYdsIPR+Pgf
	Nib358OuZH3ie65dqlM7bsctMuqd4PbtqpE1jolgtjGElnJCN8Jz1fyc8Ck+KEBoN5I56AfQyObsZ
	cHpuxZCz0PzbYURssia9fDe5DhfSAsflvBwyns9SXMc9A6bsKimNk8mrnp96pdVodgBv7jzYh5PgD
	dZqaiBndiuAmoUdVgKIaRuJ73SFr3z8M2zctxhZozMIQHYGXwla/vSGPe7jfICRUuPb5RNgeBpVAE
	PVFr6R9q7FAFiaG2+dN+vDSW+HMdZ8JgmCRFORVyq89kJjjW9hm0rEWjetu5mIXo3223hqsnJHl7Y
	ARFEF1dbYupikbMwk6EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1I2-0004oD-5D; Fri, 24 May 2019 03:54:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Hx-0004nV-Ur
 for linux-mediatek@lists.infradead.org; Fri, 24 May 2019 03:54:39 +0000
X-UUID: ae4c30e79ca14042a4bdb8069cb75112-20190523
X-UUID: ae4c30e79ca14042a4bdb8069cb75112-20190523
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 92896213; Thu, 23 May 2019 19:54:32 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 20:54:31 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 11:54:30 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 11:54:29 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <ck.hu@mediatek.com>
Subject: [PATCH v2, 1/3] dt-bindings: soc: Add MT8183 emi dt-bindings
Date: Fri, 24 May 2019 11:54:24 +0800
Message-ID: <1558670066-22484-2-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_205438_000438_3FD40C28 
X-CRM114-Status: UNSURE (   8.37  )
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
