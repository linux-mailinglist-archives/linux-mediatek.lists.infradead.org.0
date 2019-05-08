Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6358517182
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 08:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8q14SimoLChtlBQh3NUnOhQmKegNJ09XFxYTWMEjOQ8=; b=W7dAklTJJfKq92
	VGY3V2Pg2vcJKPrYQPf/ShaplBPUgNdxCO+tZmx1UVbJtjvZn+rhB34xCDWfvark/LMApu6VYtf4d
	nnA5cXM23F5hVzEjPOLhe5sXpkAJFdyr6jaV+JpOygXMrY+2PvZ+qLeI4odK6WjgUQz/2RaFV0ia4
	5l98FHFlQJvhk4JosYnqNqaZd0Gho9phUoZmgH99MhVPWRNgMRPEVMG+JvO/9WAH3GT08do3U9kQK
	SHngP3I7Leab2Ux7pnmC38MYrmuQoJgLIvG9cPN5M+RglnoApsc5o0kNl4bnHUUlrreCwC6qaUL5P
	6r67MR4ybGWFQIW1MuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOG2g-00067g-QI; Wed, 08 May 2019 06:27:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOG2d-00066z-Vy; Wed, 08 May 2019 06:27:01 +0000
X-UUID: 89e8c9e1f30f4ac0aa992c8bfd10e845-20190507
X-UUID: 89e8c9e1f30f4ac0aa992c8bfd10e845-20190507
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 222943960; Tue, 07 May 2019 22:26:47 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 23:26:46 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 8 May 2019 14:26:43 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 14:26:42 +0800
Message-ID: <1557296802.10179.272.camel@mhfsdcap03>
Subject: Re: [v2 PATCH] dt-binding: usb: add usb-role-switch property
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Wed, 8 May 2019 14:26:42 +0800
In-Reply-To: <20190507141305.GA19816@kuha.fi.intel.com>
References: <38ff51264e971d5c58940c8435b9d8d274662d50.1557195204.git.chunfeng.yun@mediatek.com>
 <20190507141305.GA19816@kuha.fi.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_232700_027013_CC3ED2A8 
X-CRM114-Status: GOOD (  17.75  )
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
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-05-07 at 17:13 +0300, Heikki Krogerus wrote:
> On Tue, May 07, 2019 at 10:22:58AM +0800, Chunfeng Yun wrote:
> > diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
> > index 0a74ab8dfdc2..f5a6ad053ecc 100644
> > --- a/Documentation/devicetree/bindings/usb/generic.txt
> > +++ b/Documentation/devicetree/bindings/usb/generic.txt
> > @@ -30,6 +30,11 @@ Optional properties:
> >  			optional for OTG device.
> >   - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
> >  			optional for OTG device.
> > + - usb-role-switch: tells Dual-Role USB controllers we want to handle the role
> > +			switch between host and device according to the state
> > +			detected by the USB connector, typically for Type-C,
> > +			Type-B(micro).
> > +			see connector/usb-connector.txt.
> 
> That does not look correct to me. Firstly, USB role switches are not
> always dual-role USB controllers. 
Thanks for review, I look through some drivers, you are right, some phys
also switch the roles.

> Secondly, stating what determines
> the role irrelevant IMO.
> 
> Since this is a boolean property, the description for it should simply
> explain what does it tell about the capabilities of the device that
> has it. The description should not make any assumptions about the
> users of the property, and since the property is a "generic" USB
> property, I'm not sure it should make any assumptions about the type
> of the device that has the property either. Also, I would really like
> the description to show the type of the property.
Ok I'll add it.

> 
> Why not just say something like this:
> 
> "Boolean property informing that the device is capable of assigning
> the USB data role (USB host or USB device) for a given USB connector."
will modify it.

> 
> 
> thanks,
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
