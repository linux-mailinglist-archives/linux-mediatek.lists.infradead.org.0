Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32D58E276
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 03:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fn0xdoTDFp3TRjiwWW7ghCVRh30ZogAzlAjyd4qHco4=; b=BOWhZ0+Vyhdbov
	RZSVSWudJUnKUYz4H5xcAWoohldYSF+jmmpLJeYabHIrMzxt+VuXiONcaehtdWVzv/MV5egtlpUjJ
	rHR4163nFKCovob1hzwE2lhcBrNt/irrccIQhnYEDmJZ6fNODxR/1kOb3q+DuofM8qKZsZNZeFecP
	F3eXPNmTy+rc8lQxtkn3hzGUwXSTYkVUJ1P5NoyOvkTw9navYO4JzkgRjsOhA8TBrvZ59zFgckBEz
	FPYnSWQm0qQ8WJ1pJ26hGv6BA1dRqwvrfVELf4+ldb6Ouvkl7PTwvK23/wXu6NQh+ndxFYTEscgVi
	3gXVc3fe3GtLHqgtUsTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy4lE-0005sz-Pi; Thu, 15 Aug 2019 01:41:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy4kv-0005ji-Vm; Thu, 15 Aug 2019 01:40:47 +0000
X-UUID: 3739b3d729f640b2acb36718f539402f-20190814
X-UUID: 3739b3d729f640b2acb36718f539402f-20190814
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1106257968; Wed, 14 Aug 2019 17:40:39 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 18:40:37 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 15 Aug 2019 09:40:36 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 15 Aug 2019 09:40:36 +0800
Message-ID: <1565833236.24305.2.camel@mtksdaap41>
Subject: Re: [PATCH v2 0/2] drm/mediatek: make imported PRIME buffers
 contiguous
From: CK Hu <ck.hu@mediatek.com>
To: Alexandre Courbot <acourbot@chromium.org>
Date: Thu, 15 Aug 2019 09:40:36 +0800
In-Reply-To: <20190729053335.251379-1-acourbot@chromium.org>
References: <20190729053335.251379-1-acourbot@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_184046_028686_A03494EA 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Alexandre:

On Mon, 2019-07-29 at 14:33 +0900, Alexandre Courbot wrote:
> The default DMA segment size was used when importing PRIME buffers,
> which resulted in a chance of them not being contiguous in the virtual
> IO space of the device and mtk_gem_prime_import_sg_table() complaining
> that the SG table was not contiguous as it expects.
> 
> This series fixes this issue by
> 
> 1) Using the correct DMA device when importing PRIME buffers,
> 2) Setting a more suitable DMA segment size on the DMA device than the
> default 64KB.

For the series, applied to mediatek-drm-fixes-5.3 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.3

> 
> Changes since v1:
> - Split into two patches,
> - Fixed an error path that would have returned 0.
> 
> Alexandre Courbot (2):
>   drm/mediatek: use correct device to import PRIME buffers
>   drm/mediatek: set DMA max segment size
> 
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 49 ++++++++++++++++++++++++--
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
>  2 files changed, 48 insertions(+), 3 deletions(-)
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
