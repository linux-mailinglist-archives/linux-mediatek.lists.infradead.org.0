Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CE5B4BA
	for <lists+linux-mediatek@lfdr.de>; Sun, 28 Apr 2019 03:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2occpOwlbD3Y10rMlkONFWOAm36sunzBllJBorM9c4k=; b=rT58ylHYR8SVYS
	u5iZxkheppurRkCdAkpaRWaPUIZqbBOoYcQcN53+24fT2DoErMh7/Ptrxsxv5ViGsvtdSW2wD5bXF
	jUhAblx46KL+X/0ugXF7JeEVy9ZTthvwClkGIpFmjCVoFQp632L1/tlwxAHfVi/+aAPtVgJRMMIvf
	05lB4yxNZrVf1ivY3lV+XsQdnyJP4b25t52+N3ZSh4fD9VTU1Mq+8RwscPmF72L0ShMqsro2vm6d1
	1wfunxq+dx+espgsJFKvr1YihBg5A9G8v7b3SHGI/u0trDh5reD/R23D7Bv6nMGhi5bRFdYntdxqw
	C5vcizgzuHLwF9vlBptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKYyO-0001Uv-Px; Sun, 28 Apr 2019 01:51:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKYyF-0001Os-S7; Sun, 28 Apr 2019 01:51:13 +0000
X-UUID: 7e042395ef9b439f929ab05fc7ae5ff2-20190427
X-UUID: 7e042395ef9b439f929ab05fc7ae5ff2-20190427
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1965872067; Sat, 27 Apr 2019 17:51:02 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 27 Apr 2019 18:51:01 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 28 Apr 2019 09:50:58 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 28 Apr 2019 09:50:57 +0800
Message-ID: <1556416257.10179.210.camel@mhfsdcap03>
Subject: Re: [PATCH v4 2/6] dt-bindings: usb: add binding for Type-B GPIO
 connector driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Sun, 28 Apr 2019 09:50:57 +0800
In-Reply-To: <20190426204537.GA15074@bogus>
References: <1556261237-13823-1-git-send-email-chunfeng.yun@mediatek.com>
 <1556261237-13823-3-git-send-email-chunfeng.yun@mediatek.com>
 <20190426204537.GA15074@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_185111_909835_BDDCBF2C 
X-CRM114-Status: GOOD (  21.19  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-04-26 at 15:45 -0500, Rob Herring wrote:
> On Fri, Apr 26, 2019 at 02:47:13PM +0800, Chunfeng Yun wrote:
> > It's used to support dual role switch via GPIO when use Type-B
> > receptacle, typically the USB ID pin is connected to an input
> > GPIO pin
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v4 no changes
> > 
> > v3 changes:
> >  1. treat type-B connector as a virtual device, but not child device of
> >     USB controller's
> > 
> > v2 changes:
> >   1. new patch to make binding clear suggested by Hans
> > ---
> >  .../bindings/usb/typeb-conn-gpio.txt          | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> > new file mode 100644
> > index 000000000000..d2e1c4e01b6d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> > @@ -0,0 +1,49 @@
> > +USB Type-B GPIO Connector
> > +
> > +This is a virtual device used to switch dual role mode from the USB ID pin
> > +connected to an input GPIO pin.
> > +
> > +Required properties:
> > +- compatible : Should be "linux,typeb-conn-gpio"
> 
> There's no need for this virtual node. The USB host or device driver can 
> instantiate a connector driver by walking the OF graph to the connector 
> and creating a device.
Got it.
> 
> > +
> > +Sub-nodes:
> > +- connector : should be present.
> > +	- compatible : should be "usb-b-connector".
> > +	- id-gpios, vbus-gpios : either one of them must be present,
> > +		and both can be present as well.
> > +	- vbus-supply : can be present if needed when supports dual role mode.
> > +	see connector/usb-connector.txt
> > +
> > +- port : should be present.
> > +	see graph.txt
> > +
> > +Example:
> > +
> > +rsw_iddig: role_sw_iddig {
> > +	compatible = "linux,typeb-conn-gpio";
> > +	status = "okay";
> > +
> > +	connector {
> > +		compatible = "usb-b-connector";
> > +		label = "micro-USB";
> > +		type = "micro";
> > +		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
> > +		vbus-supply = <&usb_p0_vbus>;
> > +	};
> > +
> > +	port {
> 
> Humm, same mistake as Hikey patches...
> 
> This goes under the connector node as defined in the connector binding.
Ok, will fix it.

Thanks a lot.

> 
> > +		bconn_ep: endpoint@0 {
> > +			remote-endpoint = <&usb_role_sw>;
> > +		};
> > +	};
> > +};
> > +
> > +&mtu3 {
> > +	status = "okay";
> > +
> > +	port {
> > +		usb_role_sw: endpoint@0 {
> > +			remote-endpoint = <&bconn_ep>;
> > +		};
> > +	};
> > +};
> > -- 
> > 2.21.0
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
