Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EEE3CA04
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 13:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVCqDjr179/2LoEev1ZpH3mR7HyQthvYSRzJHoO5dAI=; b=sJIPR1FQ1ZPKk9
	It209ETAJitCSbw78xFI7ihM+2BxyRNE5CH7PLY1fpR+qEHeEZhAHjqlO2o3ADKs0A2gSxH9TxdCX
	Q3+LkJBfgKImYU+aWgnqRcM+UuQoBqGyarw26zNaGzlg4uh0/4TOmrYLkCuaaEvHjFpw/W88SImzJ
	v2+oYrtJpaLcdIji9jmsxwF6aZ7dL4gjVd6WVLvmq1edfbMztDTbb4og8n3j5yLTbYWDY5cSIAqyU
	34zqUP/+KFrZKIyr12+JGTMAXBdHjK8FJZDtFlFmbARzj0Cs/5vHy2YGNjz5ieO3drWhcZNkETALQ
	MjTYLwoT4GCYuD+SzDNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haez1-0001hT-Vp; Tue, 11 Jun 2019 11:30:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haey5-0008FG-QA; Tue, 11 Jun 2019 11:29:35 +0000
X-UUID: 45dcb2c5467e4c5987d9ee7b3b4895dd-20190611
X-UUID: 45dcb2c5467e4c5987d9ee7b3b4895dd-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dehui.sun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1030422589; Tue, 11 Jun 2019 03:29:23 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 04:29:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 19:29:20 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 19:29:19 +0800
From: Dehui Sun <dehui.sun@mediatek.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
 <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1 2/2] arm64: dts: mt8183: add systimer0 device node
Date: Tue, 11 Jun 2019 19:28:54 +0800
Message-ID: <1560252534-11412-3-git-send-email-dehui.sun@mediatek.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1560252534-11412-1-git-send-email-dehui.sun@mediatek.com>
References: <1560252534-11412-1-git-send-email-dehui.sun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_042933_966215_D56DD4F4 
X-CRM114-Status: UNSURE (   9.98  )
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
Cc: dehui.sun@mediatek.com, devicetree@vger.kernel.org, weiyi.lu@mediatek.com,
 srv_heupstream@mediatek.com, erin.lo@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add systimer0 device node for MT8183.

Signed-off-by: Dehui Sun <dehui.sun@mediatek.com>
---
This patch is based on the following patches:
https://patchwork.kernel.org/cover/10962385/
https://patchwork.kernel.org/patch/10983939/
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4..ac3f87d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -254,6 +254,15 @@
 			clock-names = "spi", "wrap";
 		};
 
+		systimer: systimer@10017000 {
+			compatible = "mediatek,mt8183-timer",
+				     "mediatek,mt6765-timer";
+			reg = <0 0x10017000 0 0x1000>;
+			interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&topckgen CLK_TOP_CLK13M>;
+			clock-names = "clk13m";
+		};
+
 		auxadc: auxadc@11001000 {
 			compatible = "mediatek,mt8183-auxadc",
 				     "mediatek,mt8173-auxadc";
-- 
2.1.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
