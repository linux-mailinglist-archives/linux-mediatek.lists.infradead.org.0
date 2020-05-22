Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491541DE636
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9Vu3cc4c5hXgh4NMd8T1Hxqavi19cvjIsCUCHrknRw=; b=VxC7Nnjlu+w600
	bUH/GKja7WzbP7MT/cVb6hVdiX1wwPqkvjRWDm2VukACNlkPmVJYnmrW7JzbEd8tNPrQO8D33139p
	8x8QeTkCqfZMsip0RVwKFkRxyH2b7vd1liBB4XgxKClH16nSLiQedDzSa+xboLV/wMtRJmfZ2/VI3
	IhbZuabrOC0jwnRSBe0JS4iECAxc4R8RZJcJU7+6kk/veyOn6bMMlG+nGspr/e5EfmKUFhKpulfzv
	VYljrPsZY4MpKXxluDOX5FxbsZY8tYRNEeA1VmogvUxpUlX2f1I2RbhSdO2Wxs4d/3XlrIW0bZRYh
	u91hbRf1rl8TkOV9E7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Su-0003fv-Q5; Fri, 22 May 2020 12:07:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6ST-0003IK-RH
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so1533790wrn.11
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/pmWjPydDcH2ECRLQQUecpuUxdBwIQiF7KV5PtBBYA0=;
 b=i0LAaJO4/OsiG8tHqQqh8QMJFnyB9fw0SVJmnxPGwVTC6c84IGU5mK5QyKhXXyAdJY
 gwxhvTbndWQZIPz4rlVu6qopD/zba+IYsJRc0V8W25aObCVlipS1HOIqHGeuz4IRwc0C
 3WkftM8s+RgwQxuqLazSX/TOdAZqK2SNnCMJCce1G8I5UroZMlsPaWtI1A3KC0M35wNv
 5PTjSWIHb9XdOhVpsE/mAichJ+oodz+TsK9zHPZGJCX7A4uGLz0CCB5ySpw+QlijqLzE
 utvl5/7gbRxf6t+9Os+RqahStxHmEBlGoJ9zX+YiptZIfhJagdJ0rLderVS/L4oc62u1
 vMHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/pmWjPydDcH2ECRLQQUecpuUxdBwIQiF7KV5PtBBYA0=;
 b=F+ZUbpZ0h1WzXNuNM3R8QObISj5jAdq0RXckGlTnLz3Z/MIb1p11ysLIZFYi8MBBR2
 b9QMKSwTqWS7atuX7Y9es2auWYlzOjaQhMVg5ag2vkSOaTFANM/2x6YLY8PDPwqO8fp2
 VyK5JxdXB1fER14qKKpQyaMZoJVUaP5a5pIyZ99woY1Zm9JwHs/GU0VpaZSuVSemWTMi
 pagwlAPENhSmVojNx2bt7VV5rSDdCjgHYgVIlHEQbolkFU67ELDsO9Z4ae7pKx1eJLw8
 YDsVqSuBPpRQeRFWVuSo6a1jBZUxpav3UfsQz9axssniPPRM8avEtehz7+o/aZcsNq9K
 sKaw==
X-Gm-Message-State: AOAM530SwFyku/24/mU52gzpLy/vIXbi2IUmoBQDjQuXN8x6AskOYd+P
 xp0NiIbKMAdqVVeJ9255/9XDfg==
X-Google-Smtp-Source: ABdhPJyhBs1vuweSsT6UnZzHIxmupzWKr/Mklf9iaHHEzRP3oB0F6VGJEWNBq1p2UGylX27IQJUkew==
X-Received: by 2002:a5d:4dd0:: with SMTP id f16mr1475060wru.117.1590149244637; 
 Fri, 22 May 2020 05:07:24 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:24 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 03/11] dt-bindings: net: add a binding document for
 MediaTek STAR Ethernet MAC
Date: Fri, 22 May 2020 14:06:52 +0200
Message-Id: <20200522120700.838-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050725_891311_5906780E 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds yaml DT bindings for the MediaTek STAR Ethernet MAC present
on the mt8* family of SoCs.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../bindings/net/mediatek,eth-mac.yaml        | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml

diff --git a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
new file mode 100644
index 000000000000..f85d91a9d6e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/mediatek,eth-mac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek STAR Ethernet MAC Controller
+
+maintainers:
+  - Bartosz Golaszewski <bgolaszewski@baylibre.com>
+
+description:
+  This Ethernet MAC is used on the MT8* family of SoCs from MediaTek.
+  It's compliant with 802.3 standards and supports half- and full-duplex
+  modes with flow-control as well as CRC offloading and VLAN tags.
+
+allOf:
+  - $ref: "ethernet-controller.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8516-eth
+      - mediatek,mt8518-eth
+      - mediatek,mt8175-eth
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    additionalItems: false
+    items:
+      - const: core
+      - const: reg
+      - const: trans
+
+  mediatek,pericfg:
+    $ref: /schemas/types.yaml#definitions/phandle
+    description:
+      Phandle to the device containing the PERICFG register range. This is used
+      to control the MII mode.
+
+  mdio:
+    type: object
+    description:
+      Creates and registers an MDIO bus.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - mediatek,pericfg
+  - phy-handle
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/mt8516-clk.h>
+
+    ethernet: ethernet@11180000 {
+        compatible = "mediatek,mt8516-eth";
+        reg = <0x11180000 0x1000>;
+        mediatek,pericfg = <&pericfg>;
+        interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>;
+        clocks = <&topckgen CLK_TOP_RG_ETH>,
+                 <&topckgen CLK_TOP_66M_ETH>,
+                 <&topckgen CLK_TOP_133M_ETH>;
+        clock-names = "core", "reg", "trans";
+        phy-handle = <&eth_phy>;
+        phy-mode = "rmii";
+
+        mdio {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            eth_phy: ethernet-phy@0 {
+                reg = <0>;
+            };
+        };
+    };
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
