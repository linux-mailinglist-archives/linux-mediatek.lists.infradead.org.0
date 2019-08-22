Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F56698E8F
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 11:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWVq8EV2g23dxcRQjY+oWaSQ5A671D00O/rWhLAmJH8=; b=ROOx8JQS4D2vmA
	yOxkrG+cqgygZUYc8c5GUqAphdL3LD/gpOSc80qAXmu42T13IBuD96kQHJqjwLiTvryYaNXifD1cn
	EB6/8ruaLSFG2hzIUb+tHOdhJrc47d+JYq9c6/gY4P32uPlIEG+r5Dk7HWhyRMiFJcGJf2J+ThzYN
	VCWrG2ttnJedvQ33fF74QbxoqgG2DKpzGuPfS006/hDfAIyJ+gD5DJ3h7Q3xinBJz4GwyPmnooZZt
	tGFz9QqJoaWqmAomDU5ZnBj0ShtKOaZ2LpJ13lU6HKuXkqvnURSWnQzAqxKPgXzKs3i4dvcGsweOX
	WrAo0EaHxbA+9ehCfIaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ix1-0007HZ-Tt; Thu, 22 Aug 2019 09:00:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iwY-0006KG-8U; Thu, 22 Aug 2019 08:59:44 +0000
X-UUID: c6d61fc34a584ffea552c705fbb97c99-20190822
X-UUID: c6d61fc34a584ffea552c705fbb97c99-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1122211969; Thu, 22 Aug 2019 00:59:36 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 01:59:37 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 22 Aug 2019 16:59:32 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 16:59:31 +0800
Message-ID: <1566464375.11621.10.camel@mhfsdcap03>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
From: Yong Wu <yong.wu@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Thu, 22 Aug 2019 16:59:35 +0800
In-Reply-To: <22a79977-5074-7af1-97b8-8a3e549b23c1@arm.com>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
 <22a79977-5074-7af1-97b8-8a3e549b23c1@arm.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 77FDD9D92F4B2E27F773B23946AF4889BD952E4F98E058E499F22239F28748B22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015942_302803_0F41DF56 
X-CRM114-Status: GOOD (  19.36  )
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
 srv_heupstream@mediatek.com, Tomasz
 Figa <tfiga@google.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 chao.hao@mediatek.com, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 anan.sun@mediatek.com, Will Deacon <will@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 16:34 +0100, Robin Murphy wrote:
> On 21/08/2019 16:24, Will Deacon wrote:
> > On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
> >> MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
> >> the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
> >> respectively. Meanwhile the iova still is 32bits.
> >>
> >> Regarding whether the pagetable address could be over 4GB, the mt8183
> >> support it while the previous mt8173 don't, thus keep it as is.
> >>
> >> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> >> ---
> >>   drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
> >>   include/linux/io-pgtable.h         |  7 +++----
> >>   2 files changed, 28 insertions(+), 11 deletions(-)
> > 
> > [...]
> > 
> >> @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> >>   {
> >>   	struct arm_v7s_io_pgtable *data;
> >>   
> >> -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> >> +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> >> +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> >> +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))
> > 
> > Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
> > ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?
> 
> You mean oas, right? I believe the hardware *does* actually support a 
> 32-bit ias as well, but we shouldn't pretend to support that while 
> __arm_v7s_alloc_table() still only knows how to allocate normal-sized 
> tables.

Yes. The HW double the lvl1 pgtable, thus it supports 33bit iova
actually. We may extend ias in the future.

> 
> Robin.
> 
> > 
> > With that change:
> > 
> > Acked-by: Will Deacon <will@kernel.org>
> > 
> > Will
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
