Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ADB1D741A
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 11:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Piv36VBkCwr1Zmla4tvEhb51j90DY0sExiXOIiqS6OE=; b=j156at/QsyZ+Nd
	75T6UgMy0/8AWCSRVd7jJ8o8Zckxvq5lD6cnuxAeZQOYdyI+hd0AAPQPhbhS/Uxuzdyqrhhy7DFRQ
	BKZpDxE4Z9zQBrBynGnkQnZWfVndiVmGNa1Cd/+w0jaotFT0YI1Pc0T5C+8jVszdRtcbrLsf4Jt6k
	l01SJKZm3wh/11dremxlE/3TfWPEUGSTuuSjd/vaePzH9fVQP/3AuX6JUFH0ba5Dqdm/H34MwBNg4
	EnDnXJafwYDCIyGuyjBr6jcKctyhWdnV6PCCn/mWNFxbX7sYTKQXHDXtBJmxSY5vFTeFY7PH8XN80
	qyuQBiw0aIFwZmqIXBdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jac8C-0004ad-UA; Mon, 18 May 2020 09:32:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jac89-0004ZR-9P; Mon, 18 May 2020 09:32:18 +0000
X-UUID: 1ac67d4b51ae49ee9c71ed35befdf073-20200518
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=xOZ4MeTRfS9iV1mfQHvql2zLgBjMD0iQhXwC9YzCwxc=; 
 b=tpTvXBQirvN7i/oouboCalTvovnhTaIagoshnPCqqT5a8shY4howIT6LF/hJjLPLOBH+drWfFIZBMahlMxO1bOxdNXfYGhot3jRuPSAu7PEd9xks5so2Oi92kMbRDEOs/25NTexTIJ07YZv5GTX5eLTD8th6+5ONxtcPwSVl8/U=;
X-UUID: 1ac67d4b51ae49ee9c71ed35befdf073-20200518
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 511135093; Mon, 18 May 2020 01:32:11 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 02:24:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 17:24:47 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 18 May 2020 17:24:46 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v8 1/3] dt-bindings: power: avs: add mtk svs dt-bindings
Date: Mon, 18 May 2020 17:24:02 +0800
Message-ID: <20200518092403.22647-2-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200518092403.22647-1-roger.lu@mediatek.com>
References: <20200518092403.22647-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_023217_337533_85F8182C 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Document the binding for enabling mtk svs on MediaTek SoC.

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 .../bindings/power/avs/mtk_svs.yaml           | 141 ++++++++++++++++++
 1 file changed, 141 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/avs/mtk_svs.yaml

diff --git a/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml b/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
new file mode 100644
index 000000000000..77ab606814ce
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
@@ -0,0 +1,141 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/avs/mtk_svs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Introduce SVS engine
+
+maintainers:
+  - Kevin Hilman <khilman@kernel.org>
+  - Nishanth Menon <nm@ti.com>
+
+description: |+
+  The SVS (Smart Voltage Scaling) engine is a piece of hardware which is
+  used to calculate optimized voltage values of several power domains,
+  e.g. CPU/GPU/CCI, according to chip process corner, temperatures,
+  and other factors. Then DVFS driver could apply those optimized voltage
+  values to reduce power consumption.
+
+properties:
+  compatible:
+    const: mediatek,mt8183-svs
+
+  reg:
+    description: Address range of the MTK SVS controller.
+    maxItems: 1
+
+  interrupts:
+    description: IRQ for the MTK SVS controller.
+    maxItems: 1
+
+  clocks:
+    description: Main clock for svs controller to work.
+
+  clock-names:
+    const: main
+
+  nvmem-cells:
+    maxItems: 2
+    description:
+      Phandle to the calibration data provided by a nvmem device.
+
+  nvmem-cell-names:
+    items:
+      - const: svs-calibration-data
+      - const: calibration-data
+
+patternProperties:
+  "^svs-(cpu-little|cpu-big|cci|gpu)$":
+    type: object
+    description:
+      Each subnode represents one SVS bank.
+        - svs-cpu-little (SVS bank device node of little CPU)
+        - svs-cpu-big (SVS bank device node of big CPU)
+        - svs-cci (SVS bank device node of CCI)
+        - svs-gpu (SVS bank device node of GPU)
+
+    properties:
+      compatible:
+       enum:
+         - mediatek,mt8183-svs-cpu-little
+         - mediatek,mt8183-svs-cpu-big
+         - mediatek,mt8183-svs-cci
+         - mediatek,mt8183-svs-gpu
+
+      power-domains:
+        description: Phandle to the associated power domain
+        maxItems: 1
+
+      operating-points-v2: true
+
+      vcpu-little-supply:
+        description: PMIC buck of little CPU
+
+      vcpu-big-supply:
+        description: PMIC buck of big CPU
+
+      vcci-supply:
+        description: PMIC buck of CCI
+
+      vgpu-spply:
+        description: PMIC buck of GPU
+
+    required:
+      - compatible
+      - operating-points-v2
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - nvmem-cells
+  - nvmem-cell-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/mt8183-power.h>
+
+    svs: svs@1100b000 {
+        compatible = "mediatek,mt8183-svs";
+        reg = <0 0x1100b000 0 0x1000>;
+        interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
+        clocks = <&infracfg CLK_INFRA_THERM>;
+        clock-names = "main";
+        nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
+        nvmem-cell-names = "svs-calibration-data", "calibration-data";
+
+        svs_cpu_little: svs-cpu-little {
+            compatible = "mediatek,mt8183-svs-cpu-little";
+            operating-points-v2 = <&cluster0_opp>;
+            vcpu-little-supply = <&mt6358_vproc12_reg>;
+        };
+
+        svs_cpu_big: svs-cpu-big {
+            compatible = "mediatek,mt8183-svs-cpu-big";
+            operating-points-v2 = <&cluster1_opp>;
+            vcpu-big-supply = <&mt6358_vproc11_reg>;
+        };
+
+        svs_cci: svs-cci {
+            compatible = "mediatek,mt8183-svs-cci";
+            operating-points-v2 = <&cci_opp>;
+            vcci-supply = <&mt6358_vproc12_reg>;
+        };
+
+        svs_gpu: svs-gpu {
+            compatible = "mediatek,mt8183-svs-gpu";
+            power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+            operating-points-v2 = <&gpu_opp_table>;
+            vgpu-spply = <&mt6358_vgpu_reg>;
+        };
+    };
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
