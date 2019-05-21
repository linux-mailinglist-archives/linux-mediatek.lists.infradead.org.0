Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB0124AAE
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 10:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3aC73g+vuhruQftNgxL7XpkILlsO7UROJlNHOm/t2Y=; b=Cfe8GMACCaljgV
	q1R9a9vuyuTCwspFrQNByzD8v5qNUp0G5Oo6OBxkry1cokIgrTg199Es6qBlRBiN9LwtXh16ivy/j
	wTU/6gXCGqxjjknN1hePF1K78AaBeltncFYvf2/APZ0gMsgsEczKISINNebqs5XoPE7nkR4yNF3AI
	x4xe20A959h/yIX+VTa8M+vUzBG7lH0nvTTfyNw2pe/l5DIC63JOS0/Txf94Zan6TUJiVMRpO/MyF
	zDklnp5w6IuFrrVzj0EhsT90CFno3PprcUUPbQyYm8IWzA90EtB7gQtdaSSlyqoDNAD623TES3iL1
	IREJQEnbQRQocRN5D8HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0QV-0000Mz-C4; Tue, 21 May 2019 08:47:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0QR-0000LJ-NG
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 08:47:13 +0000
Received: by mail-pl1-x643.google.com with SMTP id p15so8107986pll.4
 for <linux-mediatek@lists.infradead.org>; Tue, 21 May 2019 01:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LbIYnI/VuFFwbv+frc2rDwm8FqsGAeYyQ+Gv4X0pQVU=;
 b=jlU8vfwtVbFsFAM5HrN4A5L8ttaVJnpkZPW1FwGn5/oJ46YAf7UzRd7ClUbD5vXRBF
 F9XUgnEXMtYgr0yhrCW5gIoaQPWHe72/BdSpCbj6R83h9DcTzg8Lxr1m6sm7CFaYDAlt
 Q5XGE6xeZCCVfSjHBqWvkjm5urquxV/IJomMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LbIYnI/VuFFwbv+frc2rDwm8FqsGAeYyQ+Gv4X0pQVU=;
 b=eg6pm3OHzgLERxxh5fAHEjx3Yg3NedRTcFjEUQ0c15zkiExTFkzLhGwMbNaL4Q3of1
 n18tRUFHcDPVt5lo+VIWnMetHZVA35JOiJIvd+SjJALNRtsXhordXgOSWP4AIenq6os5
 WA/pUIeQnCGZNte4evjy2kP/fF7nRKPjT91vC5o2KnNF5RmtyEPsdaK3LXh/U9KxKde6
 hZzAK9+PuXl2LSbT2QhmtXl4DzY5B0DfRMjewBMA6t5VuqFNhzwze4uxW3NKE8IgF747
 e1Xx43qLZn9FvwZdXNjxYXZah1DL5SgX1SmdKWRk/fWj4UirZLPk5tL6TNu6E37LPQ2O
 IJZw==
X-Gm-Message-State: APjAAAWMo71URv+C8VV6zEw60OlKgpEpOPkdGT/TD7nVGG+57xd8M4QA
 Ts/GV4l0bHUb3X7uwUmgG3sgU0LsPYpn8g==
X-Google-Smtp-Source: APXvYqwOpDMi3QE0eZKeh6+ut9rvIQ0mpck24ub50PPYm9NBbXzYBOqc/YYsdqI00D3J4MVkUKYjVA==
X-Received: by 2002:a17:902:18a:: with SMTP id
 b10mr55469413plb.277.1558428431205; 
 Tue, 21 May 2019 01:47:11 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id s24sm24304839pfe.57.2019.05.21.01.47.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 01:47:10 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
Date: Tue, 21 May 2019 16:47:00 +0800
Message-Id: <20190521084701.100179-2-tientzu@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190521084701.100179-1-tientzu@chromium.org>
References: <20190521084701.100179-1-tientzu@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014711_755433_02C3B0E9 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, changqi.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 .../devicetree/bindings/serial/mtk-uart.txt         | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/mtk-uart.txt b/Documentation/devicetree/bindings/serial/mtk-uart.txt
index c6b5262eb352..11966de2a4b3 100644
--- a/Documentation/devicetree/bindings/serial/mtk-uart.txt
+++ b/Documentation/devicetree/bindings/serial/mtk-uart.txt
@@ -23,7 +23,12 @@ Required properties:
 
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
@@ -39,7 +44,11 @@ Example:
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
