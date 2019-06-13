Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5754341B
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 10:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcKeab8a+r/2sMe2ooaEC2FWr2zjWsVu6m1RCTEEMMo=; b=kAts4dYfU0WFAa
	AvYFrhfA3uChqE74/kWukRCy8m+ngCV/9a9YkdmLVF4v81aybJQ7EmBANcIg0gevfPn6SCSi4abiP
	9Ep4L73FYvwJTHgg2YbYvpHqBmvBBDFuneEo21eB4Q5QEU1UYga8N6OsqfvFAyCa+oRSSqmhP+uY0
	LsF+Rc4Afy6/ksVsFFnKE16cctAbdTdHwbXKZEhx7vI86yEqPgjdbF1zTDmIAoSxAgNGO12QlOSs8
	P/8ViKpMaFPP77XcdaXFmVjhVfhbOLbjtmNgkOrucxoxN57nnOWPzo13b7sm610rMGAxp/3AbYFam
	azDxfFDzA6o7uiomFSIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbL4j-0002CJ-H8; Thu, 13 Jun 2019 08:27:13 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbL4f-0002BR-Se
 for linux-mediatek@lists.infradead.org; Thu, 13 Jun 2019 08:27:11 +0000
Received: by mail-ed1-x541.google.com with SMTP id p26so25924252edr.2
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Jun 2019 01:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JpfCW44p+7Uv6TDM0Ox2JVfUSTMPnSQJH7O6CJtAHBg=;
 b=Lp+mKwxNDLP9fXRhdND3OKWiXBC4ikL3meHfgqN5VwW0GwrUAkL6YX4RIrZimCshmv
 g7BQkPhDzScCMB8FqKa8HXhMJ+gP8CNN7HhqqcT1nKxp0ZIPE0WePWEI2N/dB8VyOANC
 koNjB1se8WuXWqrDlCUKVE9GYVAq+8symrah0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=JpfCW44p+7Uv6TDM0Ox2JVfUSTMPnSQJH7O6CJtAHBg=;
 b=UJrJ60MkhKsz7whkN/KvkpE4r8DmbVG8G2EWIbk1FbiMxTTN+pk/wRCvniCqvrZ201
 MVwgcDhgLygxgBmIZxxvy8QFA2r6eeAFEobsh6FDZwKyWe7BkJy2yrGwHl67M9ybaoB/
 nheJjpq2T+CAGDnJra56P4ua+5WNMVHn2o849U7gXX0GUSW6feY/IZ5nZkIwpw9igRg3
 JM4/cuC4/BpDfJ+qROxfgo6Zann5bX1LeUDvHy4ODLygVmyWFi2cQicQygtoDHsJYPlp
 xCb9stqqlUKkXCjNJq5Hkr6MC9bmUe91nF3qJtyeBsVuD6weFKkROl5OQtyn6a13CwUU
 F6ug==
X-Gm-Message-State: APjAAAXAIfvN4ElSGWU4AZch6ff0/pvOOLI3iZMdudLlgCb9gjukSnVr
 GiHa28WNZHDi0yaNK4nAjoqggg==
X-Google-Smtp-Source: APXvYqxCwLi8HVNLbbKPTVQDlfkRXd8FrOrwPs8A7BimRJIdjubuXus64EOpuJHNMfJ+L/V4tnVzzw==
X-Received: by 2002:aa7:dad6:: with SMTP id x22mr17910899eds.122.1560414427079; 
 Thu, 13 Jun 2019 01:27:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id d1sm421989ejn.11.2019.06.13.01.27.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 01:27:06 -0700 (PDT)
Date: Thu, 13 Jun 2019 10:27:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: CK Hu <ck.hu@mediatek.com>
Subject: Re: [GIT,PULL] mediatek drm fixes for 5.2
Message-ID: <20190613082704.GI23020@phenom.ffwll.local>
References: <1560325868.3259.6.camel@mtksdaap41>
 <20190612162538.GA8035@phenom.ffwll.local>
 <1560407478.7597.5.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560407478.7597.5.camel@mtksdaap41>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_012709_984884_DF6A9C55 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yongqiang Niu <yongqiang.niu@mediatek.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Dave Airlie <airlied@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 02:31:18PM +0800, CK Hu wrote:
> Hi, Daniel:
> 
> On Wed, 2019-06-12 at 18:25 +0200, Daniel Vetter wrote:
> > On Wed, Jun 12, 2019 at 03:51:08PM +0800, CK Hu wrote:
> > > Hi Dave, Daniel:
> > > 
> > > This include unbind error fix, clock control flow refinement, and PRIME
> > > mmap with page offset.
> > > 
> > > Regards,
> > > CK
> > > 
> > > The following changes since commit
> > > a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > > 
> > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > > 
> > > are available in the Git repository at:
> > > 
> > >   https://github.com/ckhu-mediatek/linux.git-tags.git
> > > mediatek-drm-fixes-5.2
> > 
> > For next time around, please make this a signed annotated tag. annotated
> > because then it's less typing for me, and signed because it's on a server
> > we don't necessarily trust.
> 
> OK, I'd make a signed annotated tag in next time.
> 
> > 
> > > 
> > > for you to fetch changes up to 2458d9d6d94be982b917e93c61a89b4426f32e31:
> > > 
> > >   drm/mediatek: call mtk_dsi_stop() after mtk_drm_crtc_atomic_disable()
> > > (2019-06-04 09:54:42 +0800)
> > > 
> > > ----------------------------------------------------------------
> > > Hsin-Yi Wang (5):
> > >       drm/mediatek: fix unbind functions
> > >       drm/mediatek: unbind components in mtk_drm_unbind()
> > >       drm/mediatek: call drm_atomic_helper_shutdown() when unbinding
> > > driver
> > >       drm/mediatek: clear num_pipes when unbind driver
> > >       drm/mediatek: call mtk_dsi_stop() after
> > > mtk_drm_crtc_atomic_disable()
> > > 
> > > Yongqiang Niu (2):
> > >       drm/mediatek: adjust ddp clock control flow
> > >       drm/mediatek: respect page offset for PRIME mmap calls
> > 
> > You might want to look into all the recently added helpers for mmap, I
> > don't think mtk does anything special here.
> 
> If you mean using drm_gem_prime_mmap as the implementation of
> drm_driver->gem_prime_mmap, I think we have discussed in [1] that
> mediatek drm still need its own implementation.
> 
> [1] https://patchwork.kernel.org/patch/10657007/

Yeah for reusing the overall helpers that's clear, but
drm_gem_prime_gem_mmap should work for any gem based driver. It doesn't
require you to use specific helpers at all.

I'm wondering about this since I'm looking right now into this area, and
it looks like we could just make drm_gem_prime_mmap the default and rip
out all the custom driver implementations.
-Daniel

> 
> Regards,
> CK
> 
> > 
> > 
> > > 
> > >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 30
> > > ++++++------------------------
> > >  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  8 +++-----
> > >  drivers/gpu/drm/mediatek/mtk_drm_gem.c  |  7 ++++++-
> > >  drivers/gpu/drm/mediatek/mtk_dsi.c      | 12 +++++++++++-
> > >  4 files changed, 26 insertions(+), 31 deletions(-)
> > 
> > Pulled, thanks.
> > -Daniel
> > 
> > > 
> > > _______________________________________________
> > > dri-devel mailing list
> > > dri-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > 
> 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
