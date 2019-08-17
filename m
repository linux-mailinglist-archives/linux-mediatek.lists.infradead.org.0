Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766429135A
	for <lists+linux-mediatek@lfdr.de>; Sat, 17 Aug 2019 23:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YDXfl51iSni6+DQL4f/9absu3fSwyToxhCSd/urVG8=; b=RAmBlfGFj/4CUG
	LSUq17oplAmu79togyp3g1NV6GoKsfv5QYw0GmMthXNUGVS4QO3jaMCpGD6iaK1pc38n/qX1KEDXS
	L4/seqMbrYYUnBNCikQxMzaormQB+up8TnqzgfkD3douwwOgoNBg69Tg8ktyjMIoArnM5jK+HS4w8
	eY0jYLZJkL7jz/wtfz4n+1zKGGGqbIB3RBof6CV4TBiQKmDE5LHM8h2ezKDrdrC9+zueW7C3TW+sT
	q4VjRNwNvmKVXcpAt7KnDnFvdG3/kbrvmFaiy/zUukCnyhcYXzfCXNAeHwRD81O0cTycpH0hqiElz
	9YtCNa6cLjwG4P52YYmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz6Ll-00047j-7k; Sat, 17 Aug 2019 21:35:01 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz6LV-0003wm-Nm; Sat, 17 Aug 2019 21:34:47 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 3FABE634C87;
 Sun, 18 Aug 2019 00:32:08 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hz6Ix-0001KY-Kr; Sun, 18 Aug 2019 00:32:07 +0300
Date: Sun, 18 Aug 2019 00:32:07 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [RFC,V2,1/2] media: dt-bindings: media: i2c: Add bindings for
 OV02A10
Message-ID: <20190817213207.GC3504@valkosipuli.retiisi.org.uk>
References: <20190704084651.3105-1-dongchun.zhu@mediatek.com>
 <20190704084651.3105-2-dongchun.zhu@mediatek.com>
 <20190723074153.GA4606@paasikivi.fi.intel.com>
 <ef65288c523f405396991bd6d757bba0@mtkmbs02n1.mediatek.inc>
 <1566013985.21623.9.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566013985.21623.9.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_143445_961231_3E4DA1D1 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 srv_heupstream@mediatek.com, menghui.lin@mediatek.com, tfiga@google.com,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Dongchun,

On Sat, Aug 17, 2019 at 11:53:05AM +0800, Dongchun Zhu wrote:
...
> > > +
> > > +The device node shall contain one 'port' child node with an
> > > +'endpoint' subnode for its digital output video port, in accordance
> > > +with the video interface bindings defined in
> > > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > > +The endpoint optional property 'data-lanes' shall be "<1>".
> > 
> > How many lanes does the module (or the sensor) have?
> > 
> 
> From sensor datasheet, OV02A10 supports 1-lane MIPI interface.

If only one lane is supported, the property should be omitted: there's
nothing that the driver needs to know here.

-- 
Sakari Ailus

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
