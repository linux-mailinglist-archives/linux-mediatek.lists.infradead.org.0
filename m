Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51B398E6F
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 10:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5Hz4qhAvLzoAtqh0FlBoN6lJA5nCv5iFcHGH4pXauc=; b=Xv+qdYbSPlUFKp
	nlBNWUnuZUppDbJIsPftMyGN2TV+tnghMaHfFKPh6bWesccV2p3VEGK30h0AUnSdX9KAC356ZfTQM
	3H2Lge1n5vCITVkYfsp6Kmh0Z/DGI59DZyx3g69T9v8bazHfgQX8qJdFmny3B+gh75CgmTMwUXuMw
	tksldChZ4txE0hQJtsvSAbht9UYt/WkA8U4pGRYtTbvzPx71hLTDcmz+JL4AcHHje1oaVTnB8xrF3
	36zRBAe7aMsLW9ckXB5bQ9IPtnE4NkAZE1S1TgG+VSNoXWyY9HsyNPhebYz12eQfv8uVWCuiqObNe
	N6xmvQoWSvgvxr6kVxXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0itr-0004uD-2R; Thu, 22 Aug 2019 08:56:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0itn-0004th-Ue; Thu, 22 Aug 2019 08:56:53 +0000
X-UUID: ff85e3831fd04beaaea5697394efee3d-20190822
X-UUID: ff85e3831fd04beaaea5697394efee3d-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 465188049; Thu, 22 Aug 2019 00:56:32 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 01:56:31 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 22 Aug 2019 16:56:22 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 16:56:21 +0800
Message-ID: <1566464186.11621.7.camel@mhfsdcap03>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Thu, 22 Aug 2019 16:56:26 +0800
In-Reply-To: <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A53204EC2B24E8ED10E65E7323376A240E74388A8016195038C20EBC411B98902000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015651_990862_C5180590 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias
 Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 16:24 +0100, Will Deacon wrote:
> On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
> > MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
> > the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
> > respectively. Meanwhile the iova still is 32bits.
> > 
> > Regarding whether the pagetable address could be over 4GB, the mt8183
> > support it while the previous mt8173 don't, thus keep it as is.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
> >  include/linux/io-pgtable.h         |  7 +++----
> >  2 files changed, 28 insertions(+), 11 deletions(-)
> 
> [...]
> 
> > @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> >  {
> >  	struct arm_v7s_io_pgtable *data;
> >  
> > -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> > +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> > +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> > +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> 
> Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
> ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?

Here I only simply skip the oas checking for our case. then which way do
your prefer?  something like you commented before:?


	if (cfg->ias > ARM_V7S_ADDR_BITS)
		return NULL;

	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT) {
		if (!IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT))
			cfg->oas = min(cfg->oas, ARM_V7S_ADDR_BITS);
		else if (cfg->oas > 34)
			return NULL;
	} else if (cfg->oas > ARM_V7S_ADDR_BITS) {
		return NULL;
	}


> 
> With that change:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Will
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
