Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B281797A
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 14:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iieaTkKJjQ9KB76iwF6RCnPiv74NzgLUcjoN8ZOtxy4=; b=E3GylLDkQ+oQuG
	h4V529KKgNl8PlCzEph90YbXfNmnhMm9/Iz0ovFL6vfG5lGtxA5wfosIaTuj8r4DF6MMQvecDSHZ4
	rodYuMevSCCHoFK40DzhHJXxY4tErNzNhjegUGXVBLCWpjo2XLAGSJFuDAaLZcseKLu8OmLL44380
	9CT+i/yMgYBcTJ5oVT8e4w7S9SrZQ//xneSj+Lys2Riz4CMNadOfIuS6QJdT7tV+CSCiVo/dQMY86
	rG69bLiAmPC1IUxtzYBjEIC8gJC/I7YSMk2eMYUMKUmH/GPGQdP4JqA1WioVUYmOrN7ZERoQl97mg
	ZcBLxYtOZWcBh+qDXMQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOLiF-0005zg-Fv; Wed, 08 May 2019 12:30:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOLi5-0005p4-L0; Wed, 08 May 2019 12:30:10 +0000
X-UUID: 5f49288de650451691e107ab1c141799-20190508
X-UUID: 5f49288de650451691e107ab1c141799-20190508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 48931392; Wed, 08 May 2019 04:30:00 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 05:29:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 20:29:57 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 20:29:57 +0800
Message-ID: <1557318597.29634.9.camel@mtksdccf07>
Subject: Re: [PATCH 3/8] arm64: dts: mt8183: Add #cooling-cells to CPU nodes
From: Michael Kao <michael.kao@mediatek.com>
To: Eddie Huang <eddie.huang@mediatek.com>
Date: Wed, 8 May 2019 20:29:57 +0800
In-Reply-To: <1557120332.13225.2.camel@mtksdaap41>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-4-git-send-email-michael.kao@mediatek.com>
 <1557120332.13225.2.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: DEB1A5C6E3D15A3A7CBB144669F4338925D93AAD54BB77EEDF70A6B02288EE772000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_053009_695289_2A549815 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 JamesJJ Liao =?UTF-8?Q?=28=E5=BB=96=E5=BB=BA=E6=99=BA=29?=
 <jamesjj.liao@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Louis Yu =?UTF-8?Q?=28=E6=B8=B8=E6=94=BF=E9=8C=95=29?= <louis.yu@mediatek.com>,
 Dawei Chien =?UTF-8?Q?=28=E9=8C=A2=E5=A4=A7=E8=A1=9B=29?=
 <Dawei.Chien@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, Daniel
 Lezcano <daniel.lezcano@linaro.org>,
 Roger Lu =?UTF-8?Q?=28=E9=99=B8=E7=91=9E=E5=82=91=29?= <Roger.Lu@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-05-06 at 13:25 +0800, Eddie Huang wrote:
> Hi Michael,
> 
> On Thu, 2019-05-02 at 18:43 +0800, michael.kao wrote:
> > The #cooling-cells property needs to be specified to allow a CPU
> > to be used as cooling device.
> > 
> > Signed-off-by: michael.kao <Michael.Kao@mediatek.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 5668fb8..95f1d7b 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -11,6 +11,8 @@
> >  #include <dt-bindings/power/mt8183-power.h>
> >  #include <dt-bindings/reset-controller/mt8183-resets.h>
> >  #include "mt8183-pinfunc.h"
> > +#include <dt-bindings/thermal/thermal.h>
> > +
> >  / {
> >  	compatible = "mediatek,mt8183";
> >  	interrupt-parent = <&sysirq>;
> 
> It seems this patch don't have #cooling-cells but in your 2/8 patch in
> this series
> 
> 
I will fix the mistake at v2 patch list. 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
