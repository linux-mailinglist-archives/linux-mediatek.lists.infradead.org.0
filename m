Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C778575FFF
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 09:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fm8ul81zhNG1e94seREMiSk2eU27+NuM5FAvvmMuV00=; b=Yx0cYfs5rwuNiS
	cfvsieZG6xdySYP8nhdmrJ8vA7Pk3Shqz+jfB7GqlZYBGhOL/47zea/ghuemF2rZMNimW8vq9X6kk
	hAbTxZAerNJeeLhYMyy0IhdeiLso30ROmnVt9VFFHKZLJKd1QrNTPrsybWMjSjyeYfQrnQWCcj+9J
	nE+189RKGA++KoibIV8OZSTU9IvwQZXsaJn+1q2rbGJBv1CnkWb91kPwaRGfrOnFgFuAcBqWrdun4
	z5Ux0Ara/DZLN3ga3swvkSXAFnYN5H0a6tup+zdFp1E4eyMpN1zuDKeJg9LlrumbdPe+X5rpQBa5U
	XHUjOW+8+vvAQ9aQSeYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqur0-0006S3-0B; Fri, 26 Jul 2019 07:41:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hquqq-0006Rg-53; Fri, 26 Jul 2019 07:41:16 +0000
Date: Fri, 26 Jul 2019 00:41:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [RFC, v3 9/9] media: platform: Add Mediatek ISP P1 shared memory
 device
Message-ID: <20190726074116.GA19745@infradead.org>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
 <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07>
 <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devicetree@vger.kernel.org,
 Sean Cheng =?utf-8?B?KOmEreaYh+W8mCk=?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rynn Wu =?utf-8?B?KOWQs+iCsuaBqSk=?= <rynn.wu@mediatek.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Ryan Yu =?utf-8?B?KOS9meWtn+S/rik=?= <ryan.yu@mediatek.com>,
 Frankie Chiu =?utf-8?B?KOmCseaWh+WHsSk=?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jungo Lin <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 Frederic Chen =?utf-8?B?KOmZs+S/iuWFgyk=?= <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
> Could you try dma_get_sgtable() with the SCP struct device and then
> dma_map_sg() with the P1 struct device?

Please don't do that.  dma_get_sgtable is a pretty broken API (see
the common near the arm implementation) and we should not add more
users of it.  If you want a piece of memory that can be mapped to
multiple devices allocate it using alloc_pages and then just map
it to each device.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
