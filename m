Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F9E12891
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 09:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnjlCiw3JsnqWRgk5YQkPnY+4sULj0tbcXhiPgtltWA=; b=XOUNdFoMOX4+no
	p0DOpllbH0wA+k5d7pKrD/Wx+e4/xjtza3jlRiZqx62lb92XUTAKvEyZqdvuAa+SE0FZSO86P3Xjn
	DvLciK4YPkduuQuBQ3uYCkSl2z7fGE00Fhodrz2eM85bGSFcIy73XoPal4QGTRctmUK5Nz9yG6XES
	GVQQcuZqYbXw6gduDxwDmPtX5XcfyPycs7P8gngtGJim4CPuX53EgZwtvu+61w/ZJUB3ofSWx+WnE
	MqZVFxdIcjrYwg8R0sFlFnaHhCQd39vHVInTveZyHBmCKMqO3L36OERKAAXxTKB9LCLLIEEBnpOwR
	uPWWP1y9QDY+6WxQKA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSR7-0002VR-VP; Fri, 03 May 2019 07:16:49 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMSR0-0002OQ-2u
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 07:16:43 +0000
Received: by mail-qt1-x841.google.com with SMTP id m32so2531577qtf.0
 for <linux-mediatek@lists.infradead.org>; Fri, 03 May 2019 00:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KlnuPNTSqAOsReFStbtqUTb18X37z9g45qyDj7kddRA=;
 b=hEJ22Rh6lnEcmSMaMMuUlZdfXJ7KCYTX3AM2srreiE8Sf6OAnRXfVnZRnjcSn4jHPY
 3p24HRD5HVSh44RxdFmCpqu/1sYnULlRTl0XRo2uF6K5RVegrPF0550505OwkW0+qT+m
 5FmONnZuEwLBqfg9dGyH0yJSkdmST31cbhVaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KlnuPNTSqAOsReFStbtqUTb18X37z9g45qyDj7kddRA=;
 b=OHjAJoiFx8PloYgXw0beXXOj2fg/WqzGWFwQU7lz7x4HY82c0aNqKHKyGqin2GLidK
 5nWnQvD7qmvLhBQw5jwCu+cqeQlLwW8r4vdoj571v122h7XN1gWY7Jx95I3SZIZ5ZS/+
 cDdwSRlNa9leVcxdy9wWZZimZjCUtN6tel7sHtIcgIX+fMUwhYR5IFfZUbTFEbhtfgmh
 BKR9zs3d+8KeyzzgX8ENTbbhX7LKaVoB1A2tS2oT1O+HvaNjZEvlhASVcWbwyOBo5gzV
 fsWH/wgfR36ZXL1KGycFgjwAmocfnQk5vM5R7e5RICpM/PyyeohTqCerwYAQcS4JpQiS
 r1hw==
X-Gm-Message-State: APjAAAWMorRxiafTy1tZF2JN/7jKKwyFTEcgW7n3wAlKailS5JFQRVv7
 brgWXOIVv6RAbEO1u1aI2eg/HAUPcylzq8wfuVkT7w==
X-Google-Smtp-Source: APXvYqwhRV3TvOuByNuwZ+DDBwx1hJ5Ye6qvgO/XvXATKgGv9cIvbe0igodjrM3jyeRk2df7QWBovKlHBg7m9FObZ4Q=
X-Received: by 2002:ad4:534b:: with SMTP id v11mr6824906qvs.31.1556867800383; 
 Fri, 03 May 2019 00:16:40 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-3-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-3-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 3 May 2019 15:16:29 +0800
Message-ID: <CAJMQK-jujDXt18M8610G4GpHdrikTD0ZZG_=C2YTt63UfxuHuQ@mail.gmail.com>
Subject: Re: [PATCH 2/8] arm64: dts: mt8183: add/update dynamic power
 coefficients
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_001642_149407_B199E7E0 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
>
> Add dynamic power coefficients for all cores and update those of
> CPU0 and CPU4.
>
> Signed-off-by: Michael.Kao <michael.kao@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index b92116f..5668fb8 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -58,6 +58,8 @@
>                         compatible = "arm,cortex-a53";
>                         reg = <0x000>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <84>;
> +                       #cooling-cells = <2>;
Should this line be in [3/8] arm64: dts: mt8183: Add #cooling-cells to
CPU nodes?

>                 };
>
>                 cpu1: cpu@1 {
> @@ -65,6 +67,8 @@
>                         compatible = "arm,cortex-a53";
>                         reg = <0x001>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <84>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu2: cpu@2 {
> @@ -72,6 +76,8 @@
>                         compatible = "arm,cortex-a53";
>                         reg = <0x002>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <84>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu3: cpu@3 {
> @@ -79,6 +85,8 @@
>                         compatible = "arm,cortex-a53";
>                         reg = <0x003>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <84>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu4: cpu@100 {
> @@ -86,6 +94,8 @@
>                         compatible = "arm,cortex-a73";
>                         reg = <0x100>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <211>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu5: cpu@101 {
> @@ -93,6 +103,8 @@
>                         compatible = "arm,cortex-a73";
>                         reg = <0x101>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <211>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu6: cpu@102 {
> @@ -100,6 +112,8 @@
>                         compatible = "arm,cortex-a73";
>                         reg = <0x102>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <211>;
> +                       #cooling-cells = <2>;
>                 };
>
>                 cpu7: cpu@103 {
> @@ -107,6 +121,8 @@
>                         compatible = "arm,cortex-a73";
>                         reg = <0x103>;
>                         enable-method = "psci";
> +                       dynamic-power-coefficient = <211>;
> +                       #cooling-cells = <2>;
>                 };
>         };
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
