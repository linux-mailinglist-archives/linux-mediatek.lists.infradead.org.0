Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5CC6D32E
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 19:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lE3No+iYnJv7HaHK3khBvbWU40ocaKHDP8E7U455JZ8=; b=d1NjG/oYvNNOHP
	MZ4ra72uBh5XUqrMK3BWYXPXzAE9kOGPfKpICvUDSrnYx8QJgAlsiojP3ClKwYm/h6Efc/+SyA2CE
	Op1Ze8UefAnQqus868JKVsLoHciWQAYsEGb/70V1kH67reow13HqurOVlxnRH5Q/qoXcsxZFOBEbn
	otElFNhz/pC7nTOTHt3Po1tUxWrvXoJJuRBrPWWpOkUHKJSz/OFkLF1ZPw6WRNcjfdhcVhOlESjW4
	CdcAvTJ3Q1TZGzAYyk1Rc7CA8y9GoX+4Og6iK8B7rAfk2eGD1W6Kvu1IexEhwKpswp6k8Ps0sZgdt
	AsNDKL0A3HN/xsuKq8lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAZD-0007Iu-66; Thu, 18 Jul 2019 17:51:43 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAYn-0006xM-JG
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 17:51:20 +0000
Received: by mail-yw1-xc44.google.com with SMTP id f187so12537515ywa.5
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 10:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JuMhT0HKuYtEVUP5Y0F3NAGMIA0qzfXKwQ9hRAJo24c=;
 b=ISg9avvWTVXWzSxqKUeFrRTKYVfv4fF0925BqDiHXTtvk3iY4OIh6eeGihXOX50rsW
 8jsqf1KErZ9Nf+penk0bECSvA9VmEgl0F/lEkji23HMzjwwGn4dIFA2N4LsfF1TSTg5g
 GpsCzq2Ea7XhzNNdwoTHlL3Suej/Q/do+C/CpHii3kTwjNkCyhKw3A0zikRASnbRAD2f
 84Q5390Uxu1lscTlFFn6wKXiqgCX6Uns0tvB8ndDCBljIZE3Muv0NBUV/QHpCxF/Cq0I
 Qd97YAXzkAZd/eWFvtqbj8bxf8En7ikjkM47oQGhbIxjBYvwdetc10uYcF9tQmgEu6jU
 sWpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JuMhT0HKuYtEVUP5Y0F3NAGMIA0qzfXKwQ9hRAJo24c=;
 b=s6GZk3OT9LOW8b4C7qPQmRO70QSf1sq3sSWC2WSeWQrXgwFryrzCOUBSn1V5v/mt1I
 RK5/gPoWyMJs3V+oJo9KahC+V6Ex7C4xE5zyZNaMoNzm4lkNyYMrwwvSBUKBrl+7CfgO
 wrinA3ujVPfg9tTF/MvpJWWNXqquRPCFqwVMN0Eq2rExbU6trtRQSFlUk7SJ24qve5aS
 hLDUII3MBuN+bHbwNNGwMYZJf6+KrFLmzbHcG5ExeyIbz+DFoH5kCplWhcBt6EPKLPvS
 +OW1vqFF55T2i7xavGYxV0axUcWQyMJOO9RfL7XzXIMGhKGeUFSbA72ax91g6Y5rdr0u
 xM1A==
X-Gm-Message-State: APjAAAXnV2J3pbzgZ6d4Qk3rvrQykc0N04o2tRsKfQujUd99/dPbbY0Y
 8BQDDCoZFaKxAc2ohXE0jMNt5w==
X-Google-Smtp-Source: APXvYqwuJzFtzgQESxcgghViBQHUytRxwHQCDFElqyu/mxGd+RBXaA8FGHOYounVgJinWdQSQCtI/A==
X-Received: by 2002:a81:4ec7:: with SMTP id
 c190mr27962174ywb.160.1563472276256; 
 Thu, 18 Jul 2019 10:51:16 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id m124sm5282541ywb.13.2019.07.18.10.51.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:15 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:15 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 06/11] drm: direct include of drm.h in drm_gem.c
Message-ID: <20190718175115.GI31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-7-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-7-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105117_753146_FE3955EB 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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

On Thu, Jul 18, 2019 at 06:15:02PM +0200, Sam Ravnborg wrote:
> Do not rely on including drm.h from drm_file.h,
> as the include in drm_file.h will be dropped.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Rob Herring <robh@kernel.org>
> ---
>  drivers/gpu/drm/drm_gem.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index e6c12c6ec728..243f43d70f42 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -39,6 +39,7 @@
>  #include <linux/mem_encrypt.h>
>  #include <linux/pagevec.h>
>  
> +#include <drm/drm.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
> -- 
> 2.20.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
