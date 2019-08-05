Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E7481524
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 11:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxDyZ8sfi5zAQ96UPs97lN7ElAKjKvaF2qLS4NVo5f8=; b=WuepVMgXM9BHrG
	jE2Ruuc2JsLS56xRg5RUTWUfZNYpnGvgmN7imcrbrAb0XWL88WihYYY9JmBib4EO1bzTDKBz8wWd0
	nlFN2NGCjAcrivMnqpUU00SKaIADwPeKf59v22Gvi33cCuCVNdutlLOs6LltNVoilHIWObxDlbqTR
	LYAEyBNB6LNFZPgneDjqxQpp1tMJv+6X3xHem1D7NAooHCQY3W/RjCc18P+4Aq2kHs8ir36D8FqhW
	VKcMHPuJtogjR2knao+s8RVeQqTtG1TlG1zrD2cQha70hrW+mzzsVlxQT3cUuTbHbgpaGld599mvQ
	0ms5pVcBbODR5KtSoWtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ5J-0000Pw-J7; Mon, 05 Aug 2019 09:15:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ2X-00057z-Ki
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 09:12:27 +0000
X-UUID: 17fab244c8d548ad8d3b52e05e5005b4-20190805
X-UUID: 17fab244c8d548ad8d3b52e05e5005b4-20190805
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 161967132; Mon, 05 Aug 2019 01:12:10 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 02:12:09 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 17:12:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 5 Aug 2019 17:12:06 +0800
From: Mars Cheng <mars.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 08/11] dt-bindings: mediatek: bindings for MT6779 clk
Date: Mon, 5 Aug 2019 17:11:57 +0800
Message-ID: <1564996320-10897-9-git-send-email-mars.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
References: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7FA339A3E9B92709963665FA152CA49D9B53064AD81A5ED5C6C5DC72EEE0401D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_021225_691260_0FB56781 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Wendell Lin <wendell.lin@mediatek.com>, Ivan Tseng <ivan.tseng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Wendell Lin <wendell.lin@mediatek.com>

This patch adds the binding documentation for
apmixedsys, audiosys, camsys, imgsys, ipesys,
infracfg, mfgcfg, mmsys, topckgen, vdecsys,
and vencsys for Mediatek MT6779.

Signed-off-by: Wendell Lin <wendell.lin@mediatek.com>
---
 .../bindings/arm/mediatek/mediatek,apmixedsys.txt  |    1 +
 .../bindings/arm/mediatek/mediatek,audsys.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,camsys.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,imgsys.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,infracfg.txt    |    1 +
 .../bindings/arm/mediatek/mediatek,ipesys.txt      |   22 ++++++++++++++++++++
 .../bindings/arm/mediatek/mediatek,mfgcfg.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,mmsys.txt       |    1 +
 .../bindings/arm/mediatek/mediatek,topckgen.txt    |    1 +
 .../bindings/arm/mediatek/mediatek,vdecsys.txt     |    1 +
 .../bindings/arm/mediatek/mediatek,vencsys.txt     |    1 +
 11 files changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,ipesys.txt

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
index 161e63a..ff000cc 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-apmixedsys"
 	- "mediatek,mt2712-apmixedsys", "syscon"
+	- "mediatek,mt6779-apmixedsys", "syscon"
 	- "mediatek,mt6797-apmixedsys"
 	- "mediatek,mt7622-apmixedsys"
 	- "mediatek,mt7623-apmixedsys", "mediatek,mt2701-apmixedsys"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
index 07c9d81..e4ca7b7 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
@@ -7,6 +7,7 @@ Required Properties:
 
 - compatible: Should be one of:
 	- "mediatek,mt2701-audsys", "syscon"
+	- "mediatek,mt6779-audio", "syscon"
 	- "mediatek,mt7622-audsys", "syscon"
 	- "mediatek,mt7623-audsys", "mediatek,mt2701-audsys", "syscon"
 	- "mediatek,mt8183-audiosys", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
index d8930f6..1f4aaa1 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
@@ -6,6 +6,7 @@ The MediaTek camsys controller provides various clocks to the system.
 Required Properties:
 
 - compatible: Should be one of:
+	- "mediatek,mt6779-camsys", "syscon"
 	- "mediatek,mt8183-camsys", "syscon"
 - #clock-cells: Must be 1
 
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
index e3bc4a1..2b693e3 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-imgsys", "syscon"
 	- "mediatek,mt2712-imgsys", "syscon"
+	- "mediatek,mt6779-imgsys", "syscon"
 	- "mediatek,mt6797-imgsys", "syscon"
 	- "mediatek,mt7623-imgsys", "mediatek,mt2701-imgsys", "syscon"
 	- "mediatek,mt8173-imgsys", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
index a909139..db2f4fd 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
@@ -9,6 +9,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-infracfg", "syscon"
 	- "mediatek,mt2712-infracfg", "syscon"
+	- "mediatek,mt6779-infracfg_ao", "syscon"
 	- "mediatek,mt6797-infracfg", "syscon"
 	- "mediatek,mt7622-infracfg", "syscon"
 	- "mediatek,mt7623-infracfg", "mediatek,mt2701-infracfg", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,ipesys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,ipesys.txt
new file mode 100644
index 0000000..2ce889b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,ipesys.txt
@@ -0,0 +1,22 @@
+Mediatek ipesys controller
+============================
+
+The Mediatek ipesys controller provides various clocks to the system.
+
+Required Properties:
+
+- compatible: Should be one of:
+	- "mediatek,mt6779-ipesys", "syscon"
+- #clock-cells: Must be 1
+
+The ipesys controller uses the common clk binding from
+Documentation/devicetree/bindings/clock/clock-bindings.txt
+The available clocks are defined in dt-bindings/clock/mt*-clk.h.
+
+Example:
+
+ipesys: clock-controller@1b000000 {
+	compatible = "mediatek,mt6779-ipesys", "syscon";
+	reg = <0 0x1b000000 0 0x1000>;
+	#clock-cells = <1>;
+};
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mfgcfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mfgcfg.txt
index 72787e7..ad5f9d2 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mfgcfg.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mfgcfg.txt
@@ -7,6 +7,7 @@ Required Properties:
 
 - compatible: Should be one of:
 	- "mediatek,mt2712-mfgcfg", "syscon"
+	- "mediatek,mt6779-mfgcfg", "syscon"
 	- "mediatek,mt8183-mfgcfg", "syscon"
 - #clock-cells: Must be 1
 
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
index 545eab7..301eefb 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-mmsys", "syscon"
 	- "mediatek,mt2712-mmsys", "syscon"
+	- "mediatek,mt6779-mmsys", "syscon"
 	- "mediatek,mt6797-mmsys", "syscon"
 	- "mediatek,mt7623-mmsys", "mediatek,mt2701-mmsys", "syscon"
 	- "mediatek,mt8173-mmsys", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
index a023b83..0293d69 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-topckgen"
 	- "mediatek,mt2712-topckgen", "syscon"
+	- "mediatek,mt6779-topckgen", "syscon"
 	- "mediatek,mt6797-topckgen"
 	- "mediatek,mt7622-topckgen"
 	- "mediatek,mt7623-topckgen", "mediatek,mt2701-topckgen"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vdecsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vdecsys.txt
index 57176bb..7894558 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vdecsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vdecsys.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-vdecsys", "syscon"
 	- "mediatek,mt2712-vdecsys", "syscon"
+	- "mediatek,mt6779-vdecsys", "syscon"
 	- "mediatek,mt6797-vdecsys", "syscon"
 	- "mediatek,mt7623-vdecsys", "mediatek,mt2701-vdecsys", "syscon"
 	- "mediatek,mt8173-vdecsys", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vencsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vencsys.txt
index c9faa62..6a6a14e 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vencsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vencsys.txt
@@ -7,6 +7,7 @@ Required Properties:
 
 - compatible: Should be one of:
 	- "mediatek,mt2712-vencsys", "syscon"
+	- "mediatek,mt6779-vencsys", "syscon"
 	- "mediatek,mt6797-vencsys", "syscon"
 	- "mediatek,mt8173-vencsys", "syscon"
 	- "mediatek,mt8183-vencsys", "syscon"
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
