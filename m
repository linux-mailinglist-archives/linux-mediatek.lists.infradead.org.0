Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEE88F1B7
	for <lists+linux-mediatek@lfdr.de>; Thu, 15 Aug 2019 19:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=QOjdfkxVOqgia0F4aAzaDx8D5YmXM9q7ZTvOitKa74U=; b=LZi
	cQwCAhJqGJ3zWs2wCsh3Tm+94018MyGSPgzGo/uVz6KFU8+sqvppkpcROXpjCAb82YtrpV0q/3GNX
	GQPE5GkRRQcrFg1yiIBbpnG75nBE8Kfsc1yOHp1gDdwxJmNDMtmHyZ8cOr1GUvEkQ7PWXghCQIc7V
	fugEQSCkcAXpatuzfJy7s2cGLhc4KlFnJxEawPELqd+BbL7l0hIpOCBQvUEWYcFe/rfgNNISdEpS3
	8tgsCaYBHJLCkDBf+BGCjdnqw9M+HsQmwWwkg/pD/nm9DyfahhcyQ0O0KNluJtCrfUepHgMBM/71b
	jP0LUpR7+vkWdgyqK1yv10mwcTMZy7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJKg-0005uO-8P; Thu, 15 Aug 2019 17:14:38 +0000
Received: from mail-wm1-f97.google.com ([209.85.128.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJKW-0005s6-4Y
 for linux-mediatek@lists.infradead.org; Thu, 15 Aug 2019 17:14:33 +0000
Received: by mail-wm1-f97.google.com with SMTP id e8so1421207wme.1
 for <linux-mediatek@lists.infradead.org>; Thu, 15 Aug 2019 10:14:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=As7fyYskNE9XkOFuyeFj945AGI82kd3wgq/f8U00wio=;
 b=W+n0Ey0bVS4dKX8MxsgSpgMunSMsxVbZSQVIe050ppbs9kq6qzhTqfHXb4psS1gc0v
 ZN6FWlbJ8o3OK3iEMKZjdGIVpEaVUG+AkEkFS+49dNhS7ZLEtMdzppmqQVCPfO6OXsz/
 oDCN0RPb0guio+pMvqIpbSip6tL0jxI0OMsR3OtK6YMIDyaQYjPqParqxJcUhvD28IP4
 uxCEcmDtwwewtk76mipvdJnq1kuuWQZ4R5grsyPAdo8l2lGP1FSXxEp/Ni+ZbFnRqcuD
 KpK5SUhpZQPpzTP2naMFJRmWFJL7pYPDmX80V3BXKuTA4bxaP08KDalWcrkSCVLt6bWV
 Ue+w==
X-Gm-Message-State: APjAAAXr7nQS14t4PT9whmqjlhMJ19jpVkPA2X+/s9NdmnCc7A4B87fR
 ftp1Bol1uyXWHReF3V0gSN0QzL5HlJ6WBQxxSWTidRWc0lRP+7o/nCLBBFUSfsc30g==
X-Google-Smtp-Source: APXvYqxiuode0NVZ8lbFOegqGu5x2c1MU+yVh4YqLCjk8cqO5+rrbzH7/Ve24QG7AcQwAFIN0eiUvUYYgA8l
X-Received: by 2002:a7b:c091:: with SMTP id r17mr3481178wmh.74.1565889266043; 
 Thu, 15 Aug 2019 10:14:26 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id z18sm47249wrt.18.2019.08.15.10.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 10:14:26 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyJKT-00051v-PR; Thu, 15 Aug 2019 17:14:25 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 51A822742BC7; Thu, 15 Aug 2019 18:14:25 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Applied "ASoC: mediatek: mt6358: add delay after dmic clock on" to
 the asoc tree
In-Reply-To: <1564980997-11359-1-git-send-email-jiaxin.yu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190815171425.51A822742BC7@ypsilon.sirena.org.uk>
Date: Thu, 15 Aug 2019 18:14:25 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101428_174927_79F5801D 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.97 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, jiaxin.yu@mediatek.com,
 perex@perex.cz, tzungbi@google.com, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: mediatek: mt6358: add delay after dmic clock on

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

From ccb1fa21ef58a2ac15519bb878470762e967e8b3 Mon Sep 17 00:00:00 2001
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Mon, 5 Aug 2019 12:56:37 +0800
Subject: [PATCH] ASoC: mediatek: mt6358: add delay after dmic clock on

Most dmics produce a high level when they receive clock. The difference
between power-on and memory record time is about 10ms, but the dmic
needs 50ms to output normal data.

This commit add 100ms delay after SoC output clock so that we can cut
off the pop noise at the beginning.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Link: https://lore.kernel.org/r/1564980997-11359-1-git-send-email-jiaxin.yu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/codecs/mt6358.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/sound/soc/codecs/mt6358.c b/sound/soc/codecs/mt6358.c
index c17250aab2d0..bb737fd678cc 100644
--- a/sound/soc/codecs/mt6358.c
+++ b/sound/soc/codecs/mt6358.c
@@ -1730,6 +1730,10 @@ static int mt6358_dmic_enable(struct mt6358_priv *priv)
 
 	/* UL turn on */
 	regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_L, 0x0003);
+
+	/* Prevent pop noise form dmic hw */
+	msleep(100);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
