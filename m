Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C209432F6
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 08:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAfdbUEgC4G7D6U6H+aG/LNtLYEkYMplsH364Uw5s+s=; b=k4EK3ytcpCrsPm
	KkHTRjnYr6zFeB23g67A5i2Cnm89pFYxt5QlowtomhcdsciOtyYbcLNJoi8LQw8d/2g1Cc9PjRXvM
	K3uRp8t6lkorZKXo6MG+8fqwTp/GvNtFESTvI4mR42aRplWZPWxWxuBfbxIgN8xNp9SZDk+Pkou+Q
	G2kDn+CYd77YWop0WOyd7upbvE7//4/mTgXVx86PmYnGdWlMg3Qaouw2wGSMJIXLYplf87ksg5fZ+
	3RN/pcLWCREkgDHcaQtIqkH1jlodKNkMTHpoNC90GtX20wDY3g2WJ8HrLqc12lRD18d63mf6tbbSZ
	/V08oLgs85iiO9bqeKdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJHD-0004c4-Id; Thu, 13 Jun 2019 06:31:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJH9-0004bh-Mb
 for linux-mediatek@lists.infradead.org; Thu, 13 Jun 2019 06:31:57 +0000
X-UUID: 1c35bca4e48a4930b5a21be98ccace2e-20190612
X-UUID: 1c35bca4e48a4930b5a21be98ccace2e-20190612
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 650596203; Wed, 12 Jun 2019 22:31:23 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 23:31:21 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 14:31:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 13 Jun 2019 14:31:18 +0800
Message-ID: <1560407478.7597.5.camel@mtksdaap41>
Subject: Re: [GIT,PULL] mediatek drm fixes for 5.2
From: CK Hu <ck.hu@mediatek.com>
To: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 13 Jun 2019 14:31:18 +0800
In-Reply-To: <20190612162538.GA8035@phenom.ffwll.local>
References: <1560325868.3259.6.camel@mtksdaap41>
 <20190612162538.GA8035@phenom.ffwll.local>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_233155_743119_DC10A6AC 
X-CRM114-Status: GOOD (  15.31  )
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
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Daniel:

On Wed, 2019-06-12 at 18:25 +0200, Daniel Vetter wrote:
> On Wed, Jun 12, 2019 at 03:51:08PM +0800, CK Hu wrote:
> > Hi Dave, Daniel:
> > 
> > This include unbind error fix, clock control flow refinement, and PRIME
> > mmap with page offset.
> > 
> > Regards,
> > CK
> > 
> > The following changes since commit
> > a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > 
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   https://github.com/ckhu-mediatek/linux.git-tags.git
> > mediatek-drm-fixes-5.2
> 
> For next time around, please make this a signed annotated tag. annotated
> because then it's less typing for me, and signed because it's on a server
> we don't necessarily trust.

OK, I'd make a signed annotated tag in next time.

> 
> > 
> > for you to fetch changes up to 2458d9d6d94be982b917e93c61a89b4426f32e31:
> > 
> >   drm/mediatek: call mtk_dsi_stop() after mtk_drm_crtc_atomic_disable()
> > (2019-06-04 09:54:42 +0800)
> > 
> > ----------------------------------------------------------------
> > Hsin-Yi Wang (5):
> >       drm/mediatek: fix unbind functions
> >       drm/mediatek: unbind components in mtk_drm_unbind()
> >       drm/mediatek: call drm_atomic_helper_shutdown() when unbinding
> > driver
> >       drm/mediatek: clear num_pipes when unbind driver
> >       drm/mediatek: call mtk_dsi_stop() after
> > mtk_drm_crtc_atomic_disable()
> > 
> > Yongqiang Niu (2):
> >       drm/mediatek: adjust ddp clock control flow
> >       drm/mediatek: respect page offset for PRIME mmap calls
> 
> You might want to look into all the recently added helpers for mmap, I
> don't think mtk does anything special here.

If you mean using drm_gem_prime_mmap as the implementation of
drm_driver->gem_prime_mmap, I think we have discussed in [1] that
mediatek drm still need its own implementation.

[1] https://patchwork.kernel.org/patch/10657007/

Regards,
CK

> 
> 
> > 
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 30
> > ++++++------------------------
> >  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  8 +++-----
> >  drivers/gpu/drm/mediatek/mtk_drm_gem.c  |  7 ++++++-
> >  drivers/gpu/drm/mediatek/mtk_dsi.c      | 12 +++++++++++-
> >  4 files changed, 26 insertions(+), 31 deletions(-)
> 
> Pulled, thanks.
> -Daniel
> 
> > 
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
