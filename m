Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AA491CA6
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 07:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xopBeqejdZETcbLLvVkwAC4lxOCWnvEPmGmFFbNlE+M=; b=LsGvcl4Okxk7PW
	1t7ClH2JqWDb3jiOS9spD7UFaiwGCLFZzQ0yn/d+zTl1slqkIvry2uHfcYXuUzB2vtsf/XK1kzQ6L
	QiEKjUNB9/a+Mkr7ZzNjkvaQriI7xdFEuNpYal6ywFX9Fl7oCVdoMcC0/90X3C4dBYKBCJSnylQy4
	b6jJIVU94POrQQbmZ3kJm4fTe9vsKmOqnHVUKRy5ADUEjDPOXIQ4O+VpE3De+TP539KquJrjao5FU
	eVeSABR80WtP4ikmMd93hehesnVRVT0W10sCvj+aZCDWnwJU8RXAk0CJGCOdHYUgEQzN3vvgnw7vb
	EW+Yc2YGipk6lylewjGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzaOc-0001k4-L2; Mon, 19 Aug 2019 05:39:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzaOK-0001ZX-AX; Mon, 19 Aug 2019 05:39:41 +0000
X-UUID: 008de8e8e440464480e71f112b4c3a38-20190818
X-UUID: 008de8e8e440464480e71f112b4c3a38-20190818
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1879069020; Sun, 18 Aug 2019 21:39:36 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 18 Aug 2019 22:39:34 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 19 Aug 2019 13:39:30 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 13:39:29 +0800
Message-ID: <1566193170.21623.46.camel@mhfsdcap03>
Subject: Re: [RFC,V2,1/2] media: dt-bindings: media: i2c: Add bindings for
 OV02A10
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Date: Mon, 19 Aug 2019 13:39:30 +0800
In-Reply-To: <20190817213207.GC3504@valkosipuli.retiisi.org.uk>
References: <20190704084651.3105-1-dongchun.zhu@mediatek.com>
 <20190704084651.3105-2-dongchun.zhu@mediatek.com>
 <20190723074153.GA4606@paasikivi.fi.intel.com>
 <ef65288c523f405396991bd6d757bba0@mtkmbs02n1.mediatek.inc>
 <1566013985.21623.9.camel@mhfsdcap03>
 <20190817213207.GC3504@valkosipuli.retiisi.org.uk>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1FFD33D17A9099ABE642A276F2E703E2656BAF1550E1FEDA5DAA451D829739DB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_223940_370160_35417D98 
X-CRM114-Status: GOOD (  10.67  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, tfiga@google.com, shengnan.wang@mediatek.com,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Sakari,

On Sun, 2019-08-18 at 00:32 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> On Sat, Aug 17, 2019 at 11:53:05AM +0800, Dongchun Zhu wrote:
> ...
> > > > +
> > > > +The device node shall contain one 'port' child node with an
> > > > +'endpoint' subnode for its digital output video port, in accordance
> > > > +with the video interface bindings defined in
> > > > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > > > +The endpoint optional property 'data-lanes' shall be "<1>".
> > > 
> > > How many lanes does the module (or the sensor) have?
> > > 
> > 
> > From sensor datasheet, OV02A10 supports 1-lane MIPI interface.
> 
> If only one lane is supported, the property should be omitted: there's
> nothing that the driver needs to know here.
> 
Thanks for the suggestion.
But sorry that I didn't read this message this morning, so this issue
still remains unsettled in v3.
https://patchwork.kernel.org/patch/11100219/
I would fix this point in v4.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
