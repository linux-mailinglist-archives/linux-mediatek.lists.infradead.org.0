Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE612AF00
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 08:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YsBIKa3wDEruXUjG0ACr/D0I8SdJ7XxJHGbPCFsrrCg=; b=oaodIbwSZD+6E3
	/AqxeXsiETLqKkFwiQ+6x0J/cHndpqL7f5vBFKKVjxHBydpDYAWJIf1q9p/XOBB9nb9ve8SyJ6fDU
	+n+B/u3q114Ga6+qg3l6dpA4aSadE1htSruo5bDfVvb69S7azZfZeOTF4Ukkjsr/kKYJAmFyBhRGE
	P9UC3TeVF7aFL3uG61UurEI6dBLt+aHe9/seTufRdouU65+EuKda74sXZ8fkYxpIx7oxTodKeGPY6
	oluBMY7v1NaplmG7/cFQQAmyAy72ZsG82dkD/0UBdkEnYcW9opUFoJt8p2lUGY90L5yXDI26y43LI
	LevdNsCS9fTqMIjQny8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9YK-0001OL-Qw; Mon, 27 May 2019 06:56:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9YH-0001Mu-Fp
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 06:56:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so8561440pgb.3
 for <linux-mediatek@lists.infradead.org>; Sun, 26 May 2019 23:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xerSC/mm9BOvVEW3oLYxPMIZLIQ4Oo4zyl2Y1qCU630=;
 b=EDgH5Tg9MUT8wYSX/I/78TQjfnAIT45trMeoMBxgaFYHM1TO+jBWiChGX7XajfMBnB
 MkS7f2c3xhe8TniPVbPck/A5K0qG5QG5WbIU5T6t9OvsEz1XVH6WOXUEodhBCNm0iBpL
 hKxByL47EP/kaoaHQcPGIzAwij9MXXBk47SHw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xerSC/mm9BOvVEW3oLYxPMIZLIQ4Oo4zyl2Y1qCU630=;
 b=hulDYRIPC9VFy0aKpEtfE1NVOz9M/tFykQeLO3FcEP6m/b8B/qMeneWpx/uYuZvIPq
 qFdyHA/4h5S88BLnDYW+1wnOUk/RaXmQ6tyEoIsBy/LUgEC0xM8gv7Nf2WrknfKfgjzB
 i4ddJxKRMnSg9nZBnRaWi+UrDBxLMtq7InULIWd+9853DISi/3B81tTacZqu3N3q3AHL
 5Uc4TogyBzZCK3JpdSip1hQYE+WpAxt9t7FTZL9Y1IftWxQahREQrrv9B+BekDzdCLeb
 zbvM6oEjI/Bf1vGNImYB2hZ1Xq0L5wrQUKle+aPPNnjA/NrpZMoxbmMc1+qDVMcvMBm4
 1Flw==
X-Gm-Message-State: APjAAAUSU53OIY3Gq3JrzF1891s8CXzGVgqhlqhCQC5vIdyK+uI+ZwsK
 wBoK3VAymIXYTELipY9RKllnbQ==
X-Google-Smtp-Source: APXvYqw4h01MnpXR8PN73d+xU/KEzLyn1lrestfUFNb41t3906mgw1QVTlC9zUCTvfgyK87gcqhScw==
X-Received: by 2002:a63:6ac3:: with SMTP id
 f186mr124627918pgc.326.1558940168746; 
 Sun, 26 May 2019 23:56:08 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id j26sm13529000pgl.31.2019.05.26.23.56.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 23:56:08 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
Date: Mon, 27 May 2019 14:55:58 +0800
Message-Id: <20190527065559.66056-2-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190527065559.66056-1-tientzu@chromium.org>
References: <20190527065559.66056-1-tientzu@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_235609_531318_45F8BEAD 
X-CRM114-Status: GOOD (  11.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Claire Chang <tientzu@chromium.org>, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 changqi.hu@mediatek.com
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
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
