Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F289202D
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 11:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+li+sOt00/V6MzsJxltD3/vAMN5PCzozc7OWa8m2bDw=; b=Lki+JasfvtrGnm
	oZmCnU0fxrYd6hneNo93au7fYnI/l7Gd8cVEGkRESyKGwNb63YLENItZ5s+6OHzVPGCecTjNhu1zn
	RdITD17S6IYb2wtOfT53NQ3j1HtA2J8ehaASWL5ipQkuC0m9kKQpAXgKoeTbCC4XtHlaFqN/pRy6n
	UQiKDrquW809iLAhSbwR/GiI/wNRhgmMLvThOQXaq3OFHeLNDn5o+ZXvwoAeW43ftgSFGyUVwlD2u
	KmWEu6vbsCMBXgOLLsWFyXDfAtg0cq2ZoIme6whErUvr2U7dUD3rhv+N7HPbBxPcLjINDRzrKW999
	dzSwao2JeiecNaLsDQSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdsa-0006JN-1S; Mon, 19 Aug 2019 09:23:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdrj-0005LR-BA
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 09:22:17 +0000
X-UUID: d2790977c9464fb18b2ac734ca6babf8-20190819
X-UUID: d2790977c9464fb18b2ac734ca6babf8-20190819
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 698509351; Mon, 19 Aug 2019 01:22:03 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 02:22:03 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 17:22:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 19 Aug 2019 17:22:01 +0800
From: Mars Cheng <mars.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
 Marc Zyngier <marc.zyngier@arm.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 09/11] clk: mediatek: Add dt-bindings for MT6779 clocks
Date: Mon, 19 Aug 2019 17:21:40 +0800
Message-ID: <1566206502-4347-10-git-send-email-mars.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F18B70B5EC38858FB5D2D0961C33533ED5B84CD51A0C3192EDE4DC249B39276C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022215_462095_CBC0E322 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: mtk01761 <wendell.lin@mediatek.com>

Add MT6779 clock dt-bindings, include topckgen, apmixedsys,
infracfg, and subsystem clocks.

Signed-off-by: mtk01761 <wendell.lin@mediatek.com>
---
 include/dt-bindings/clock/mt6779-clk.h |  436 ++++++++++++++++++++++++++++++++
 1 file changed, 436 insertions(+)
 create mode 100644 include/dt-bindings/clock/mt6779-clk.h

diff --git a/include/dt-bindings/clock/mt6779-clk.h b/include/dt-bindings/clock/mt6779-clk.h
new file mode 100644
index 0000000..b083139
--- /dev/null
+++ b/include/dt-bindings/clock/mt6779-clk.h
@@ -0,0 +1,436 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Wendell Lin <wendell.lin@mediatek.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_MT6779_H
+#define _DT_BINDINGS_CLK_MT6779_H
+
+/* TOPCKGEN */
+#define CLK_TOP_AXI			1
+#define CLK_TOP_MM			2
+#define CLK_TOP_CAM			3
+#define CLK_TOP_MFG			4
+#define CLK_TOP_CAMTG			5
+#define CLK_TOP_UART			6
+#define CLK_TOP_SPI			7
+#define CLK_TOP_MSDC50_0_HCLK		8
+#define CLK_TOP_MSDC50_0		9
+#define CLK_TOP_MSDC30_1		10
+#define CLK_TOP_MSDC30_2		11
+#define CLK_TOP_AUD			12
+#define CLK_TOP_AUD_INTBUS		13
+#define CLK_TOP_FPWRAP_ULPOSC		14
+#define CLK_TOP_SCP			15
+#define CLK_TOP_ATB			16
+#define CLK_TOP_SSPM			17
+#define CLK_TOP_DPI0			18
+#define CLK_TOP_SCAM			19
+#define CLK_TOP_AUD_1			20
+#define CLK_TOP_AUD_2			21
+#define CLK_TOP_DISP_PWM		22
+#define CLK_TOP_SSUSB_TOP_XHCI		23
+#define CLK_TOP_USB_TOP			24
+#define CLK_TOP_SPM			25
+#define CLK_TOP_I2C			26
+#define CLK_TOP_F52M_MFG		27
+#define CLK_TOP_SENINF			28
+#define CLK_TOP_DXCC			29
+#define CLK_TOP_CAMTG2			30
+#define CLK_TOP_AUD_ENG1		31
+#define CLK_TOP_AUD_ENG2		32
+#define CLK_TOP_FAES_UFSFDE		33
+#define CLK_TOP_FUFS			34
+#define CLK_TOP_IMG			35
+#define CLK_TOP_DSP			36
+#define CLK_TOP_DSP1			37
+#define CLK_TOP_DSP2			38
+#define CLK_TOP_IPU_IF			39
+#define CLK_TOP_CAMTG3			40
+#define CLK_TOP_CAMTG4			41
+#define CLK_TOP_PMICSPI			42
+#define CLK_TOP_MAINPLL_CK		43
+#define CLK_TOP_MAINPLL_D2		44
+#define CLK_TOP_MAINPLL_D3		45
+#define CLK_TOP_MAINPLL_D5		46
+#define CLK_TOP_MAINPLL_D7		47
+#define CLK_TOP_MAINPLL_D2_D2		48
+#define CLK_TOP_MAINPLL_D2_D4		49
+#define CLK_TOP_MAINPLL_D2_D8		50
+#define CLK_TOP_MAINPLL_D2_D16		51
+#define CLK_TOP_MAINPLL_D3_D2		52
+#define CLK_TOP_MAINPLL_D3_D4		53
+#define CLK_TOP_MAINPLL_D3_D8		54
+#define CLK_TOP_MAINPLL_D5_D2		55
+#define CLK_TOP_MAINPLL_D5_D4		56
+#define CLK_TOP_MAINPLL_D7_D2		57
+#define CLK_TOP_MAINPLL_D7_D4		58
+#define CLK_TOP_UNIVPLL_CK		59
+#define CLK_TOP_UNIVPLL_D2		60
+#define CLK_TOP_UNIVPLL_D3		61
+#define CLK_TOP_UNIVPLL_D5		62
+#define CLK_TOP_UNIVPLL_D7		63
+#define CLK_TOP_UNIVPLL_D2_D2		64
+#define CLK_TOP_UNIVPLL_D2_D4		65
+#define CLK_TOP_UNIVPLL_D2_D8		66
+#define CLK_TOP_UNIVPLL_D3_D2		67
+#define CLK_TOP_UNIVPLL_D3_D4		68
+#define CLK_TOP_UNIVPLL_D3_D8		69
+#define CLK_TOP_UNIVPLL_D5_D2		70
+#define CLK_TOP_UNIVPLL_D5_D4		71
+#define CLK_TOP_UNIVPLL_D5_D8		72
+#define CLK_TOP_APLL1_CK		73
+#define CLK_TOP_APLL1_D2		74
+#define CLK_TOP_APLL1_D4		75
+#define CLK_TOP_APLL1_D8		76
+#define CLK_TOP_APLL2_CK		77
+#define CLK_TOP_APLL2_D2		78
+#define CLK_TOP_APLL2_D4		79
+#define CLK_TOP_APLL2_D8		80
+#define CLK_TOP_TVDPLL_CK		81
+#define CLK_TOP_TVDPLL_D2		82
+#define CLK_TOP_TVDPLL_D4		83
+#define CLK_TOP_TVDPLL_D8		84
+#define CLK_TOP_TVDPLL_D16		85
+#define CLK_TOP_MSDCPLL_CK		86
+#define CLK_TOP_MSDCPLL_D2		87
+#define CLK_TOP_MSDCPLL_D4		88
+#define CLK_TOP_MSDCPLL_D8		89
+#define CLK_TOP_MSDCPLL_D16		90
+#define CLK_TOP_AD_OSC_CK		91
+#define CLK_TOP_OSC_D2			92
+#define CLK_TOP_OSC_D4			93
+#define CLK_TOP_OSC_D8			94
+#define CLK_TOP_OSC_D16			95
+#define CLK_TOP_F26M_CK_D2		96
+#define CLK_TOP_MFGPLL_CK		97
+#define CLK_TOP_UNIVP_192M_CK		98
+#define CLK_TOP_UNIVP_192M_D2		99
+#define CLK_TOP_UNIVP_192M_D4		100
+#define CLK_TOP_UNIVP_192M_D8		101
+#define CLK_TOP_UNIVP_192M_D16		102
+#define CLK_TOP_UNIVP_192M_D32		103
+#define CLK_TOP_MMPLL_CK		104
+#define CLK_TOP_MMPLL_D4		105
+#define CLK_TOP_MMPLL_D4_D2		106
+#define CLK_TOP_MMPLL_D4_D4		107
+#define CLK_TOP_MMPLL_D5		108
+#define CLK_TOP_MMPLL_D5_D2		109
+#define CLK_TOP_MMPLL_D5_D4		110
+#define CLK_TOP_MMPLL_D6		111
+#define CLK_TOP_MMPLL_D7		112
+#define CLK_TOP_CLK26M			113
+#define CLK_TOP_CLK13M			114
+#define CLK_TOP_ADSP			115
+#define CLK_TOP_DPMAIF			116
+#define CLK_TOP_VENC			117
+#define CLK_TOP_VDEC			118
+#define CLK_TOP_CAMTM			119
+#define CLK_TOP_PWM			120
+#define CLK_TOP_ADSPPLL_CK		121
+#define CLK_TOP_I2S0_M_SEL		122
+#define CLK_TOP_I2S1_M_SEL		123
+#define CLK_TOP_I2S2_M_SEL		124
+#define CLK_TOP_I2S3_M_SEL		125
+#define CLK_TOP_I2S4_M_SEL		126
+#define CLK_TOP_I2S5_M_SEL		127
+#define CLK_TOP_APLL12_DIV0		128
+#define CLK_TOP_APLL12_DIV1		129
+#define CLK_TOP_APLL12_DIV2		130
+#define CLK_TOP_APLL12_DIV3		131
+#define CLK_TOP_APLL12_DIV4		132
+#define CLK_TOP_APLL12_DIVB		133
+#define CLK_TOP_APLL12_DIV5		134
+#define CLK_TOP_IPE			135
+#define CLK_TOP_DPE			136
+#define CLK_TOP_CCU			137
+#define CLK_TOP_DSP3			138
+#define CLK_TOP_SENINF1			139
+#define CLK_TOP_SENINF2			140
+#define CLK_TOP_AUD_H			141
+#define CLK_TOP_CAMTG5			142
+#define CLK_TOP_TVDPLL_MAINPLL_D2_CK	143
+#define CLK_TOP_AD_OSC2_CK		144
+#define CLK_TOP_OSC2_D2			145
+#define CLK_TOP_OSC2_D3			146
+#define CLK_TOP_FMEM_466M_CK		147
+#define CLK_TOP_ADSPPLL_D4		148
+#define CLK_TOP_ADSPPLL_D5		149
+#define CLK_TOP_ADSPPLL_D6		150
+#define CLK_TOP_OSC_D10			151
+#define CLK_TOP_UNIVPLL_D3_D16		152
+#define CLK_TOP_NR_CLK			153
+
+/* APMIXED */
+#define CLK_APMIXED_ARMPLL_LL		1
+#define CLK_APMIXED_ARMPLL_BL		2
+#define CLK_APMIXED_ARMPLL_BB		3
+#define CLK_APMIXED_CCIPLL		4
+#define CLK_APMIXED_MAINPLL		5
+#define CLK_APMIXED_UNIV2PLL		6
+#define CLK_APMIXED_MSDCPLL		7
+#define CLK_APMIXED_ADSPPLL		8
+#define CLK_APMIXED_MMPLL		9
+#define CLK_APMIXED_MFGPLL		10
+#define CLK_APMIXED_TVDPLL		11
+#define CLK_APMIXED_APLL1		12
+#define CLK_APMIXED_APLL2		13
+#define CLK_APMIXED_SSUSB26M		14
+#define CLK_APMIXED_APPLL26M		15
+#define CLK_APMIXED_MIPIC0_26M		16
+#define CLK_APMIXED_MDPLLGP26M		17
+#define CLK_APMIXED_MM_F26M		18
+#define CLK_APMIXED_UFS26M		19
+#define CLK_APMIXED_MIPIC1_26M		20
+#define CLK_APMIXED_MEMPLL26M		21
+#define CLK_APMIXED_CLKSQ_LVPLL_26M	22
+#define CLK_APMIXED_MIPID0_26M		23
+#define CLK_APMIXED_MIPID1_26M		24
+#define CLK_APMIXED_NR_CLK		25
+
+/* CAMSYS */
+#define CLK_CAM_LARB10			1
+#define CLK_CAM_DFP_VAD			2
+#define CLK_CAM_LARB11			3
+#define CLK_CAM_LARB9			4
+#define CLK_CAM_CAM			5
+#define CLK_CAM_CAMTG			6
+#define CLK_CAM_SENINF			7
+#define CLK_CAM_CAMSV0			8
+#define CLK_CAM_CAMSV1			9
+#define CLK_CAM_CAMSV2			10
+#define CLK_CAM_CAMSV3			11
+#define CLK_CAM_CCU			12
+#define CLK_CAM_FAKE_ENG		13
+#define CLK_CAM_NR_CLK			14
+
+/* INFRA */
+#define CLK_INFRA_PMIC_TMR		1
+#define CLK_INFRA_PMIC_AP		2
+#define CLK_INFRA_PMIC_MD		3
+#define CLK_INFRA_PMIC_CONN		4
+#define CLK_INFRA_SCPSYS		5
+#define CLK_INFRA_SEJ			6
+#define CLK_INFRA_APXGPT		7
+#define CLK_INFRA_ICUSB			8
+#define CLK_INFRA_GCE			9
+#define CLK_INFRA_THERM			10
+#define CLK_INFRA_I2C0			11
+#define CLK_INFRA_I2C1			12
+#define CLK_INFRA_I2C2			13
+#define CLK_INFRA_I2C3			14
+#define CLK_INFRA_PWM_HCLK		15
+#define CLK_INFRA_PWM1			16
+#define CLK_INFRA_PWM2			17
+#define CLK_INFRA_PWM3			18
+#define CLK_INFRA_PWM4			19
+#define CLK_INFRA_PWM			20
+#define CLK_INFRA_UART0			21
+#define CLK_INFRA_UART1			22
+#define CLK_INFRA_UART2			23
+#define CLK_INFRA_UART3			24
+#define CLK_INFRA_GCE_26M		25
+#define CLK_INFRA_CQ_DMA_FPC		26
+#define CLK_INFRA_BTIF			27
+#define CLK_INFRA_SPI0			28
+#define CLK_INFRA_MSDC0			29
+#define CLK_INFRA_MSDC1			30
+#define CLK_INFRA_MSDC2			31
+#define CLK_INFRA_MSDC0_SCK		32
+#define CLK_INFRA_DVFSRC		33
+#define CLK_INFRA_GCPU			34
+#define CLK_INFRA_TRNG			35
+#define CLK_INFRA_AUXADC		36
+#define CLK_INFRA_CPUM			37
+#define CLK_INFRA_CCIF1_AP		38
+#define CLK_INFRA_CCIF1_MD		39
+#define CLK_INFRA_AUXADC_MD		40
+#define CLK_INFRA_MSDC1_SCK		41
+#define CLK_INFRA_MSDC2_SCK		42
+#define CLK_INFRA_AP_DMA		43
+#define CLK_INFRA_XIU			44
+#define CLK_INFRA_DEVICE_APC		45
+#define CLK_INFRA_CCIF_AP		46
+#define CLK_INFRA_DEBUGSYS		47
+#define CLK_INFRA_AUD			48
+#define CLK_INFRA_CCIF_MD		49
+#define CLK_INFRA_DXCC_SEC_CORE		50
+#define CLK_INFRA_DXCC_AO		51
+#define CLK_INFRA_DRAMC_F26M		52
+#define CLK_INFRA_IRTX			53
+#define CLK_INFRA_DISP_PWM		54
+#define CLK_INFRA_DPMAIF_CK		55
+#define CLK_INFRA_AUD_26M_BCLK		56
+#define CLK_INFRA_SPI1			57
+#define CLK_INFRA_I2C4			58
+#define CLK_INFRA_MODEM_TEMP_SHARE	59
+#define CLK_INFRA_SPI2			60
+#define CLK_INFRA_SPI3			61
+#define CLK_INFRA_UNIPRO_SCK		62
+#define CLK_INFRA_UNIPRO_TICK		63
+#define CLK_INFRA_UFS_MP_SAP_BCLK	64
+#define CLK_INFRA_MD32_BCLK		65
+#define CLK_INFRA_SSPM			66
+#define CLK_INFRA_UNIPRO_MBIST		67
+#define CLK_INFRA_SSPM_BUS_HCLK		68
+#define CLK_INFRA_I2C5			69
+#define CLK_INFRA_I2C5_ARBITER		70
+#define CLK_INFRA_I2C5_IMM		71
+#define CLK_INFRA_I2C1_ARBITER		72
+#define CLK_INFRA_I2C1_IMM		73
+#define CLK_INFRA_I2C2_ARBITER		74
+#define CLK_INFRA_I2C2_IMM		75
+#define CLK_INFRA_SPI4			76
+#define CLK_INFRA_SPI5			77
+#define CLK_INFRA_CQ_DMA		78
+#define CLK_INFRA_UFS			79
+#define CLK_INFRA_AES_UFSFDE		80
+#define CLK_INFRA_UFS_TICK		81
+#define CLK_INFRA_MSDC0_SELF		82
+#define CLK_INFRA_MSDC1_SELF		83
+#define CLK_INFRA_MSDC2_SELF		84
+#define CLK_INFRA_SSPM_26M_SELF		85
+#define CLK_INFRA_SSPM_32K_SELF		86
+#define CLK_INFRA_UFS_AXI		87
+#define CLK_INFRA_I2C6			88
+#define CLK_INFRA_AP_MSDC0		89
+#define CLK_INFRA_MD_MSDC0		90
+#define CLK_INFRA_USB			91
+#define CLK_INFRA_DEVMPU_BCLK		92
+#define CLK_INFRA_CCIF2_AP		93
+#define CLK_INFRA_CCIF2_MD		94
+#define CLK_INFRA_CCIF3_AP		95
+#define CLK_INFRA_CCIF3_MD		96
+#define CLK_INFRA_SEJ_F13M		97
+#define CLK_INFRA_AES_BCLK		98
+#define CLK_INFRA_I2C7			99
+#define CLK_INFRA_I2C8			100
+#define CLK_INFRA_FBIST2FPC		101
+#define CLK_INFRA_CCIF4_AP		102
+#define CLK_INFRA_CCIF4_MD		103
+#define CLK_INFRA_FADSP			104
+#define CLK_INFRA_SSUSB_XHCI		105
+#define CLK_INFRA_SPI6			106
+#define CLK_INFRA_SPI7			107
+#define CLK_INFRA_NR_CLK		108
+
+/* MFGCFG */
+#define CLK_MFGCFG_BG3D			1
+#define CLK_MFGCFG_NR_CLK		2
+
+/* IMG */
+#define CLK_IMG_WPE_A			1
+#define CLK_IMG_MFB			2
+#define CLK_IMG_DIP			3
+#define CLK_IMG_LARB6			4
+#define CLK_IMG_LARB5			5
+#define CLK_IMG_NR_CLK			6
+
+/* IPE */
+#define CLK_IPE_LARB7			1
+#define CLK_IPE_LARB8			2
+#define CLK_IPE_SMI_SUBCOM		3
+#define CLK_IPE_FD			4
+#define CLK_IPE_FE			5
+#define CLK_IPE_RSC			6
+#define CLK_IPE_DPE			7
+#define CLK_IPE_NR_CLK			8
+
+/* MM_CONFIG */
+#define CLK_MM_SMI_COMMON		1
+#define CLK_MM_SMI_LARB0		2
+#define CLK_MM_SMI_LARB1		3
+#define CLK_MM_GALS_COMM0		4
+#define CLK_MM_GALS_COMM1		5
+#define CLK_MM_GALS_CCU2MM		6
+#define CLK_MM_GALS_IPU12MM		7
+#define CLK_MM_GALS_IMG2MM		8
+#define CLK_MM_GALS_CAM2MM		9
+#define CLK_MM_GALS_IPU2MM		10
+#define CLK_MM_MDP_DL_TXCK		11
+#define CLK_MM_IPU_DL_TXCK		12
+#define CLK_MM_MDP_RDMA0		13
+#define CLK_MM_MDP_RDMA1		14
+#define CLK_MM_MDP_RSZ0			15
+#define CLK_MM_MDP_RSZ1			16
+#define CLK_MM_MDP_TDSHP		17
+#define CLK_MM_MDP_WROT0		18
+#define CLK_MM_FAKE_ENG			19
+#define CLK_MM_DISP_OVL0		20
+#define CLK_MM_DISP_OVL0_2L		21
+#define CLK_MM_DISP_OVL1_2L		22
+#define CLK_MM_DISP_RDMA0		23
+#define CLK_MM_DISP_RDMA1		24
+#define CLK_MM_DISP_WDMA0		25
+#define CLK_MM_DISP_COLOR0		26
+#define CLK_MM_DISP_CCORR0		27
+#define CLK_MM_DISP_AAL0		28
+#define CLK_MM_DISP_GAMMA0		29
+#define CLK_MM_DISP_DITHER0		30
+#define CLK_MM_DISP_SPLIT		31
+#define CLK_MM_DSI0_MM_CK		32
+#define CLK_MM_DSI0_IF_CK		33
+#define CLK_MM_DPI_MM_CK		34
+#define CLK_MM_DPI_IF_CK		35
+#define CLK_MM_FAKE_ENG2		36
+#define CLK_MM_MDP_DL_RX_CK		37
+#define CLK_MM_IPU_DL_RX_CK		38
+#define CLK_MM_26M			39
+#define CLK_MM_MM_R2Y			40
+#define CLK_MM_DISP_RSZ			41
+#define CLK_MM_MDP_WDMA0		42
+#define CLK_MM_MDP_AAL			43
+#define CLK_MM_MDP_HDR			44
+#define CLK_MM_DBI_MM_CK		45
+#define CLK_MM_DBI_IF_CK		46
+#define CLK_MM_MDP_WROT1		47
+#define CLK_MM_DISP_POSTMASK0		48
+#define CLK_MM_DISP_HRT_BW		49
+#define CLK_MM_DISP_OVL_FBDC		50
+#define CLK_MM_NR_CLK			51
+
+/* VDEC_GCON */
+#define CLK_VDEC_VDEC			1
+#define CLK_VDEC_LARB1			2
+#define CLK_VDEC_GCON_NR_CLK		3
+
+/* VENC_GCON */
+#define CLK_VENC_GCON_LARB		1
+#define CLK_VENC_GCON_VENC		2
+#define CLK_VENC_GCON_JPGENC		3
+#define CLK_VENC_GCON_GALS		4
+#define CLK_VENC_GCON_NR_CLK		5
+
+/* AUD */
+#define CLK_AUD_AFE			1
+#define CLK_AUD_22M			2
+#define CLK_AUD_24M			3
+#define CLK_AUD_APLL2_TUNER		4
+#define CLK_AUD_APLL_TUNER		5
+#define CLK_AUD_TDM			6
+#define CLK_AUD_ADC			7
+#define CLK_AUD_DAC			8
+#define CLK_AUD_DAC_PREDIS		9
+#define CLK_AUD_TML			10
+#define CLK_AUD_NLE			11
+#define CLK_AUD_I2S1_BCLK_SW		12
+#define CLK_AUD_I2S2_BCLK_SW		13
+#define CLK_AUD_I2S3_BCLK_SW		14
+#define CLK_AUD_I2S4_BCLK_SW		15
+#define CLK_AUD_I2S5_BCLK_SW		16
+#define CLK_AUD_CONN_I2S_ASRC		17
+#define CLK_AUD_GENERAL1_ASRC		18
+#define CLK_AUD_GENERAL2_ASRC		19
+#define CLK_AUD_DAC_HIRES		20
+#define CLK_AUD_PDN_ADDA6_ADC		21
+#define CLK_AUD_ADC_HIRES		22
+#define CLK_AUD_ADC_HIRES_TML		23
+#define CLK_AUD_ADDA6_ADC_HIRES		24
+#define CLK_AUD_3RD_DAC			25
+#define CLK_AUD_3RD_DAC_PREDIS		26
+#define CLK_AUD_3RD_DAC_TML		27
+#define CLK_AUD_3RD_DAC_HIRES		28
+#define CLK_AUD_NR_CLK			29
+
+#endif /* _DT_BINDINGS_CLK_MT6779_H */
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
