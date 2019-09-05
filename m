Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB96A9EC4
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 11:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzXh4QoPydmPkP1YpmgIgTfbeCcWU4xfqTDTB6ggyXU=; b=MAPJ7Pku8RExWl
	rqYZ+UX/h0XM6Js7wpcovTJGU+zkg1d/2kIpa7hvUqMv8Jlw+heqQhjlBHP7H3zAbmrwb1v1jNKhG
	UhXQrgUxFzRtsMmbC6PxrR/SfEvxEEB5/SaTgIhR+0bO0Nu8inIL/pixRHpNnlIwp4Lq9fvVSDw45
	XjiqVFwaWyBx3miLM9nljpsez018V8rubs/B7ArDX0rJF1zpfJxYtoT4O4qK6xn0A26sevbbdqGah
	C+4ypi+eIUPIFk62P9hzU6kETiL50l4pcuCi0mxz6jKAqEQ8mVeFVTAfhp5+SJpk1ZfhAWLCM/76+
	OaGPbuJW/5OR+gUkbVgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oOX-00023a-74; Thu, 05 Sep 2019 09:49:37 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oOT-00022V-Rs
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 09:49:35 +0000
Received: by mail-qt1-x843.google.com with SMTP id r5so2084507qtd.0
 for <linux-mediatek@lists.infradead.org>; Thu, 05 Sep 2019 02:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BLTsSGkAS20nKvSmDJ8nD9cteiUsmNrKqKIdwSgw/JU=;
 b=aXg0BCP9Sek1lvZeMuLX3m0T7YqT3J7+y48L+cuVdvR8ljEDdiPEof2dLMZGMrNQqf
 frfpxxqdq4i1ZSuneYWogqaVVwUXhpWbAAr50DK5fwnz7E0gTyF774wGR5nyj0EYsHkU
 O58lSwPmNLnkiy7PLIyxy6NJBfLmKRlhrMQ/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BLTsSGkAS20nKvSmDJ8nD9cteiUsmNrKqKIdwSgw/JU=;
 b=ucFpHJ9P4kJLOrUKI1eWX1gXayU/lMcry/6/sTtM4Zbssez3PlRn6mTmTfcgqTVMWL
 bY1qNpFzTwtAnHlXjeG9wXzcVM2vEFv610M59K9wS37BxB66OCm+rFk29MpGUUCPaO+f
 YeAzR90y9RR2W+c4bceSLZjLc6Ud8n1agPAoIK1mmIPFXkZHvzoVVsMeNSct5bT+J03X
 lBt7ShAvZeUuSHK2zZEpHaKk2mWgYvTJlQnQjQ4019wSBEanafDKO0vU9YdvLXUuxL4i
 zBNwKjk/RFohuXlcq7SYocZFcxfpZhmjuV/gdoBdLPeer4zZzvMyiLuDsnxCJJQbff62
 jM5Q==
X-Gm-Message-State: APjAAAVoz2B97HytXFv16G5XF5jT2GVPOzUEw46olCYabep/ARKFCCWF
 dQxpVw5XOHBGBlZBQ2dmRzu9lJ1DmJE4t0WRdyALtg==
X-Google-Smtp-Source: APXvYqyXj8KKk6gL7JNHTjmBpk7/3LqhzsyiSDFP08Dv/c/7DWQvOJacLN7yrqb3hzTQyDsYjO9u9/Zn/1y3KylZCaY=
X-Received: by 2002:a0c:efcc:: with SMTP id a12mr1032204qvt.59.1567676970643; 
 Thu, 05 Sep 2019 02:49:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190905081546.42716-1-drinkcat@chromium.org>
 <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
In-Reply-To: <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 5 Sep 2019 17:49:19 +0800
Message-ID: <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_024933_915164_AFE715ED 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

Thanks for the quick review!

On Thu, Sep 5, 2019 at 5:09 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Sep 5, 2019 at 9:16 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > Add a basic GPU node and opp table for mt8183.
> >
> > The binding we use with out-of-tree Mali drivers includes more
> > clocks, I assume this would be required eventually if we have an
> > in-tree driver:
>
> We have an in-tree driver...

Right but AFAICT it does not support Bifrost GPU (yet?).

>
> > clocks =
> >         <&topckgen CLK_TOP_MFGPLL_CK>,
> >         <&topckgen CLK_TOP_MUX_MFG>,
> >         <&clk26m>,
> >         <&mfgcfg CLK_MFG_BG3D>;
> > clock-names =
> >         "clk_main_parent",
> >         "clk_mux",
> >         "clk_sub_parent",
> >         "subsys_mfg_cg";

Do you think we should add those to the binding document? May not be
easy to match what the amlogic binding does (I'm not sure to
understand the details of this device, but I can dig further/ask).

> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > ---
> > Upstreaming what matches existing bindings from our Chromium OS tree:
> > https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/arch/arm64/boot/dts/mediatek/mt8183.dtsi#1348
> >
> > The evb part of this change depends on this patch to add PMIC dtsi:
> > https://patchwork.kernel.org/patch/10928161/
> >
> >  arch/arm64/boot/dts/mediatek/mt8183-evb.dts |   7 ++
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 103 ++++++++++++++++++++
> >  2 files changed, 110 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> > index 1fb195c683c3d01..200d8e65a6368a1 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> > @@ -7,6 +7,7 @@
> >
> >  /dts-v1/;
> >  #include "mt8183.dtsi"
> > +#include "mt6358.dtsi"
> >
> >  / {
> >         model = "MediaTek MT8183 evaluation board";
> > @@ -30,6 +31,12 @@
> >         status = "okay";
> >  };
> >
> > +&gpu {
> > +       supply-names = "mali", "mali_sram";
> > +       mali-supply = <&mt6358_vgpu_reg>;
> > +       mali_sram-supply = <&mt6358_vsram_gpu_reg>;
>
> Not documented. Just 'sram-supply' is enough.

Will fix.

> Note that the binding doc queued up for 5.4 has been converted to DT schema.

Yep I see that in linux-next.

>
> > +};
> > +
> >  &i2c0 {
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&i2c_pins_0>;
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 97f84aa9fc6e1c1..8ea548a762ea252 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -579,6 +579,109 @@
> >                         #clock-cells = <1>;
> >                 };
> >
> > +               gpu: mali@13040000 {
>
> gpu@...
>
> > +                       compatible = "mediatek,mt8183-mali", "arm,mali-bifrost";
>
> You need to add this compatible string too.

Will do.

>
> > +                       reg = <0 0x13040000 0 0x4000>;
> > +                       interrupts =
> > +                               <GIC_SPI 280 IRQ_TYPE_LEVEL_LOW>,
> > +                               <GIC_SPI 279 IRQ_TYPE_LEVEL_LOW>,
> > +                               <GIC_SPI 278 IRQ_TYPE_LEVEL_LOW>;
> > +                       interrupt-names = "job", "mmu", "gpu";
> > +
> > +                       clocks = <&topckgen CLK_TOP_MFGPLL_CK>;
> > +                       power-domains =
> > +                               <&scpsys MT8183_POWER_DOMAIN_MFG_CORE0>,
> > +                               <&scpsys MT8183_POWER_DOMAIN_MFG_CORE1>,
> > +                               <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
>
> This needs to be documented too.

I see that Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
has power-domains in the example both not in the yaml, is that
expected?


>
> > +
> > +                       operating-points-v2 = <&gpu_opp_table>;
> > +               };
> > +
> > +               gpu_opp_table: opp_table0 {
> > +                       compatible = "operating-points-v2";
> > +                       opp-shared;
> > +
> > +                       opp-300000000 {
> > +                               opp-hz = /bits/ 64 <300000000>;
> > +                               opp-microvolt = <625000>, <850000>;
> > +                       };
> > +
> > +                       opp-320000000 {
> > +                               opp-hz = /bits/ 64 <320000000>;
> > +                               opp-microvolt = <631250>, <850000>;
> > +                       };
> > +
> > +                       opp-340000000 {
> > +                               opp-hz = /bits/ 64 <340000000>;
> > +                               opp-microvolt = <637500>, <850000>;
> > +                       };
> > +
> > +                       opp-360000000 {
> > +                               opp-hz = /bits/ 64 <360000000>;
> > +                               opp-microvolt = <643750>, <850000>;
> > +                       };
> > +
> > +                       opp-380000000 {
> > +                               opp-hz = /bits/ 64 <380000000>;
> > +                               opp-microvolt = <650000>, <850000>;
> > +                       };
> > +
> > +                       opp-400000000 {
> > +                               opp-hz = /bits/ 64 <400000000>;
> > +                               opp-microvolt = <656250>, <850000>;
> > +                       };
> > +
> > +                       opp-420000000 {
> > +                               opp-hz = /bits/ 64 <420000000>;
> > +                               opp-microvolt = <662500>, <850000>;
> > +                       };
> > +
> > +                       opp-460000000 {
> > +                               opp-hz = /bits/ 64 <460000000>;
> > +                               opp-microvolt = <675000>, <850000>;
> > +                       };
> > +
> > +                       opp-500000000 {
> > +                               opp-hz = /bits/ 64 <500000000>;
> > +                               opp-microvolt = <687500>, <850000>;
> > +                       };
> > +
> > +                       opp-540000000 {
> > +                               opp-hz = /bits/ 64 <540000000>;
> > +                               opp-microvolt = <700000>, <850000>;
> > +                       };
> > +
> > +                       opp-580000000 {
> > +                               opp-hz = /bits/ 64 <580000000>;
> > +                               opp-microvolt = <712500>, <850000>;
> > +                       };
> > +
> > +                       opp-620000000 {
> > +                               opp-hz = /bits/ 64 <620000000>;
> > +                               opp-microvolt = <725000>, <850000>;
> > +                       };
> > +
> > +                       opp-653000000 {
> > +                               opp-hz = /bits/ 64 <653000000>;
> > +                               opp-microvolt = <743750>, <850000>;
> > +                       };
> > +
> > +                       opp-698000000 {
> > +                               opp-hz = /bits/ 64 <698000000>;
> > +                               opp-microvolt = <768750>, <868750>;
> > +                       };
> > +
> > +                       opp-743000000 {
> > +                               opp-hz = /bits/ 64 <743000000>;
> > +                               opp-microvolt = <793750>, <893750>;
> > +                       };
> > +
> > +                       opp-800000000 {
> > +                               opp-hz = /bits/ 64 <800000000>;
> > +                               opp-microvolt = <825000>, <925000>;
> > +                       };
>
> Okay, but I seriously doubt the OPP selection logic is sophisticated
> enough or will ever be to use all these levels...
>
> > +               };
> > +
> >                 mmsys: syscon@14000000 {
> >                         compatible = "mediatek,mt8183-mmsys", "syscon";
> >                         reg = <0 0x14000000 0 0x1000>;
> > --
> > 2.23.0.187.g17f5b7556c-goog
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
