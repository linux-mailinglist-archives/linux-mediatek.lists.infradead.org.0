Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B718651E3
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 08:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoCVe4yEj+NuC1fWj5ZIhDaSZ4TaI4eblc2RG4v0rAo=; b=OX97KwKj+GKD23
	LGU0JStxY3SBlBhhwI8slEOdb1+t4JMHlhmyT8vUkVJUrh30yCBylMM8TAjzGiy6KTclzyrRAzzIb
	aZuESHNBn6vND2WrS0jTg05Gf0J/yZYB8GuAObh81jUSJ3hQFpQvZM7XTuNNa2GJMlstsM5bQZG2y
	Wln6uI9Oi3Ga/NXCtDdwbBU/eFRaRVkKFwplUi2cCuWatDlPks/p6P2FSbfj+3eVzPGHw5LwNa+5Z
	ibd4MeLrL7A2B9fgwp5Y295muJ90L+nCW2OnTBRi+Sk+t+U76jf7yQ0ZKGmmWdWICO3l5FNbR4GA0
	UmxCyL5VbD54FlbDwCwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlSir-0007R9-Mk; Thu, 11 Jul 2019 06:38:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlSio-0007QS-I2
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 06:38:28 +0000
X-UUID: e835914512c84c45b2dd016eeafccdea-20190710
X-UUID: e835914512c84c45b2dd016eeafccdea-20190710
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1860752918; Wed, 10 Jul 2019 22:38:12 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 23:38:10 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 11 Jul 2019 14:38:09 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 11 Jul 2019 14:38:07 +0800
Message-ID: <1562827087.22938.1.camel@mhfsdcap03>
Subject: Re: [PATCH v2, 2/3] arm64: dts: mt8183: add emi node
From: Xi Chen <xixi.chen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 11 Jul 2019 14:38:07 +0800
In-Reply-To: <768b95c9-b0d4-844e-906d-0d8d3bb4fe65@gmail.com>
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
 <1558670066-22484-3-git-send-email-xixi.chen@mediatek.com>
 <768b95c9-b0d4-844e-906d-0d8d3bb4fe65@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_233826_605876_1F9922DC 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, ck.hu@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 23:32 +0200, Matthias Brugger wrote:
> 
> On 24/05/2019 05:54, Xi Chen wrote:
> > Add emi dts node.
> > 
> > Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 75c4881..2a176e9 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -269,6 +269,17 @@
> >  			clock-names = "spi", "wrap";
> >  		};
> >  
> > +		emi@10219000 {
> > +			compatible = "mediatek,mt8183-emi";
> > +			reg = <0 0x10219000 0 0x1000>, /* CEN EMI */
> > +				  <0 0x10226000 0 0x1000>, /* EMI MPU */
> > +				  <0 0x1022d000 0 0x1000>, /* CHA EMI */
> > +			      <0 0x10235000 0 0x1000>; /* CHB EMI */
> > +			interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_LOW>, /* MPU */
> > +						 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>, /* CGM */
> > +						 <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>; /* ELM */
> 
> indentation seems borken here.
	sorry, broken some blanks.
> 
> > +		};
> > +
> >  		uart0: serial@11002000 {
> >  			compatible = "mediatek,mt8183-uart",
> >  				     "mediatek,mt6577-uart";
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
