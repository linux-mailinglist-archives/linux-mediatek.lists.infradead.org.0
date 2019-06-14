Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A70451C0
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 04:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqBhor5oXYYsj2SC7p1unCUKSpsQ5ntkA9IQOuGysjg=; b=aPnfcakwc8U53N
	ebHw/j2teUfhEMynjINiTqs5D0uaTBUR3aJ6NhLoREho2Lt9p1roWAy5lTYAEmnbIr8kWm/QTsPu5
	i3ZPpvc1vl8ejIZgqlvoblfFSHfGtGmMkfbP3Ri2huzvFrP62a1kLLdHHD265pYu6RaURJUwMmrPa
	QDPYcGxEIQvKQjr8MkAStRFPCKtN32dkiRVkNEIBF/QQ42fqFrHYniDhJrq+/A3rqZnwJA185wcri
	B4cf4ze7mewiltsfkgKtxtDs0IuQzGeUSvBKtLkQKMK3/wMBYPmLaHz4cNOXEWk/hcVybXJQruAHG
	tA+z+XN1mi0XZ4jGg3Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbbbp-0001k3-KX; Fri, 14 Jun 2019 02:06:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbbbl-0001jR-HN
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 02:06:27 +0000
X-UUID: 7562c3a09b154e74848205d0b7813d05-20190613
X-UUID: 7562c3a09b154e74848205d0b7813d05-20190613
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 588420665; Thu, 13 Jun 2019 18:06:15 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 19:06:11 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 10:06:02 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 10:06:00 +0800
Message-ID: <1560477960.4789.5.camel@mtksdaap41>
Subject: Re: [GIT,PULL] mediatek drm fixes for 5.2
From: CK Hu <ck.hu@mediatek.com>
To: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 14 Jun 2019 10:06:00 +0800
In-Reply-To: <20190613082704.GI23020@phenom.ffwll.local>
References: <1560325868.3259.6.camel@mtksdaap41>
 <20190612162538.GA8035@phenom.ffwll.local>
 <1560407478.7597.5.camel@mtksdaap41>
 <20190613082704.GI23020@phenom.ffwll.local>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_190625_584199_ACB1168C 
X-CRM114-Status: GOOD (  21.82  )
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

On Thu, 2019-06-13 at 10:27 +0200, Daniel Vetter wrote:
> On Thu, Jun 13, 2019 at 02:31:18PM +0800, CK Hu wrote:
> > Hi, Daniel:
> > 
> > On Wed, 2019-06-12 at 18:25 +0200, Daniel Vetter wrote:
> > > On Wed, Jun 12, 2019 at 03:51:08PM +0800, CK Hu wrote:
> > > > Hi Dave, Daniel:
> > > > 
> > > > This include unbind error fix, clock control flow refinement, and PRIME
> > > > mmap with page offset.
> > > > 
> > > > Regards,
> > > > CK
> > > > 
> > > > The following changes since commit
> > > > a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > > > 
> > > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > > > 
> > > > are available in the Git repository at:
> > > > 
> > > >   https://github.com/ckhu-mediatek/linux.git-tags.git
> > > > mediatek-drm-fixes-5.2
> > > 
> > > For next time around, please make this a signed annotated tag. annotated
> > > because then it's less typing for me, and signed because it's on a server
> > > we don't necessarily trust.
> > 
> > OK, I'd make a signed annotated tag in next time.
> > 
> > > 
> > > > 
> > > > for you to fetch changes up to 2458d9d6d94be982b917e93c61a89b4426f32e31:
> > > > 
> > > >   drm/mediatek: call mtk_dsi_stop() after mtk_drm_crtc_atomic_disable()
> > > > (2019-06-04 09:54:42 +0800)
> > > > 
> > > > ----------------------------------------------------------------
> > > > Hsin-Yi Wang (5):
> > > >       drm/mediatek: fix unbind functions
> > > >       drm/mediatek: unbind components in mtk_drm_unbind()
> > > >       drm/mediatek: call drm_atomic_helper_shutdown() when unbinding
> > > > driver
> > > >       drm/mediatek: clear num_pipes when unbind driver
> > > >       drm/mediatek: call mtk_dsi_stop() after
> > > > mtk_drm_crtc_atomic_disable()
> > > > 
> > > > Yongqiang Niu (2):
> > > >       drm/mediatek: adjust ddp clock control flow
> > > >       drm/mediatek: respect page offset for PRIME mmap calls
> > > 
> > > You might want to look into all the recently added helpers for mmap, I
> > > don't think mtk does anything special here.
> > 
> > If you mean using drm_gem_prime_mmap as the implementation of
> > drm_driver->gem_prime_mmap, I think we have discussed in [1] that
> > mediatek drm still need its own implementation.
> > 
> > [1] https://patchwork.kernel.org/patch/10657007/
> 
> Yeah for reusing the overall helpers that's clear, but
> drm_gem_prime_gem_mmap should work for any gem based driver. It doesn't
> require you to use specific helpers at all.
> 
> I'm wondering about this since I'm looking right now into this area, and
> it looks like we could just make drm_gem_prime_mmap the default and rip
> out all the custom driver implementations.

OK, I find that drm_gem_prime_mmap() call driver->fops->mmap(), so the
customization could be done in driver->fops->mmap and let
drm_driver.gem_prime_mmap to be drm_gem_prime_mmap. I would try to do
so.

Regards,
CK

> -Daniel
> 
> > 
> > Regards,
> > CK
> > 
> > > 
> > > 
> > > > 
> > > >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 30
> > > > ++++++------------------------
> > > >  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  8 +++-----
> > > >  drivers/gpu/drm/mediatek/mtk_drm_gem.c  |  7 ++++++-
> > > >  drivers/gpu/drm/mediatek/mtk_dsi.c      | 12 +++++++++++-
> > > >  4 files changed, 26 insertions(+), 31 deletions(-)
> > > 
> > > Pulled, thanks.
> > > -Daniel
> > > 
> > > > 
> > > > _______________________________________________
> > > > dri-devel mailing list
> > > > dri-devel@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > > 
> > 
> > 
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
