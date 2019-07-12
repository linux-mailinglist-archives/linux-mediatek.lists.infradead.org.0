Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B799C66382
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jul 2019 03:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSjfXR/SkdjgpvzlIDRIZpRTfjfYo2cxdv+OzkghVJo=; b=KXYx3Hb7LiTUxQ
	EznEzWRe36LPutRuwG2tMZ9LOL14cQuA99lZcXa8nPAUBntOra4orFr+PLDNGHZ5tAqjehvNh1RcS
	jTfUp6E0+b2MfI97y7kKnXHhV5p9iMp3WkgXk3+XsJDRoOyVWWuyvgSZggx02UUa3Ewpi7c3ok0J5
	w9VmmfYtMfCF4/dkekuZTixq2IUHBS4EJ+LVc/JxflbmMohYwKM8D74ikeE/4uOK7W6JVlketKBYW
	bfCYO5oG4YpNLSobPctONB14GZZ6mCajAAAHuMBkG5rFaZOh8svkjtqUm/Xd62tl4WEC26ZdHHa30
	+Q+/T5l0zq1nESSCCIpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlklw-0006yA-28; Fri, 12 Jul 2019 01:54:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlklF-0006lj-CE; Fri, 12 Jul 2019 01:54:11 +0000
X-UUID: c250e7ad68b74869a3f8b7e867d41d96-20190711
X-UUID: c250e7ad68b74869a3f8b7e867d41d96-20190711
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1569538013; Thu, 11 Jul 2019 17:54:03 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 18:54:01 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 12 Jul 2019 09:53:55 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 12 Jul 2019 09:53:54 +0800
Message-ID: <1562896434.32589.26.camel@mhfsdcap03>
Subject: Re: [PATCH 3/5] dt-bindings: usb: mtk-xhci: add an optional xhci_ck
 clock
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 12 Jul 2019 09:53:54 +0800
In-Reply-To: <20190709142235.GA11951@bogus>
References: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
 <9b6ad8dee142d73b56d653ecb7475c4ed28e5eb8.1560246390.git.chunfeng.yun@mediatek.com>
 <20190709142235.GA11951@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AD446FD5990E933C4FDE78939AF1A0F49FEC44906C060D90748162CC59974F922000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_185409_422438_85A38EB1 
X-CRM114-Status: GOOD (  14.93  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Mathias
 Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jumin
 Li <jumin.li@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-07-09 at 08:22 -0600, Rob Herring wrote:
> On Wed, Jun 12, 2019 at 01:55:19PM +0800, Chunfeng Yun wrote:
> > Add a new optional clock xhci_ck
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
> > index 266c2d917a28..91c0704b586b 100644
> > --- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
> > +++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
> > @@ -29,6 +29,7 @@ Required properties:
> >  	"sys_ck": controller clock used by normal mode,
> >  	the following ones are optional:
> >  	"ref_ck": reference clock used by low power mode etc,
> > +	"xhci_ck": controller clock,
> >  	"mcu_ck": mcu_bus clock for register access,
> >  	"dma_ck": dma_bus clock for data transfer by DMA
> 
> A new clock should go at the end to stay backwards compatible.
Ok, will fix it, thanks
> 
> >  
> > @@ -100,7 +101,7 @@ Required properties:
> >   - clocks : a list of phandle + clock-specifier pairs, one for each
> >  	entry in clock-names
> >   - clock-names : must contain "sys_ck", and the following ones are optional:
> > -	"ref_ck", "mcu_ck" and "dma_ck"
> > +	"ref_ck", "xhci_ck", "mcu_ck" and "dma_ck"
> >  
> >  Optional properties:
> >   - vbus-supply : reference to the VBUS regulator;
> > -- 
> > 2.21.0
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
