Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB9C6D325
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgyATIThNa2lGo88CuxEipdhA/2GhnweDPgcnLPdzvQ=; b=gy+nNPupuXuN1T
	g+n0HVwgjTzxdyXHCojppao3w+E80LVUPqIiSHFB1zQ/iVqVCRyuuDDKHaLt8SCN2DoV9IddlNNk2
	AhcrWdQFqZAJJqwbonUTF20riz+t85Oqxz5dl7XvZkpxuJ0xcOiYcgpZnMZuVRoS9AXjdGOoa4UKf
	x7gaUNfkSd0LM4sMfXlMalbH+PPHu5jSqbImBuDSXr2ysNGddbEkCwA+9j+kOJRbg8/3rICAEOOdK
	LTllL9VppfCyuWWgLDOoB/iy2F3Bj9qEMsJq3tt9vXowTTyOvu5fDUw8svYgk70bjeabwEA1KUHit
	Kf1nG/kcDuy23IWytD7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAYa-0006kE-31; Thu, 18 Jul 2019 17:51:04 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAYW-0006jb-5v
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:51:01 +0000
Received: by mail-yw1-xc41.google.com with SMTP id z63so12547349ywz.9
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QQ8jJ1h1Snanwd8TvBGLmAI2GMlwl3iAL1taWT0sP4E=;
 b=cxxwTkoRHbPr8y5tYuJ0j466+9eTcLCTqihDg6tBsZXX30kIUIYlGBYRUt6fYC6CSy
 G1wrGJ4FBaY2zisW+Y4CcpxSBdU51SzivYwochDSgG8hLQ/1LkM/d2iDACoCC7qUoWl+
 rLho3UcVfPOua4SFgZpckC6OV6fnC4HGEuzrlALSPDBEsnmrOcbIk4ZvAaKuBsfWJMD2
 WEqPf6ba5vfKuvtsgOuXbfTY4PiZ65k8g7prl4m6blb2JXkvpbHkOBea9hRmxAIBp6Ou
 GuhOIsT1QalyA+yL1DA4pPh+HME/s7tMxTkxmKulg7V5SLHb3pjzDU/YYsNCnF1/Ktit
 mZpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QQ8jJ1h1Snanwd8TvBGLmAI2GMlwl3iAL1taWT0sP4E=;
 b=jE+AvSej0ePo9bYSeryKTBEeXS1qx8/aCCJyyGDA1HIqFziwc7f52VdcbdINnK1Tl7
 7FVhWgcntCPVq+o8R7cxzo9c597l4SrRBVoYD4p6Bv8vhIBjKfJqPExe71rCmSeaa6Ar
 A5W7tAlKCf5UIpYqGLGyv/6R7D5RiZtLpIL9dUAiyjCPv3GcF3JgvaQfWuyvgBqBvMQj
 GFLZjgpH/ZRymG78R1wGuNfRgyvVknjcWS80KvOx3j3lHnkADyImBBMSbCIwflAtvOuA
 nXBTBnSsnmNSXzeKfP4qfe25cBbax7d/M42pRShMxXdebv+FgKlks4h0d9bHbtLY/XSB
 dGVw==
X-Gm-Message-State: APjAAAXhDJSEgbFv3dfPlSYEN1kWuTZsyyxab9Y59smHAzBmc11QyHmq
 zhzallIAXsxSYBj0HpPDyHLDvQ==
X-Google-Smtp-Source: APXvYqzlBIY7jasoBtGNQmGxbVmXlBgz58CHxJFEnCz2UlyQgKK93zt9xQq1k7ZFSQo3M+6EG2QpGA==
X-Received: by 2002:a81:b60c:: with SMTP id u12mr27070377ywh.79.1563472259335; 
 Thu, 18 Jul 2019 10:50:59 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id z6sm6964745ywg.40.2019.07.18.10.50.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:50:58 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:50:58 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 05/11] drm/vblank: drop use of DRM_WAIT_ON()
Message-ID: <20190718175058.GH31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-6-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-6-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105100_234420_611F90AB 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:15:01PM +0200, Sam Ravnborg wrote:
> DRM_WAIT_ON() is from the deprecated drm_os_linux header and
> the modern replacement is the wait_event_*.
> 
> The return values differ, so a conversion is needed to
> keep the original interface towards userspace.
> Introduced a switch/case to make code obvious and to allow
> different debug prints depending on the result.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_vblank.c | 29 ++++++++++++++++++++---------
>  1 file changed, 20 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 603ab105125d..8e9ac187500e 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -31,7 +31,6 @@
>  #include <drm/drm_drv.h>
>  #include <drm/drm_framebuffer.h>
>  #include <drm/drm_print.h>
> -#include <drm/drm_os_linux.h>
>  #include <drm/drm_vblank.h>
>  
>  #include "drm_internal.h"
> @@ -1672,19 +1671,31 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
>  	if (req_seq != seq) {
>  		DRM_DEBUG("waiting on vblank count %llu, crtc %u\n",
>  			  req_seq, pipe);
> -		DRM_WAIT_ON(ret, vblank->queue, 3 * HZ,
> -			    vblank_passed(drm_vblank_count(dev, pipe),
> -					  req_seq) ||
> -			    !READ_ONCE(vblank->enabled));
> +		ret = wait_event_interruptible_timeout(vblank->queue,
> +			vblank_passed(drm_vblank_count(dev, pipe), req_seq) ||
> +				      !READ_ONCE(vblank->enabled),
> +			msecs_to_jiffies(3000));
>  	}
>  
> -	if (ret != -EINTR) {
> +	switch (ret) {
> +	case 0:
> +		/* timeout */
> +		ret = -EBUSY;
>  		drm_wait_vblank_reply(dev, pipe, &vblwait->reply);
> -
> -		DRM_DEBUG("crtc %d returning %u to client\n",
> +		DRM_DEBUG("timeout waiting for vblank. crtc %d returning %u to client\n",
>  			  pipe, vblwait->reply.sequence);
> -	} else {
> +		break;
> +	case -ERESTARTSYS:
> +		/* interrupted by signal */
> +		ret = -EINTR;
>  		DRM_DEBUG("crtc %d vblank wait interrupted by signal\n", pipe);
> +		break;
> +	default:
> +		ret = 0;
> +		drm_wait_vblank_reply(dev, pipe, &vblwait->reply);
> +		DRM_DEBUG("crtc %d returning %u to client\n",
> +			  pipe, vblwait->reply.sequence);
> +		break;
>  	}
>  
>  done:
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
