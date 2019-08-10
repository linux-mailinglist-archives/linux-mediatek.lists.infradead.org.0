Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E212288C40
	for <lists+linux-mediatek@lfdr.de>; Sat, 10 Aug 2019 18:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQgIPdo0Dkq93ALQdSrCUfsjODX1Tbzq8xrw70C0Gzo=; b=jwGLzK+EBQsWov
	jBedhVSl8svuI1/9ffR7cuW1M/Mk94GErgHwOzb///zVmrolbnpsi9ixcxBYVQvSDr2fAsIdiHXNr
	Pyg8UaXInh8nbPg0tn1EDTIYOPOO0dX4XwlW/rRl+nQ0fD/MYOBA1AS/BovzYacQ0f4QRaFwtDO/v
	Cbinm9dDH5dZD7LRCT1AEpbp22b72FzCj3l1hrXLS0wNamq6vY8lhUF9lXmMAdiRHhWvtNvbRmFDY
	yw6MaYuMeFpXRbOGD5TqT4Avux6I7ThRr7QjIGbs1Er46MpjQrDVDuy4VLknv3PRLdEuA9iMXRJm9
	tuEsb7ba4NYocBezO4Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwUC4-00035I-F1; Sat, 10 Aug 2019 16:26:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwUBC-0002cv-6M; Sat, 10 Aug 2019 16:25:19 +0000
X-UUID: 10ed59c223bb49c6a63720e2ab95f66e-20190810
X-UUID: 10ed59c223bb49c6a63720e2ab95f66e-20190810
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1323070937; Sat, 10 Aug 2019 08:25:16 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 10 Aug 2019 09:25:14 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 11 Aug 2019 00:25:10 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 11 Aug 2019 00:25:09 +0800
Message-ID: <1565454309.19079.27.camel@mhfsdcap03>
Subject: Re: [PATCH v11 12/12] arm64: dts: add gce node for mt8183
From: houlong wei <houlong.wei@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Sun, 11 Aug 2019 00:25:09 +0800
In-Reply-To: <20190729070106.9332-13-bibby.hsieh@mediatek.com>
References: <20190729070106.9332-1-bibby.hsieh@mediatek.com>
 <20190729070106.9332-13-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 08A3F6E34B3F7051DAE61A4F8C1F0FC9D2F0453666D3B5A1E22C7686139D52D62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_092518_258311_CF17DE62 
X-CRM114-Status: GOOD (  12.08  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, srv_heupstream <srv_heupstream@mediatek.com>,
 Daoyuan Huang =?UTF-8?Q?=28=E9=BB=83=E9=81=93=E5=8E=9F=29?=
 <Daoyuan.Huang@mediatek.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 houlong.wei@mediatek.com,
 CK Hu =?UTF-8?Q?=28=E8=83=A1=E4=BF=8A=E5=85=89=29?= <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Ginny Chen =?UTF-8?Q?=28=E9=99=B3=E6=B2=BB=E5=82=91=29?=
 <ginny.chen@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang =?UTF-8?Q?=28=E5=BC=A0=E5=8A=A0=E5=B9=BF=29?=
 <Jiaguang.Zhang@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Dennis-YC Hsieh =?UTF-8?Q?=28=E8=AC=9D=E5=AE=87=E5=93=B2=29?=
 <Dennis-YC.Hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-07-29 at 15:01 +0800, Bibby Hsieh wrote:
> add gce device node for mt8183
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 08274bfcebd8..98d17d0bdebf 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/mt8183-clk.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gce/mt8183-gce.h>
>  
>  / {
>  	compatible = "mediatek,mt8183";
> @@ -212,6 +213,15 @@
>  			clock-names = "spi", "wrap";
>  		};
>  
> +		gce: gce@10238000 {

Use mailbox@ instead of gce@, Rob suggested in
https://patchwork.kernel.org/patch/10491213/


> +			compatible = "mediatek,mt8183-gce";
> +			reg = <0 0x10238000 0 0x4000>;
> +			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_LOW>;
> +			#mbox-cells = <3>;
> +			clocks = <&infracfg CLK_INFRA_GCE>;
> +			clock-names = "gce";
> +		};
> +
>  		uart0: serial@11002000 {
>  			compatible = "mediatek,mt8183-uart",
>  				     "mediatek,mt6577-uart";



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
