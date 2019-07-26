Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2E3760A4
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 10:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gomUctDDTZVR0U6E9AbR38lT4cL5IvEJf4jWfYbuSek=; b=Hl7Imo/EzoW0ZL
	ZM3hXzQEdSu4DuYN5s/3EtW8J52hQ6LLuzI53bR4xg4XXalgWh9QM/gnTq2roFIh3aE0CGh4jJXLD
	8u5UZqhQaO/vsvmnflNEaDIY946a6aQuMlE9nH35X3F6jmMkmfU42fOCojvNVoD+KzWXxgJgG2nQ2
	ppDpOb0aTzomaq7LOrnouB+S5CsQ7ZAVfu0v6RHbEwxc/sW9lEoW9mVt+Qruy+RUpnPKLpmiXOjrk
	Ief5JjtoPA0j8vrB5DM0RbLzmoVUJZLO42xKaC7FfKqh9vkcZ9qb3XY4Ir3EfkZSLTMUpt4w1sVT3
	fcv862P67Zflr9DXbBrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvXx-0006o8-K2; Fri, 26 Jul 2019 08:25:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvXt-0006nj-Qv
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 08:25:47 +0000
X-UUID: 9ec53cca358a4a5098eac115c7208acd-20190726
X-UUID: 9ec53cca358a4a5098eac115c7208acd-20190726
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 817011967; Fri, 26 Jul 2019 00:25:42 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 01:25:40 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 26 Jul 2019 16:25:30 +0800
Received: from localhost.localdomain (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 26 Jul 2019 16:25:30 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v4 1/3] dt-bindings: soc: Add MT8183 emi dt-bindings
Date: Fri, 26 Jul 2019 16:23:50 +0800
Message-ID: <1564129432-15214-2-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1564129432-15214-1-git-send-email-xixi.chen@mediatek.com>
References: <1564129432-15214-1-git-send-email-xixi.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 195995B69403B55A228B222412C7213E88155D5290865533BA4744D6CA7211192000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_012545_877565_2C7AA6C3 
X-CRM114-Status: UNSURE (   7.90  )
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
Cc: linux-mediatek@lists.infradead.org, Xi
 Chen <xixi.chen@mediatek.com>, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add emi dt-bindings of MT8183 in binding document.

Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
---
 .../bindings/memory-controllers/mediatek,emi.txt           | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt

diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
new file mode 100644
index 0000000..14676d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
@@ -0,0 +1,14 @@
+EMI (External Memory Interface)
+  EMI is a HW module which processing memory read/write requests to DRAM.
+It makes memory access more efficiently .
+
+Required properties:
+- compatible : must be one of :
+	"mediatek,mt8183-emi"
+- reg : the central emi register base and size of the EMI HW.
+
+Example:
+	emi@10219000 {
+		compatible = "mediatek,mt8183-emi";
+		reg = <0 0x10219000 0 0x1000>; /* CEN EMI */
+	};
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
