Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F511C6FDA
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 14:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NIebTyf5BGONqOiqizHmNiYqTJGDR+3wUqJF40SaEPM=; b=FbN
	wJS+rAwtIZ1XL6J4//FJMeVew5xnBp8yamkNmB3koUyA9CriFPHRHpFH9Aco9LBifmoFfxElJ/bPd
	+fPF9H1GRxplaIlqpSADtigksDhEtEMrLRW74qheF4d6CfGcSawkwc35Lirr3tPm9DhJ1ZqsALOVa
	JtFpy0JduMhjnVVhr5XNlw8EaMZo8ANGAA9dzWoTtG7qMMdkoHpO9vtnTrfiZzOP4AL362BD2jqr8
	/0qxt1cXj8T2vv1VX5onmPD47nxMt4Iv/hvgHzD/asl50JM+tkKqayjD8y2QbXssC+8g4oCls4kZ4
	/ZuKZ9+7UmNJHeYppEjzrwAcYjNNogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIlA-0004TR-0W; Wed, 06 May 2020 12:02:44 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIkq-0004Co-NB
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 12:02:27 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:6572:4a1f:d283:9ae8])
 by baptiste.telenet-ops.be with bizsmtp
 id bQ252200e3ZRV0X01Q25VZ; Wed, 06 May 2020 14:02:10 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWIkX-0008QN-HP; Wed, 06 May 2020 14:02:05 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWIkX-0008BX-Ej; Wed, 06 May 2020 14:02:05 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Matthias Brugger <matthias.bgg@gmail.com>, CK Hu <ck.hu@mediatek.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH] soc: mediatek: mmsys: Drop <linux/clk-provider.h>
Date: Wed,  6 May 2020 14:02:04 +0200
Message-Id: <20200506120204.31422-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_050224_924479_31981A1F 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

After the split, the mt8173 MMSYS driver is no longer a clock provider,
and thus does not need to include <linux/clk-provider.h>.

Fixes: 13032709e2328553 ("clk / soc: mediatek: Move mt8173 MMSYS to platform driver")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/soc/mediatek/mtk-mmsys.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 05e322c9c301ad91..bb5ccd5b0386c041 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -4,7 +4,6 @@
  * Author: James Liao <jamesjj.liao@mediatek.com>
  */
 
-#include <linux/clk-provider.h>
 #include <linux/device.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
