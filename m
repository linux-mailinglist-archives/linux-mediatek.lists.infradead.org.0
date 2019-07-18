Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40D26D33D
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz3xp1/1J2wJ+UIt/tCdtGqmiXDYCaUdsY9YPMLGIOo=; b=j0U0sydXhNl0un
	UEt/OGuQCIO1G+WdTIAxGSGI0Fjde8kLniYT8c+1t0EjRPHM1rLOf5n+/jL7TaDvBfqvyhouaIqu3
	HqT80ndn33lAskKCYuzCe6wvJdSR/Q3ZQKNH5XrQNtSy808cx+livbFp/l9qhv/94cxTTOQsL2927
	fju5eW3jIgENmUALes/tJf/7Ahdgepw4yWGL6ESUZgPGtQLKC16QS01ObwmVe8IxW0N+EdB8o3Gre
	THqGlU8s6wbV6uqdHmrjKUvWNj6QH9XDv/3Jcsla/ltI/QRJVsw6808TM8ZCia1LCJ91/lRJEmCCa
	HiUhURqkaISNXCGuGlrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAaa-0008QS-7m; Thu, 18 Jul 2019 17:53:08 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAZI-0007P6-Nh
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:51:52 +0000
Received: by mail-yb1-xb43.google.com with SMTP id y123so8542778yby.10
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=54ISCPh3k3SUs+5FdfI6KvwQ1Id9kdGWoRZ1Spsr+ls=;
 b=W4A30FAznhmdJU8pXe6EsfiaP1RyvKu6XSBCEBVQWldz2S8BHvUHw9Vmr5fLdrGEUK
 XJgF6G/UYXEe+Ymt7+Wp6yysRLhxy8uv7cDZwY/+jELEnbv2GsPK3XoS9tFAM4AII++c
 2w+/NP1KdvbPLfD9ay9P96cqSsT5894vJaGudaqSqeI7z/M0mduo/yxUhC+pWynVPuY/
 OuxminUzPuPv/8AT5aVCmyrxTyD8Wf/9xGzk86/UTBhLZD2R71BWqt5VK2uspcSihcdG
 XgyB3zNnZUbCMZgTqpIbCYuEYscvjuHYYT9mSg2B56fmVPwsLIBlZHgPgp0WVt2NuzpD
 KTwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=54ISCPh3k3SUs+5FdfI6KvwQ1Id9kdGWoRZ1Spsr+ls=;
 b=INcMPErlK77Rc4mKboWGL+Ka+g023dnwVDiPD34oY1IvCDbKqDhRcgMcXCvwVSAqZH
 bF3UzKoXyv4Luh4iuU1e4Ms/OC2Ch7Q+uHfeIw+w67G7gH33dIJ5pjSLvVFTMkUJes5G
 7cvDCFU/tOmUEVbbYMtKlNYn7n2Rb3dWyzSMkj5r5DfynNR51VKDWdJxG6Ktry4PT+Tb
 63vwekGa8gupKWeZpA46ebe5P1/qrAEUyZqDZYhUyCjNYERw5dX8hSmvZ62PquSPVs1L
 UVU950nRX0sEUiqFiv2NjnljUSV99ma40UHFMJ5abGWlkPSo5mhPyri8rxaGNxfiLg4y
 /CSA==
X-Gm-Message-State: APjAAAUoZ0RRLuNnHokz18zZPTWXt0a56jF6QMPfw9ob39uKbXt1u5ca
 YBzog5ePMmDrUZohwkZ7m8ElIg==
X-Google-Smtp-Source: APXvYqwriywGParEUult+Nn3tYrbq2xB8U4bR7esM0/Bqo29nmAIWodN6W0SDyfIGK8YXoAWISkutg==
X-Received: by 2002:a25:1d02:: with SMTP id d2mr29012730ybd.311.1563472307859; 
 Thu, 18 Jul 2019 10:51:47 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 82sm6791584ywr.52.2019.07.18.10.51.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:47 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:47 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 09/11] drm: direct include of drm.h in drm_syncobj.c
Message-ID: <20190718175147.GL31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-10-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-10-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105148_908753_13934E56 
X-CRM114-Status: GOOD (  12.80  )
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:15:05PM +0200, Sam Ravnborg wrote:
> Do not rely on including drm.h from drm_file.h,
> as the include in drm_file.h will be dropped.
> =

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Chunming Zhou <david1.zhou@amd.com>
> Cc: Christian K=F6nig <ckoenig.leichtzumerken@gmail.com>
> ---
>  drivers/gpu/drm/drm_syncobj.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
> index a199c8d56b95..75cb4bb7619e 100644
> --- a/drivers/gpu/drm/drm_syncobj.c
> +++ b/drivers/gpu/drm/drm_syncobj.c
> @@ -53,6 +53,7 @@
>  #include <linux/sync_file.h>
>  #include <linux/uaccess.h>
>  =

> +#include <drm/drm.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_gem.h>
> -- =

> 2.20.1
> =


-- =

Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
