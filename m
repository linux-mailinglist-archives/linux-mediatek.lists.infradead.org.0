Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18F46D2E8
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCoOaOEdtdzh0JaaDFwYbnpA5v9H7sMnjcnAf672IDo=; b=crR6bF+QwJQPb0
	/v2H9SxHD9ADPGNfRw0auHibzzMhHqJZOKOBZyHN/iCjjFM3D6eiXb+pAyRIGRLWRrSK0GGesf9AO
	gbDKUVMaeVOy3+cN9SA4Nf17SowJ23+GQVDHnwbAdVI0cr7DuFZXDV9Qi9zt/6YtThNUCBnJtEWlh
	EdU3I0syFFZTeUjglcTK0RUoNasys5WdQTss58UPb9sWFZDnBodn8fAzaZP9TPKII0lxsnXFjNlKB
	RZDasm9aOhhgrT7gpy+uo1e5HNfy0bd/Yy+GTt4LUdZdZZNNHkdnG2/cGg69PtuMBpAYuKpbgBjrx
	OotxuUclvikoH3AC6z+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAOQ-0002AX-TH; Thu, 18 Jul 2019 17:40:34 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAON-00029k-2N
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:40:32 +0000
Received: by mail-yb1-xb43.google.com with SMTP id p85so4589936yba.2
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l+1FrNNu6RWkcTjjfIpN7v4qd/Q00mT7mAH2ay5t5YU=;
 b=biDTjzEvV5Wul7i/WyioSr3VmyuNnxd9hl/aYBxur1J6Nlh9JqlFb0SX0jszQpCzin
 DtF2vZkl1jAodp5GPZ848x9Bg3S7l99tSQNiR3UV5iI3T2AM6Ul0Yyjaj+HPsNHPbmEM
 hREO5I59HNuv1/JufTZlHI6uBu2224l76gZmOrBIYJ7P/j/8KEC7avxJPToSiwztK6iZ
 uFxLAt9tqS2/OoBrpFWslIOMZuqddBHI08EbjSsRKFuxkNbxSBSHHlQP7VKmVxJawD3G
 ORstO1Z9eGe8pSFWVeYtmngaruHc+XHO7DkCHJ8Egb5EFBlOdPb1P0Ffx818IOJV/gS3
 UiCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l+1FrNNu6RWkcTjjfIpN7v4qd/Q00mT7mAH2ay5t5YU=;
 b=LDxf2aQ+ERVGkc+N76RzxyS4zltVhgCyfKvFm/Kig41KvyCQFVF3Er5xRPiT6e9A9N
 g/M6PG2uDyakokxjBTD8ImLtoqDAhCVjGe2odR2HlCQJcCWRIz92E4nNqaO+KpiJI7D7
 iOiPKLftV+Z5u1gY27aYrHLba4Ch88IRrZ3za+knkNb8UoO/sAyzdoYGFEn/95i/WwA+
 E3TtJNa3SwsdBs+yEJYo9AvqYnybvUXIw4+qhwB/XQrub6OBhicRRJ3i0UtKwvkuvBtV
 NN1sXylLNl8SSSdR65tjUYPWQzYFg/xKJMrMntvWmgiWNliTDFxKaKarXz9AbU9bU1HG
 d44g==
X-Gm-Message-State: APjAAAVAm3rBsFk+b2vx2o72rayTpbEbGTeYeUROIwYoq9ZANXMROV4e
 yo8yZH/+Q77YIOyEYlaUpUYbyQ==
X-Google-Smtp-Source: APXvYqxJ1zzhHTOV/V5q7YuSBr7QrcgmxKPpucgiwKedIA1Pi+QKm5M5Imn/NYHMNbUAMKQOdVF3Ww==
X-Received: by 2002:a25:6346:: with SMTP id x67mr27596848ybb.346.1563471629832; 
 Thu, 18 Jul 2019 10:40:29 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 131sm6583625ywq.21.2019.07.18.10.40.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:40:29 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:40:28 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Message-ID: <20190718174028.GE31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-3-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104031_114481_73BCE752 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:14:58PM +0200, Sam Ravnborg wrote:
> drm_print.h used DRM_NAME - thus adding a dependency from
> include/drm/drm_print.h => uapi/drm/drm.h
> 
> Hardcode the name "drm" to break this dependency.
> The idea is that there shall be a minimal dependency
> between include/drm/* and uapi/*

You might also want to clean up the other uses of DRM_NAME in armada and i915
while you're at it. The easiest way to satisfy Chris' usecase and remove the
dependency would be to add #define DRM_PRINT_NAME "drm" in drm_print.h and use
that.

Sean

> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  include/drm/drm_print.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index a5d6f2f3e430..760d1bd0eaf1 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -32,8 +32,6 @@
>  #include <linux/device.h>
>  #include <linux/debugfs.h>
>  
> -#include <drm/drm.h>
> -
>  /**
>   * DOC: print
>   *
> @@ -287,7 +285,7 @@ void drm_err(const char *format, ...);
>  /* Macros to make printk easier */
>  
>  #define _DRM_PRINTK(once, level, fmt, ...)				\
> -	printk##once(KERN_##level "[" DRM_NAME "] " fmt, ##__VA_ARGS__)
> +	printk##once(KERN_##level "[drm] " fmt, ##__VA_ARGS__)
>  
>  #define DRM_INFO(fmt, ...)						\
>  	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
