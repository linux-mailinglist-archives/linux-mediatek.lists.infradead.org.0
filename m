Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254DA6D1D8
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 18:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbtGeeo3klQhZeIE3KklOwYtDpIS/EyFve+5rutpEt4=; b=T7t5zLHOOYDzdH
	BZsfmL5Q8BxRrqI5WkXdz+qcd8hy5sQCVg7JZBqtTpgPaDUca3Om5pjM84Dl7M5MmWmmoGbTctw4u
	1AIh/6UE/lpV8m7oz7kTArdRG7d4aW/4aPS6MwLgPC518+CoggTVfEBxtW0Xp3EuoDyAhSpczI2dQ
	4d5L5YZQXLKJz6e+N/Ti4Ebiy0agdud5zkmqtndXNMUmkKhqAlHXcFc6HMA/VqBvzpzZCOhU+tO4A
	5OBZlJ0qzJjS1Nylmwd7yF504Sa0eAW5WLi5vcwp0YlY7rqoAn41nyQx8NFDuUhfdEuMz/bnfXOlT
	cFozvmRkfvoAXTwybn/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho97u-0003qq-Sa; Thu, 18 Jul 2019 16:19:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho94D-00080Z-17; Thu, 18 Jul 2019 16:15:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so27901041ljh.6;
 Thu, 18 Jul 2019 09:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5iHBuVq6OVoL5g2SO+kAMAMUgwsbAup21Am8Hz+Y/h8=;
 b=E9gugjjWV1jLxjI45/LuVHSYg55YE91n6oSkaD3jd6eUsNv0C8K0Ovk+0vwwvx8+YS
 TVeVeVXEseK36WOlEQy2UyV0qhuvVuaCKZ5csLO4yo2jQav5j7MLXWtBPYRRatgSignP
 b6gJwXiHGR2s/H3eZtzhw/bRUeunyxT8PKYFacKSnaERK9T2ymCVsdtyVNT6hGHm2aYB
 Z/D6scPpvrdeZaops4w5/6dMz2egQ1NvbbE99eqmGAPFKqLmzXdm4FvRsF3cIfCgFXGE
 r2qFAAsP6tqaqWO6zU9IsDJX08BwWCLbg6nvlb8NWDlR0oVoxQ6UFBofC1PtR7Vq8cuW
 MYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=5iHBuVq6OVoL5g2SO+kAMAMUgwsbAup21Am8Hz+Y/h8=;
 b=AVZbyI4K7kDG16GqV1trYiRCRWEcFqJPO6CGQWk3w6+EmDjfwZfcbV3mHQYwDVrAO5
 1CER9NCKaodhoKdUyDRA2e4RXK4j+4Nm3K2cBfbJqcpJ5dLtbn6kaIt7Nxt8iU3p4wZv
 N9sKOXc5o7//eYp7PkddJLatgkIsO1WzhWWZAzew6jdWe0c0Ez5FTktQutC1/hpZZ8aH
 CfWQnMmWy6oLBjgDyW6BvOaikKSqu/9SmVZ1ybI/JQ/Zk4/dJg8aRCXLNDTqX1N6MAuG
 5QUEzX0CrAU+7kG390Zcw/XmSjoAAbAZ2bs1GjudWHfz5f1WTr19WZHVQqv5+UfPkcbk
 daIw==
X-Gm-Message-State: APjAAAULIGFh5H4yuCKTzD1kJa7qPZwdSxo+WMdPZQ+vldt1DyoXavkU
 PeKzdDoDmKzQydv8JZd2Z7A=
X-Google-Smtp-Source: APXvYqygrJMJtCucev6Ri5vM6W9Y/vQi+gWsKgWZ7kWFT2xIA7iXrlP3B0wYUJ6SqdZxmRzieBQObA==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr24880722ljg.191.1563466535069; 
 Thu, 18 Jul 2019 09:15:35 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:34 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 07/11] drm: direct include of drm.h in
 drm_gem_shmem_helper.c
Date: Thu, 18 Jul 2019 18:15:03 +0200
Message-Id: <20190718161507.2047-8-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091537_306448_3FEB7DAE 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Do not rely on including drm.h from drm_file.h,
as the include in drm_file.h will be dropped.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Eric Anholt <eric@anholt.net>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 472ea5d81f82..2f64667ac805 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -10,6 +10,7 @@
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 
+#include <drm/drm.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_gem_shmem_helper.h>
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
