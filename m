Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58071DC9D2
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 11:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TGrEWdr1b3TyZwKCILEIVu6qcEPOquvDlmKYgm3yyQ=; b=DrIUETa3NeRSfi
	hcxK0mtgtLritzityFtHz3LJosQ+o8L1ekvZTiJDAecBn/QfBAJ5p9Bn8wc9dB8VVswODMFlYp7rI
	7kTXtYG+eyqYJ7GfV71bz3nBjNwaXKmaBRRHF492wxgzVQpvNIeTQ34igMNJ6pQMGspgNaFiNPiJL
	aLIfGSIDTbKB/XaoQQmdJIc2RGnbYu5w+wVHz4BV2Krp/d9qm25RFETrB0l2Uwq9rE4Fg1QiR6Iap
	EB0Mf7A/PhK+2ZukI2HCOCNH9RnjHE9edgQ69DMN7KB9x/md9e9LdVhKcu5EDxOoTdu0p7QGwdEji
	bOZV3fbT/qpPZWu9pwew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhLE-0004P3-OZ; Thu, 21 May 2020 09:18:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhJh-0003EK-5N; Thu, 21 May 2020 09:16:43 +0000
X-UUID: a8a9952e8c5c463e8fbeedc337c5e0a2-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=zwbXzk/BSIeNIvvjRJzpvop3PJsR4Rm3BIH0SLVJuBU=; 
 b=Wahn+Jk1fTh/MROBT5iSyLPSkm9INuhxrpFMxRMI/DBwuVwLufTWT5x87jfCUglaWdRwOSk+sRJCh2v6acibVQhdv9I6n5Z5clVE2y8ZH365uFbNzfv+qnZ2Jigf1oulKXg5cImcm3qLk33NQULzti74bRtt/zJ0fAiQo2wuDlM=;
X-UUID: a8a9952e8c5c463e8fbeedc337c5e0a2-20200521
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1305585473; Thu, 21 May 2020 01:16:33 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 02:06:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 17:06:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 21 May 2020 17:06:30 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Nicolas Boichat <drinkcat@chromium.org>, "Rob
 Herring" <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v15 10/11] arm64: dts: Add power controller device node of
 MT8183
Date: Thu, 21 May 2020 17:06:23 +0800
Message-ID: <1590051985-29149-11-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
References: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 963B7AC0DEC99ADE267355ECEDD96D6BE2A8F32A693226180D074175C532F9E52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_021641_260443_C1D24A0B 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add power controller node and smi-common node for MT8183
In scpsys node, it contains clocks and regmapping of
infracfg and smi-common for bus protection.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 62 ++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 97863ad..ff7fe0c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8183-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/power/mt8183-power.h>
 #include <dt-bindings/reset-controller/mt8183-resets.h>
 #include "mt8183-pinfunc.h"
 
@@ -301,6 +302,62 @@
 			#interrupt-cells = <2>;
 		};
 
+		scpsys: power-controller@10006000 {
+			compatible = "mediatek,mt8183-scpsys", "syscon";
+			#power-domain-cells = <1>;
+			reg = <0 0x10006000 0 0x1000>;
+			clocks = <&topckgen CLK_TOP_MUX_AUD_INTBUS>,
+				 <&infracfg CLK_INFRA_AUDIO>,
+				 <&infracfg CLK_INFRA_AUDIO_26M_BCLK>,
+				 <&topckgen CLK_TOP_MUX_MFG>,
+				 <&topckgen CLK_TOP_MUX_MM>,
+				 <&topckgen CLK_TOP_MUX_CAM>,
+				 <&topckgen CLK_TOP_MUX_IMG>,
+				 <&topckgen CLK_TOP_MUX_IPU_IF>,
+				 <&topckgen CLK_TOP_MUX_DSP>,
+				 <&topckgen CLK_TOP_MUX_DSP1>,
+				 <&topckgen CLK_TOP_MUX_DSP2>,
+				 <&mmsys CLK_MM_SMI_COMMON>,
+				 <&mmsys CLK_MM_SMI_LARB0>,
+				 <&mmsys CLK_MM_SMI_LARB1>,
+				 <&mmsys CLK_MM_GALS_COMM0>,
+				 <&mmsys CLK_MM_GALS_COMM1>,
+				 <&mmsys CLK_MM_GALS_CCU2MM>,
+				 <&mmsys CLK_MM_GALS_IPU12MM>,
+				 <&mmsys CLK_MM_GALS_IMG2MM>,
+				 <&mmsys CLK_MM_GALS_CAM2MM>,
+				 <&mmsys CLK_MM_GALS_IPU2MM>,
+				 <&imgsys CLK_IMG_LARB5>,
+				 <&imgsys CLK_IMG_LARB2>,
+				 <&camsys CLK_CAM_LARB6>,
+				 <&camsys CLK_CAM_LARB3>,
+				 <&camsys CLK_CAM_SENINF>,
+				 <&camsys CLK_CAM_CAMSV0>,
+				 <&camsys CLK_CAM_CAMSV1>,
+				 <&camsys CLK_CAM_CAMSV2>,
+				 <&camsys CLK_CAM_CCU>,
+				 <&ipu_conn CLK_IPU_CONN_IPU>,
+				 <&ipu_conn CLK_IPU_CONN_AHB>,
+				 <&ipu_conn CLK_IPU_CONN_AXI>,
+				 <&ipu_conn CLK_IPU_CONN_ISP>,
+				 <&ipu_conn CLK_IPU_CONN_CAM_ADL>,
+				 <&ipu_conn CLK_IPU_CONN_IMG_ADL>;
+			clock-names = "audio", "audio1", "audio2",
+				      "mfg", "mm", "cam",
+				      "isp", "vpu", "vpu1",
+				      "vpu2", "vpu3", "mm-0",
+				      "mm-1", "mm-2", "mm-3",
+				      "mm-4", "mm-5", "mm-6",
+				      "mm-7", "mm-8", "mm-9",
+				      "isp-0", "isp-1", "cam-0",
+				      "cam-1", "cam-2", "cam-3",
+				      "cam-4", "cam-5", "cam-6",
+				      "vpu-0", "vpu-1", "vpu-2",
+				      "vpu-3", "vpu-4", "vpu-5";
+			infracfg = <&infracfg>;
+			mediatek,smi = <&smi_common>;
+		};
+
 		watchdog: watchdog@10007000 {
 			compatible = "mediatek,mt8183-wdt",
 				     "mediatek,mt6589-wdt";
@@ -658,6 +715,11 @@
 			#clock-cells = <1>;
 		};
 
+		smi_common: smi@14019000 {
+			compatible = "mediatek,mt8183-smi-common", "syscon";
+			reg = <0 0x14019000 0 0x1000>;
+		};
+
 		imgsys: syscon@15020000 {
 			compatible = "mediatek,mt8183-imgsys", "syscon";
 			reg = <0 0x15020000 0 0x1000>;
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
