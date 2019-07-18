Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCBA6D419
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 20:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPEQI0iW1mnLg/j9LM+cLt6pqX6k23/eHcVNBOZ9s38=; b=ASQj55XnxZFrHt
	jok5mL41txZYyeLyPMl01vHPSKEYDAYHY6DOWann9qM12UBkIijToXITMICtf7V0lgFPXQXXRFzGc
	5nIk3BfYWLC9/Itsgtb6/Lsk2pzbbCNQO0DfiCp4ndu4ZhlVc7pLAFMoOzRFtE/6sY8So5EAWhUhR
	c0xOXiSUqOEEoM5t5V/XXs9TqxjoB2bL+fzkzSjFiOsNClmcwzJDFvE2l4iADwpkwZs7a7+evfx7v
	cgf0rPACOGR6yxPoGyhvvd+5gW9dZiiFW0ACZdyrX/FtLI8WUifrXKaBj5ikznzFU5Tfuv+51bpol
	oxvqSMFRtv6olCBS1GtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBKN-0001qv-PA; Thu, 18 Jul 2019 18:40:27 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBK9-0001h5-OE
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 18:40:15 +0000
Received: by mail-yw1-xc43.google.com with SMTP id z63so12608232ywz.9
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 11:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jznZVNxB+JEKiihMY79nGxVXwbVZkDNJl6OCXxqzmhk=;
 b=Mps5ZYaHIw16d+QJqUpOk52ZZVy4Bh4te2+TjW08fXlbOT61K4iIByyqZdWKbyFhLO
 YpU0VBu/QMg6yyxmPYXEr/nm89+7dRcqjuQe8K6CpsDdCpi9AVWjj8sMyN9840/RYjQn
 FqRExMQlrUweJMgk+uI2Y1q2Im3GJr7Y8yGWN/rw8SP1NmaSBCUhgMdsegKKz5DUOo7E
 Fgs2l3q0or+q6hYRy36fdnWYuWp5RGWZZ9BW+n2Ny4TRb1nLxoO5I0OQhNA+rZHXH+CD
 3u7NQE2vZyYIeC18PiU3TRmYJDRWcGuSGDXHtzf8B98dNgyubjkBPSbvwiJw7C42ISin
 /eBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jznZVNxB+JEKiihMY79nGxVXwbVZkDNJl6OCXxqzmhk=;
 b=Mkmgd5TPvlun6A7ygfEBw1jxVZ72A4PkT+/f2tDMEoowVEc2/uTNcl2AiZJrgOsw1h
 8IjzSAARD0AiX2wjJUiFNLJg4DHK5ScBi1O6SkjDMArBcrdA5TAP78wxkb3Yv+GLRTXR
 KDNyM9LBfctfkZF0PkTeRHmxhMOHOGmQv3scB/j0nEqxUi030eMFiEtpxMvPpZHr1hwA
 sy8i6dFPBX+lswC/3UdfOKHvsq2ZsdVLUQTL9eiSOWp4CdYJErYkuJ3YoFRfaovDQVf7
 ENMGPhYyyE6PqnYPrlzoC2LKj6/3LZFflEjhUGsGbFAKsIWiLbUruh19UMiFnoh5HwfX
 6bGA==
X-Gm-Message-State: APjAAAVZOBeULwnso2r5BB2rXfsKgluLlLkBo0m7lAGpGIg/MoVsmfOF
 2ntieS9BNQiuZQrU5ZEgkx328g==
X-Google-Smtp-Source: APXvYqzX9yBSqU1Scorir9DeFqqSvyynuOj80F4fdGgK00aP/LkJ+Ola1OwNwoz2pG3LLy5vmw2gAA==
X-Received: by 2002:a0d:cb0f:: with SMTP id n15mr29261400ywd.443.1563475210522; 
 Thu, 18 Jul 2019 11:40:10 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j67sm6939231ywa.39.2019.07.18.11.40.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 11:40:09 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:40:09 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 11/11] drm: drop uapi dependency from drm_file.h
Message-ID: <20190718184009.GB104440@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-12-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-12-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_114013_788049_F4D17814 
X-CRM114-Status: GOOD (  15.09  )
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
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:15:07PM +0200, Sam Ravnborg wrote:
> drm_file used drm_magic_t from uapi/drm/drm.h.
> This is a simple unsigned int.
> Just opencode it as such to break the dependency from this header file
> to uapi.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Passes my build tests, thanks for the clean-ups!

Reviewed-by: Sean Paul <sean@poorly.run>

> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Liviu Dudau <Liviu.Dudau@arm.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Eric Anholt <eric@anholt.net>
> ---
>  include/drm/drm_file.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
> index 67af60bb527a..046cd1bf91eb 100644
> --- a/include/drm/drm_file.h
> +++ b/include/drm/drm_file.h
> @@ -34,8 +34,6 @@
>  #include <linux/completion.h>
>  #include <linux/idr.h>
>  
> -#include <uapi/drm/drm.h>
> -
>  #include <drm/drm_prime.h>
>  
>  struct dma_fence;
> @@ -227,7 +225,7 @@ struct drm_file {
>  	struct pid *pid;
>  
>  	/** @magic: Authentication magic, see @authenticated. */
> -	drm_magic_t magic;
> +	unsigned int magic;
>  
>  	/**
>  	 * @lhead:
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
