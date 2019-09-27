Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F7DBFCBA
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 03:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKS3Mo5T69mtPEkM8+DqQ5D2+W2OW7EMIiELLcjFgU8=; b=YUR9ywZNSscEiL
	Sk6FkSbyGZkvYKfJo5u+U1yHxi8VjlJnB1nzsX0XPR/hcNsgMXohZ32D2Q5SewnWOShxc3730yKh4
	mt8odYCz7jDXDnoUHwEA/TLIr8jQ5qx6M6U3332hrw6ExE0DnzdKNzcX8VUJYzbloVBHkWgzgDlAc
	+NkTUQcN81uC7RXWy+fpwFefZHMbRU3HGIyfSemIKNKDUALXgb3ccK8/5TH8d6fRTYJPhAQUXbrfr
	2/DrHNCSSQ40BNo1m091tuA0rY7efuEJpOupoEqmL6JjOny6zpGq09eyO0nmH8vLyjYk+/S0PYyMT
	J1maD/cecY2euypD9boQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDf9B-0003Ng-Pk; Fri, 27 Sep 2019 01:34:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDf97-0003NE-UO
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 01:34:12 +0000
X-UUID: b2086f3995474b41a0cc7c07562d176a-20190926
X-UUID: b2086f3995474b41a0cc7c07562d176a-20190926
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 160576757; Thu, 26 Sep 2019 17:34:04 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 18:34:04 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 09:34:02 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 09:34:02 +0800
Message-ID: <1569548042.24127.6.camel@mtksdaap41>
Subject: Re: [PATCH v7 1/5] dt-bindings: display: mediatek: update dsi
 supported chips
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Fri, 27 Sep 2019 09:34:02 +0800
In-Reply-To: <1569216981.20872.3.camel@mtksdaap41>
References: <20190920090432.3308-1-jitao.shi@mediatek.com>
 <20190920090432.3308-2-jitao.shi@mediatek.com>
 <1569216981.20872.3.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_183409_989274_CD76FE41 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, bibby.hsieh@mediatek.com,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 stonea168@163.com, cawa.cheng@mediatek.com, dri-devel@lists.freedesktop.org,
 sj.huang@mediatek.com, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

On Mon, 2019-09-23 at 13:36 +0800, CK Hu wrote:
> Hi, Jitao:
> 
> On Fri, 2019-09-20 at 17:04 +0800, Jitao Shi wrote:
> > Update device tree binding documentation for the dsi for
> > Mediatek MT8183 SoCs.
> > 
> > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> This version is different with previous version [1], so I think you
> should drop the 'Acked-by' tag.
> 
> [1] https://patchwork.kernel.org/patch/11081701/
> 
> Regards,
> CK
> 
> > ---
> >  .../bindings/display/mediatek/mediatek,dsi.txt    | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> > index fadf327c7cdf..993ff079ac09 100644
> > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> > @@ -7,7 +7,7 @@ channel output.
> >  
> >  Required properties:
> >  - compatible: "mediatek,<chip>-dsi"
> > -  the supported chips are mt2701 and mt8173.
> > +  the supported chips are mt2701, mt8173 and mt8183.
> >  - reg: Physical base address and length of the controller's registers
> >  - interrupts: The interrupt signal from the function block.
> >  - clocks: device clocks
> > @@ -26,22 +26,31 @@ The MIPI TX configuration module controls the MIPI D-PHY.
> >  
> >  Required properties:
> >  - compatible: "mediatek,<chip>-mipi-tx"
> > -  the supported chips are mt2701 and mt8173.
> > +  the supported chips are mt2701, mt8173 and mt8183.
> >  - reg: Physical base address and length of the controller's registers
> >  - clocks: PLL reference clock
> >  - clock-output-names: name of the output clock line to the DSI encoder
> >  - #clock-cells: must be <0>;
> >  - #phy-cells: must be <0>.
> >  
> > +Optional properties:
> > +- nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
> > +               unspecified default values shall be used.
> > +- nvmem-cell-names: Should be "calibration-data"
> > +- mipitx-current-drive: adjust driving current, should be 1 ~ 0xF
> > +

You add optional properties in this version. I would like you to
separate this part to another patch. This part looks not strong related
to mt8183 (these properties may also applied to other SoC). So I've
applied previous version in mediatek-drm-next-5.5 [1], and I've also
applied these series (except patches related to these property), so I
would like you to send another series for these properties.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> >  Example:
> >  
> >  mipi_tx0: mipi-dphy@10215000 {
> >  	compatible = "mediatek,mt8173-mipi-tx";
> >  	reg = <0 0x10215000 0 0x1000>;
> >  	clocks = <&clk26m>;
> > -	clock-output-names = "mipi_tx0_pll";
> >  	#clock-cells = <0>;
> >  	#phy-cells = <0>;
> > +	clock-output-names = "mipi_tx0_pll";
> > +	nvmem-cells= <&mipi_tx_calibration>;
> > +	nvmem-cell-names = "calibration-data";
> > +	mipitx-current-drive = <0x8>;
> >  };
> >  
> >  dsi0: dsi@1401b000 {
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
