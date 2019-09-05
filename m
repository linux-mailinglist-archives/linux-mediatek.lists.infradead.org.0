Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5186EA9CB6
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 10:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HCTIbLIj5Af/6jF1m96zXeHpQYIPJg7N/jvqPIIwl2M=; b=f4CppLYnXuHU+g
	x4KoUD+OGyVd5/a03oeEHiDjpk/gNB8bKlNuqdPotNcCjRxL99q9MLm6jruyUIa5g8UlNAep91I8i
	EE9Fuw75FbxbIOlUDWiBfzAREfYx0d+NGuaceJf1s6yOSI3xk6uLZml1K1kRoANwhqO9kAg0lV7dh
	GPeQ9X1Ofv0uP/ezB8R8oxbtc5QvmN0nDPHMywZZjGgGDCuF8gu5qgE4CJo74a62TIxLNheaYmw7k
	WcjPTq9x6akTr/Taq9Fma3jaWL/G82ZDU+MARWMqtuDMBOktJBgkA2Mv9xGomKL3nwf9nZ57J42le
	uZf3uc4iQzA01GLMbTmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mwF-0000mO-Mj; Thu, 05 Sep 2019 08:16:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mwB-0000lI-PH
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 08:16:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so1236050pfe.5
 for <linux-mediatek@lists.infradead.org>; Thu, 05 Sep 2019 01:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9n12LoDC4iyQEQhSfvrYLmsN/jTJxbwGE2x1rInuHng=;
 b=mfvDNzvUA14ba5ndLu6rEnyLMfdTvutWp7jgl4Uz8Tj0KkXdvQ9mepDv3Q0JZLqj5g
 tdaPQnTm+CiDSzL/6duSkVkKy5bimCc2bgP+lFjNet2erbTdwN6NwrxDezk/NAZeDRft
 htSU/TxkBZT5c7zo/xpFicxxPFnpxtb3O1VGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9n12LoDC4iyQEQhSfvrYLmsN/jTJxbwGE2x1rInuHng=;
 b=i0VURkzMOd+WlukLK6EoIa/4MPr7yN+mpzAwn8iRfqOOf1ZHD91gAKa5W2hUGXwQPo
 VFUkOhgwHbN8dNKFsn/mRTNxIklq783vd9+pAP/Q6s6UzRbtHeoILYuIcX17KHF8DbDG
 OX7CNzjZ9dvePImp3/am5x5Y0mmDs0QZcawDzQbNVADYTgBQi7Wk4ic7XLYLOM3uzs7c
 u1tvEr6EWs3vqS5tw0nSNLrpjEIycSMoQMthgSY0Oeekm4PF3NjhkyLzUrajXTOKrdWJ
 4sSai4e76LCKNycyEFBU6pfqNayvez9mOnpP4PzoJIQ1kkEPKZ62JDVn4VQmKmhvobmv
 Qtnw==
X-Gm-Message-State: APjAAAWtr9rTRPDMiBZjgMXCldW5lGyXDP2nKlLcY+mGBouoWP6mWST+
 nHrOm7UGzNMmIjvRbR7kv2U8Sg==
X-Google-Smtp-Source: APXvYqxegqPyfGwrsPeKCe2Fc5b+coPbLD+CyOyetuPlandyNKc5R4rscY0tB/vIdMYg0qC49XRILQ==
X-Received: by 2002:a63:6d8d:: with SMTP id i135mr2003284pgc.303.1567671374527; 
 Thu, 05 Sep 2019 01:16:14 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id h186sm3490145pfb.63.2019.09.05.01.16.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 01:16:13 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
Date: Thu,  5 Sep 2019 16:15:46 +0800
Message-Id: <20190905081546.42716-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_011615_848015_B00AF9B3 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Nick Fan <nick.fan@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add a basic GPU node and opp table for mt8183.

The binding we use with out-of-tree Mali drivers includes more
clocks, I assume this would be required eventually if we have an
in-tree driver:
clocks =
        <&topckgen CLK_TOP_MFGPLL_CK>,
        <&topckgen CLK_TOP_MUX_MFG>,
        <&clk26m>,
        <&mfgcfg CLK_MFG_BG3D>;
clock-names =
        "clk_main_parent",
        "clk_mux",
        "clk_sub_parent",
        "subsys_mfg_cg";

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---
Upstreaming what matches existing bindings from our Chromium OS tree:
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/arch/arm64/boot/dts/mediatek/mt8183.dtsi#1348

The evb part of this change depends on this patch to add PMIC dtsi:
https://patchwork.kernel.org/patch/10928161/

 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |   7 ++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 103 ++++++++++++++++++++
 2 files changed, 110 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 1fb195c683c3d01..200d8e65a6368a1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "mt8183.dtsi"
+#include "mt6358.dtsi"
 
 / {
 	model = "MediaTek MT8183 evaluation board";
@@ -30,6 +31,12 @@
 	status = "okay";
 };
 
+&gpu {
+	supply-names = "mali", "mali_sram";
+	mali-supply = <&mt6358_vgpu_reg>;
+	mali_sram-supply = <&mt6358_vsram_gpu_reg>;
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c_pins_0>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 97f84aa9fc6e1c1..8ea548a762ea252 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -579,6 +579,109 @@
 			#clock-cells = <1>;
 		};
 
+		gpu: mali@13040000 {
+			compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";
+			reg = <0 0x13040000 0 0x4000>;
+			interrupts =
+				<GIC_SPI 280 IRQ_TYPE_LEVEL_LOW>,
+				<GIC_SPI 279 IRQ_TYPE_LEVEL_LOW>,
+				<GIC_SPI 278 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "job", "mmu", "gpu";
+
+			clocks = <&topckgen CLK_TOP_MFGPLL_CK>;
+			power-domains =
+				<&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>,
+				<&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>,
+				<&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+
+			operating-points-v2 = <&gpu_opp_table>;
+		};
+
+		gpu_opp_table: opp_table0 {
+			compatible = "operating-points-v2";
+			opp-shared;
+
+			opp-300000000 {
+				opp-hz = /bits/ 64 <300000000>;
+				opp-microvolt = <625000>, <850000>;
+			};
+
+			opp-320000000 {
+				opp-hz = /bits/ 64 <320000000>;
+				opp-microvolt = <631250>, <850000>;
+			};
+
+			opp-340000000 {
+				opp-hz = /bits/ 64 <340000000>;
+				opp-microvolt = <637500>, <850000>;
+			};
+
+			opp-360000000 {
+				opp-hz = /bits/ 64 <360000000>;
+				opp-microvolt = <643750>, <850000>;
+			};
+
+			opp-380000000 {
+				opp-hz = /bits/ 64 <380000000>;
+				opp-microvolt = <650000>, <850000>;
+			};
+
+			opp-400000000 {
+				opp-hz = /bits/ 64 <400000000>;
+				opp-microvolt = <656250>, <850000>;
+			};
+
+			opp-420000000 {
+				opp-hz = /bits/ 64 <420000000>;
+				opp-microvolt = <662500>, <850000>;
+			};
+
+			opp-460000000 {
+				opp-hz = /bits/ 64 <460000000>;
+				opp-microvolt = <675000>, <850000>;
+			};
+
+			opp-500000000 {
+				opp-hz = /bits/ 64 <500000000>;
+				opp-microvolt = <687500>, <850000>;
+			};
+
+			opp-540000000 {
+				opp-hz = /bits/ 64 <540000000>;
+				opp-microvolt = <700000>, <850000>;
+			};
+
+			opp-580000000 {
+				opp-hz = /bits/ 64 <580000000>;
+				opp-microvolt = <712500>, <850000>;
+			};
+
+			opp-620000000 {
+				opp-hz = /bits/ 64 <620000000>;
+				opp-microvolt = <725000>, <850000>;
+			};
+
+			opp-653000000 {
+				opp-hz = /bits/ 64 <653000000>;
+				opp-microvolt = <743750>, <850000>;
+			};
+
+			opp-698000000 {
+				opp-hz = /bits/ 64 <698000000>;
+				opp-microvolt = <768750>, <868750>;
+			};
+
+			opp-743000000 {
+				opp-hz = /bits/ 64 <743000000>;
+				opp-microvolt = <793750>, <893750>;
+			};
+
+			opp-800000000 {
+				opp-hz = /bits/ 64 <800000000>;
+				opp-microvolt = <825000>, <925000>;
+			};
+		};
+
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8183-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
