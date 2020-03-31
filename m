Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961E5198CC4
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Mar 2020 09:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3oDTbR66bMHRGDJvkvR5nSdFmOf1cFzYJJnTI0AUhyk=; b=Guu0SFgyD74FbI
	NgjmEXoyGcrsadzSdv/PYCsx40mYgdkVdO9H3rydjxd3LeiLZgDwF40Hugg7weWzmWSORRTvSgAcg
	sUN198MagzEzV7980NmVm334OhvczqRYHwmvZVE3bmVF1TYlO3F4yGDXMDO8twZowaav8gFKD82OT
	e2otsU7NHcPCmPiM+jWPvtaYpgwEyC3JcIs2wkUnO35Uep8XWJXQx4WD/AQhErFiMI4wPOd4sfyck
	2/4vUtL0WBSL2KzqVzKLbCuULT8O4cczbs1Ds8mDasn3MdH4qVarIH7tp0rjd2Cxvb9qy/cj1qQvg
	b0uFDYIp8g0P9g8Buu0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJB6i-0007Bf-JM; Tue, 31 Mar 2020 07:14:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJB6f-0007B0-Gs; Tue, 31 Mar 2020 07:14:42 +0000
X-UUID: a70682b87b90401490f67ace37cdcaa7-20200330
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=tjPRKJwv3JpOCljaRUaL4xSBagZpOnRqSFRVswzw7Gs=; 
 b=pl3sFafDlzdqzPr2tiyYdnfDuM8e2VR5yyrpb56+s6YCZInYGQz7eFVwID0N/vWNuiQfSKrJ16r2al4CpLWqtCbiNnMbhtayoyFDENSBlRIOj8n088F93u2WgR7jJ774noNjnV32YfBnGiZbOJFLeJ9X+2IurBI/yb5Et7QgAoA=;
X-UUID: a70682b87b90401490f67ace37cdcaa7-20200330
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 954705506; Mon, 30 Mar 2020 23:14:21 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Mar 2020 00:10:25 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 31 Mar 2020 15:10:21 +0800
Received: from [10.16.6.141] (10.16.6.141) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 31 Mar 2020 15:10:19 +0800
Message-ID: <1585638593.31955.5.camel@mszsdaap41>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: mediatek: add property to
 control mipi tx drive current
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 31 Mar 2020 15:09:53 +0800
In-Reply-To: <20200323220033.GA29463@bogus>
References: <20200311074032.119481-1-jitao.shi@mediatek.com>
 <20200311074032.119481-2-jitao.shi@mediatek.com>
 <20200323220033.GA29463@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 518E88426F51400BDCEE41B35C4881984A15EE42DB8BBE274CDC847E3BBA18762000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_001441_564481_8BEE517A 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


On Mon, 2020-03-23 at 16:00 -0600, Rob Herring wrote:
> On Wed, Mar 11, 2020 at 03:40:29PM +0800, Jitao Shi wrote:
> > Add a property to control mipi tx drive current:
> > "drive-strength-microamp"
> > 
> > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > ---
> >  .../devicetree/bindings/display/mediatek/mediatek,dsi.txt     | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> > index a19a6cc375ed..d501f9ff4b1f 100644
> > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> > @@ -33,6 +33,9 @@ Required properties:
> >  - #clock-cells: must be <0>;
> >  - #phy-cells: must be <0>.
> >  
> > +Optional properties:
> > +- drive-strength-microamp: adjust driving current, should be 1 ~ 0xF
> 
> TBC, 1-0xf is in units of microamps? So a max drive strength of 15uA? 
> Seems a bit low.
> 

The minimum amp is 3000 macroamps,  step is 200macroamps.
So the drive current is 3000 + 200 * drive-strength-microamp amps.

I will update "drive-strength-microamp" define next version.

BR
Jitao
> > +
> >  Example:
> >  
> >  mipi_tx0: mipi-dphy@10215000 {
> > @@ -42,6 +45,7 @@ mipi_tx0: mipi-dphy@10215000 {
> >  	clock-output-names = "mipi_tx0_pll";
> >  	#clock-cells = <0>;
> >  	#phy-cells = <0>;
> > +	drive-strength-microamp = <0x8>;
> >  };
> >  
> >  dsi0: dsi@1401b000 {
> > -- 
> > 2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
