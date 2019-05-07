Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C471E158EB
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 07:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4eUU6hdpPm+Ivjsjp42QI4onocsxuSrAoCdU2tadXA=; b=mItlAaJLAILlK+
	rkb+NZ//xQn38UbU01IG1ZpP/1YNyGmg+TJdGBWjDwdkugnS5NWluAT1Z5U0MS+uzMCoZ4gMMj7DP
	J+6Sh6mVsHAUTpwNAduDMY+tPAb5TxrpRJJMM+OsgQqAmp+JGfHmFohi5GAj6QA1gLpwDnf05LFGd
	ACnoeVqlQqei66EvBH/pXzfEeyHXtBWGiGK93gK551g61i3z3PimTpciHTVUMLYpTUZVeW8zCT5Qz
	VfS4vZ3hfOmPjrV8TAm3LY0o10j1BCRoH5yKMfBKWFAs2DteGr76/rBy4toEyqU/jX/Q8rdHmGQ6Y
	KIMMq+mdzsh1cSN/SgJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsbJ-0005iz-Ly; Tue, 07 May 2019 05:25:13 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsb9-0004Vs-If
 for linux-mediatek@lists.infradead.org; Tue, 07 May 2019 05:25:05 +0000
Received: by mail-qt1-x841.google.com with SMTP id k24so451401qtq.7
 for <linux-mediatek@lists.infradead.org>; Mon, 06 May 2019 22:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0hFqmwNLrgOZ2d4LHKnw2c1GsxJZR0XMM1CJizfkss0=;
 b=oTNWEoWULY5My61dxjSyob+ke4AB8mRsMSGQA39QxxGStJqKwc6brL3ScY9Pf6MlNV
 cHlwWL4HZ2LL18qYr53Bt8gCq0vAEVs49chuSjny1Td+/Havv9W25UPJAwR7YrDl8KVP
 gd5O+H3z2FdeEtB4nJ1685Y+V8/0Vt3jWOwxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0hFqmwNLrgOZ2d4LHKnw2c1GsxJZR0XMM1CJizfkss0=;
 b=rWSmakvkNkDvP4jZrb92dkjrRfWyMt3L3R1komgdWMjIfjLBVJGyOkQ/iXgqP01nF7
 lvpp1yaygM1lCDq3nsOwPC5GUUWp2mxIWlMhLiwb0Q42QiT474+O/THBv1BaKHPlW6X2
 Zr52xIJhMa4C+WZlGoGATxmixXo1yikekMWftROfRIoryHYQux/1nhrCwP7rChKl4G/h
 uIvBTyHqkF0t6TUdpReCdCaurK7JwYh8lLXJwObgC7X/A5/Dx3o8MRtx6hIPd6UOfq/R
 tgIgxTWmkpflPebD/8/DMjtf15Qwg9lIFubaWWtkT+TdtcurPxVC6ckV0eYlUwxtcav/
 9Ytw==
X-Gm-Message-State: APjAAAVnXD9NYe8P9ftk+1pm8nk7sF7/LOvIPxLK/pJv86u+cC75ZQXP
 nWJVZ+x2DchcQiqbbtOKTDOkzKFnpCR2WcXB/jMdqg==
X-Google-Smtp-Source: APXvYqw2tJU/Bf+A/JCr79IIzV4N6cX86Z0Gi/0NwYK3aYJCyNc6+UuOalKy+yiSTLrBH1vrjl87uP7dCzAESuSwzsc=
X-Received: by 2002:ac8:1ae2:: with SMTP id h31mr7545363qtk.75.1557206702363; 
 Mon, 06 May 2019 22:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-5-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <20190503093117.54830-5-hsin-hsiung.wang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 7 May 2019 14:24:51 +0900
Message-ID: <CANMq1KCiK69kXkpagccqd1=pKOs7qOOVuJUaCe5JfoGVmPt7mg@mail.gmail.com>
Subject: Re: [PATCH v3 04/10] dt-bindings: mfd: Add compatible for the
 MediaTek MT6358 PMIC
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_222503_623348_979676EE 
X-CRM114-Status: GOOD (  15.37  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 6:34 PM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> This adds compatible for the MediaTek MT6358 PMIC.
>
> Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
> index 0ebd08af777d..62f1c17c7738 100644
> --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
> +++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
> @@ -17,22 +17,27 @@ Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
>  This document describes the binding for MFD device and its sub module.
>
>  Required properties:
> -compatible: "mediatek,mt6397" or "mediatek,mt6323"
> +compatible:
> +       "mediatek,mt6323" for PMIC MT6323
> +       "mediatek,mt6358" for PMIC MT6358
> +       "mediatek,mt6397" for PMIC MT6397
>
>  Optional subnodes:
>
>  - rtc
>         Required properties:
> -               - compatible: "mediatek,mt6397-rtc"
> +               - compatible: "mediatek,mt6397-rtc" or "mediatek,mt6358-rtc"
>  - regulators
>         Required properties:
>                 - compatible: "mediatek,mt6397-regulator"
>         see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
> +               - compatible: "mediatek,mt6358-regulator"
> +       see Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
>                 - compatible: "mediatek,mt6323-regulator"
>         see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
>  - codec
>         Required properties:
> -               - compatible: "mediatek,mt6397-codec"
> +               - compatible: "mediatek,mt6397-codec" or "mediatek,mt6358-sound"

Sean had a question about this
(https://patchwork.kernel.org/patch/10846669/#22524299):
"why didn't we use a more consistent naming as mt6358-codec?"

>  - clk
>         Required properties:
>                 - compatible: "mediatek,mt6397-clk"
> --
> 2.18.0
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
