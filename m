Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEA61C57DE
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 16:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRk/7Yf7V02+Kc8k6qCnZjZLQCF5tBxZMeSejPSQM5U=; b=dz+dxGNIHclQlh
	C3BVS3WX97RZoWi5HqOK+XrDMSl/H/4dqpXozYHlA15dUHaOJQ2NpJP7ank6grJon7YmKReo4uLFl
	GrqrHZHsbnzaZyXeYzoJbvNBBIoGWh3LIv25GttRGbn3599Il/fCGMunIy9OCeu1TIfNX+mPunp6w
	oaZILOfXQNqgFzCL5/HU5Q7CsKdtKZmOgePEDHW30v3UtIXkkycPbF/Euve+6ivo5EKwi0im33Zsr
	3Jhpd+SOk7jRI/YSZSd08MFvmUl7JsJERZ1DGWu3M7q5LRQsGV7Xaqzn/T2CJfPyuS848TWcnXt/0
	dg2SAjj8b4AD9yXY2LoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyAl-0002pJ-Lc; Tue, 05 May 2020 14:03:47 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyA8-0002EV-TZ
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 14:03:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id z6so2491414wml.2
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 07:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sewIQrOfMSMCFki5vvjbKoo8BkZz8WZa7NzooTrVnts=;
 b=QPBVrk4u8bJ1lyN89axq0pdEKOmmpYRibOzYW9nIG6R7g/9gJVFV6ctaT8iBdUKdvE
 UKqVm24R87Z+G6t4c+xieFb5HnHqsm9PsnsbYdN0/IyxhMLLe4qWBFTpRY3TR43BUQcJ
 HzgxxM2cfl7MZ1UnQnpI7YpljOD+ekvKio1Vrf5ofqLNPTGwEXk969k4GdrLGfJE+YI6
 PN4xsD86VY0ZuN1aQ79VgYNhb+8eTQmmtA4T1F5cgaoJYzI/3CliI4iabK5wwv0kUU9r
 2Y7kIDZwYPSIG28sAGkYE+hzu8hM25jTiyicyfN9DUB/qeO+jSjC8pHYvFRah7uIc5ph
 Y2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sewIQrOfMSMCFki5vvjbKoo8BkZz8WZa7NzooTrVnts=;
 b=BJdNcDwZwiYgwhBgokwWulXeU/l+I5HcmYCBCJE+BEy6zASQEDdnNBmOnSmBecmESV
 hdAUcTJREsAGfJWqd1nEednCiEX0je204LQHyADb3Yw5VxAOQesIQ+ECmX4FqpHI8Xdx
 kIDKkJdCFqp/d7KeBnu3tmEeVV587W/C/EmCMc+9oWCL8AgbyqCXhbUnJWmNjdGQw4Ul
 4N7Tdow/Dn2Wvo2ZUc1TKuWRmQRU7m9iicFf4dB5AEOiIEJ0ChlsnrnOcGyAX85jiXhA
 zSKgRUcOBZKk3ceHo2krFELoV/06RqRyns2cnawaRKWnokD5Y1PDzDP0xLwSV5sq9vy5
 vL2w==
X-Gm-Message-State: AGi0PuZ5OZ/OwgQmhZ72Zxx6gWoShwTMAvVE7i87zBDukYyVOsF3pbnU
 E3HPYD4C/lmIrJs7JdNk3wp2zg==
X-Google-Smtp-Source: APiQypKH83ab6otRmwy18VhA5GKakhCU3ceSapgu6ZcYgX3DVNjT64ntS3hfln0YNJ+gri577CJFIA==
X-Received: by 2002:a1c:f609:: with SMTP id w9mr3451354wmc.123.1588687385015; 
 Tue, 05 May 2020 07:03:05 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:04 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 01/11] dt-bindings: add a binding document for MediaTek
 PERICFG controller
Date: Tue,  5 May 2020 16:02:21 +0200
Message-Id: <20200505140231.16600-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070308_965788_722253B3 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds a binding document for the PERICFG controller present on
MediaTek SoCs. For now the only variant supported is 'mt8516-pericfg'.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../arm/mediatek/mediatek,pericfg.yaml        | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
new file mode 100644
index 000000000000..74b2a6173ffb
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/mediatek/mediatek,pericfg.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MediaTek Peripheral Configuration Controller
+
+maintainers:
+  - Bartosz Golaszewski <bgolaszewski@baylibre.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - mediatek,pericfg
+        - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pericfg: pericfg@10003050 {
+        compatible = "mediatek,mt8516-pericfg", "syscon";
+        reg = <0 0x10003050 0 0x1000>;
+    };
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
