Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E483CADB
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 14:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vhtG9reOUjdPdH1LD6j7KBmKcrWxUjNkEITi/PWoWz0=; b=f3s2TYT0bTml0d
	iIKavCA/gLPqSro5GcklQpK0dqW/IelQ4sMwjLZL8Szmx2HKz6S7/tSOEcxxVokN/z/o3Egsrrh0z
	rW7jlI3uXQe/zQPhNAsqYDDiS9yDqOvaKQZnS8nLC86EWnBZcj0cgpDtFwevAk9vmCgtkclX21eem
	cJfMOn75Cten7mJv+aoCvChonhoeexs3BGhS+GG13Zua0yJFuuSz9Sr/yUqKcafT50wk16dMQ8tu0
	copVG9LWfB7z0nUznpRZzDKogtvQyf1gM/WRjLL0ZIyRLau7G6jntbzNdiYNOtRGAzwJST9TiV676
	PYWfFok4wBJmO8vpTafA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafgQ-0005dc-D3; Tue, 11 Jun 2019 12:15:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafgL-0005b6-I3
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 12:15:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so6883280pgc.6
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=277jozT1EhnETi89SmaTO49VB6Qbwp9X0r3PGVGxDhE=;
 b=Ww63+Xlbz4oK1Jz/cqksi2ICwOtBWEdsmgvx/5beLkK+ZscdTZpdNY/fzSYmG1IQNC
 ijDQoWRysxire9m9Qk+h2v9FlroD70SbecgOXOKOyU+eYo9qPQO3P3wc6UhrCCpjMor+
 9zZqGBVNEAHNFTWtPvNK5T4gGf+FOW4xxeSLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=277jozT1EhnETi89SmaTO49VB6Qbwp9X0r3PGVGxDhE=;
 b=tAHCCTTwe1wNQnGLNaB7DR/S4sqKuBuLnb+bimWJEKo8WlZzr/KvEuJQyo3nTXIrF+
 /E1YZas1I1agALDNezWuwDDn2mwPKkIYrlmbpHB2N2FoPoR1eAh4hT5W/unaDjn2rMq+
 o3xxGmvJdhBMx8qgFrD+L0d686a8lBS76aVV6/qLMzdDBWqyYJuwoUxniV/ah5Q/Cm73
 4mh4FIoDAH7+zN1Xj/U3JymSt2/m8cTU2c83qrgwKosz9YVMQEeBxs7YuPVE9Ld/M6CC
 H/6DzJkWzKdA0tdY9GT2NyTBari2e6y6zL7hJHaA0Yvbu09N1hk1fPMAp81t27m/2yrm
 4Huw==
X-Gm-Message-State: APjAAAX27UkjM+QFjk9oQR4wL/omlSuLEs/d+QLpVeg2MgDnvQBi32Q9
 9Gvp/P2fLPB9AQuN+8AraKfGJg==
X-Google-Smtp-Source: APXvYqzfL5/fYY3pUluAdCK4To2DjW6uJoqnkuLN+CDF0FrDaPtwWj5bx6sBBXQh8lVRyRN6c4BC2w==
X-Received: by 2002:a17:90a:30aa:: with SMTP id
 h39mr6385861pjb.32.1560255316897; 
 Tue, 11 Jun 2019 05:15:16 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id d4sm2416832pju.19.2019.06.11.05.15.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 05:15:16 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: robh+dt@kernel.org
Subject: [PATCH] dt-bindings: serial: add documentation for Rx in-band wakeup
 support
Date: Tue, 11 Jun 2019 20:15:10 +0800
Message-Id: <20190611121510.260188-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_051517_599720_9A1C8A97 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 changqi.hu@mediatek.com, gregkh@linuxfoundation.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 Claire Chang <tientzu@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

To support Rx in-band wakeup, one must create an interrupt specifier with
edge sensitivity on Rx pin and an addtional pinctrl to reconfigure Rx pin
to normal GPIO in sleep state. Driver will switch to sleep mode pinctrl and
enable irq wake before suspend and restore to default settings when
resuming.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
Resending this patch since I forgot to cc device tree maintainers/mailing list.
The 2/2 patch in this series[1] is already in tty-next[2].

[1] https://patchwork.kernel.org/patch/10962299/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/log/?h=tty-testing

 .../devicetree/bindings/serial/mtk-uart.txt         | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/mtk-uart.txt b/Documentation/devicetree/bindings/serial/mtk-uart.txt
index bcfb13194f16..3488b6e24e0c 100644
--- a/Documentation/devicetree/bindings/serial/mtk-uart.txt
+++ b/Documentation/devicetree/bindings/serial/mtk-uart.txt
@@ -21,7 +21,12 @@ Required properties:
 
 - reg: The base address of the UART register bank.
 
-- interrupts: A single interrupt specifier.
+- interrupts or interrupts-extended:
+  index 0: an interrupt specifier for the UART controller itself
+  index 1: optional, an interrupt specifier with edge sensitivity on Rx pin to
+           support Rx in-band wake up. If one would like to use this feature,
+           one must create an addtional pinctrl to reconfigure Rx pin to normal
+           GPIO before suspend.
 
 - clocks : Must contain an entry for each entry in clock-names.
   See ../clocks/clock-bindings.txt for details.
@@ -37,7 +42,11 @@ Example:
 	uart0: serial@11006000 {
 		compatible = "mediatek,mt6589-uart", "mediatek,mt6577-uart";
 		reg = <0x11006000 0x400>;
-		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_LOW>;
+		interrupts-extended = <&sysirq GIC_SPI 51 IRQ_TYPE_LEVEL_LOW>,
+				      <&gpio 121 IRQ_TYPE_EDGE_FALLING>;
 		clocks = <&uart_clk>, <&bus_clk>;
 		clock-names = "baud", "bus";
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&uart_pin>;
+		pinctrl-1 = <&uart_pin_sleep>;
 	};
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
