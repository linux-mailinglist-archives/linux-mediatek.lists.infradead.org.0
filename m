Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02236D2EE
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7w0kwg/a5KOBaFaspuoqd0h6SyQ9BqUaB9s+9mOv4A=; b=M1nXgdcslRCf7a
	n4ZNwNZGhld5OR57vL38X7hX600nT6/XgvhptCmOCFLXy53IbhuOodx3rEqLL4kYQ8wjTksO6wKa6
	4VEgF08WrEpnBXacK7SO60LFdIuBJd8zWzJhEAhs5Y6G1KvXP541xi7I8y2sIUseWM3QMCFJotbzY
	z3m5etpLANOHHmYYzfL9/5W2U5zHp+2es5x/Cuj+Qt2v80vqEkPgCohutQb91IAz8twnm3eULYBTA
	e727Qdz3BQ0gP2Pzvx9oVXdqfhML14W51Ax3HwXB56uQhEvad1w5sCXLKoDljMlOaMuvAct0Oq/R3
	5a6K5eguzOK/4GQxnDXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAPC-0002fg-TZ; Thu, 18 Jul 2019 17:41:23 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAOt-0002Qw-3M
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:41:06 +0000
Received: by mail-yw1-xc43.google.com with SMTP id x67so11198032ywd.3
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f6qnUMPXnkWnmFRN12Yc+hxpIH+RTY5J9v4Al67WV/s=;
 b=Qro9GngmvMiiB3Z6FB8mN1PItY3TPbrhYXja5d21Qp0UaqJYrDAhOXDuA8N5Fo3kIa
 N/EH4G9LKvGVKw0Jr1GostJiiZkK1Jf05d3cSCHzMnzCretOwL87CciZ9crkt+1zlGPx
 TYr3i4wNKa7NTaU52E/1d/ScA8X7LXyaEKAgtQHB0ayR3nF9ZsFk7TEEs0SaOBd6551u
 B2ZjnuFK80UNJRr2GEryped1kSagz7pGkfAR0veiRFxmKArE/75NYgRIAElrxXtxUuZq
 O9OH5gzsp52Ju2LqPSCZhUecFNXlZU1RqWHlCWMB9hz4EcwiA6rtVNalLeX64/osjrje
 oN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f6qnUMPXnkWnmFRN12Yc+hxpIH+RTY5J9v4Al67WV/s=;
 b=DjNPNO86Ibaj3KLl+EDRjPcLmXmwgybYRTnYS6wpDnX5ko3bzF55V42OIuGJp/3DgS
 giNs3UotoVoo0BBLKXDrq+ORmdcd5edYgmzpX0d3qT2gbri751janlZzf0ubnuA8oUn5
 OCDIuZW2HoZBzcVmltABlAN9Q2dT7aos3S7Itu5et56SH1LJTt1QEErDZLVfK55Ass9Y
 b93wsiWvE4xUowIdK+M2pZl7KLpwN2YsabwDu4VTeR6CJ8UHtUKmv8Am9bsdmYtA5JYF
 hu0NK+GOeBnUJhFDrtixzSdoEckv7G11Js4s3VNPqJevoQfs6AnPhN881i8mU3mwG1Tz
 zWMw==
X-Gm-Message-State: APjAAAWU3aZYRFxpz1DyZ9NzinsdYhBhuJBtG28JuP/1XRBavhwFyq3+
 qJg3tWlFoGs2zCO0i3Ge9jDXtqeYCs/yWQ==
X-Google-Smtp-Source: APXvYqwhUJ/qcdaunEQ7i8P6wOE1BiEEzgCQrUD7jLZZMpnXGfaFaEs1Xa1X+PNaBbyZ0+t1OVUIhg==
X-Received: by 2002:a81:6dd6:: with SMTP id
 i205mr28057860ywc.180.1563471661869; 
 Thu, 18 Jul 2019 10:41:01 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id w193sm1185400ywa.72.2019.07.18.10.41.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:41:01 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:41:01 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 03/11] drm: drop uapi dependency from drm_vblank.h
Message-ID: <20190718174101.GF31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-4-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-4-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104103_145453_0EA7479D 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
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
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:14:59PM +0200, Sam Ravnborg wrote:
> drm_vblank.h included uapi/drm/drm.h.
> It turns out this include was not required - delete it.
> 
> Note: uapi/drm/drm.h is included indirect via drm_file.h,
> but there are no dependencies in drm_vblank.h so the removal
> is legit.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Thierry Reding <treding@nvidia.com>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
>  include/drm/drm_vblank.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
> index e528bb2f659d..9fe4ba8bc622 100644
> --- a/include/drm/drm_vblank.h
> +++ b/include/drm/drm_vblank.h
> @@ -30,7 +30,6 @@
>  
>  #include <drm/drm_file.h>
>  #include <drm/drm_modes.h>
> -#include <uapi/drm/drm.h>
>  
>  struct drm_device;
>  struct drm_crtc;
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
