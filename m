Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9DBB5968
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 03:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fLd2cIVHVINYIEZ42ba/TI1ifhhc1E3Gxfrvaswjkk=; b=Ex0Q55gzZzNrBo
	SgEzqjVZ92xJT+LXBPxXHosOaUK5zlHFiCbrb5mtXK1c6FzAm/I5qGXW6RA59m+DFcOWLUj0nQe/0
	GNVDOvlOrmDBfJEGa1wUtIRZrv0sMogZh9Eze7WKAAJVTJZrjpckiHYkiqzekURcdzTDzzQ0LMX4T
	/xNPOC4CeTHhr01jZH7E2cIhWx6/FtOyh6EiUjS/tfPag7fkNb1ODoNF3CcPr8aepUrlzwrWJUWgS
	boQqWblQIAhJtHFpjrbJqaB/ZVe5jeuOob1IcItXroZm2vZpwq6OJsnBIfPDiJjfk0Lttm9VqEmv2
	KGLQggbzOiLjwKBzGk7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAP1T-0004Ax-0A; Wed, 18 Sep 2019 01:44:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAP1B-00041S-Ke; Wed, 18 Sep 2019 01:44:31 +0000
X-UUID: 4df497f9f0d740178258c068040f2b45-20190917
X-UUID: 4df497f9f0d740178258c068040f2b45-20190917
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 218659206; Tue, 17 Sep 2019 17:44:17 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 18:44:17 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 09:44:16 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 18 Sep 2019 09:44:16 +0800
Message-ID: <1568771054.21700.7.camel@mtkswgap22>
Subject: Re: [PATCH v4 2/3] dt-bindings: rng: add bindings for MediaTek
 ARMv8 SoCs
From: Neal Liu <neal.liu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 18 Sep 2019 09:44:14 +0800
In-Reply-To: <CAL_Jsq+SRhd=-5O2G_CMfJX9Z188kvA05MQOXaU1J8iExwUixQ@mail.gmail.com>
References: <1561361052-13072-1-git-send-email-neal.liu@mediatek.com>
 <1561361052-13072-3-git-send-email-neal.liu@mediatek.com>
 <20190722171320.GA9806@bogus> <1563848465.31451.4.camel@mtkswgap22>
 <CAL_Jsq+SRhd=-5O2G_CMfJX9Z188kvA05MQOXaU1J8iExwUixQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_184429_687219_109EBE4C 
X-CRM114-Status: GOOD (  28.64  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Neal Liu <neal.liu@mediatek.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-07-23 at 22:35 +0800, Rob Herring wrote:
> On Mon, Jul 22, 2019 at 8:21 PM Neal Liu <neal.liu@mediatek.com> wrote:
> >
> 
> Please don't top post to lists.
> 
> > Dear Rob,
> >         You can check my driver for detail:
> >         http://patchwork.kernel.org/patch/11012475/ or patchset 3/3
> 
> I could, or you could just answer my question.
> 
> >
> >         This driver is registered as hardware random number generator, and
> > combines with rng-core.
> >         We want to add one rng hw based on the dts. Is this proper or do you
> > have other suggestion to meet this requirement?
> 
> It depends. There doesn't appear to be any resource configuration, so
> why does it need to be in DT. DT is not the only way instantiate
> drivers.
> 
> Rob
> 

We would like to consult more about this patch.
We cannot figure out what method should be used instead of DT.
The interface to access firmware is "smc" and firmware function only
exists on certain platforms.
Some DT has similar way, like:
http://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts#L470

	firmware {
		optee {
			compatible = "linaro,optee-tz";
			method = "smc";
		};
	};

Is there any way to instantiate driver on certain platforms without DT?
Could you give us some examples?
Thanks

> >
> >         Thanks
> >
> >
> > On Tue, 2019-07-23 at 01:13 +0800, Rob Herring wrote:
> > > On Mon, Jun 24, 2019 at 03:24:11PM +0800, Neal Liu wrote:
> > > > Document the binding used by the MediaTek ARMv8 SoCs random
> > > > number generator with TrustZone enabled.
> > > >
> > > > Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> > > > ---
> > > >  .../devicetree/bindings/rng/mtk-sec-rng.txt        |   10 ++++++++++
> > > >  1 file changed, 10 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt b/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> > > > new file mode 100644
> > > > index 0000000..c04ce15
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> > > > @@ -0,0 +1,10 @@
> > > > +MediaTek random number generator with TrustZone enabled
> > > > +
> > > > +Required properties:
> > > > +- compatible : Should be "mediatek,mtk-sec-rng"
> > >
> > > What's the interface to access this?
> > >
> > > A node with a 'compatible' and nothing else is a sign of something that
> > > a parent device should instantiate and doesn't need to be in DT. IOW,
> > > what do complete bindings for firmware functions look like?
> > >
> > > > +
> > > > +Example:
> > > > +
> > > > +hwrng: hwrng {
> > > > +   compatible = "mediatek,mtk-sec-rng";
> > > > +}
> > > > --
> > > > 1.7.9.5
> > > >
> > >
> > > _______________________________________________
> > > Linux-mediatek mailing list
> > > Linux-mediatek@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-mediatek
> >
> >



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
