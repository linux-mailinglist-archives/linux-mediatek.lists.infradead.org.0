Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35FB2DA8F
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 12:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWi3Ol10UTkvih5VntMYwUN4Ny6suOhbXX2e94Yu8aE=; b=ns6GwhLdWRZfWa
	JBjRcKVZXU5WMmJK30ujWinUQQ86peTdzZRZuWfkUx0C9uXiRIYVnQGWWgm4ImHtY3qIhRVGsY1Wy
	dOJTsdQEYUN5jxkamL7De/VG9TqPUCn/pWyAv6965nUh8MWL/9r9h3EiuoaEAzt62RocgwEw9DL/k
	efj9hzRrnqqzuC4zzjrF9/GdO0iyVkSvw+En7zKie4UvWYj7bmf17ytNOYgaFjwIBsIdTt5Mg1lYp
	o4WF94FjbApiNp2rM8FZ2SBMp9wP8ApGg3i1MaDAPsBYVYUWoPam1ZSoQ5s0heM9erO94Hbcy8bmz
	Aa1D0zb3dQROScZr9spQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvnH-0000F2-0o; Wed, 29 May 2019 10:26:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvn8-0008Vw-KU
 for linux-mediatek@lists.infradead.org; Wed, 29 May 2019 10:26:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id d126so1355692pfd.2
 for <linux-mediatek@lists.infradead.org>; Wed, 29 May 2019 03:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GljBVRDvAaH/DkyFnuPUvDqT8RdA5gdVzG7vblp3VSs=;
 b=mNMl2dhA55pEBfDmm0KYY9HDhLUN9zY4R63Yol5LQp+MwaFD7w2xzRvbqvz1bFmf+u
 DMMZb+kETeAeYx2gPM9SRZ7DPKmUaheDn/YR7VfsXKXG2lpbc40nBCMhX7A6Ohts1pn+
 kQiTIf76xeLlGk7d20NTCAZHzJA0ahlyXY/oc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GljBVRDvAaH/DkyFnuPUvDqT8RdA5gdVzG7vblp3VSs=;
 b=mHCuP1gCnIBZZRUn/yyAJO8wVi+8osxr3K0xpdbFwe63UDJBcaoGeMIrUjDi5te0ef
 EdwB45PO+gvcVOZrzUbgb8Dzs1jZrcaSd5lvGLzd6bY8KCJ77HGptnBqqA2nEUbh4pbf
 qtnN/3Fus+QngVFaQuRr1Mm/DooVPNXBQi+wS3Cm+X9+y186hXq3xsRy8AZ6Ny50M1C6
 z5H8CS/vfwm90PDlzKBDYG66KttcEHr/L0b0CljG6or/Gd9Nlp/VPGJ5Nl+7cbzKRV6l
 LKEbUbcPfZqqWx3nNuhVOPBuMl+5MZboy0hq9uqdW/SSHFRjeJLN4E8erTkjgUjL4u2n
 Db1w==
X-Gm-Message-State: APjAAAVdeKbrvUE16xn7dMRf0R5LArifplF/cpI775VfB0kDd8br/06p
 4Y+A+jCDTA3rIHlWjslJqDHBvg==
X-Google-Smtp-Source: APXvYqz6GR4WNNXNVVY8FlZIz1QqWpoMlEteFKEd2dOX/waMt4VxWQVOVp9NyvwarqjmG8cnhKaspw==
X-Received: by 2002:aa7:9aa5:: with SMTP id x5mr57398728pfi.135.1559125601694; 
 Wed, 29 May 2019 03:26:41 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id e12sm18992183pfl.122.2019.05.29.03.26.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 03:26:41 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] drm: mediatek: fix unbind functions
Date: Wed, 29 May 2019 18:25:52 +0800
Message-Id: <20190529102555.251579-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032642_794861_A15959E0 
X-CRM114-Status: GOOD (  11.04  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

detatch panel in mtk_dsi_destroy_conn_enc(), since .bind will try to
attach it again.

Fixes: 2e54c14e310f ("drm/mediatek: Add DSI sub driver")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v1->v2:
* mipi_dsi_host_unregister() should be fixed in another patch on the list.
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..1ae3be99e0ff 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -844,6 +844,8 @@ static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
 	/* Skip connector cleanup if creation was delegated to the bridge */
 	if (dsi->conn.dev)
 		drm_connector_cleanup(&dsi->conn);
+	if (dsi->panel)
+		drm_panel_detach(dsi->panel);
 }
 
 static void mtk_dsi_ddp_start(struct mtk_ddp_comp *comp)
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
