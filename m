Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6201697E9C
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 17:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=se67SsfObR+qJXSqOv9ttDXvGPIWw3KXxBViamgjHlM=; b=kXyCG36RauufA1
	J3r1SwyCt8n2+GSTscSYOnZY2gCzkC6Mquv3+WcVM0d4yIaINeuhAAHv1mHJdnJtorJmcj1ovpG1Q
	ftJUr+IT0GdNYUCbmueOntWyOdQbncKlHRAhZLs4a7p6vDZbdEljQ/lij2USUnW6i7t8R6XGMffMI
	OqtEPSyrj1xidI2LNKoEUrwChnIl8TWZw9fasxPA0qnka5rslZ3M4BOwcx9QSCnsBtpN+i8X1GnQ7
	Nc3KUmprnc8dJw9OHOKIJjLs5mDgLPQ+xEQS1HNRyJKX984WrLZ0J2eevVCKm7d7fgb8Jv4BY8Lzz
	m2Et1J/o3air6OpPeaPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SU3-0001U3-UZ; Wed, 21 Aug 2019 15:25:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0STn-0000Nh-Hp; Wed, 21 Aug 2019 15:24:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01291206BA;
 Wed, 21 Aug 2019 15:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566401095;
 bh=aJZsxkGaQIRowffpW+JaxO8NMT7WvvZzsQ6yeIDlrnk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RiD+8qlujqamNghbph/UTRtAZcnnXOpbJFfcJRF+s/5Mrfv1RKTDq2/TyeRJwLysN
 WJYvAUdnD9ZieVbBt5P/zVGwMp/DMlFpIVIjbWDQDAXI/qNLEkrtPTM8+HKzJyLsf8
 Rg6tay5H6JGnc5+Qh8NBXe3tmebq2AFCmCoYet2I=
Date: Wed, 21 Aug 2019 16:24:49 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
Message-ID: <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_082455_614632_3A3542E4 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:53:12PM +0800, Yong Wu wrote:
> MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
> the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
> respectively. Meanwhile the iova still is 32bits.
> 
> Regarding whether the pagetable address could be over 4GB, the mt8183
> support it while the previous mt8173 don't, thus keep it as is.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/iommu/io-pgtable-arm-v7s.c | 32 +++++++++++++++++++++++++-------
>  include/linux/io-pgtable.h         |  7 +++----
>  2 files changed, 28 insertions(+), 11 deletions(-)

[...]

> @@ -731,7 +747,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
>  {
>  	struct arm_v7s_io_pgtable *data;
>  
> -	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
> +	if (cfg->ias > ARM_V7S_ADDR_BITS ||
> +	    (cfg->oas > ARM_V7S_ADDR_BITS &&
> +	     !(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)))

Please can you instead change arm_v7s_alloc_pgtable() so that it allows an
ias of up to 34 when the IO_PGTABLE_QUIRK_ARM_MTK_EXT is set?

With that change:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
