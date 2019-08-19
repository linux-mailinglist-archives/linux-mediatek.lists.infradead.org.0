Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A7C91AD1
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 03:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuaaE8jZvvdyU/4NmT5wtpvyTZfv7F8gEG75jYFz2pM=; b=ofBY4CnA2WFv0O
	MgnpejGfrwDrJHo8JKQrP1ztd8yi/TQECbjUkeR63g1x+BYZr0nnSL8eKh7IkKQq++JG56WzeknhO
	5GZoc8VeGiRKqsCT/tlpel31EqMnuS9I2v5Wc3eSatB6JNMJWVqY4Pw3MbH9MKkAqbq197ayntCXm
	XdpGvzKOhY0dqN0hKc7oXqc2xBEG2bxBA2C5kg+th0gyXOImGfGRCdOk0k20h4rpsigSk2I/PWqFS
	PmPaUxT4zLq3ci+n4oMOMCtkHR+uCrlBH+LX1kSoA8RR9LwS+0KY0MZxZg0gdFPkNQbi5HQCBp6vi
	bfYwJZcpGcdorvSyy15g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzWei-00035j-Ck; Mon, 19 Aug 2019 01:40:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzWef-00035M-36; Mon, 19 Aug 2019 01:40:18 +0000
X-UUID: b687eb9887e34a09a5154b3776f13ace-20190818
X-UUID: b687eb9887e34a09a5154b3776f13ace-20190818
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1525305289; Sun, 18 Aug 2019 17:40:03 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 18 Aug 2019 18:40:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 09:39:54 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 09:39:54 +0800
Message-ID: <1566178794.6371.8.camel@mtksdaap41>
Subject: Re: [RFC V2 08/11] dt-bindings: interconnect: add MT8183
 interconnect dt-bindings
From: Henry Chen <henryc.chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Mon, 19 Aug 2019 09:39:54 +0800
In-Reply-To: <20190501202753.GA2862@bogus>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
 <1556614265-12745-9-git-send-email-henryc.chen@mediatek.com>
 <20190501202753.GA2862@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_184017_143203_F24A7279 
X-CRM114-Status: GOOD (  16.50  )
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Rob,

Sorry for late reply.

On Wed, 2019-05-01 at 15:27 -0500, Rob Herring wrote:
> On Tue, Apr 30, 2019 at 04:51:02PM +0800, Henry Chen wrote:
> > Add interconnect provider dt-bindings for MT8183.
> > 
> > Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> > ---
> >  .../bindings/interconnect/mtk,mt8183.txt           | 24 ++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt b/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
> > new file mode 100644
> > index 0000000..1cf1841
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
> > @@ -0,0 +1,24 @@
> > +Mediatek MT8183 interconnect binding
> 
> This should be part of the dvfsrc binding.
ok, will add these into dvfsrc binding.
> 
> > +
> > +MT8183 interconnect providers support dram bandwidth requirements. The provider
> > +is able to communicate with the DVFSRC and send the dram bandwidth to it.
> > +Provider nodes must reside within an DVFSRC device node.
> > +
> > +Required properties :
> > +- compatible : shall contain only one of the following:
> > +			"mediatek,mt8183-emi-icc"
> > +- #interconnect-cells : should contain 1
> > +
> > +Examples:
> > +
> > +dvfsrc@10012000 {
> > +	compatible = "mediatek,mt8183-dvfsrc";
> > +	reg = <0 0x10012000 0 0x1000>;
> > +	clocks = <&infracfg CLK_INFRA_DVFSRC>;
> > +	clock-names = "dvfsrc";
> > +	ddr_emi: interconnect {
> > +		compatible = "mediatek,mt8183-emi-icc";
> > +		#interconnect-cells = <1>;
> 
> No need for a child node here. Just move #interconnect-cells to the 
> parent.
Ihave tried and it cannot work if move "#interconnect-cells" to the
parent.
The provider nodes must reside within an DVFSRC device node.
> 
> Rob



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
