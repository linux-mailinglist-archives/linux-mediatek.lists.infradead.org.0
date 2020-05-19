Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8828F1D9621
	for <lists+linux-mediatek@lfdr.de>; Tue, 19 May 2020 14:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZVuuBLKZEVtZkzJp9rlpW+vy68ysPgkrTZIsjDKK2I=; b=FbjdQiSbtffaP+
	4bKDDkp5oAQELp3w7pFXUfSy6DKhsYy0lre4zaR5vH1lkDY80YMTVW5LgsrskMHLONuVvmsXnbvqx
	8pFd5zm7047vSYw2R1Qe1s++7NEncM6jLGFqKAdnBZsf8Cdyncf4m71eIk2d28OS6ns6Gg7tB7mFo
	i6XpFynDSQvM/kT6XBReMjfOGi4kQGbVQ8cOzhHpIBh7gAHBzygvWE2/qf4NpI3Wikq8nc7qQN4q5
	0GtmSij//GKTPCGpzPOIgoGalD7YPGl+MoPBg157hxZ0zI0BMM4BECmpUzYsRZsgN0P6Dw9NGkpai
	zmqQSxds1sfhuxLeXBIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1Dq-0007dB-4e; Tue, 19 May 2020 12:19:50 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1D5-0006sG-JH; Tue, 19 May 2020 12:19:05 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A4833386; Tue, 19 May 2020 14:19:01 +0200 (CEST)
Date: Tue, 19 May 2020 14:19:00 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH] iommu/mediatek-v1: Fix a build warning for a unused
 variable 'data'
Message-ID: <20200519121900.GI18353@8bytes.org>
References: <1589875064-662-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589875064-662-1-git-send-email-yong.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051903_784570_82EE6F3D 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 03:57:44PM +0800, Yong Wu wrote:
> This patch fixes a build warning:
> drivers/iommu/mtk_iommu_v1.c: In function 'mtk_iommu_release_device':
> >> drivers/iommu/mtk_iommu_v1.c:467:25: warning: variable 'data' set but
> >> not used [-Wunused-but-set-variable]
> 467 |  struct mtk_iommu_data *data;
> |                         ^~~~
> 
> It's reported at:
> https://lore.kernel.org/linux-iommu/202005191458.gY38V8bU%25lkp@intel.com/T/#u
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu_v1.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
