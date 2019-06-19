Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE35D4B42E
	for <lists+linux-mediatek@lfdr.de>; Wed, 19 Jun 2019 10:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eZx7oRtVDvf7X1WONeLd5c/M6LnRtrYS5jMBKPw5MdQ=; b=jCdN427+as0VCF
	zjqt6Rs46Bi6SJGe3Peuegr18B+vIWPqz8mVDALB9wfeHIdXsI1tRcV81ISzYro+BxO52Z6/4DjWL
	wr1GA8CgbTEcZtPJeU1WN82dBGUopiy6kOlDGRG4ZBJ63vCdzOdmusqRrUAoUiUYHV2NynjHqFPZi
	cTQ4pt72XtSEdmxaOcxdgISgEGqBxECjBPJpbTiWPRt0JYW6A1nGaayiJrecemx50B0hSxjCCtEwN
	NDyd4LsKS5a1HnzwaYg4F3ubaomDa5MG8eIRh7O0cxml/sGBr/iRIvr7xwMtOIHD/p7PRCBVYOzRb
	zVvguBisP25NXRPZIJig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdW9g-0001r9-Qx; Wed, 19 Jun 2019 08:41:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdW9d-0001qM-CL
 for linux-mediatek@lists.infradead.org; Wed, 19 Jun 2019 08:41:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id p1so6915096plo.2
 for <linux-mediatek@lists.infradead.org>; Wed, 19 Jun 2019 01:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BWIJ70WdMFz/jeDhTRhrtAoXxvSpe0pNQVvoG+VQFGs=;
 b=V3DLSpcc2BoFCHxAAvQsfeLbwdXQmBLILrr2FyXVeHflkQFjO8MlCFjfjILAXx9onD
 kYm4223Ihq9K+9AhIfjwfaFfbcmhqtbirbRPHGu9oAo9SfzMRr33Gu3MmmvswDx9qlsl
 4JB7RSkQ0Ok1+M9tEDTe0Aah5pzM3hA/2pVes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BWIJ70WdMFz/jeDhTRhrtAoXxvSpe0pNQVvoG+VQFGs=;
 b=h6FWT1I2ohf1ALcqKaV3ZxJ4xTNWqjqpkg9dmVNzO3Ab/mNv12f2zdAySTzZ60hpnz
 Q1+60iSe1PlADoJrr+W5kU8l+sAGbOzLSHB2qty9ecyYsCmHWxgrP/Bc6Fi3niCoipLt
 itOHiYIw5np8ba68EfvAbqsSvkdl8wmDG5bF/15EE+91uUtjG2x7vCfWP8AP5liO4sxL
 v5IW+fxUHyTLY5hKxLIcJcuZ+vv4JvZL8aoy9RGDdnX+fKGFN+yoyMnNgdWVRNpsJ9PU
 cBmMXKB/ubf1PfXaikoXU7qLGrNFxckQoIvFFfnA71Ztnav6ClM3Xs0ytFzekr/kb7Th
 xg0w==
X-Gm-Message-State: APjAAAX/qcezdDSAqnmjQcKOPl5TPs4qsrtB2eTui24DULEpEfNdUPgR
 lr+rgHNkntSmttI6JZELLCRjpg==
X-Google-Smtp-Source: APXvYqx3LtOKFswTlOGlz+oX432Dger3vKl7izXCzOJ/ObMFcZZuAgPUtI8T4Fhrvhv/tOEfWMeWzQ==
X-Received: by 2002:a17:902:54f:: with SMTP id
 73mr116106684plf.246.1560933676451; 
 Wed, 19 Jun 2019 01:41:16 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id s129sm17177724pfb.186.2019.06.19.01.41.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 01:41:15 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: robh+dt@kernel.org
Subject: [PATCH v2] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
Date: Wed, 19 Jun 2019 16:41:10 +0800
Message-Id: <20190619084110.136713-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_014117_448505_0B0D7A31 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
changes in v2:
just document 'interrupts' instead of 'interrupts-extended'

 .../devicetree/bindings/serial/mtk-uart.txt         | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/mtk-uart.txt b/Documentation/devicetree/bindings/serial/mtk-uart.txt
index bcfb13194f16..36b760c25ee3 100644
--- a/Documentation/devicetree/bindings/serial/mtk-uart.txt
+++ b/Documentation/devicetree/bindings/serial/mtk-uart.txt
@@ -21,7 +21,12 @@ Required properties:
 
 - reg: The base address of the UART register bank.
 
-- interrupts: A single interrupt specifier.
+- interrupts:
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
+		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 52 IRQ_TYPE_EDGE_FALLING>;
 		clocks = <&uart_clk>, <&bus_clk>;
 		clock-names = "baud", "bus";
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&uart_pin>;
+		pinctrl-1 = <&uart_pin_sleep>;
 	};
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
