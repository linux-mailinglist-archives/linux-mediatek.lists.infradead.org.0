Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E70BAD7F
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Sep 2019 07:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJbjEKRyj9fScRrCWmzpPiMH5WtcxU3yREReIe3F+g8=; b=UXERy2g3a8zSNP
	wxpGkQtgjmkr/9ZpukQK1BllubkPJ7M5lYbZPrk05vhx1GzAwG9VTDsxGN0TGYwrBI3DKVe0D1e5S
	Ml5fAve5AcbWopSZTReDZ3F7XqAL5upsn64TzSG5i2qTH05CBSA/n/P6PBuvQ8wjjzpsxNCsJrQsC
	qFWAtgQKft1wEPCD7JPeO8ZNIFJgRSDNOssniCU49DOaPvK1cxL47ubBK2OyOWEv9J4b0eiWvMNxQ
	LphAiy+yoywiHj4Y5x5zLjEfHAdb0qThHDNxf3jIhaZN3u9gOJgugYvWZNyMm520XjZez3aOSFbkX
	D72QQhOhSA99fyR6L7iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCH1e-00055p-F8; Mon, 23 Sep 2019 05:36:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCH1Y-00055T-RK
 for linux-mediatek@lists.infradead.org; Mon, 23 Sep 2019 05:36:38 +0000
X-UUID: fedc8ac492a842199838d3037138ea06-20190922
X-UUID: fedc8ac492a842199838d3037138ea06-20190922
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1766399139; Sun, 22 Sep 2019 21:36:28 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Sep 2019 22:36:27 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Sep 2019 13:36:20 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 23 Sep 2019 13:36:20 +0800
Message-ID: <1569216981.20872.3.camel@mtksdaap41>
Subject: Re: [PATCH v7 1/5] dt-bindings: display: mediatek: update dsi
 supported chips
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 23 Sep 2019 13:36:21 +0800
In-Reply-To: <20190920090432.3308-2-jitao.shi@mediatek.com>
References: <20190920090432.3308-1-jitao.shi@mediatek.com>
 <20190920090432.3308-2-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_223636_943792_1FB15CBE 
X-CRM114-Status: GOOD (  13.72  )
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

On Fri, 2019-09-20 at 17:04 +0800, Jitao Shi wrote:
> Update device tree binding documentation for the dsi for
> Mediatek MT8183 SoCs.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Acked-by: Rob Herring <robh@kernel.org>

This version is different with previous version [1], so I think you
should drop the 'Acked-by' tag.

[1] https://patchwork.kernel.org/patch/11081701/

Regards,
CK

> ---
>  .../bindings/display/mediatek/mediatek,dsi.txt    | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> index fadf327c7cdf..993ff079ac09 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> @@ -7,7 +7,7 @@ channel output.
>  
>  Required properties:
>  - compatible: "mediatek,<chip>-dsi"
> -  the supported chips are mt2701 and mt8173.
> +  the supported chips are mt2701, mt8173 and mt8183.
>  - reg: Physical base address and length of the controller's registers
>  - interrupts: The interrupt signal from the function block.
>  - clocks: device clocks
> @@ -26,22 +26,31 @@ The MIPI TX configuration module controls the MIPI D-PHY.
>  
>  Required properties:
>  - compatible: "mediatek,<chip>-mipi-tx"
> -  the supported chips are mt2701 and mt8173.
> +  the supported chips are mt2701, mt8173 and mt8183.
>  - reg: Physical base address and length of the controller's registers
>  - clocks: PLL reference clock
>  - clock-output-names: name of the output clock line to the DSI encoder
>  - #clock-cells: must be <0>;
>  - #phy-cells: must be <0>.
>  
> +Optional properties:
> +- nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
> +               unspecified default values shall be used.
> +- nvmem-cell-names: Should be "calibration-data"
> +- mipitx-current-drive: adjust driving current, should be 1 ~ 0xF
> +
>  Example:
>  
>  mipi_tx0: mipi-dphy@10215000 {
>  	compatible = "mediatek,mt8173-mipi-tx";
>  	reg = <0 0x10215000 0 0x1000>;
>  	clocks = <&clk26m>;
> -	clock-output-names = "mipi_tx0_pll";
>  	#clock-cells = <0>;
>  	#phy-cells = <0>;
> +	clock-output-names = "mipi_tx0_pll";
> +	nvmem-cells= <&mipi_tx_calibration>;
> +	nvmem-cell-names = "calibration-data";
> +	mipitx-current-drive = <0x8>;
>  };
>  
>  dsi0: dsi@1401b000 {



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
