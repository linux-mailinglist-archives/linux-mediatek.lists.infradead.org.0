Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739EA1B0157
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Apr 2020 08:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZineSiLzGLsGieX/VJu1GOyFgilARbRVtvGrOBAdqN4=; b=ee5hBmC4abGye5
	kU0iWI6xc2AabkEnXEq+7LUUciJYPKQKX1QmqYGyYecpWS6qS8tMCTrofKknf8a9o3/sISuMozijX
	IkumTSRUj6OJ4raPO5bMOcYnmZpz9To4O3HdOFzxUH0qnvoswRjeEx5hu9spk2qGJ20Uj2kfOw9vv
	BBiYIcHFYMiL4kGF9BVMALwookUyMNcozgIzAjkU+fF5tKagUp47MdgXWyNHVUJciW7MvlTTbeFRz
	aGCIv8EjMaoE6rBlh75P/4HnyBAOYD5PoggV5ih8OqWlug07psAi1sKIIHLa42AkEntfU9GxBx8qm
	1ilgk6x3cP4jZTkBy2yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQPc2-0000ww-Gp; Mon, 20 Apr 2020 06:08:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQPbq-0000ok-PD
 for linux-mediatek@lists.infradead.org; Mon, 20 Apr 2020 06:08:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id t16so3557618plo.7
 for <linux-mediatek@lists.infradead.org>; Sun, 19 Apr 2020 23:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SezQvaqjYLbKiOOQWAcX/3BNfbHbuPlMP92AcIlOvpA=;
 b=mh7u/Nzr3V0kjSRxTO0mKkatpJU809OLSLJJlsFt2qqISf72DiGj5xWDQAEvljElfV
 FeYKApqTjmmOh8eLf4oP5EPyFuKRdTWijq0Bt4MVVh7MOdqoryB1MbCic8WbRgfkq6eg
 E9a9BiB+TFtHM9d/GUjKY4K1Jx3aDv8xSb9Lk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SezQvaqjYLbKiOOQWAcX/3BNfbHbuPlMP92AcIlOvpA=;
 b=CLpgodiMhgbTnmQERzmqFEp2AE87aMGmCdVA6M8GaKi0Ep4xj/skEeZTY2eAJA7aA5
 h1EtXYlR3iPib5tGTloIiMcdxiuWtNKUX+r23pEfa8k36YaM19p/ODNXh/ejc3ivKUYL
 RSqXgGcMUlhxH81gpq3JveosPOSeFA2N584YkWaZPJkzX7QT4qlzn+KaniQbl1svTPfa
 RjQbnbytswVSYUf1uMVjQESY04B2YMKFLVRtZiPhqcGj2IFqBpgT7LVTdfK3GN+XYBI3
 DmDNDn+HCqBcpD6Eer7FSpbWHuSOAiPp4P49OspnIALnP5CIWOjOgQeX27kJFHDclCLH
 Uy4A==
X-Gm-Message-State: AGi0Pub0jcO7A+mxu8fRA/GHwITMrp4c9Y5H6ywOFUNwdap/g64Kskmp
 3JTVopT1uirv6HhOEoJEak5q4mlOrb4=
X-Google-Smtp-Source: APiQypJ7/kohKua8cbRIlf5c1h2ySfX9UyLVzIyb/i9csqaqSHKdHfXhwGV1/987z+JuCjIkPug5+Q==
X-Received: by 2002:a17:90a:340c:: with SMTP id
 o12mr20794100pjb.22.1587362925217; 
 Sun, 19 Apr 2020 23:08:45 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a274:40bd:f640:b6c6])
 by smtp.gmail.com with ESMTPSA id t188sm21384pfb.102.2020.04.19.23.08.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 23:08:44 -0700 (PDT)
From: Anand K Mistry <amistry@chromium.org>
X-Google-Original-From: Anand K Mistry <amistry@google.com>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH] drm/mediatek: stop iterating dma addresses when sg_dma_len()
 == 0
Date: Mon, 20 Apr 2020 16:08:34 +1000
Message-Id: <20200420060834.44461-1-amistry@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_230846_815098_EE83BBCD 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: matthias.bgg@gmail.com, ck.hu@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Anand K Mistry <amistry@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

If dma_map_sg() merges pages when creating the mapping, only the first
entries will have a valid sg_dma_address() and sg_dma_len(), followed by
entries with sg_dma_len() == 0.

Signed-off-by: Anand K Mistry <amistry@google.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index b04a3c2b111e09..f8fd8b98c30e3d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -224,6 +224,9 @@ struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
 
 	expected = sg_dma_address(sg->sgl);
 	for_each_sg(sg->sgl, s, sg->nents, i) {
+		if (!sg_dma_len(s))
+			break;
+
 		if (sg_dma_address(s) != expected) {
 			DRM_ERROR("sg_table is not contiguous");
 			ret = -EINVAL;
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
