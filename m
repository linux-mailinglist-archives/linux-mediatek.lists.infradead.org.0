Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896AA13C4AE
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 15:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcalZLZl1C0ylmNdvpOEEIGaw+2r8tqLLoAEe22ZWd8=; b=n4fr7qJKhkllQR
	uvOv0XFjTA+61+ZwXqgvwcx+Wu1WgAl/rCUj9XFMeLeh6yYPwQaaWatyuiJpotDI0nHcxRpZI83BE
	vWZwF1flie6rJkBNR+Y+28J17aVYr2KWhXbnMqqjKpWdk9m9Jy2l0a+2HbYCpoO6TZYjIiM3pUe8i
	4A5Tu27CXSe5DFbagzpvlEwsCfLiAhIHR9M2hq4SbrFuk+gc6SqAeQqhqi+QReFA9OQ/BId7xauWG
	aDxopdZrCXHhnXHrv62jYIGZe8TzT9XkiyWWnbP+KLl3NQO45QrlpkeXPieytuMWlCMsXYMqKtDnB
	IaopbVzn7ganITcYSD4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjEN-0003z6-Jv; Wed, 15 Jan 2020 14:01:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjEI-0003vg-9Y
 for linux-mediatek@lists.infradead.org; Wed, 15 Jan 2020 14:01:10 +0000
X-UUID: d729aeefda694d3caf60f06ddb859b26-20200115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=PC+y6XVTLynjl5MLpT/PpDxclDZ4cq1uAytMsDKh5DM=; 
 b=EX3kdniPtlTtZg+iWH1VUwjCCGrsc3Z8UDZ7IL7a9GKh5yWXQuujAX+XCh5AB4qt7djyHRVyYY+WmV8lZ8NBF0GMAiyq20p5awNMrd4SFthT3vPvAK3ORtsBNgmmqMR6sL70ZPE3IVdkdzJotrZMzK/fiWhxyhOho1/Qixvm/nA=;
X-UUID: d729aeefda694d3caf60f06ddb859b26-20200115
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 928774514; Wed, 15 Jan 2020 06:01:03 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 06:01:53 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 15 Jan 2020 21:59:53 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 15 Jan 2020 22:01:09 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg
 <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 3/8] dt-bindings: display: panel: add auo kd101n80-45na
 panel bindings
Date: Wed, 15 Jan 2020 21:59:53 +0800
Message-ID: <20200115135958.126303-4-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200115135958.126303-1-jitao.shi@mediatek.com>
References: <20200115135958.126303-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: A2D720D4539F99368B635022A3D053D9F5FEE61485ACDD382E23B679CE2305882000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_060106_337074_B44BB7DA 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add documentation for auo kd101n80-45na panel.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../display/panel/auo,kd101n80-45na.yaml      | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.yaml b/Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.yaml
new file mode 100644
index 000000000000..604566832156
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/auo,kd101n80-45na.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AUO KD101N80-45NA DSI Display Panel
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Sam Ravnborg <sam@ravnborg.org>
+  - Rob Herring <robh+dt@kernel.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+        const: auo,kd101n80-45na
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
+  port: true
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
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "auo,kd101n80-45na";
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
-- 
2.21.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
