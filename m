Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03958F1CE
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 19:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=0XuSGs1b5CnIQSPcSGmGMDBjYL+4Ej9RLddDYGKMyP0=; b=u/s
	F1Vng8c7zdS9QS3HFnmf4b6G++l3DlJJr+oOkES8x8IBnOa5ViCVVr/11/Dww8R4NHQjH2jPRhbP1
	ZtyP7hJJqS7Zauvl4onNZVF+/n3f6chunO2bHwaicv8nqVYh0MVgGy05+cKQxVn9ZJvTlUGoiNEop
	iNnTi/Ypp3LRdGxgME6xdVK3zdiB6vBz5WaurYBdFzUtjRROEZuyPOcpVkS+ZLo4ZIsamg0aPAflx
	CNvBtHYGewLSkN2IXGGiwN2TuhHyq03SjEkAxHUo5+TsNNeuMUBzTelEu0Cwn6LuQhERMHlFyltWv
	GV7eL0yFSTuln8bhnGhqQHaPEe2goKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJLM-0007a5-86; Thu, 15 Aug 2019 17:15:20 +0000
Received: from mail-ed1-f99.google.com ([209.85.208.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJKW-0005s8-6m
 for linux-mediatek@lists.infradead.org; Thu, 15 Aug 2019 17:14:36 +0000
Received: by mail-ed1-f99.google.com with SMTP id h13so2690698edq.10
 for <linux-mediatek@lists.infradead.org>; Thu, 15 Aug 2019 10:14:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=j3Q6C7993gw6V8zvZYR0NFmKhWxVJbQ4l/W0JiwHC9Q=;
 b=ba79ujCEwbtvWcR1oZ4lwi0u+S/Rm7km6X83NijifrQ1VO2A9Tx7IT4gqQy0dk7uHx
 vDeW8qwLXAT955k6fmWVCImeYeON4vOz+QGhxWhwBXBS5oIF9Qnin41kV5l46Ski5+p+
 DSNM01PMqOGMUomTEL4tKX1Ew+YheovbmNP5HAhiACJu4t8nm28NF2ToooEPWWjV7WVJ
 lujBrASpSMH5xWo4CVeuNzkqJ5v3vODB2y5kMeCnEqhg/ONckNbwRFKiGcPga0/Kgb/9
 btD8kThx+khKSYd9w3nkWKnqNAedxvgeKeNXsl3eJxf45FUPxBlddFouw6He6FbdQd3o
 lbhQ==
X-Gm-Message-State: APjAAAUPlXSq4PiTBuETMFmx8KMOrR+Bgqj9idYvk9a+ibeD/nTI9C6x
 bEz8BpA0vYv8izMeiN8H1Whyw3gbmTwl8pFeE9yuvQjFaLqwF9o0Gxrx7RHII6Z+xw==
X-Google-Smtp-Source: APXvYqxYCczx8aCgUzMwXHJLZGCZ8Smxka+++sWR3i8SWs5jr4tlRb4aLr4f8DeZ9fgCmju0gYCNJk8tYRvS
X-Received: by 2002:a17:906:8409:: with SMTP id
 n9mr5377393ejx.128.1565889266284; 
 Thu, 15 Aug 2019 10:14:26 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id ha1sm11470ejb.8.2019.08.15.10.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 10:14:26 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyJKU-00051z-0r; Thu, 15 Aug 2019 17:14:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8EDFE2742BD6; Thu, 15 Aug 2019 18:14:25 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: mediatek: mt8183-mt6358-ts3a227-max98357: remove
 unused variables" to the asoc tree
In-Reply-To: <20190813144122.67676-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190815171425.8EDFE2742BD6@ypsilon.sirena.org.uk>
Date: Thu, 15 Aug 2019 18:14:25 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101428_253391_F9DFED7F 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.99 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, perex@perex.c, tiwai@suse.com,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: mediatek: mt8183-mt6358-ts3a227-max98357: remove unused variables

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From d59170b42610c7cbc6e96431ca8357a8bdbf592b Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Tue, 13 Aug 2019 22:41:22 +0800
Subject: [PATCH] ASoC: mediatek: mt8183-mt6358-ts3a227-max98357: remove unused
 variables

sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c:50:1: warning:
 mt8183_mt6358_ts3a227_max98357_dapm_widgets defined but not used [-Wunused-const-variable=]
sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c:55:1: warning:
 mt8183_mt6358_ts3a227_max98357_dapm_routes defined but not used [-Wunused-const-variable=]

They are never used, so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20190813144122.67676-1-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c   | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
index 53f54078f78c..272766c1b859 100644
--- a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
@@ -46,16 +46,6 @@ static int mt8183_i2s_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
 	return 0;
 }
 
-static const struct snd_soc_dapm_widget
-mt8183_mt6358_ts3a227_max98357_dapm_widgets[] = {
-	SND_SOC_DAPM_OUTPUT("IT6505_8CH"),
-};
-
-static const struct snd_soc_dapm_route
-mt8183_mt6358_ts3a227_max98357_dapm_routes[] = {
-	{"IT6505_8CH", NULL, "TDM"},
-};
-
 static int
 mt8183_mt6358_ts3a227_max98357_bt_sco_startup(
 	struct snd_pcm_substream *substream)
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
