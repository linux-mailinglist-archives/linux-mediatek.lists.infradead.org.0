Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1D299A8E
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 19:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgkElfISTIciyxzQe11Ngj1X5FLo2CloryN/MCJucCs=; b=tSx9oWcA65/szc
	dXyy8kwo7pwQq6tINCC5lP0LKpyxw45clUdzkyf9pTTJPsDfRYApiYdVD/fIgDeEVBpc5TU1qynHw
	C0jCbJR/MHfSMrKjtk3gw2kqF0pNPnc0YLhAN9JGihW1lQfiJGhK779w7ZWGeeZQVuXUCfyH041cC
	1fLvCs07bneW+Hf+4PHwUduRhdNpBtM6VGd0ot++zfOcldoKmx18tGHFpHvj4N4DA3Dg4OTJgp9nG
	rjy8SuJdvwFWwSh1Z+ZwDvTuDAONmH/7Ev6T2Y+s76nYts7/VQWAP3PqVGTnZQuryuvoapyn6fzTK
	koyqFurPZsGAeCKXCVBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qfX-0000y0-11; Thu, 22 Aug 2019 17:14:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qfH-0000mN-RV; Thu, 22 Aug 2019 17:14:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13B182089E;
 Thu, 22 Aug 2019 17:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566494063;
 bh=vqE2N/zi1fzhDJw+o9xdlWk9123wTSi4CKCbyRiWtHc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gTshqoq99M9s6kEqnvExZ9y43tJZ5RG6H7DJicnyp4xB0EEyG3E8dxsEeD+mtCaSN
 tPOnriBlWjBj6t3b/aXGqSnI7for4nxNhTc101nzXmKDqt5n+5VHe7Jxkot9Q6CAmx
 WfjOx+T5BTnDWixtTIskYdTH9FZDyzwtT6bJ2aG0=
Date: Thu, 22 Aug 2019 18:14:16 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v10 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
Message-ID: <20190822171415.475yg7pmy6gfj35l@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-10-git-send-email-yong.wu@mediatek.com>
 <20190821152448.qmoqjh5zznfpdi6n@willie-the-truck>
 <1566464186.11621.7.camel@mhfsdcap03>
 <10d5122d-3375-161b-9356-2ddfc1c835bd@arm.com>
 <20190822101749.3kwzd5lb7zinsord@willie-the-truck>
 <e6652176-763d-5298-9e10-8c1fbe1b3c0d@arm.com>
 <20190822112836.efodtwu3souq3uwa@willie-the-truck>
 <1566475533.11621.18.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566475533.11621.18.camel@mhfsdcap03>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_101423_915723_CB9FCFE1 
X-CRM114-Status: GOOD (  10.56  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 srv_heupstream@mediatek.com, Tomasz Figa <tfiga@google.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 08:05:33PM +0800, Yong Wu wrote:
> On Thu, 2019-08-22 at 12:28 +0100, Will Deacon wrote:
> > Ok, great. Yong Wu -- are you ok respinning with the above + missing
> > brackets?
> 
> Of course I can.
> 
> NearlyAll the interface in this file is prefixed with "arm_v7s_", so
> does the new interface also need it?, like arm_v7s_is_mtk_enabled. And
> keep the iopte_to_paddr and paddr_to_iopte symmetrical.
> 
> 
> Then the final patch would looks like below, is it ok?

Looks good to me:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
