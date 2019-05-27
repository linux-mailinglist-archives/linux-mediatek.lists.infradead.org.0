Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF722B044
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 10:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YsBIKa3wDEruXUjG0ACr/D0I8SdJ7XxJHGbPCFsrrCg=; b=smkqX2Z1MwTZUN
	WQaX+jgzOzcxneWqrA+6ai2QYlhXsylzsZTwJRi9NvJcQvbqn9WDlR3SsBJq9Lv4+PsWvjf8iKBpC
	eFfYurcH57fR2mflzw9NiF0hNJ7qkcBTSzU96luaK+ykhGxuhuE8/kpPQDO/WXl2AIPH8ONUaT4G8
	qEsmWPySR81indgrZ2a08vUfD0CrGqihq4MK6hc6ntWgFd5BAaBoEx+yoNTpfbTBkeraCAc6WYZnW
	SuJG5GWvXVmvucZWuxe8G6CKNpllSBuctsgtGMBfqyZub7Hx/+UCYo9FBXzXQ+rzAhpdOPLqmLCr2
	A5kPrL3N1WLseLrVdUtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVB37-0006hh-4z; Mon, 27 May 2019 08:32:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVB33-0006gC-89
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 08:32:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id z28so9175234pfk.0
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 01:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xerSC/mm9BOvVEW3oLYxPMIZLIQ4Oo4zyl2Y1qCU630=;
 b=Y8OG6hdNdi7fdyC2QwzE61zi/A6KQ3VCpEvTPDVkVXdAFdkhGh0RfyS3GXOgGTthRb
 SyfvzUbxX8YLlBaRIffij+zygrTZp2OsnWLQ9FkL0nhrlHHwwq/p5IkZ2YkWaeGZX7QY
 806ltaU7Ll5kNePVmwv13r493ash+PtEEWZ3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xerSC/mm9BOvVEW3oLYxPMIZLIQ4Oo4zyl2Y1qCU630=;
 b=azlfxCLmC+mh1xaIQDmT4NUYxP+dxd7zEyC02u25SXxCVslLsKHoKi2gQSBC5Nqrji
 N4tct48nmA3y57M4zK0Wwsnkb3EbOU4nfObNm872KCFKg/7km7kr14vVR+EFl8FDE/1k
 M8NX+z1vm+loS0mGSqciV9K9AmN0nPCzKYnqGNBzWHxtaYUVxjvgYZ6ZE8JDzQAlnkvg
 HP0lt8Pc+ADnfkXNH6VXmucKxSD+RbWMElVUXVOr6Fb9uIolda6pXFMEcHLwykY3LiGJ
 25iCNnLPQRuQa/OrFivOsTru2NbO7JXtfKSlrVdSU+OdG5zx2XuIyr6GLWU+FoV4ivgF
 mkDw==
X-Gm-Message-State: APjAAAVh/JkH0nVJR+FTICg8IV2FENaJ78KbxQrGEPbl744XceWf4guD
 S5X2KJ+DHqYjQ0vTWX4Luythsw==
X-Google-Smtp-Source: APXvYqwYpzLW2L4VKvjsw9Jx7gK6zcQzUn5PljZhwpAnXnEXGvRtf/gAft+ozerLkl2vTvlbc4e1Xw==
X-Received: by 2002:a63:ed09:: with SMTP id d9mr8070992pgi.419.1558945917619; 
 Mon, 27 May 2019 01:31:57 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id b21sm13954636pfb.46.2019.05.27.01.31.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:31:57 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 1/2] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
Date: Mon, 27 May 2019 16:31:49 +0800
Message-Id: <20190527083150.220194-2-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190527083150.220194-1-tientzu@chromium.org>
References: <20190527083150.220194-1-tientzu@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_013201_291558_A2F03871 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
