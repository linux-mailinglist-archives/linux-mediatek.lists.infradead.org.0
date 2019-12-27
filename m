Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A6012B0E5
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Dec 2019 05:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyAePVnjr/umfq64QnaoxAvZjN0Mm9Nc68ttPb/UsMY=; b=iwNHDvs7Pl3yZG
	OMl1kDpC7/y+4VVDckny2/PFXcvOwZdorSuSoF0LC/3w4m1P5c0THm3dBrKsKK56bYKOzI+gSHi4M
	XNY66vNUTWRdUIt/aqKMaTCUXsL9K1hEAPcF9+9IUQvICf433871YR/COL+HMBMbGS9HrJhqfV1PV
	YTJKwoQ2EVrc3S3yHyZ+R7h7U6ykdvrYxedWCPu2YnnNSH08LSGyYA8TaIIRhHBM++jqL+X+OOuSn
	2bpx9PiKK3ezxUXb1BlRrChhXAgfFvfYIXw9znr5UvbfqeG2ErFeojbNaaKNGL6cW83e8uxfG5ujq
	9nhL/HHtE3MlvQ7uMjvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikgt7-00057c-2I; Fri, 27 Dec 2019 04:06:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikgt2-00055y-QP
 for linux-mediatek@lists.infradead.org; Fri, 27 Dec 2019 04:06:06 +0000
X-UUID: f9f6b672349c4b2284e05f5f714a4048-20191226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=jcoI7sSAP0WUWoL73vFfOHM1Cxi2u4vd3UC1VSbMP/c=; 
 b=ClsM3+gWOPHDYowwfrRNRzwqyunvsA5H/B8ZVAxUL6qF5jZC97KK75eypAX3yNJ59bkuqJ9kXTATXO+WdXtpZhAm3JAP/SP180YS2x1XnhbYTaf0wQXsjM5ott5GBHCPv9XpWRKB64obXVqYpbvwHjILj/pljMSf9DLLugsz8aI=;
X-UUID: f9f6b672349c4b2284e05f5f714a4048-20191226
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1852391995; Thu, 26 Dec 2019 20:05:59 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 18:26:56 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 09:38:41 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 09:38:52 +0800
From: fengping yu <fengping.yu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH V2 1/2] Documentation: devicetree: bindings: input
Date: Fri, 27 Dec 2019 09:37:21 +0800
Message-ID: <20191227013722.12201-2-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191227013722.12201-1-fengping.yu@mediatek.com>
References: <20191227013722.12201-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_200604_865923_777B6FC8 
X-CRM114-Status: UNSURE (   9.62  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, "fengping.yu" <fengping.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

Add mtk keypad device tree documentation.

Change-Id: I415b76ee980784992763c768829b2dda76699dea
Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 .../devicetree/bindings/input/mtk-kpd.txt     | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt

diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.txt b/Documentation/devicetree/bindings/input/mtk-kpd.txt
new file mode 100644
index 000000000000..2af81e696159
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/mtk-kpd.txt
@@ -0,0 +1,45 @@
+* Mediatek's Keypad Controller device tree binding
+
+Mediatek's Keypad controller is used to interface a SoC with a matrix-type
+keypad device. The keypad controller supports multiple row and column lines.
+A key can be placed at each intersection of a unique row and a unique column.
+The keypad controller can sense a key-press and key-release and report the
+event using a interrupt to the cpu.
+
+Required properties:
+- compatible should contain:
+	* "mediatek,mt6779-keypad" for MT6779 keypad
+	* "mediatek,kp" for common keypad
+
+- reg: The base address of the Keypad register bank.
+
+- interrupts: A single interrupt specifier.
+
+- mediatek,key-debounce-ms: Debounce interval in milliseconds, maximum value
+  is 256ms
+
+- mediatek,hw-map-num: Number of entries of keycode in mediatek,hw-init-map
+
+- mediatek,hw-init-map: An array of packed 1-cell entries containing the
+  equivalent of hw-map-num linux key-code. Each cell is Linux keymap of
+  corresponding row/col, arrange like this:
+
+  row0col0, row0col1, row0col2,...row0col8,
+  row1col0, row1col1, row1col2,...row1col8,
+  ...
+  row7col0, row7col1, row7col2,...row7col8.
+
+Example:
+
+	keypad: kp@10010000 {
+		compatible = "mediatek,mt6779-keypad", "mediatek,kp";
+		reg = <0 0x10010000 0 0x1000>;
+		interrupts = <GIC_SPI 75 IRQ_TYPE_EDGE_FALLING>;
+	};
+
+	&keypad {
+		mediatek,key-debounce-ms = <1024>;
+		/*HW Keycode [0~71] -> Linux Keycode*/
+		mediatek,khw-map-num = <72>;
+		mediatek,hw-init-map = <114 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 >;
+	};
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
