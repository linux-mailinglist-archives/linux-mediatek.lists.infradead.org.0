Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9E1101A94
	for <lists+linux-mediatek@lfdr.de>; Tue, 19 Nov 2019 08:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/ZfTp3I/nK65vekKBr9r7IL7z1HUeFCJGa3B2Ji/4M=; b=Cmieiea7Xn6rBm
	5uu6s6mFhBXL3DuF0vnOeIm1iaSP0eoiDaLQovaFsW4a5YRf83uEpZvjvNDfwcxLnZa6Nfs6loJya
	1Fufpkj+LMzb2D5tDnMAkA6fO7hSdgXIPEM5ENABLfdWwEnKuqV4vQKDXL4wIM7bQkiFr6B77cHw7
	Wbuc3B1kky97iBw2JgmTTodvZLtjDG1myi2/0XDP+JzELBf3n8DteE3/N6mgi0trpuhj/of95xQYx
	xCXW+iDIYHT0xqmr5UCRrSrBJLrTV1ujNTj4ButuxGI6Xx//uJQp9hwLmNV5wVQVR9/t1A/YFwET+
	jM2WkPKO5zXSh4544MZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyOD-0007k8-T9; Tue, 19 Nov 2019 07:57:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyO8-0007j0-8b; Tue, 19 Nov 2019 07:57:32 +0000
X-UUID: c053ea45551e44dc9614489e57079924-20191118
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yBnu1NtPajEa00aUiIIxVlbDQ8eChoLCV7rmSdXtLH4=; 
 b=PDT3vL3EhKmVaDjFzp+2dEvjD54PpDO7kDG3B9MDJev5ur3npY9ZwcSTCtnxiKFKMA5UthNLEWgWtbILacQXvBHVftLSuitUIsefXCobp5KDTiYwhm57SkTqZC7od2q/tcEes1DyMM+U+lvbds7ABaRHhV9cSd7xRYzWqk+YlSs=;
X-UUID: c053ea45551e44dc9614489e57079924-20191118
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1796284694; Mon, 18 Nov 2019 23:57:23 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 18 Nov 2019 23:57:37 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by mtkcas07.mediatek.inc
 (172.21.101.84) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 19 Nov 2019 15:57:08 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 19 Nov 2019 15:57:08 +0800
Message-ID: <1574150240.19262.7.camel@mtksdccf07>
Subject: Re: [RESEND, PATCH 1/1] arm: dts: mediatek: add mt7629 pwm support
From: Sam Shih <sam.shih@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 19 Nov 2019 15:57:20 +0800
In-Reply-To: <31fddc2b-65c7-02e8-dca2-b5d6dc050f87@gmail.com>
References: <1571751001-28588-1-git-send-email-sam.shih@mediatek.com>
 <1571751001-28588-2-git-send-email-sam.shih@mediatek.com>
 <31fddc2b-65c7-02e8-dca2-b5d6dc050f87@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_235728_311100_FD4F90D0 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 2019-11-10 at 21:51 +0100, Matthias Brugger wrote:
> 
> On 22/10/2019 15:30, Sam Shih wrote:
> > This adds pwm support for MT7629.
> > Used:
> > https://patchwork.kernel.org/patch/11160851/
> > 
> > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > ---
> >  arch/arm/boot/dts/mt7629.dtsi | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
> > index 9608bc2ccb3f..24375fc5f936 100644
> > --- a/arch/arm/boot/dts/mt7629.dtsi
> > +++ b/arch/arm/boot/dts/mt7629.dtsi
> > @@ -241,6 +241,21 @@
> >  			status = "disabled";
> >  		};
> >  
> > +		pwm: pwm@11006000 {
> > +			compatible = "mediatek,mt7629-pwm";
> > +			reg = <0x11006000 0x1000>;
> > +			interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_LOW>;
> > +			clocks = <&topckgen CLK_TOP_PWM_SEL>,
> > +				 <&pericfg CLK_PERI_PWM_PD>,
> > +				 <&pericfg CLK_PERI_PWM1_PD>;
> > +			clock-names = "top", "main", "pwm1";
> > +			assigned-clocks = <&topckgen CLK_TOP_PWM_SEL>;
> > +			assigned-clock-parents =
> > +					<&topckgen CLK_TOP_UNIVPLL2_D4>;
> > +			num-pwms = <1>;
> 
> num-pwms is not defined. Did you mean pwm-cells?
> 
> Regards,
> Matthias
> 
> > +			status = "disabled";
> > +		};
> > +
> >  		i2c: i2c@11007000 {
> >  			compatible = "mediatek,mt7629-i2c",
> >  				     "mediatek,mt2712-i2c";
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek


Sorry for the Late Reply,
The num-pwms field is redundant after we derive it from the compatible
string. I forgot to remove it from the device tree.
I will send a new version.

Thanks,
Best Regards,
Sam Shih

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
