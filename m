Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BB912AD01
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Dec 2019 15:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzWrF8SWrc70mC/bt2bPQE92DYc6f/TZCZLB3X3i8+A=; b=mm/aj9BwPBBm1N
	tsY+2PdJhQQcU3UZq+9MgZh1ofY69ThEK3Ie4GBGOAkZUIC6UmID9C1XC1+VEP1ybvtXE3EfOR8+y
	uA3YMNONkPrN+f2HmZ8MPI/09+h4ADYP8BXq9m/36zl1W4duhGY/PFiqXNv2FhJ9dhPHXjTZ2wHWC
	99DgKI4TOGq2OI0zi/Q5dvF1CLbwavtRQ9NQX9VAHQZe7PnUIkemCGaOhTydQiGki1o9lIB+8a/at
	HMyY496/nQ7PS2uSSKVM7Rm/nuB7H0sTMXr/BeLQJv/CS3unUZ0np441ImKKnDcIxafCADVHMElD2
	sxlWoqazyEeZMNsGbQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikU76-0000Fv-M8; Thu, 26 Dec 2019 14:27:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikU6t-00006K-Ps; Thu, 26 Dec 2019 14:27:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 177E129203F
Message-ID: <9fc5e30b8bc7e160ddc54a2056ca6e57eaebbab4.camel@collabora.com>
Subject: Re: [PATCH v22 1/2] Documentation: bridge: Add documentation for
 ps8640 DT properties
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>, 
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Date: Thu, 26 Dec 2019 11:27:15 -0300
In-Reply-To: <20191223143538.20327-2-enric.balletbo@collabora.com>
References: <20191223143538.20327-1-enric.balletbo@collabora.com>
 <20191223143538.20327-2-enric.balletbo@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_062732_036377_2887306A 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 drinkcat@chromium.org, Jitao Shi <jitao.shi@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, Ulrich Hecht <uli@fpond.eu>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Enric, Rob,

On Mon, 2019-12-23 at 15:35 +0100, Enric Balletbo i Serra wrote:
> From: Jitao Shi <jitao.shi@mediatek.com>
> 
> Add documentation for DT properties supported by
> ps8640 DSI-eDP converter.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Ulrich Hecht <uli@fpond.eu>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
[..]
> +
> +  ports:
> +    type: object
> +    description:
> +      A node containing DSI input & output port nodes with endpoint
> +      definitions as documented in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt
> +      Documentation/devicetree/bindings/graph.txt
> +    properties:
> +      port@0:
> +        type: object
> +        description: |
> +          Video port for DSI input
> +
> +      port@1:
> +        type: object
> +        description: |
> +          Video port for eDP output (panel or connector).
> +
> +    required:
> +      - port@0
> +

Is it correct to require port@0 ? This could be called port@1
or port@2, and IIUC it should bind the same.

Thanks,
Ezequiel 

> +required:
> +  - compatible
> +  - reg
> +  - powerdown-gpios
> +  - reset-gpios
> +  - vdd12-supply
> +  - vdd33-supply
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ps8640: edp-bridge@18 {
> +            compatible = "parade,ps8640";
> +            reg = <0x18>;
> +            powerdown-gpios = <&pio 116 GPIO_ACTIVE_LOW>;
> +            reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
> +            vdd12-supply = <&ps8640_fixed_1v2>;
> +            vdd33-supply = <&mt6397_vgp2_reg>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    ps8640_in: endpoint {
> +                        remote-endpoint = <&dsi0_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    ps8640_out: endpoint {
> +                        remote-endpoint = <&panel_in>;
> +                   };
> +                };
> +            };
> +        };
> +    };
> +
> -- 
> 2.20.1
> 
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
