Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE36F8CE55
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 10:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+6IjnIeAuWkYIaci8KboQ/+JH3h7NEHBqbPOB3LV38=; b=qi7f1aTk4IMq9K
	CCdbse+8zg4r1HsDP4LswR1Eh0l+TysMxt6xzG9VYsqSAZWirfDMcfhhZ22L7ptWfDOZ8DpMKHy2L
	3wLKNcO9Hw0q2bgJ78fDUIJ6WSq7jmb7JL6zJnBFZPN/W9LbR7H7P48m8cKcGxV3KSnvjxXf0YPUq
	2hT+JRkWXl9xHDRRS3wgCjML02u5pEiChOvWPB7btpmoprAWyIv6dMeREjrO5KchJlgbt6vSIS3uK
	QEjmDdUSNJW6mEsoM8SPV+SjrrrOJC6+4W3d3NmIHY2+VniERYMKMfwGUdhw6kfhLLwFkAEVlLW2X
	+q7YcTjAirUV/8SAF/nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoaK-0002fQ-O4; Wed, 14 Aug 2019 08:24:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoa2-0002TN-3s; Wed, 14 Aug 2019 08:24:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF69120843;
 Wed, 14 Aug 2019 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565771065;
 bh=dOIAznLWxzP0u+OSBAYPKB0yVmhsjJLY8I+qEiU4L9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RG1qK+Pt18ss2tHX2RNIruXp2UeFxF2bDhRkagJoZReWFhDZXfEow8U4TKl/u2GxN
 FENR3KwZzH+xJs6V8b8E+Ohi9E8ucLSz+ossd+rc+oGgpJmG4CckHXL9yVuGjvDcgq
 xabdFyMBFyhejTyori5x2p9Mwh+6uhFGWeunN1hU=
Date: Wed, 14 Aug 2019 09:24:20 +0100
From: Will Deacon <will@kernel.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v9 00/21] MT8183 IOMMU SUPPORT
Message-ID: <20190814082419.tppi3o4x27qotkn6@willie-the-truck>
References: <1565423901-17008-1-git-send-email-yong.wu@mediatek.com>
 <20190814081825.GA22669@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814081825.GA22669@8bytes.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012426_181761_1C9246B8 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>, Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 10:18:25AM +0200, Joerg Roedel wrote:
> On Sat, Aug 10, 2019 at 03:58:00PM +0800, Yong Wu wrote:
> > Change notes:
> > v9:
> >    1) rebase on v5.3-rc1.
> >    2) In v7s, Use oas to implement MTK 4GB mode. It nearly reconstruct the
> >       patch, so I don't keep the R-b.
> 
> Okay, this looks close to being ready, just the io-pgtable patches still
> need review.

On my list for today :) (Today is SMMU day for me. Send coffee.)

Will

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
