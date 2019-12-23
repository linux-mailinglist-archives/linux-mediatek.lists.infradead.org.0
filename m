Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414A5129791
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Dec 2019 15:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Vjif8US/UexvRvESWpizAKt9O6cXO/0gJzVBUfRqmM=; b=Lc0LcbAfMmhMKE
	Jh6JvmBiD3oZct3GO3ruTjAl36mFz8s6taQnKKzZ6ohioxuV0n04JWgfSmjqowlF/Sms/SCkYOZV/
	2reFOWHFLmbFs0qaUXK+ugoxvqshnQVCdHkeeoc8BFxN8JTqXf02UC/S2qmleGzjr2XXPTMH10djL
	vy/3SXl4k4P+SovMAQof5VGaENPCbjerVxKB0pJHOUB/m/BEOqOueFVBIocZkDl+GI/UeEOD4Easv
	HoN+uKWy7uF49mbXexdtNd5aHfYiMnkimzBg9g8dMhoi7aAA7PXddXyQGXayCUMmuMYo1Q8uNry2e
	vq4WbC/St/ZeVaH66G1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOox-00064x-Mf; Mon, 23 Dec 2019 14:36:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOoG-0005bv-Kk; Mon, 23 Dec 2019 14:35:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 459872921D8
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v22 1/2] Documentation: bridge: Add documentation for ps8640
 DT properties
Date: Mon, 23 Dec 2019 15:35:37 +0100
Message-Id: <20191223143538.20327-2-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191223143538.20327-1-enric.balletbo@collabora.com>
References: <20191223143538.20327-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_063548_939688_A40849FA 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 drinkcat@chromium.org, Jitao Shi <jitao.shi@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, Ulrich Hecht <uli@fpond.eu>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Jitao Shi <jitao.shi@mediatek.com>

Add documentation for DT properties supported by
ps8640 DSI-eDP converter.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Ulrich Hecht <uli@fpond.eu>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
I maintained the ack from Rob Herring and the review from Philipp
because in essence the only thing I did is migrate to YAML format and
check that no errors are reported via dtbs_check. Just let me know if
you're not agree.

Apart from this note that I removed the mode-sel property because is not
used and I renamed sleep-gpios to powerdown-gpios.

Changes in v23: None
Changes in v22:
- Migrate to YAML format (Maxime Ripart)
- Remove mode-sel property.
- Rename sleep-gpios to powerdown-gpios.

Changes in v21: None
Changes in v19: None
Changes in v18: None
Changes in v17: None
Changes in v16: None
Changes in v15: None
Changes in v14: None
Changes in v13: None
Changes in v12: None
Changes in v11: None

 .../bindings/display/bridge/ps8640.yaml       | 112 ++++++++++++++++++
 1 file changed, 112 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ps8640.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/ps8640.yaml b/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
new file mode 100644
index 000000000000..5dff93641bea
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
@@ -0,0 +1,112 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ps8640.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPI DSI to eDP Video Format Converter Device Tree Bindings
+
+maintainers:
+  - Nicolas Boichat <drinkcat@chromium.org>
+  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
+
+description: |
+  The PS8640 is a low power MIPI-to-eDP video format converter supporting
+  mobile devices with embedded panel resolutions up to 2048 x 1536. The
+  device accepts a single channel of MIPI DSI v1.1, with up to four lanes
+  plus clock, at a transmission rate up to 1.5Gbit/sec per lane. The
+  device outputs eDP v1.4, one or two lanes, at a link rate of up to
+  3.24Gbit/sec per lane.
+
+properties:
+  compatible:
+    const: parade,ps8640
+
+  reg:
+    maxItems: 1
+    description: Base I2C address of the device.
+
+  powerdown-gpios:
+    maxItems: 1
+    description: GPIO connected to active low powerdown.
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to active low reset.
+
+  vdd12-supply:
+    maxItems: 1
+    description: Regulator for 1.2V digital core power.
+
+  vdd33-supply:
+    maxItems: 1
+    description: Regulator for 3.3V digital core power.
+
+  ports:
+    type: object
+    description:
+      A node containing DSI input & output port nodes with endpoint
+      definitions as documented in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+      Documentation/devicetree/bindings/graph.txt
+    properties:
+      port@0:
+        type: object
+        description: |
+          Video port for DSI input
+
+      port@1:
+        type: object
+        description: |
+          Video port for eDP output (panel or connector).
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - powerdown-gpios
+  - reset-gpios
+  - vdd12-supply
+  - vdd33-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ps8640: edp-bridge@18 {
+            compatible = "parade,ps8640";
+            reg = <0x18>;
+            powerdown-gpios = <&pio 116 GPIO_ACTIVE_LOW>;
+            reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
+            vdd12-supply = <&ps8640_fixed_1v2>;
+            vdd33-supply = <&mt6397_vgp2_reg>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    ps8640_in: endpoint {
+                        remote-endpoint = <&dsi0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    ps8640_out: endpoint {
+                        remote-endpoint = <&panel_in>;
+                   };
+                };
+            };
+        };
+    };
+
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
