Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1896115288B
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Feb 2020 10:39:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyM9YyXLVyuAEaWpwUxg2xwPZ+OArY6vtEsJWHXx0js=; b=hNITZbIjl6vbEj
	+3WEahULTl40E7M+LPdYIBH3fd7I1N8ZkaOMhweXAIU1/bXd9YRo5FbL8Hwssu2Ex/AbbPAg76Mdq
	qfLOVZlISrl8VJGOb63FooeJ8RtYrZMooUYfgLsRdRK3nPpuVC5g52pDvD9TCyeYBt2RNIJ3WOX/X
	CnL3Ymo48canJ5JR0zp5lh5jElFgBBaRTFDbwBSnej5YLYgv7hYrnbod05UsY1NN5slrislCObH4o
	+LO095eCiyr1Hsa6NY6xOxL/nkwmRbwYvkuzqP5eoze57JUgGlDd5YnnBpcTdYUKsjJqIU/rSKWOT
	/uSXcqnTwxgLR0QRCcuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izH9H-0006D2-KP; Wed, 05 Feb 2020 09:39:07 +0000
Received: from mail-qv1-xf49.google.com ([2607:f8b0:4864:20::f49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izH8U-0005Kg-U6
 for linux-mediatek@lists.infradead.org; Wed, 05 Feb 2020 09:38:20 +0000
Received: by mail-qv1-xf49.google.com with SMTP id f17so1125950qvi.6
 for <linux-mediatek@lists.infradead.org>; Wed, 05 Feb 2020 01:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3xSqtFmkuhmH7fZvAamf8hbYq+ufSxebJYVWVye4C7Y=;
 b=bbLPD11pJNP7z0qv5E33IZM/9P32aN1BiTDiclSD91ktgW9ymyd0g4owTP4KK+LwzR
 K+WhzY9i2aokt6o2xdpnl66xUsaFQ/cDWKeK+44fu2Pbcy4K9+6h5BaapO4wA5UWfHnl
 qbqglmyx1tjGdqR9cBn07Y7vtOUMKq+ekzWw0ihual64ADtttR8wm0JHH22mQjQLk9tZ
 EVwoS/Og+xRMjTYucYE69Vgyhtn/5WFTpOFLwW0YekDxIDgqEr9i0CBXDjAlmbK9emD5
 7EQH5+S2WcyAw6vWVOxga4H6jbS447UNf1GPb9C0PdxteybJaxwfpgzXs94lyNCrOIN2
 Hq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3xSqtFmkuhmH7fZvAamf8hbYq+ufSxebJYVWVye4C7Y=;
 b=dngxnPc97IKmM9pzg0cmfu16QWwpUOyMw2lBiFpf/nLFPSksw413wQQgu7TMmLCbSc
 kqpQfj940qMRMB0ECqbmx/s4bOVZJyIiUlmiGaT1daqLB3+74VbLd0eLHtCwAHMVKEUB
 fNZYxnN6cD4qXLrd8Fu1PIrGNhaUSjFiPJSDtIUaUT0nun48MSGEdyGID1MYgwzDIuIn
 ZPk4j4mFoW2vkx65v4+46UYCFk3fUxDlRHgaqi9d7+N8Th4PfMpR1JZBo8QkTHmsQL5s
 yhGrxaPHTUJ94m0/uxhFwu6eq3t7GV4Zsbz5kpNlOxkAMAQxJBh+KzQl2GdcUUk3RyEN
 7UKA==
X-Gm-Message-State: APjAAAUWTNNWZK8CPjDjwq20Hk2EOfZgLGsDAtIxwJ+hzcjgSpaIlFz2
 UF9IJ7/dqJ5y3B4pbHd2QmjOzLsZ/Kkf
X-Google-Smtp-Source: APXvYqx2aVafJaBi4FAJbVRsUMEjozIunQWr9coCiHXvYR3Vgt99h+edhRyud9ckFrhlWW7s5OKnOxs8PRRW
X-Received: by 2002:a05:620a:2043:: with SMTP id
 d3mr32700550qka.279.1580895496183; 
 Wed, 05 Feb 2020 01:38:16 -0800 (PST)
Date: Wed,  5 Feb 2020 17:37:45 +0800
In-Reply-To: <20200205093745.79298-1-tzungbi@google.com>
Message-Id: <20200205170416.3.I253f51edff62df1d88005de12ba601aa029b1e99@changeid>
Mime-Version: 1.0
References: <20200205093745.79298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH 3/3] ASoC: mediatek: mt8173-rt5650: support HDMI jack reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_013818_994928_CE529038 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Uses hdmi-codec to support HDMI jack reporting.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/mt8173/mt8173-rt5650.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/mt8173/mt8173-rt5650.c b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
index ef6f23675286..849b050a54d1 100644
--- a/sound/soc/mediatek/mt8173/mt8173-rt5650.c
+++ b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
@@ -11,6 +11,7 @@
 #include <linux/of_gpio.h>
 #include <sound/soc.h>
 #include <sound/jack.h>
+#include <sound/hdmi-codec.h>
 #include "../../codecs/rt5645.h"
 
 #define MCLK_FOR_CODECS		12288000
@@ -98,7 +99,7 @@ static const struct snd_soc_ops mt8173_rt5650_ops = {
 	.hw_params = mt8173_rt5650_hw_params,
 };
 
-static struct snd_soc_jack mt8173_rt5650_jack;
+static struct snd_soc_jack mt8173_rt5650_jack, mt8173_rt5650_hdmi_jack;
 
 static int mt8173_rt5650_init(struct snd_soc_pcm_runtime *runtime)
 {
@@ -144,6 +145,19 @@ static int mt8173_rt5650_init(struct snd_soc_pcm_runtime *runtime)
 				      &mt8173_rt5650_jack);
 }
 
+static int mt8173_rt5650_hdmi_init(struct snd_soc_pcm_runtime *rtd)
+{
+	int ret;
+
+	ret = snd_soc_card_jack_new(rtd->card, "HDMI Jack", SND_JACK_LINEOUT,
+				    &mt8173_rt5650_hdmi_jack, NULL, 0);
+	if (ret)
+		return ret;
+
+	return hdmi_codec_set_jack_detect(rtd->codec_dai->component,
+					  &mt8173_rt5650_hdmi_jack);
+}
+
 enum {
 	DAI_LINK_PLAYBACK,
 	DAI_LINK_CAPTURE,
@@ -222,6 +236,7 @@ static struct snd_soc_dai_link mt8173_rt5650_dais[] = {
 		.name = "HDMI BE",
 		.no_pcm = 1,
 		.dpcm_playback = 1,
+		.init = mt8173_rt5650_hdmi_init,
 		SND_SOC_DAILINK_REG(hdmi_be),
 	},
 };
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
