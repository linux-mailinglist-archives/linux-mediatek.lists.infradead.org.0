Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44D619467B
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Mar 2020 19:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nNo3Eqqw8FHCnZoYgMffQDPlt5gRiJlwGHBxoUXaYiQ=; b=uUUVKO3rCRKe+Q
	Zs1+RgYNOHZIofd40wIZb8BrSekc2LZcnaoCygmjugVUcQQDz4goodowzWhiZhAJwFrtpde/KnLq5
	453yKeHh4nEaPBqSU5IOLaVeqxF5IjFehuN9nEwU432nWsE4m3ONR1V+5ZnowWY63IBtvxo5eNrwD
	sWvzvDACNk6uciAO3kpQfgiJKROc/V90NNNgzJxPSCqAHDWwoLa9KeCfvbIpGDeYLKvLMCssUOWPN
	ZnVskVLI93XLH6VkekPvH8INok0/eQQWiZqgGvx07ysDgctSRAXt8igU2d+Cr8Iigh74uDAB8ak04
	K1flIBRex2pbY7JONaUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXEm-0007PR-Tt; Thu, 26 Mar 2020 18:28:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXEP-00072T-9G; Thu, 26 Mar 2020 18:27:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 89B7F297957
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] soc: mediatek: mtk-mmsys: Export ddp_dis/connect symbols
Date: Thu, 26 Mar 2020 19:27:42 +0100
Message-Id: <20200326182742.487026-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_112753_473658_A4F4E3A3 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, Anders Roxell <anders.roxell@linaro.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When building on arm64 with allmodconfig or CONFIG_DRM_MEDIATEK=m we see
the following error.

  ERROR: modpost: "mtk_mmsys_ddp_disconnect"
  [drivers/gpu/drm/mediatek/mediatek-drm.ko] undefined!
  ERROR: modpost: "mtk_mmsys_ddp_connect"
  [drivers/gpu/drm/mediatek/mediatek-drm.ko] undefined!

Export mtk_mmsys_ddp_connect and mtk_mmsys_ddp_disconnect symbols to be
able to be used for other modules.

Fixes: 396c3fccaf03 ("soc / drm: mediatek: Move routing control to mmsys device")
Reported-by: Anders Roxell <anders.roxell@linaro.org>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/soc/mediatek/mtk-mmsys.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 32a92ec447c5..05e322c9c301 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -259,6 +259,7 @@ void mtk_mmsys_ddp_connect(struct device *dev,
 		writel_relaxed(reg, config_regs + addr);
 	}
 }
+EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_connect);
 
 void mtk_mmsys_ddp_disconnect(struct device *dev,
 			      enum mtk_ddp_comp_id cur,
@@ -279,6 +280,7 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
 		writel_relaxed(reg, config_regs + addr);
 	}
 }
+EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_disconnect);
 
 static int mtk_mmsys_probe(struct platform_device *pdev)
 {
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
