Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579FF6D1E2
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 18:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToNxPiUm244y0pELDXbFKUmWSRd8Ned5BcoTLp1PuMw=; b=RUdLSFiPDASvCS
	rXTWotFsXq4BfhEzOvi6WHj2nQid6M/YVVC/nUoyvVny0jQA0bnFNwhAidAyf6hNBFf4WiOXCWqmO
	CJLlmDnTr8jFV+SjTDsvNeT59ZrhgyIw4OE7tOLX0euRfHuKEn1pui4YxjW/DPM2BXSmzDewxZi5J
	XURGbMJJklFSidWteshhLY2YrCPTEkajuXpJV3/CaLf1jEn1YmgM5DR+rWqItK5o1yTKTrmahDyEi
	ix88dBFOXVl3Ht+w6Ao6BPj4ykvvA1aC1+V9oxPNoBNGkHduXd2zTm54+bs7ivAvu4mUHyY4+X27B
	0SY7QlSQ87ZYAcrVAAHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho982-0003xs-9e; Thu, 18 Jul 2019 16:19:34 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho94I-00085X-SZ; Thu, 18 Jul 2019 16:15:45 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so15343619lfh.13;
 Thu, 18 Jul 2019 09:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UlOLkWz9OCQuOLcSNJtSJ4+8TzZuh+LJDaeiwowcFEQ=;
 b=d2LniV1TStQHaiWmIBMTYC+PjTLCHouyWKGpmJ+7CMGnK+gTJA+cBCRsj6jZDNTvJ/
 4GhmHbHYJ9hnDNp70wOSyILt3N4zZUXgBuUtjWxFlzwoSFUgshoux+3kWDF8bG9bgwD8
 Vbhvgg60g5ByAdW1bL7Nif8sBeXiWyjcbHvdWeq33btV0vU4tIyw3w4Gh2tTYormeCCF
 OBWUfeuDa2f+CeaO3dke7aqRgwpjKQWUkbcAQ5B7wubS+besUXOgPfRYOew0FIDlu6P6
 yp/dQr2mJ4MfXQexj1lDz3S+twdz7hTxdAFfA8KsPkFsQiDe7AJc02Q4zDi2Di14kEo+
 noSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=UlOLkWz9OCQuOLcSNJtSJ4+8TzZuh+LJDaeiwowcFEQ=;
 b=nEnNEwl8JIvN1+Di8204SRXLHR47xydt6uuTi5uJl+mhaPLLgCg5j1UQU5a2Ho3fqX
 DkE9b++FIYbNYjNwWs5fS4t43PMKQ2EeXZmq0VSLzTJkt6q6OVMxf//EzLyJuyNEsSyc
 cn+jz3wPa5th/umk5yKVxqTXdSjXLKdQ28MOVuex/GI2vDKJWbfDlR5P6k1fB9oa1Jyq
 tiN3e6cpxCWqxX0KvYoDZpZu3iEPi4Gw16z7zOOAa0TgiIPHnHJnG0ZEzVzhq+XOG2sn
 PA4VkPkIzTcraN3gJjXEt045re7Bb4/QsfCPh/9uWxO04xmx37KFbtyN4whmp8A3aYS3
 F9xQ==
X-Gm-Message-State: APjAAAWGZpJtC5CwpcCAMbwx1eRu6YXHtMdJHlrBGqr1rSeWKAhzSJ+1
 BrLOdeZSkb6nNGeuMpNZ4PE=
X-Google-Smtp-Source: APXvYqxYBrArSH1t7goxG0eRWhOTlhkk7mSDSycDPhnE9EVqrjdusk6P3foX4G6hPkEh6dmQ1VTAyQ==
X-Received: by 2002:a19:c514:: with SMTP id w20mr21730371lfe.182.1563466541152; 
 Thu, 18 Jul 2019 09:15:41 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:40 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 11/11] drm: drop uapi dependency from drm_file.h
Date: Thu, 18 Jul 2019 18:15:07 +0200
Message-Id: <20190718161507.2047-12-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091543_219115_8F9EF1CF 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
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
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

drm_file used drm_magic_t from uapi/drm/drm.h.
This is a simple unsigned int.
Just opencode it as such to break the dependency from this header file
to uapi.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 include/drm/drm_file.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
index 67af60bb527a..046cd1bf91eb 100644
--- a/include/drm/drm_file.h
+++ b/include/drm/drm_file.h
@@ -34,8 +34,6 @@
 #include <linux/completion.h>
 #include <linux/idr.h>
 
-#include <uapi/drm/drm.h>
-
 #include <drm/drm_prime.h>
 
 struct dma_fence;
@@ -227,7 +225,7 @@ struct drm_file {
 	struct pid *pid;
 
 	/** @magic: Authentication magic, see @authenticated. */
-	drm_magic_t magic;
+	unsigned int magic;
 
 	/**
 	 * @lhead:
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
