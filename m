Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ACEA9DDB
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 11:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dp008OhD/P1evcFpGMKdPiuWFd5OrQx/+8e3vOrtSDA=; b=cKtSpexkJykUr0
	bC/JYqeKgKmulTwzK6sTk/M7GxdWe+pHdNiIqNZN5Gu/BnFEgP978JpBp39po50T7oqOjuaAvr9El
	s+DpFyKbRAiG+KdCy7SrcrrqkmZNPp9EoCfMIFyYfouPPRK+cELelxwYsPNUTbTWQyzXpiGZTko6G
	hTM14bUtvhEKAe0te3YplVr6VxMPKFSSGYJY6KAU1g0lVwidxb21AoBniqZ2PsFKSu/h/ar/A7A2a
	WkvvP/YXv26WHhlxPDftbZ+W6qMhEfjuiLwoDtro27eDu+KA/2m4QvR0VJRo3NAtJiWq0xugc6ZGO
	JWBC6M5pvFycGa2zPlOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nm1-0005rQ-FR; Thu, 05 Sep 2019 09:09:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nll-0005fu-94; Thu, 05 Sep 2019 09:09:34 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8390A22DBF;
 Thu,  5 Sep 2019 09:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567674570;
 bh=2y9QrdwzmfA0llHSctFl2m6ifgKdca76hgM46s40Jqo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=A7jbPfgz7iDbyfAh7FRh4lNexG/TXF3ScTCKO8nMsMseEaD3FIekJ4V75JBPjnXPE
 KmGQfiJzMgv3dMSkoJYtCd6C2HlnVFXxuIfvlr5/IStZ6CYCzDY//Pu4c5uPuYVn4N
 gUsQAoZ4hc0w2Kyrr7B4+iz9yJaMProOHVGOIhS0=
Received: by mail-qk1-f169.google.com with SMTP id 201so1347366qkd.13;
 Thu, 05 Sep 2019 02:09:30 -0700 (PDT)
X-Gm-Message-State: APjAAAVLNzfJ9atEnKYyr1CD1nMsJS2PDCsvPnJvzW+4yAod4//CcgUJ
 NBHItXwrRfL+0v7UPDLHepwjc7G2v2lI5aJY8Q==
X-Google-Smtp-Source: APXvYqyCZ1JFPrFdkdY4EtQAOam5zWRzs7tCzxtp5nMv/9gUEkXp5uEHLWxNb2B7T4bytKsL8PG/Xdv5F/1FvYv7IIE=
X-Received: by 2002:a05:620a:1356:: with SMTP id
 c22mr1583635qkl.119.1567674569634; 
 Thu, 05 Sep 2019 02:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190905081546.42716-1-drinkcat@chromium.org>
In-Reply-To: <20190905081546.42716-1-drinkcat@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Sep 2019 10:09:18 +0100
X-Gmail-Original-Message-ID: <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
Message-ID: <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_020933_358826_6D827431 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 9:16 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> Add a basic GPU node and opp table for mt8183.
>
> The binding we use with out-of-tree Mali drivers includes more
> clocks, I assume this would be required eventually if we have an
> in-tree driver:

We have an in-tree driver...

> clocks =
>         <&topckgen CLK_TOP_MFGPLL_CK>,
>         <&topckgen CLK_TOP_MUX_MFG>,
>         <&clk26m>,
>         <&mfgcfg CLK_MFG_BG3D>;
> clock-names =
>         "clk_main_parent",
>         "clk_mux",
>         "clk_sub_parent",
>         "subsys_mfg_cg";
>
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
>
> ---
> Upstreaming what matches existing bindings from our Chromium OS tree:
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/arch/arm64/boot/dts/mediatek/mt8183.dtsi#1348
>
> The evb part of this change depends on this patch to add PMIC dtsi:
> https://patchwork.kernel.org/patch/10928161/
>
>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts |   7 ++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 103 ++++++++++++++++++++
>  2 files changed, 110 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> index 1fb195c683c3d01..200d8e65a6368a1 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> @@ -7,6 +7,7 @@
>
>  /dts-v1/;
>  #include "mt8183.dtsi"
> +#include "mt6358.dtsi"
>
>  / {
>         model = "MediaTek MT8183 evaluation board";
> @@ -30,6 +31,12 @@
>         status = "okay";
>  };
>
> +&gpu {
> +       supply-names = "mali", "mali_sram";
> +       mali-supply = <&mt6358_vgpu_reg>;
> +       mali_sram-supply = <&mt6358_vsram_gpu_reg>;

Not documented. Just 'sram-supply' is enough.

Note that the binding doc queued up for 5.4 has been converted to DT schema.

> +};
> +
>  &i2c0 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&i2c_pins_0>;
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 97f84aa9fc6e1c1..8ea548a762ea252 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -579,6 +579,109 @@
>                         #clock-cells = <1>;
>                 };
>
> +               gpu: mali@13040000 {

gpu@...

> +                       compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";

You need to add this compatible string too.

> +                       reg = <0 0x13040000 0 0x4000>;
> +                       interrupts =
> +                               <GIC_SPI 280 IRQ_TYPE_LEVEL_LOW>,
> +                               <GIC_SPI 279 IRQ_TYPE_LEVEL_LOW>,
> +                               <GIC_SPI 278 IRQ_TYPE_LEVEL_LOW>;
> +                       interrupt-names = "job", "mmu", "gpu";
> +
> +                       clocks = <&topckgen CLK_TOP_MFGPLL_CK>;
> +                       power-domains =
> +                               <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>,
> +                               <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>,
> +                               <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;

This needs to be documented too.

> +
> +                       operating-points-v2 = <&gpu_opp_table>;
> +               };
> +
> +               gpu_opp_table: opp_table0 {
> +                       compatible = "operating-points-v2";
> +                       opp-shared;
> +
> +                       opp-300000000 {
> +                               opp-hz = /bits/ 64 <300000000>;
> +                               opp-microvolt = <625000>, <850000>;
> +                       };
> +
> +                       opp-320000000 {
> +                               opp-hz = /bits/ 64 <320000000>;
> +                               opp-microvolt = <631250>, <850000>;
> +                       };
> +
> +                       opp-340000000 {
> +                               opp-hz = /bits/ 64 <340000000>;
> +                               opp-microvolt = <637500>, <850000>;
> +                       };
> +
> +                       opp-360000000 {
> +                               opp-hz = /bits/ 64 <360000000>;
> +                               opp-microvolt = <643750>, <850000>;
> +                       };
> +
> +                       opp-380000000 {
> +                               opp-hz = /bits/ 64 <380000000>;
> +                               opp-microvolt = <650000>, <850000>;
> +                       };
> +
> +                       opp-400000000 {
> +                               opp-hz = /bits/ 64 <400000000>;
> +                               opp-microvolt = <656250>, <850000>;
> +                       };
> +
> +                       opp-420000000 {
> +                               opp-hz = /bits/ 64 <420000000>;
> +                               opp-microvolt = <662500>, <850000>;
> +                       };
> +
> +                       opp-460000000 {
> +                               opp-hz = /bits/ 64 <460000000>;
> +                               opp-microvolt = <675000>, <850000>;
> +                       };
> +
> +                       opp-500000000 {
> +                               opp-hz = /bits/ 64 <500000000>;
> +                               opp-microvolt = <687500>, <850000>;
> +                       };
> +
> +                       opp-540000000 {
> +                               opp-hz = /bits/ 64 <540000000>;
> +                               opp-microvolt = <700000>, <850000>;
> +                       };
> +
> +                       opp-580000000 {
> +                               opp-hz = /bits/ 64 <580000000>;
> +                               opp-microvolt = <712500>, <850000>;
> +                       };
> +
> +                       opp-620000000 {
> +                               opp-hz = /bits/ 64 <620000000>;
> +                               opp-microvolt = <725000>, <850000>;
> +                       };
> +
> +                       opp-653000000 {
> +                               opp-hz = /bits/ 64 <653000000>;
> +                               opp-microvolt = <743750>, <850000>;
> +                       };
> +
> +                       opp-698000000 {
> +                               opp-hz = /bits/ 64 <698000000>;
> +                               opp-microvolt = <768750>, <868750>;
> +                       };
> +
> +                       opp-743000000 {
> +                               opp-hz = /bits/ 64 <743000000>;
> +                               opp-microvolt = <793750>, <893750>;
> +                       };
> +
> +                       opp-800000000 {
> +                               opp-hz = /bits/ 64 <800000000>;
> +                               opp-microvolt = <825000>, <925000>;
> +                       };

Okay, but I seriously doubt the OPP selection logic is sophisticated
enough or will ever be to use all these levels...

> +               };
> +
>                 mmsys: syscon@14000000 {
>                         compatible = "mediatek,mt8183-mmsys", "syscon";
>                         reg = <0 0x14000000 0 0x1000>;
> --
> 2.23.0.187.g17f5b7556c-goog
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
