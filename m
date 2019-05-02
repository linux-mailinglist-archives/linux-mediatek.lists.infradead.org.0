Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEA8118B6
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 14:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyOUvh+mJRdQLhSNOHndCalw4kFrGpU3/jg6UazXY1k=; b=Xw/rsKqQUNsZ5A
	4KzroaKWntBDdPLNIj2Pk22Heig29OuF7UxE7fKU8OGwOrTpL0igl5WqAsz47QrBfgpgTMcrZu/xz
	Kr1h7jsXRTB1ICP1KykGyf3QfWIPSpzmsDT/J2mvhscuXq+fYEKuR6dwi8omZwnLF8QTAlWtncUnt
	6U6iqhxoZbKzeR/9t8fZxKueumYkSDtR7vuTTbmtLEs0IPDClvpUb+7bUK5jW3qO5KYyfJns2duNW
	42C2z8C0gIwymUISaEXYTVLlvtRPpFbyyT5oQkh27kf/LgC/4MTMHedNivrTIXP615LdsyIaN7GTE
	sAGjFZf7Q97acPqVOwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAYr-0002cD-Pd; Thu, 02 May 2019 12:11:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYH-0001pA-7T
 for linux-mediatek@lists.infradead.org; Thu, 02 May 2019 12:11:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id a12so2990625wrq.10
 for <linux-mediatek@lists.infradead.org>; Thu, 02 May 2019 05:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oCtO7F4iCfswKyRGi7bOSLphK4gIn4iJZV2uNp5ivzs=;
 b=Gn8SvsLQMxKlYfYvb5wfkMqO5ckj8c3meyR1C3aEF7HNubkJ1NYdrJV78Fn4DIcTc2
 750uPQfLMl89SFZVsmnEJSvaPPNSwxsgI9dXKjMCp1D61Qha+89LL/J4SCUdIsk/J0dX
 sFXO4IQo2P0IQtqgww6Tm2hVB0yxjd55TI6Ed3Y9xvMGF5PWOSlwCZlFLC5IS7WPB+sO
 Y0fjL8vgivscCL6P0QoLWuwI5Wsl2E2ihgRT9AewjeuhAB3aMlikCoxqnbCC4x5upxwp
 DFnouu0WnTTIOg6TR60OvVdUtOQULErUwESdhxKc24p93FG6V2sFDU1c8uHzJNKS89oI
 ieBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oCtO7F4iCfswKyRGi7bOSLphK4gIn4iJZV2uNp5ivzs=;
 b=Q2q0gjBnUv/bqxcVymBOPWk6hOwP57e7TrLeYlQortax3SwFZoOawPXrQdRCPjenDF
 Y2cr/J0MrCrxe+VogN6y2iFs5wLtluZ91pnUcx990rvI/nCUYUKpo1WF+YTtPQGAA484
 49U2VdKogMgjpR0oRgpz/U9oc3U76ZOj+DSeHgQB/9D2g1Qu0o8fY1tvhVb3jLCbM+4B
 q3QpSULOc1JIA/J2uskUHc7zLZHW4oBUVdy/PSXgKFUIiuJWcfK5gVqzM8ruE1hZVCQV
 4z4uvtzsU6yKK6dJ0rITiUJDucQCQ2fDS831L5n6x1RcJMjPeJTmrBfMlqd+gLxLU10E
 wKwQ==
X-Gm-Message-State: APjAAAWAvNNOwMzru2ictIxTltWx2+ZCYrOg4uAxhN12LAZzuzUIYP3o
 FF29JaPh68FTtR5LaB9i3TchwA==
X-Google-Smtp-Source: APXvYqwiOYJrXyeXMjSrke5vRgXR13G0kZTQzgHmDuQOjoYmPdNvfpQ6nGVxnTDki5cdAAvppT14Iw==
X-Received: by 2002:adf:e984:: with SMTP id h4mr2580423wrm.32.1556799059924;
 Thu, 02 May 2019 05:10:59 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:59 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 5/5] ASoC: mediatek: mt8516: register ADDA DAI
Date: Thu,  2 May 2019 14:10:41 +0200
Message-Id: <20190502121041.8045-6-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051101_476552_F03B9991 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Register the ADDA DAI driver into the MT8516 PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
index 84fbb5dbbd14..e1fd9290dd8f 100644
--- a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
+++ b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 
+#include "mt8516-afe-common.h"
 #include "mt8516-afe-regs.h"
 
 #include "../common/mtk-afe-platform-driver.h"
@@ -670,6 +671,7 @@ static int mt8516_dai_memif_register(struct mtk_base_afe *afe)
 typedef int (*dai_register_cb)(struct mtk_base_afe *);
 static const dai_register_cb dai_register_cbs[] = {
 	mt8516_dai_memif_register,
+	mt8516_dai_adda_register,
 };
 
 static int mt8516_afe_component_probe(struct snd_soc_component *component)
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
