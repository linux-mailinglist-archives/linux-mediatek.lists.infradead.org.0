Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283FE11B51A
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Dec 2019 16:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCfn+MarlolZ6IfRhA5+nsfNYDjnDAmgX7N3j/FTs1o=; b=GcQzyXTzd9krAB
	vI9eqSmgSKAwwXc3Fl0zTvdc8NicuScXwXsjIwx2nA4ZRFoO78Vc0d8aN4RcMZLoLzJ/8Qvh1y0y9
	x3CnAW+CpdQS7JI/UivHm0y6BsZGcNvpMP6JlT0QYa9WEZzFNpTDnwgEHxTXASYkdJB0gKMuiPvHm
	Sz0dt1YJIcV5rbXWSbqGZYAjVdV+1uh31LbLNa3Wa0j8Le1maSZ0whBspdtlDUtXQdWqzOVZoK6xO
	EhQ8EXTHV3kRprWVpEf0LsR/sG3eqY1z0/0FwM/2Gs5mT31LfVr/J3zrwpOFAp5TIXKEGmq9qSQs3
	QiEJGK5aoJn8871RrLew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4Ha-0001F3-Q2; Wed, 11 Dec 2019 15:52:10 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4Ep-00055D-3B
 for linux-mediatek@lists.infradead.org; Wed, 11 Dec 2019 15:49:21 +0000
Received: by mail-qt1-x849.google.com with SMTP id x8so4638987qtq.14
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Dec 2019 07:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=L3bqEDJc/83H6XSH4dKpp4Sz+uUocCwUuCh066ZPD24=;
 b=T7tmarUt73QPvvzsmlX8joprU84Bgn+q+g3Bub5VpNuPOkJ2OMgW/GR2NfK7AzKClC
 TVaQfOgipbhJkxSaBENCKqcs/xBqhcht6ipt8vpVxU8N0K7LDCJSrRC/1rsFS9tb+m1i
 xrDG46KfHWOx7stN/zivVYevObR3Lt28+6MPEh3++sYAWKHfWyyPtHWT99FEvqBwKUsk
 /2L6mMknwQVjBCXY2SHvUs9Tq7wghQ+mqZ1/jCay1ViVuWUsLkq7UxOQEwPovdQGJZDZ
 bvwP7rUww+runAY6qHX8Fl4Plmaut9fSbirsX6AWRHXQ1HGlqeCzE2/4WMjMeqTZd74Z
 Ssjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=L3bqEDJc/83H6XSH4dKpp4Sz+uUocCwUuCh066ZPD24=;
 b=D6YbotwX7kCzDTOLXYsYcRnORpspItT0LnSp9jzZjMve1XrJj0lMOXDbcVINO57Cxn
 lbABH8TJlkkp88hqgVstTwrvuNoeTS41s6968k/TtoQII/BftlCqozOI3NPQboLwXrXR
 5/EAfaDOWYA9MzmeTDzZ0AenDY14+Jhh7rFbjmgi54Oe8jPOy4kuYykWdzagxRMLvRpU
 Smlj6LO/BXY/zVT2Aa+UoVGbIfOGAjSKRHdMAXRt3mGtZP9eihgdW1Giy+2vVDyiCY2h
 0W6KxLmi7Dw8pY5c1HBi8/IS2khGwhSSIvqgF64kg044Su0IxRV/EcbMNpsVwr6KANn5
 ZHwQ==
X-Gm-Message-State: APjAAAXAw8f7WSNf37Sq0xQP+ztZHNdkIMe8gYexk8KcFJ8GvJR8CCyq
 /8wDBc+AE6SRX1mdx/OIIgR/i60WTevIog6y
X-Google-Smtp-Source: APXvYqzWVPRzbCutVlIWkKgo8ZdWbTIe/i8BsJDaINwYPE1tnMGWPJw4+4d/x/wDNk8QtVgjgmAdkZUNDVCj/ebY
X-Received: by 2002:a0c:d0f1:: with SMTP id b46mr3637071qvh.188.1576079357145; 
 Wed, 11 Dec 2019 07:49:17 -0800 (PST)
Date: Wed, 11 Dec 2019 10:49:01 -0500
In-Reply-To: <20191211154901.176256-1-markyacoub@google.com>
Message-Id: <20191211154901.176256-2-markyacoub@google.com>
Mime-Version: 1.0
References: <20191211154901.176256-1-markyacoub@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH 2/2] Turn off Alpha bit when plane format has no alpha
From: Mark Yacoub <markyacoub@google.com>
To: CK Hu <ck.hu@mediatek.com>, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074919_177174_5EBD3E29 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Daniele Castagna <dcastagna@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

drm/mediatek: Add OVL_CON_ALPHA only when the plane format has_alpha.

This change enables XR24 format to be displayed as an overlay on top of
the primary plane.

Suggested-by: Sean Paul <seanpaul@chromium.org>
To: CK Hu <ck.hu@mediatek.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniele Castagna <dcastagna@chromium.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Mark Yacoub <markyacoub@google.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 526b595eeff9..a7851756dddf 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -266,7 +266,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	}
 
 	con = ovl_fmt_convert(ovl, fmt);
-	if (idx != 0)
+	if (state->base.fb->format->has_alpha)
 		con |= OVL_CON_AEN | OVL_CON_ALPHA;
 
 	if (pending->rotation & DRM_MODE_REFLECT_Y) {
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
