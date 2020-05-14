Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA891D2970
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 10:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xv02LsBjwJjBW/VMfFITHCayfKlSxhx+2i0tGrmSolg=; b=jyu22f/d9G5hwT
	t4ImDvMIaGZNCQd6GgxQsG6PBIzkT37CZHjw6CAKr/zBku8fo+obTD2yLpICuLZeBc8pNksgep5wP
	Ppc1+3PZI6SqCrxCnxsQ7O7q+5JBn+LQfgeAiWEW8+Qh1xW1KEfSciVbPORoge183TtDZAkd4hayC
	aCnJ2dQl7uJNv1+UglYghFZT0pY3Az61d/+UAClk/R3Pw0wATI0h3T70LMCHScKjcNSZT4SHxMR+K
	7rZjddWAjbjrUvzht1kiDSjTTw2hGcE9SwPHNf1T7mnI0XYujOpr5dRmoWepPc09nzeHpsTY2kSeX
	+WskRm5B2W0OHYG/wIIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8oV-0005Kl-E3; Thu, 14 May 2020 08:01:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mr-0003Tz-IE
 for linux-mediatek@lists.infradead.org; Thu, 14 May 2020 08:00:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id i15so2566588wrx.10
 for <linux-mediatek@lists.infradead.org>; Thu, 14 May 2020 01:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=SidQb2k3EhXCryAgRq6gIPuNO1gSc1ymSxmVWmaAMjWgIA8V7nqMU6gzB5DHBHPwUA
 tbB5YxAQ3a8Y9XCmyxdwx7HmOh5WdFDKBHtWMJJxPLgeXTgBOgqAMBm+PK+eh5D7yM+v
 8HA+rZQ5NsDizXjPwTnrqGlHMsaAXQAvKtARpjRHk0erwPsnkhwsgB0cO59MoGtN4HyH
 Sso5t3yIewzdpRasYjH4Buni7el0CFRHSV9X6JcQdvImZbW9asceazSSx6KVXVW+eluY
 nN61T0d4cD8Hl5LM8eWKTtX0oGIz0iIvfzksYD3TNEzS7mmVo1utx1a2uqDICPUVNhHK
 fhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=JyTrJy+idJyWOvbWf4gHI1/NkmaIftyjWeBXCMXszAZxTuQEcwy7M99iAJLrylK2xI
 t6kCughJhjKtOrZif4SiWQfJM+xejx9C1t+WZmRESlDQc2ajEELgrsmGDBCm83kQ+mw6
 ut7+P5cfRQRwAj+OJa37Oe9Mk9HdDzOSocU1RhcmrVOyyq0B+Zbp6PG/fufrnplw8y++
 U5TQZmC/az+vyXJdcSH7CGBpNGft9A14hhfMp7CSsyUTc5McDflzTgB2nnfaS2dQ4lgW
 OKgIvlEVdVX4yfoSMlZWvbaP/gxp2XAWeDLUyPaxZOG9Rx/aHyn/tKPHidGhTbtmrslr
 8CGg==
X-Gm-Message-State: AOAM530aGNd9RSGGYx7I6TYsV4xjcOwTItqQ2LDZb8xC17TXY+dv68dt
 n8RrQ4gJuOn3dSHPD4FPy3Uk6Q==
X-Google-Smtp-Source: ABdhPJyPB8tR3ALwj2/06aB+MU3MgeCuCaNoqPzuspDC4TKtFqqj7Hvg40WVJk8Hlp8ZczryagK4ew==
X-Received: by 2002:a05:6000:1104:: with SMTP id
 z4mr4196133wrw.57.1589443211875; 
 Thu, 14 May 2020 01:00:11 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:11 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 05/15] net: ethernet: mediatek: remove unnecessary spaces
 from Makefile
Date: Thu, 14 May 2020 09:59:32 +0200
Message-Id: <20200514075942.10136-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010013_706790_9319085B 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The Makefile formatting in the kernel tree usually doesn't use tabs,
so remove them before we add a second driver.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/Makefile b/drivers/net/ethernet/mediatek/Makefile
index 2d8362f9341b..3362fb7ef859 100644
--- a/drivers/net/ethernet/mediatek/Makefile
+++ b/drivers/net/ethernet/mediatek/Makefile
@@ -3,5 +3,5 @@
 # Makefile for the Mediatek SoCs built-in ethernet macs
 #
 
-obj-$(CONFIG_NET_MEDIATEK_SOC)                 += mtk_eth.o
+obj-$(CONFIG_NET_MEDIATEK_SOC) += mtk_eth.o
 mtk_eth-y := mtk_eth_soc.o mtk_sgmii.o mtk_eth_path.o
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
