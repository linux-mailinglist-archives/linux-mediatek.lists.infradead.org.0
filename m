Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BFE191F3E
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Mar 2020 03:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHr9Us1WtIAopoRLJyNwrsYV/bCHEL4UtnDgvLPFwB4=; b=UPUWy+kFW7DuD6
	vT6gpg1PSXxnoU+LjOGQcDoZrQOJfGMCdKKLZbLF28rQvEoAqheEjXKizWoiTO9zNVaD9zH60BYeG
	NaVusSIIStT6i5WiBwlqfV3griOKh8JTYy03cVso4T4W7U5e2JI9+ONjXYdYs0AHEXh34EDnLiQwI
	A4QrMka+PTkIl+g6F8rF0CUcunmA3O++LG1ZYdHayxGA5eTCSs1OclLQCRfgVs17omakUASSATE6k
	3KyAho53j4tMMY+NaPDcc+VwxxsgYA6b7HIn8f4IkdL2LoS+x0YOhN6UdDIciDzAZGB9AL0K+5Qma
	ZnmAH1t8SqEOFgnrCKLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvt3-0006bE-5p; Wed, 25 Mar 2020 02:35:21 +0000
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvsg-0005Ad-CX; Wed, 25 Mar 2020 02:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585103595; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=q3522WmCMcchsrcIlYC+4bPpCWTc6GzKb+1Lr0erI0g=;
 b=aow0CiwG/hBJpTXuR4X2GcdsbXYILhWzbR25pZEkKL1dnOVaDH2BRyez6/6r2dd2
 GjGJmQMVISsaLIHz0qfSOU8kCoB0KQMx+2rbtyEPtJLbhSVAONkI3SkFlJ/VTIJkPCT
 907zcU85fxxghl04s5c2HjtqFr3yGfNUyXzMVASQ=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1585103593296580.9934269828649;
 Wed, 25 Mar 2020 10:33:13 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200325022916.106641-6-jiaxun.yang@flygoat.com>
Subject: [PATCH v7 03/12] dt-bindings: interrupt-controller: Add Loongson
 LIOINTC
Date: Wed, 25 Mar 2020 10:28:21 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
References: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193459_376591_A0982B25 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.251.121.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 "H. Nikolaus Schaller" <hns@goldelico.com>, John Crispin <john@phrozen.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Cercueil <paul@crapouillou.net>,
 linux-ide@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Rob Herring <robh@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Paul Burton <paulburton@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Yinglu Yang <yangyinglu@loongson.cn>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Manuel Lauss <manuel.lauss@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Document Loongson I/O Interrupt controller.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Co-developed-by: Huacai Chen <chenhc@lemote.com>
Signed-off-by: Huacai Chen <chenhc@lemote.com>
---
 .../loongson,liointc.yaml                     | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml b/Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
new file mode 100644
index 000000000000..9c6b91fee477
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Loongson Local I/O Interrupt Controller
+
+maintainers:
+  - Jiaxun Yang <jiaxun.yang@flygoat.com>
+
+description: |
+  This interrupt controller is found in the Loongson-3 family of chips as the primary
+  package interrupt controller which can route local I/O interrupt to interrupt lines
+  of cores.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: loongson,liointc-1.0
+      - const: loongson,liointc-1.0a
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  interrupts:
+    description:
+      Interrupt source of the CPU interrupts.
+    minItems: 1
+    maxItems: 4
+
+  interrupt-names:
+    description: List of names for the parent interrupts.
+    items:
+      - const: int0
+      - const: int1
+      - const: int2
+      - const: int3
+    minItems: 1
+    maxItems: 4
+
+  '#interrupt-cells':
+    const: 2
+
+  'loongson,parent_int_map':
+    description: |
+      This property points how the children interrupts will be mapped into CPU
+      interrupt lines. Each cell refers to a parent interrupt line from 0 to 3
+      and each bit in the cell refers to a children interrupt fron 0 to 31.
+      If a CPU interrupt line didn't connected with liointc, then keep it's
+      cell with zero.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+      - items:
+          minItems: 4
+          maxItems: 4
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - 'loongson,parent_int_map'
+
+
+examples:
+  - |
+    iointc: interrupt-controller@3ff01400 {
+      compatible = "loongson,liointc-1.0";
+      reg = <0x3ff01400 0x64>;
+
+      interrupt-controller;
+      #interrupt-cells = <2>;
+
+      interrupt-parent = <&cpuintc>;
+      interrupts = <2>, <3>;
+      interrupt-names = "int0", "int1";
+
+      loongson,parent_int_map = <0xf0ffffff>, /* int0 */
+                                <0x0f000000>, /* int1 */
+                                <0x00000000>, /* int2 */
+                                <0x00000000>; /* int3 */
+
+    };
+
+...
-- 
2.26.0.rc2



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
