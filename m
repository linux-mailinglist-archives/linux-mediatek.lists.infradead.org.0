Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3E6B631B
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 14:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cdmPXr5VcS+JIJ7vOdCMNKBl9SVY22oYkWaoyqSlgE=; b=sozpjpuHw9Tp+Z
	0BDS2HTiwpDaT0ml+gsVGAoJlIXC8PCiFPPUpQxhMUK6zBGfNSwXXcf+tRniqwd4roxyDgs1bvUvq
	fK+X8peEERBil66/w+5VAKewFD9MTaEPyv18vHujKMRCmy1oo2oUbaDte7yQtzGNK26btQ2KV0thH
	Kaxmel9PGnnoBjR68tDnC8p/ma9Ucd11teBVpAz1pQK04YM3QVXRK/9ij991rmIVrcGpdH6zFXTiT
	NKcE4Tvn2RqU7yxXmZIWKLf1yV9lrPB3UQNDGRuSkXaCz+IT19Mf1UgJVJN8aiuIFh/G+g6sZc+QR
	XAt1mEZ/vaZ1VyZAz8NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZ1H-0006bt-PO; Wed, 18 Sep 2019 12:25:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZ1A-000659-Nw
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 12:25:10 +0000
X-UUID: a5947743f47644679dd5491812855b5b-20190918
X-UUID: a5947743f47644679dd5491812855b5b-20190918
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1896006605; Wed, 18 Sep 2019 04:24:59 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 05:24:58 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 18 Sep 2019 20:24:53 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 18 Sep 2019 20:24:53 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 7/8] dt-bindings: display: panel: add AUO auo,
 b101uan08.3 panel documentation
Date: Wed, 18 Sep 2019 20:24:21 +0800
Message-ID: <20190918122422.17339-8-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190918122422.17339-1-jitao.shi@mediatek.com>
References: <20190918122422.17339-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24918.004
X-TM-AS-Result: No-3.344400-8.000000-10
X-TMASE-MatchedRID: LDQTIb3AkScn3vOf0l6OFgPZZctd3P4By733NwuklsIHQvT9S3vHUDgK
 6rBjXxyiwmiM4j3WsDwWIvAeOZ6lZBhzK7qAlTSLCLQsumV/5S9V3dLaYUoCPSS30GKAkBxWie3
 MY7Xv0phqry+54H7wDufAOkxShVgK5TDi4+38dPYgCPGiZqtI8Gp5nbEBTsLkrNaeJrYvUQiKWS
 pN2IMPKUPNs5J6pUBWmkLIyx+kbq+tsBhZwL3bDR23b+lJHvPAhdipnqZWlN6LT3esmGQfwEtTy
 K8ZTWCGZI1BYYTjZ96AMuqetGVetr9k4V4N5ceA3QfwsVk0UbsIoUKaF27lxTdnwF1xCHJtKYQO
 AmHjZDgD1LLVoxzeii+xQL3D9tGhAbtmaE6a4AM6sdVOraIqJAq56lBJ3DH63iB0sOu1KWw/OkL
 s4PpignWznloeB3HaPQzwIbfiR5AMD9LTK+5Nny0c7FwZxihenqg/VrSZEiM=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.344400-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24918.004
X-TM-SNTS-SMTP: DFD9AD0DC79652028ABED49A663A5FD45074D0DC07093303310F4DADCA87326C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_052508_818293_92417410 
X-CRM114-Status: UNSURE (   7.72  )
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add dcumentation for auo,b101uan08.3, which is mipi dsi video panel
and resolution is 1200x1920.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../display/panel/auo,b101uan08.3.yaml        | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/auo,b101uan08.3.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/auo,b101uan08.3.yaml b/Documentation/devicetree/bindings/display/panel/auo,b101uan08.3.yaml
new file mode 100644
index 000000000000..96125d7d1fe7
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/auo,b101uan08.3.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/auo,b101uan08.3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AUO B101UAN08.3 DSI Display Panel
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Sam Ravnborg <sam@ravnborg.org>
+  - Rob Herring <robh+dt@kernel.org>
+ 
+properties:
+  compatible:
+        const: auo,b101uan08.3
+
+  reg:
+    description: the virtual channel number of a DSI peripheral
+
+  enable-gpios:
+    description: a GPIO spec for the enable pin
+
+  pp1800-supply:
+    description: core voltage supply
+
+  avdd-supply:
+    description: phandle of the regulator that provides positive voltage
+
+  avee-supply:
+    description: phandle of the regulator that provides negative voltage
+
+  backlight:
+    description: phandle of the backlight device attached to the panel
+
+required:
+ - compatible
+ - reg
+ - enable-gpios
+ - pp1800-supply
+ - avdd-supply
+ - avee-supply
+ - backlight
+
+additionalProperties: false
+
+examples:
+  - |
+    &dsi {
+        panel@0 {
+            compatible = "auo,b101uan08.3";
+            reg = <0>;
+            enable-gpios = <&pio 45 0>;
+            avdd-supply = <&ppvarn_lcd>;
+            avee-supply = <&ppvarp_lcd>;
+            pp1800-supply = <&pp1800_lcd>;
+            backlight = <&backlight_lcd0>;
+            status = "okay";
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
\ No newline at end of file
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
