Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803696D33A
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HSj4TL8JkyXfX/dkR1CzZU39pMWWK/cILVRkteB3ag=; b=oiWK7r7pDBZgMf
	koYAu3OGk1R+nIWrTPW9I6qCoT0Vi/WldNTzlYoBU2qxhCEbzw9NkiaXZJ4dTJrAgC5cUtgaIFQH0
	ENzRid82UqnNUufPQcRlKWr8NssndHlROX5/UZEZxiGkoL07mRIaCnudUt3sfsOGML3WShxNrKiPA
	bkrA7YrYAJzRJ1a+RX338ZcqMW26gMhktboSNX731G3S0aYW7dulodj/ac9rP2HnSN2KlUvgioz41
	u+pQTJAiv/OxvpzIOZu/MC2i796fOPr9RReQG1Npju4b4/7r0NnJkeWYDvpgh+XbKhXCkr85R5wfn
	+t59m/BtyLlz1IYcjlkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAaD-00086B-1U; Thu, 18 Jul 2019 17:52:45 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAZ6-0007EF-Se
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:51:39 +0000
Received: by mail-yb1-xb42.google.com with SMTP id i1so4242783ybo.4
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5Dx6p6F1bLa3zU6wFGAt+f7fv358FIzFIaIrNHbg+9g=;
 b=R8KExCR6tsJrTim++Ryx5yo6ikIJ+A/u4ncyAbhtn4Wxzsy58wFcAxGyFbtU8NPE3y
 MQkpqWvEX3jdW9WLswZJc3r3wEmI5tNMzVFCAL5JFYWRVMQu8suecQTALGLQdi3mip1z
 KRaoIW05bPSOIzkLasBgEWzjK6E+xNPBM4kZgeTGYA5Bj8XLRsXI2ZUXiwgXh6GkDhX2
 2nVtqnPdoBh/zUFxZkB3z3egqQ3w6chj8NBfJAkOJo9Liv0C6e7D/veVgvQP3bGsoADe
 iJT2wz2srtgn91Q+a+GA5Ed45CmxkqakUeXX6vHAhzmtcIHXeyZ14dvbpwKv5jzI/eEa
 nZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5Dx6p6F1bLa3zU6wFGAt+f7fv358FIzFIaIrNHbg+9g=;
 b=i5FGUYU3XCy975zvStfBU8wlKsTp6/YPmR4eS0a3ER5QcKxmvxQrXeNUJVG09OhFfm
 Iw3eauKPdwcghEJqCafT1m3Z8IM68Bo2zsYj3unatHUn6R6TjJ1TIYDqtA9xRkGe2dqd
 /9xD7Tp9u4f1mt6pCQQwtkupUFfPDjSkmMvT+7h3b4o16gDZqrMK1Ebg+QRnQUJD2zmO
 6YMHU0f0ANaHTvlyISl0NTjnkxVeAkcSEXzeEtiVnx5xXlC+J1JBaVk57S43vlV4KmhV
 BHuO4QP2fguflLgTOgL25H033n7giONu3vI7JIatoeDQrEgIu2Nu5Z4mt9FdX2MiLPcb
 JFZw==
X-Gm-Message-State: APjAAAUgfNZ+Pa+RWfdAoN6+NwaD6JcC81UwiE7FxI/9rfuXYBS1Zv5O
 7YDvzI3tf+AEciH8N+iuMFNgdw==
X-Google-Smtp-Source: APXvYqybP2QsImtTSUle+eZSIYAuEzV0EjVFHNNLVcuKDMCRvGgB3XkmsXzS/KQ48cXti671TGXCDQ==
X-Received: by 2002:a25:7288:: with SMTP id
 n130mr30203880ybc.171.1563472295711; 
 Thu, 18 Jul 2019 10:51:35 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id x138sm6563253ywg.4.2019.07.18.10.51.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:35 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:34 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 08/11] drm: direct include of drm.h in drm_prime.c
Message-ID: <20190718175134.GK31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-9-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-9-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105137_126918_9EC0EC7F 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:15:04PM +0200, Sam Ravnborg wrote:
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
> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Eric Anholt <eric@anholt.net>
> ---
>  drivers/gpu/drm/drm_prime.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index 189d980402ad..eca484106cc2 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -30,6 +30,7 @@
>  #include <linux/dma-buf.h>
>  #include <linux/rbtree.h>
>  =

> +#include <drm/drm.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_framebuffer.h>
> -- =

> 2.20.1
> =


-- =

Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
