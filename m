Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F5212F4C2
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Jan 2020 07:53:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5Ie367w/SfUSp1Fv4Ha83Owz3QTy0FGtwyigTNSiAk=; b=bne3sd8PszMMJ5
	v1XZhAWCXrAaWjmDYepe+c+iqXYACJWdYYkrmHIHKF/KnNAjQCVjO2oI4/ab4T2I25W3OaQ2YQdQX
	GYpqU+nmsKbke0C0SjmiXv2wTEKepAj+1RJa1TpIVDa8rivAaq1d/NIHlSm80FNaTwShWcepmW4qp
	rraDDw9QER05kyl/xp6SyfVR0E58JT9VvI/fuQFNdV4ckXyDMND1vvHyImrhxe56IkpGcj39AcNa6
	g4ptHxOynCU4NXw+ZPGYc2zhnruCvCPJPB3Cgc73oQzEiu9MCWYqP+cy5OcphNHr8r6V5yLai0gMY
	zMy+x5zUr0/agK86jJuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inGpt-0001HW-8j; Fri, 03 Jan 2020 06:53:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inGp4-0000Tm-1W; Fri, 03 Jan 2020 06:52:39 +0000
X-UUID: 75195a8b6dfb489ea5befc1d2484e40f-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=yaMLlKsEIl1OWXRikBdtHqUCvedw37WzykjPiMt4cJ4=; 
 b=rdW0GrgDK+KC+n/Ub1Vgcyy1Iit3TA9JtYy5UGQChbmij9TI0Ldh5wvYkdDOmip+Rt/E6FQ9nNND5Tg+KOM8Zj+tkCeIoS00RZ2WAqy5QcuNjUdOywClH1ECpUIYwC/XK0ADvgx5XCc2tOjH8Tp1YQJxFLfMZNYDfrbxaGHMmmE=;
X-UUID: 75195a8b6dfb489ea5befc1d2484e40f-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1615357810; Thu, 02 Jan 2020 22:52:32 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 22:44:14 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 14:43:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 Jan 2020 14:44:08 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH v3,3/8] arm64: dts: mt8183: Add #cooling-cells to CPU nodes
Date: Fri, 3 Jan 2020 14:44:02 +0800
Message-ID: <20200103064407.19861-4-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200103064407.19861-1-michael.kao@mediatek.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_225238_106631_A677EBF7 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "michael.kao" <michael.kao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "michael.kao" <michael.kao@mediatek.com>

The #cooling-cells property needs to be specified to allow a CPU
to be used as cooling device.

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index cfb74af260e0..63378ae14a16 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include "mt8183-pinfunc.h"
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "mediatek,mt8183";
@@ -74,6 +75,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -83,6 +85,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -92,6 +95,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -101,6 +105,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu4: cpu@100 {
@@ -110,6 +115,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 
 		cpu5: cpu@101 {
@@ -119,6 +125,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 
 		cpu6: cpu@102 {
@@ -128,6 +135,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 
 		cpu7: cpu@103 {
@@ -137,6 +145,7 @@
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 	};
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
