Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A927E12970
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 10:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLqvojUDwL5W9BmO5+exUfXT+/51MGWyId5RoAvA7A8=; b=WIS3kkxUqkqeNK
	bqRByCwL+oL0j+DX4NZanTJTIFbzHS0YNApoN1sGT0sekYbR2b3o3xf4qePZa5WKAtGyBlD8iqIYT
	Xog+trIITvusjgszGHYVustePfO3z825CiTFDQrpY7Ye8rxqJ03w5FCYoaBvNidT6nCsOU0TBTLtw
	y75qOF1sEsJN6Vo3UD+mizcdGI5Ox0hOQWCaIGSiRKtQd55HH1aWSZfuhEkgtc/yiSak4uuTtSF55
	PqjvinnezWPQE8gRq8ogWgzUnS6eEUyojqHUQfoKD8T4C2iJd+LyNO4NDTnQpAnzBCtcnEe/z5gEb
	5+Blugp/zRlc1izzDdFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTB1-0003Xr-7l; Fri, 03 May 2019 08:04:15 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTAx-0003XC-CP
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 08:04:13 +0000
Received: by mail-qt1-x843.google.com with SMTP id e5so5747474qtq.2
 for <linux-mediatek@lists.infradead.org>; Fri, 03 May 2019 01:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QyYnh8hGNxo4y79JyoBAvnyJOsqV/eKCHgC2055Dj70=;
 b=TFsaDfJktcepJhaSVkSy9jmcH5WklitGZ2BBIrKTkDmfye484EI32NBvqAF18RhDM4
 icz2jBCDxSTj6qmQVp0LN0YlkJPVgxnXUunfIEesZ1FOAC5727DnzDgNJ++yI7ZM9nil
 K47/JWKZTYl0cyTlCD15zHWhm1WvSpjJECOdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QyYnh8hGNxo4y79JyoBAvnyJOsqV/eKCHgC2055Dj70=;
 b=ATQMW9RPVWyYa4uLcXmSVKcATHdI18DbBGmCkPYhisTfpflnWlmb5FEuNocZJN4lA9
 wpKe3XnqGSfDjopBKCX3O1ZR2fS5pMkaNWhyZoRcnHYuCDCISxD8SDX4xwryR3mEtrtb
 vQydKKuftA25RTqKYlbCa2/Oub8FJlzJancBrZHJvqsBKA+pVxB1n8rCjT0KDGf5GVYe
 ICUZTzkqyYE5i7jeHI4BMeZ51rVELEYbuzoUKYH9iw99aBdIrwql+KzIAEW8TVrejs17
 Y+DwA/o//i9Bf1f5Un8L4cBxrgshHC0q+nQpnmToAlgkC11E2sOPWif64Asn+8POkAvk
 e2DA==
X-Gm-Message-State: APjAAAUSwCnFv+sAwTfa3DHJ1Ju9fzssNdoGRC+/aOu7qiUHjTUuPiw1
 yf8UR4o10ntlsU9M3OjcQtINFCInJGlqdugW1IKQFg==
X-Google-Smtp-Source: APXvYqwK9NYfQA/9uIkz+E3ZSXoSVmvGacXxJP1bm9lZj8RtDGEHaMjRHL1WIrVFMhk5ZLbA20X7lzzIyVAj/Hr6Db0=
X-Received: by 2002:ac8:3822:: with SMTP id q31mr7331051qtb.0.1556870649914;
 Fri, 03 May 2019 01:04:09 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 3 May 2019 16:03:58 +0800
Message-ID: <CAJMQK-isJf6f+OubbCdoXs8L2cup=rm3Z8Mr7Q26QshMP-0wxA@mail.gmail.com>
Subject: Re: [PATCH 1/8] arm64: dts: mt8183: add thermal zone node
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_010411_452364_A74AE827 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
> Add thermal zone node to Mediatek MT8183 dts file.
>
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 64 ++++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 926df75..b92116f 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -334,6 +334,67 @@
>                         status = "disabled";
>                 };
>
> +               thermal: thermal@1100b000 {
> +                       #thermal-sensor-cells = <1>;
> +                       compatible = "mediatek,mt8183-thermal";
> +                       reg = <0 0x1100b000 0 0x1000>;
> +                       interrupts = <0 76 IRQ_TYPE_LEVEL_LOW>;
> +                       clocks = <&infracfg CLK_INFRA_THERM>,
> +                                <&infracfg CLK_INFRA_AUXADC>;
> +                       clock-names = "therm", "auxadc";
> +                       resets = <&infracfg  MT8183_INFRACFG_AO_THERM_SW_RST>;
> +                       mediatek,auxadc = <&auxadc>;
> +                       mediatek,apmixedsys = <&apmixedsys>;
> +                       mediatek,hw-reset-temp = <117000>;
> +                       nvmem-cells = <&thermal_calibration>;
> +                       nvmem-cell-names = "calibration-data";
> +               };
> +
> +               thermal-zones {
> +                       cpu_thermal: cpu_thermal {
> +                               polling-delay-passive = <1000>;
> +                               polling-delay = <1000>;
> +
> +                               thermal-sensors = <&thermal 0>;
> +                               sustainable-power = <1500>;
> +                       };
> +
> +                       tzts1: tzts1 {
> +                               polling-delay-passive = <1000>;
> +                               polling-delay = <1000>;
> +                               thermal-sensors = <&thermal 1>;
Is sustainable-power required for tzts? Though it's an optional
property, kernel would have warning:
[    0.631556] thermal thermal_zone1: power_allocator:
sustainable_power will be estimated
[    0.639586] thermal thermal_zone2: power_allocator:
sustainable_power will be estimated
[    0.647611] thermal thermal_zone3: power_allocator:
sustainable_power will be estimated
[    0.655635] thermal thermal_zone4: power_allocator:
sustainable_power will be estimated
[    0.663658] thermal thermal_zone5: power_allocator:
sustainable_power will be estimated
if no sustainable-power assigned.

> +                       };
> +
> +                       tzts2: tzts2 {
> +                               polling-delay-passive = <1000>;
> +                               polling-delay = <1000>;
> +                               thermal-sensors = <&thermal 2>;
> +                       };
> +
> +                       tzts3: tzts3 {
> +                               polling-delay-passive = <1000>;
> +                               polling-delay = <1000>;
> +                               thermal-sensors = <&thermal 3>;
> +                       };
> +
> +                       tzts4: tzts4 {
> +                               polling-delay-passive = <1000>;
> +                               polling-delay = <1000>;
> +                               thermal-sensors = <&thermal 4>;
> +                       };
> +
> +                       tzts5: tzts5 {
> +                               polling-delay-passive = <1000>;
> +                               polling-delay = <1000>;
> +                               thermal-sensors = <&thermal 5>;
> +                       };
> +
> +                       tztsABB: tztsABB {
> +                               polling-delay-passive = <1000>;
> +                               polling-delay = <1000>;
> +                               thermal-sensors = <&thermal 6>;
> +                       };
> +               };
>                 audiosys: syscon@11220000 {
>                         compatible = "mediatek,mt8183-audiosys", "syscon";
>                         reg = <0 0x11220000 0 0x1000>;
> @@ -368,6 +429,9 @@
>                         compatible = "mediatek,mt8183-efuse",
>                                      "mediatek,efuse";
>                         reg = <0 0x11f10000 0 0x1000>;
> +                       thermal_calibration: calib@180 {
> +                               reg = <0x180 0xc>;
> +                       };
>                 };
>
>                 mfgcfg: syscon@13000000 {

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
