Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0366D313
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDkh9jqvAcIPwiyi6RK/zwM7Csuai7PMW7Y3QmVNCkw=; b=pqXGMaLUQBemDK
	iqKwN2xfONZGfgGnI6m70j5bQUPmU+i4UMZAeW5p7aPrG+olc7gX802yool2EaFm8+qQOsCTmwAfJ
	wYrYVDKbh4IvuEU6/vhdweMtmDJTqi3ekpcrDPLOMSIL3NWUc2xE+/HMIUpsyISkTFCiYDIPgF6QE
	to9ecIs7g64xLHhwINM0pmnQm0ivgOxq7KpTLZ6gXsjTyOExCuDSKSTJH5iBJUoIOQ4wUdoyAJev3
	O6mU6KUbg/EbJhjWeYsqqotiE8DxBJPJ126MiNOV/hDwwyeB5GuPEv2IkbK4xpyrR9dz9HZkowYm2
	SmQ1IDYqI4Y+4UBUt4ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAWk-0005Bi-Eu; Thu, 18 Jul 2019 17:49:10 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAWg-0005Ao-R3
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:49:08 +0000
Received: by mail-yw1-xc43.google.com with SMTP id q128so12555876ywc.1
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TcHEhgeLg4wCyvAuCh277bKvKMlAO9sX0vLEQ8gbuaw=;
 b=H6wkH+Ja6Vv25R0kLDO3V4VVaS5ztNs9UcAubxqNI+3MthILN+2PFYat2u8m43w84T
 dAl/y87QY25XTUsQar+5BsMFrCcgZZr2GZBLhuqyQHujiIFXoQSWk06OtnL5c36L74TC
 VxBLEPjDdkPgpMEK7dFUqwRJj+fvhBAX6RIVfav3Jv8IKNZRSO4hEMAaQJ+tiTHT8GCC
 58uDhvWDf0K5kwRrrRpoDq/1sHOiikD5rNc1/JfuBN9AtOcD6T+9q+hREa6IMDY3J47U
 XJ1yiFscnRKTlmsHD1sW4ywez1baijXdAhIcjPWMvudB7QJGXHuaGaZUZArhWVOxGrjq
 WC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TcHEhgeLg4wCyvAuCh277bKvKMlAO9sX0vLEQ8gbuaw=;
 b=ZLqLDTk30sriSc6WMoB9aYdhNqzz44DYOWWkescHg4KC3tW41MGjyMdoBDUB6DSqtm
 oH6muekgaJDAILI99B9W62W8HqAXFIg7qA4CvrZyGQGuHv9e7ra7C2eroUppATh2Wu30
 ySNhrsxMtFzEsUBGRjs6DAvrOQhpNs5j6UwwsLX54XfDMT0UAZ8pvEcv1nhsUXBHB1Dz
 u4u51eXiuA5hHc3mXwBnINVHWWu5G72kNXGBXJBdY+gK/xScIa3gjW7X7S4PH5dhvO4A
 qOpHUV7G+bHnVbncl0tZRgFw5+jV9ozXuySMJIw05sdwi80PiOU3xczLdhu26z8EPmHt
 QmjQ==
X-Gm-Message-State: APjAAAUzggzv1ISqgWEYyuG+K92X7N1a1Y7rjaJpJVKgrrTKx2JRO1La
 n3365dzSzNVdu4dFPUokmga1TA==
X-Google-Smtp-Source: APXvYqx6Uslwcgt6FXtPTtAmiDT6PsPZOZfSYSrx+5nJhVWwXm/mkQxhro4Op23WJMYr87U7zzwBEg==
X-Received: by 2002:a81:5fd4:: with SMTP id
 t203mr27254887ywb.300.1563472146017; 
 Thu, 18 Jul 2019 10:49:06 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j67sm6907891ywa.39.2019.07.18.10.49.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:49:05 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:49:05 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 04/11] drm/ati_pcigart: drop dependency on
 drm_os_linux.h
Message-ID: <20190718174905.GG31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-5-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-5-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_104906_883783_D4D108CB 
X-CRM114-Status: GOOD (  17.70  )
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

On Thu, Jul 18, 2019 at 06:15:00PM +0200, Sam Ravnborg wrote:
> The drm_os_linux.h header is deprecated.
> Just opencode the sole DRM_WRITE32().

Any plans for the other users of DRM_WRITE<N>()? It seems like it'd be trivial
to fix it up for via and mga. I don't really have any background on
drm_os_linux.h, but it doesn't seem like it'd be that much more effort to just
remove the whole thing.

Sean

> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/ati_pcigart.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ati_pcigart.c b/drivers/gpu/drm/ati_pcigart.c
> index 2a413e291a60..580aa2676358 100644
> --- a/drivers/gpu/drm/ati_pcigart.c
> +++ b/drivers/gpu/drm/ati_pcigart.c
> @@ -35,7 +35,6 @@
>  
>  #include <drm/ati_pcigart.h>
>  #include <drm/drm_device.h>
> -#include <drm/drm_os_linux.h>
>  #include <drm/drm_pci.h>
>  #include <drm/drm_print.h>
>  
> @@ -169,6 +168,7 @@ int drm_ati_pcigart_init(struct drm_device *dev, struct drm_ati_pcigart_info *ga
>  		page_base = (u32) entry->busaddr[i];
>  
>  		for (j = 0; j < (PAGE_SIZE / ATI_PCIGART_PAGE_SIZE); j++) {
> +			u32 offset;
>  			u32 val;
>  
>  			switch(gart_info->gart_reg_if) {
> @@ -184,10 +184,12 @@ int drm_ati_pcigart_init(struct drm_device *dev, struct drm_ati_pcigart_info *ga
>  				break;
>  			}
>  			if (gart_info->gart_table_location ==
> -			    DRM_ATI_GART_MAIN)
> +			    DRM_ATI_GART_MAIN) {
>  				pci_gart[gart_idx] = cpu_to_le32(val);
> -			else
> -				DRM_WRITE32(map, gart_idx * sizeof(u32), val);
> +			} else {
> +				offset = gart_idx * sizeof(u32);
> +				writel(val, (void __iomem *)map->handle + offset);
> +			}
>  			gart_idx++;
>  			page_base += ATI_PCIGART_PAGE_SIZE;
>  		}
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
