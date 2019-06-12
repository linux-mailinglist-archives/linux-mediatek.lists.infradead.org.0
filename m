Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F83142C28
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 18:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ3F3tJEmulGJAOmjuKoIovceI/I8vDNkeQWT3G+nRY=; b=sPjfWIi6n2NWR1
	0zp3Xn93wmsWjD+Aj38Jq6A9IrQuyHF4uNrTN/cON4e5tV1C6/ROxUJOBSuxcJV/VvgpB4Z032bhv
	N1Cx8mDxDB5lBOFZdAUvUwzFV9g4aNOycgDWxRviBWVBmUq6Q2g6Yl0F7RRQVKOoFCA4UQCpT/Sps
	qfK9k8lDh/QLQ4RBD7CJo7U6nYi7txdE4fP9dYlJ7TqvR1vQ53aPzC8IbOwuFeXlVlrv0jUbdBG6F
	augZkgO4mWImzpLzuyAcls5ac4MqKpC25ld2YucmIRbm8NUnIYi3xeSSJw2In3GcYECK+CPzmZDeI
	qqPPSNBoWleThF50K+ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb652-0001q6-Eu; Wed, 12 Jun 2019 16:26:32 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb64z-0001p6-3i
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 16:26:30 +0000
Received: by mail-ed1-x531.google.com with SMTP id c26so26670718edt.1
 for <linux-mediatek@lists.infradead.org>; Wed, 12 Jun 2019 09:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C/zSyhNx+x2LqbaFHnleJ533xiPKf/+YwcGPOEVjjnA=;
 b=cDh73ZoLM3IgDLvaGeZmDcShtae9q9InYNp2itldwsWnppizgvamfZUelokVvjNY7g
 ni+s093HHccoewQrlYQne0DuNLIXvYB+tBQDEUnbPCNYYTmb9bcqPrd82IAY8ucMq5F0
 v/FuYVb04kJ8Tfmmpv3uvNtk3WVsg/7Gyjbrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=C/zSyhNx+x2LqbaFHnleJ533xiPKf/+YwcGPOEVjjnA=;
 b=nuttPDNNFAIveyNSvcVHIeHs+iLFVWLX0+lG2xiamMNU7dwyW06zL62AJBudTD1Zhm
 tr0xXX0uO4mbVPCmwdRwKFoXTJNGpsTB5eSwguAEiK7UDycvj8k/c2VbybUzjDIZtgQw
 ryikISvEwCvWsVqIGhipfbeknPupYWPX6HUc7YUW56L74OeLJYddYsSGBE11TrGY+as7
 Jw33U75e57QpYexlYOrezxxvG/37cldFZi4m0oPqjzshksEeCosfziEPcRoyZycph89s
 y3YWyDtiJc61/SP/gRlJwScHdYoBTIZsfMSSPrOpm01ViNiQXEONeDwkEy6v39ZPgN9+
 x2uA==
X-Gm-Message-State: APjAAAU98BKEQifSAcaxfrFr4mUwnJM/6dtL3uL8ttQSojhHgdj7fm0c
 OB0+YPUclmjPCR7FX3wLzqJvAg==
X-Google-Smtp-Source: APXvYqyOJFCKPmram4Xo2cf/3w7LqEkA1AmvrIl2TmxcprOR1qzbE/gkv+I770WiLrKZyJy1wZz7nw==
X-Received: by 2002:a50:b7bc:: with SMTP id h57mr88940704ede.77.1560356787119; 
 Wed, 12 Jun 2019 09:26:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x8sm94093edx.67.2019.06.12.09.26.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 09:26:26 -0700 (PDT)
Date: Wed, 12 Jun 2019 18:25:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: CK Hu <ck.hu@mediatek.com>
Subject: Re: [GIT,PULL] mediatek drm fixes for 5.2
Message-ID: <20190612162538.GA8035@phenom.ffwll.local>
References: <1560325868.3259.6.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560325868.3259.6.camel@mtksdaap41>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_092629_210108_EC50939C 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Jun 12, 2019 at 03:51:08PM +0800, CK Hu wrote:
> Hi Dave, Daniel:
> 
> This include unbind error fix, clock control flow refinement, and PRIME
> mmap with page offset.
> 
> Regards,
> CK
> 
> The following changes since commit
> a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/ckhu-mediatek/linux.git-tags.git
> mediatek-drm-fixes-5.2

For next time around, please make this a signed annotated tag. annotated
because then it's less typing for me, and signed because it's on a server
we don't necessarily trust.

> 
> for you to fetch changes up to 2458d9d6d94be982b917e93c61a89b4426f32e31:
> 
>   drm/mediatek: call mtk_dsi_stop() after mtk_drm_crtc_atomic_disable()
> (2019-06-04 09:54:42 +0800)
> 
> ----------------------------------------------------------------
> Hsin-Yi Wang (5):
>       drm/mediatek: fix unbind functions
>       drm/mediatek: unbind components in mtk_drm_unbind()
>       drm/mediatek: call drm_atomic_helper_shutdown() when unbinding
> driver
>       drm/mediatek: clear num_pipes when unbind driver
>       drm/mediatek: call mtk_dsi_stop() after
> mtk_drm_crtc_atomic_disable()
> 
> Yongqiang Niu (2):
>       drm/mediatek: adjust ddp clock control flow
>       drm/mediatek: respect page offset for PRIME mmap calls

You might want to look into all the recently added helpers for mmap, I
don't think mtk does anything special here.


> 
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 30
> ++++++------------------------
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  8 +++-----
>  drivers/gpu/drm/mediatek/mtk_drm_gem.c  |  7 ++++++-
>  drivers/gpu/drm/mediatek/mtk_dsi.c      | 12 +++++++++++-
>  4 files changed, 26 insertions(+), 31 deletions(-)

Pulled, thanks.
-Daniel

> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
