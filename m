Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F356F18E9BA
	for <lists+linux-mediatek@lfdr.de>; Sun, 22 Mar 2020 16:35:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b5TKxlJnIkLH9vyiHlg0qER+w9YrhaiDqGhj2G3EaqM=; b=PO/AJRD9/4wzh/KXge80kS7IZH
	Ys4GUj2JxwBBXNCtA3/h54zljY+ZmR95ffT7NwTr83/ad2MJmpuwv1xaM/OJEHII/uKAyOe8RxOET
	4sPKy4p1wDkzZFg3jGuglJHaKHUnMx/TjdFswZ04G2Kjyu6Z9qLSjhc+yG7MCh6EXyXdAEGuAu9T/
	8U+m8FkTvORCRpZ20qOmwyaRgJRuLH4qYxo4ne24TaNFq/qWuVR/InpcgSE7ZMKiSLyBT0BGsGog8
	4fQTl3nceyHqxp/B8qr9ZIxdZ1kbTpTxi/XHVfVIhw6rc1oN1kx3NhCaCFHDRClmEYZ4uF32/tHDi
	ggmfS4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG2cz-0005hK-0u; Sun, 22 Mar 2020 15:35:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG2cr-0005eS-89
 for linux-mediatek@lists.infradead.org; Sun, 22 Mar 2020 15:34:58 +0000
Received: from DESKTOP-GFFITBK.localdomain (218-161-90-76.HINET-IP.hinet.net
 [218.161.90.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3782920736;
 Sun, 22 Mar 2020 15:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584891296;
 bh=bFnnF2dZO5qJovO73F2Ej1VVG447VC5SqBeFPILlMsI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qxoUzW1f5wpb6gvf6E4Lnfjp+mjt2q+z/bIw4lyzOe/a41T2EjD+C32SX0oAC/GQG
 3EcVAQ2xf0590fKrPlhK360bm4aYGN0/zgQ86i1aDeOl2r9eS16odHzZGEAoESnAc8
 THvT7Al1sh8PenOLjXQICQuJz2iBv0xw9uUd4C5w=
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 4/4] MAINTAINERS: add files for Mediatek DRM drivers
Date: Sun, 22 Mar 2020 23:34:24 +0800
Message-Id: <20200322153424.2447-5-chunkuang.hu@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200322153424.2447-1-chunkuang.hu@kernel.org>
References: <20200322153424.2447-1-chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_083457_316489_8C92C85A 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Mediatek HDMI phy driver is moved from drivers/gpu/drm/mediatek to
drivers/phy/mediatek, so add the new folder to the Mediatek DRM drivers'
information.

Signed-off-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 38fe2f3f7b6f..129777037538 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5612,6 +5612,7 @@ M:	Philipp Zabel <p.zabel@pengutronix.de>
 L:	dri-devel@lists.freedesktop.org
 S:	Supported
 F:	drivers/gpu/drm/mediatek/
+F:	drivers/phy/mediatek/phy-mtk-hdmi*
 F:	Documentation/devicetree/bindings/display/mediatek/
 
 DRM DRIVERS FOR NVIDIA TEGRA
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
