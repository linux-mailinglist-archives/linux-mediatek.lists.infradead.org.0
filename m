Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E30222C45
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 08:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIS/wQQvpaTFlIgwGWhIrKnk56PlKcNlYkOgjgWuRd0=; b=KTDlU9YD0dYUt0
	36vajmIECRmm3lWfr4z+P4I6Q8xL3hoWOtRxaNIZnj0LWcbs3Kud+fCFvDLOsjRhE+2A/Ip9WbbeU
	ofDDOrGMcJG2/Q9HMsndIHloA98DXkRdE3FYpEMqMIt3BgYq+8gzgiUAMJcFPASGfVeWww9c3aILD
	sEJPiJ2ZeNKyqBQ3oZR4yLKDeMUjmiFAjWB4cxyOoiAL8ATWsgDZem/IJxI4AeO2rj2rHOmFc729k
	RNEMXesP6KObEPq2GDXBMLnFCwJKKYTPwAPn4zdpzad2MAppgJ8rBaOgWFdeIX8Ah8eSzMWQX3CyX
	l0LFh97eaWZpFAO50qPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSc5H-0002rX-4S; Mon, 20 May 2019 06:47:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSc55-0002gT-5b; Mon, 20 May 2019 06:47:32 +0000
X-UUID: e773c82592cf45a3ab1d293091c31314-20190519
X-UUID: e773c82592cf45a3ab1d293091c31314-20190519
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 773788269; Sun, 19 May 2019 22:47:28 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 23:47:26 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 14:47:24 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 14:47:24 +0800
Message-ID: <1558334844.13182.7.camel@mtkswgap22>
Subject: Re: [PATCH 1/4] dt-bindings: iio: adc: mediatek: Add document for
 mt6765
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Jonathan Cameron <jic23@kernel.org>
Date: Mon, 20 May 2019 14:47:24 +0800
In-Reply-To: <20190518113356.1cf99a31@archlinux>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-2-git-send-email-chun-hung.wu@mediatek.com>
 <20190518113356.1cf99a31@archlinux>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 136E65FE89BA7E502B30A204F640972BA020EFA250DD3943DEB1B7A03C25AD6D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_234731_211325_90391DD3 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jonathan,

On Sat, 2019-05-18 at 11:33 +0100, Jonathan Cameron wrote:
> On Thu, 16 May 2019 16:10:44 +0800
> Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> 
> > Add compatible node for mt6765 auxadc
> > 
> > Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> Applied, but in numeric order.  There was also another clashing patch
> that caused some fuzz.
No problem, thanks!

regards,
Chun-Hung
> 
> thanks,
> 
> Jonathan
> 
> > ---
> >  Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt b/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
> > index 0df9bef..ab7efab 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
> > +++ b/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
> > @@ -15,6 +15,7 @@ Required properties:
> >      - "mediatek,mt2712-auxadc": For MT2712 family of SoCs
> >      - "mediatek,mt7622-auxadc": For MT7622 family of SoCs
> >      - "mediatek,mt8173-auxadc": For MT8173 family of SoCs
> > +    - "mediatek,mt6765-auxadc": For MT6765 family of SoCs
> >    - reg: Address range of the AUXADC unit.
> >    - clocks: Should contain a clock specifier for each entry in clock-names
> >    - clock-names: Should contain "main".
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
