Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05C82ADCE
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 06:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0N3KStTwrSP6tM0dGuRLlwZlzX+OEVtc60XatktX6fU=; b=GUe0kuIZpx0TsE
	np/o/1i0DJU4iwg3m1xMikJod3y5U3/ke4aySyaH+zfvjinrpChUn8cQ865FzllwGTOH7hPXTcVd6
	GRU8BmGLjlBCiGg61JJ4Px27A+xtMe2PvuWZq0CbaksTIABTjI3Q19sEpxGhLtsQtfHfQAiBBCk14
	8Bs3RZxbm5zuph+5+I9jAOxGyLUf1z6jvDw3bg87jOs4Dc7LRsI0/j1UubPYUROoNpy8YcoMgleqP
	JyGzRPMFKEeTXJFsZ5SJvkStZVYaXVVZMbEIc9Ykp2Wio6PaYa8TBzF0Pd10P2KZgOP1guhUvnDZV
	nwx0W2IFpafq+GopxIzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7cB-0008LX-6C; Mon, 27 May 2019 04:52:03 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7bk-0007nr-7B
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 04:51:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id z26so8840380pfg.6
 for <linux-mediatek@lists.infradead.org>; Sun, 26 May 2019 21:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nTNnUu5Pg74lFPYV76pxj/avOtvPxN38IgfsN4zW7KQ=;
 b=fjbKiekoEYOoJBE0nUV6/Q9YCysuZfEp+pEMPPi41BXxdQCweXz3u6dxC632AR4SmS
 y2yCfjzWKum60A/UdH1QkxrFpcR111NmZhwY2ZqRwh9ElglQSnMEFWXz4doFbAksG3fj
 /Q/d3ScgIQ/QIeK6u0PHG4rbgVSsL949aTXQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nTNnUu5Pg74lFPYV76pxj/avOtvPxN38IgfsN4zW7KQ=;
 b=qM3MGwTrxF91WvFcBuF+/LD23WyobSMnBLJcQn6inFap6wR2GNCiqCICxGosUpl8fY
 kO2KXZWQjT6PAl61e/xT7lWFy+Q2fqJoSznpwb2uIECD7RHIjpNEjvhlGdvBkrxhFRbg
 BJmsc/Pk5B2RQ8Dr9tMAbWsYBSs8rwIsbF9MOqEEwCFe+pIgrEyG2BQTcLmKq9W3yDEr
 fE8NUf+sWDbVGXwvaPr3Rg2x2fL+Xn8RXPgEeDEha6IHKokofJti7aYmr+Ko3uDrYLW5
 xbaAM8DVv6BVjFICICiCe/myYvIgtF0KS85AqIiqxFUNDw7ixwT1o05Ql5LXhXeqrm+k
 RT9Q==
X-Gm-Message-State: APjAAAWMngZriNQxefHQWU/l8unabpielJdd77mkpZdx35o0gghUyObx
 s+D2Q8S+4gb1mm1y1qZE9YMOXg==
X-Google-Smtp-Source: APXvYqx8WppvdjWZOUQtU7qfCXOcLLa/ChE21AsiaFIreNV8ZZUyC8OHhrhAkIaKUz2GmqI9e+qn3Q==
X-Received: by 2002:a17:90a:fa09:: with SMTP id
 cm9mr28441942pjb.137.1558932695346; 
 Sun, 26 May 2019 21:51:35 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id t18sm8082745pgm.69.2019.05.26.21.51.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 21:51:34 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] drm: mediatek: remove clk_unprepare() in
 mtk_drm_crtc_destroy()
Date: Mon, 27 May 2019 12:50:53 +0800
Message-Id: <20190527045054.113259-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527045054.113259-1-hsinyi@chromium.org>
References: <20190527045054.113259-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_215136_358974_FF06136D 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

There is no clk_prepare() called in mtk_drm_crtc_reset(), when unbinding
drm device, mtk_drm_crtc_destroy() will be triggered, and the clocks will
be disabled and unprepared in mtk_crtc_ddp_clk_disable. If clk_unprepare()
is called here, we'll get warnings[1], so remove clk_unprepare() here.

[1]
[   19.416020] mm_disp_ovl0 already unprepared
....
[   19.487536] pstate: 60000005 (nZCv daif -PAN -UAO)
[   19.492325] pc : clk_core_unprepare+0x1d8/0x220
[   19.496851] lr : clk_core_unprepare+0x1d8/0x220
[   19.501373] sp : ffffff8017bbba30
[   19.504681] x29: ffffff8017bbba50 x28: fffffff3f7978000
[   19.509989] x27: 0000000000000000 x26: 0000000000000000
[   19.515298] x25: 0000000044000000 x24: fffffff3f7978000
[   19.520605] x23: 0000000000000060 x22: ffffff9688a89f48
[   19.525912] x21: fffffff3f8755540 x20: 0000000000000000
[   19.531219] x19: fffffff3f9d5ca00 x18: 00000000fffebd18
[   19.536526] x17: 000000000000003c x16: ffffff96881458e4
[   19.541833] x15: 0000000000000005 x14: 706572706e752079
[   19.547140] x13: ffffff80085cc950 x12: 0000000000000000
[   19.552446] x11: 0000000000000000 x10: 0000000000000000
[   19.557754] x9 : 1b0fa21f0ec0d800 x8 : 1b0fa21f0ec0d800
[   19.563060] x7 : 0000000000000000 x6 : ffffff9688b5dd07
[   19.568366] x5 : 0000000000000000 x4 : 0000000000000000
[   19.573673] x3 : 0000000000000000 x2 : fffffff3fffa0248
[   19.578979] x1 : fffffff3fff97a00 x0 : 000000000000001f
[   19.584288] Call trace:
[   19.586734]  clk_core_unprepare+0x1d8/0x220
[   19.590914]  clk_unprepare+0x30/0x40
[   19.594491]  mtk_drm_crtc_destroy+0x30/0x5c
[   19.598672]  drm_mode_config_cleanup+0x124/0x290
[   19.603286]  mtk_drm_unbind+0x44/0x5c
[   19.606946]  take_down_master+0x40/0x54
[   19.610775]  component_master_del+0x70/0x94
[   19.614952]  mtk_drm_remove+0x28/0x44
[   19.618612]  platform_drv_remove+0x28/0x50
[   19.622702]  device_release_driver_internal+0x138/0x1ec
[   19.627921]  device_release_driver+0x24/0x30
[   19.632185]  unbind_store+0x90/0xdc
[   19.635667]  drv_attr_store+0x3c/0x54
[   19.639327]  sysfs_kf_write+0x50/0x68
[   19.642986]  kernfs_fop_write+0x12c/0x1c8
[   19.646997]  __vfs_write+0x54/0x15c
[   19.650482]  vfs_write+0xcc/0x188
[   19.653792]  ksys_write+0x78/0xd8
[   19.657104]  __arm64_sys_write+0x20/0x2c
[   19.661027]  el0_svc_common+0x9c/0xfc
[   19.664686]  el0_svc_compat_handler+0x2c/0x38
[   19.669039]  el0_svc_compat+0x8/0x18
[   19.672609] ---[ end trace 41ce954855cda6f0 ]---

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index acad088173da..c2b38997ac8b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -98,10 +98,6 @@ static void mtk_drm_finish_page_flip(struct mtk_drm_crtc *mtk_crtc)
 static void mtk_drm_crtc_destroy(struct drm_crtc *crtc)
 {
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
-	int i;
-
-	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
-		clk_unprepare(mtk_crtc->ddp_comp[i]->clk);
 
 	mtk_disp_mutex_put(mtk_crtc->mutex);
 
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
