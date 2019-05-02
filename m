Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61D3119D6
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 15:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BfxwqH5jQwWlqrn+2rGN3Pnb+HYiB5bD85zULj/EQqY=; b=UKvHzgrrKe3wNc
	hiAADgQgoq06x9cputMByC8IR60PGTt2cLJWP7fcyBR9FlbJRpgEce1lxUwsw52+W8lCFOdrM4nJO
	gJ2RWgzYYjPFi6hTQ7dd8uI5sxUYe6UmWTigmy/BBU1LTYIPPZ+AzX6iJO+w1SO5YiBo+VALsmdZS
	6muja0dWBaQKuLWTrFO94WQlOKyJzammRbm5aw2mUk9oaGN+8k2/YXrd/JqAE2tF4W3bY7gO7McFC
	/neGwm4sjESW/OHGhvzyQz54wPUUyWa7J4G6bTc51+Dth4LrpI8Ddn0HpbnJUjIsbC1yE5pacQ8E4
	irbyFl13XyfFAkQUEjxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBVl-0002Pz-Lr; Thu, 02 May 2019 13:12:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBVc-0002IO-Os
 for linux-mediatek@lists.infradead.org; Thu, 02 May 2019 13:12:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id t76so2775554wmt.1
 for <linux-mediatek@lists.infradead.org>; Thu, 02 May 2019 06:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+eKIBFVCyfU3z9K0Nkrbe4x8CjJi0tFioNqDYhFc5R0=;
 b=dr5NFFsHzVONa3dE3FwJEUNK3jJWutA5uirz+FdNEsOKyW9jtLLjOprjU7P5Dd/0rg
 2eWQ1QAm/Edl/2pyCcl5BwSZvKFykMHnrZlBmf58HKiOVkhrGLrubYLoZlHrnkWRQBgQ
 8CE2/0KNaS4NvFw8Fw3kypj1SKzhH8ilkPjtYzjiUsYZ9GIA08s4+U8kkP3LJGdcFxCc
 DfNYfE6omUGxYetreHAXNTxWjIGfvwdjqaxBmPS9txbdThNiFnKk/Z69050gYJcAIYda
 jWXPINAK5gn7kg4xzcbEHfmz0UWNK61kgKVY03AgBUMFosoIu8AMxw1VRicxiuNfPoUM
 AEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+eKIBFVCyfU3z9K0Nkrbe4x8CjJi0tFioNqDYhFc5R0=;
 b=aZuP8n0xS1/UxHV9plxQVKcyHWq+4MLHQf8LLCwv3tB3ca5ANsmyPjcJsjEBWxiVs2
 5JNSkD4UEYEw3zL0niAxgkUH+8sXzcUFNX34x0zgD/q8SX2y01ee7VbHFJ0wwnn5DeWJ
 gvtThmgpa8JLCJU31iGM3GhXcxukL+FYccPcTqiEe6G9OhZuN7w9V5J4SVsrRQaU2CMh
 voVoBBRZSkH255Z5q4344Zwvfdg4IN+mCXQKj6C3/pWqNRB2SyESMe9Qvr67gb3q484A
 9CFkz5kTilt2OivRshd46bCLBN3K0cwGDu/XwM/Y9QsaCJjJ8DNMG7qLQx7lLI63fz4j
 zyLA==
X-Gm-Message-State: APjAAAU7/pB006Xf7sMDIBwZWSnk6zHC2qFu1IAAflq1wL2UV8rOLYfK
 zxLXa9+q6dxhp3M949vRyWlvqg==
X-Google-Smtp-Source: APXvYqzZgK/pMDB9Xf3fEjr0tmm3/b9kba6qmyNpc31/HAcsxLdTuDfW/bsw/tKB5/jGsEYL+pWpdw==
X-Received: by 2002:a7b:c00e:: with SMTP id c14mr2286133wmb.110.1556802737876; 
 Thu, 02 May 2019 06:12:17 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id n6sm8713956wmn.48.2019.05.02.06.12.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 06:12:17 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 matthias.bgg@gmail.com
Subject: [PATCH v2] ASoC: mediatek: mt8516: register ADDA DAI
Date: Thu,  2 May 2019 15:12:14 +0200
Message-Id: <20190502131214.24009-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_061220_941124_0EA897DC 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabien Parent <fparent@baylibre.com>, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Register the ADDA DAI driver into the MT8516 PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

This patch depends on patch serie:
	[PATCH 0/5] ASoC: mediatek: Add basic PCM driver for MT8516

v2:
	* Register ADDA before memif to fix ordering issue.

---
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
index 84fbb5dbbd14..dea9221c67aa 100644
--- a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
+++ b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 
+#include "mt8516-afe-common.h"
 #include "mt8516-afe-regs.h"
 
 #include "../common/mtk-afe-platform-driver.h"
@@ -669,6 +670,7 @@ static int mt8516_dai_memif_register(struct mtk_base_afe *afe)
 
 typedef int (*dai_register_cb)(struct mtk_base_afe *);
 static const dai_register_cb dai_register_cbs[] = {
+	mt8516_dai_adda_register,
 	mt8516_dai_memif_register,
 };
 
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
