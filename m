Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D961DB1AA
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 13:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xv02LsBjwJjBW/VMfFITHCayfKlSxhx+2i0tGrmSolg=; b=s6IVQy1CUalYlr
	t/82xOqHZPfQ61vDzwoxQ3TCvR1kic2Yrv8F4yF8wiknGhBNom22elD1/uc4dkif7Mte1+hOJB/a9
	i9ZMW/fKtft05fCN6cXkjyHB5q4gmIrC1TqBLlzIp22l6zMg8nwzstiQQOZBhI6yWs5MvS/NYwD1P
	GRKhYHYf48nrScUKbgzt7qXY5IS7vRut6m6cXSzR2GcbL42KX/ZWe897lNJRAbMY1UIMuQAirGOiz
	cCr09e9wMflUXdjUnaFXBbWQ8PktUrbnbL75UrXs8QfRMr8Hqo0/tz3/evgnu2NR6yPYtWhKla4dH
	8ODcGb49IyWqHDfLuDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMsi-0008Op-GI; Wed, 20 May 2020 11:27:28 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMqy-0006wu-62
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 11:25:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id g14so4505580wme.1
 for <linux-mediatek@lists.infradead.org>; Wed, 20 May 2020 04:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=f02nBXwLb4+yDOpRal5KJVxXzopqw7/nIX6xAZeUsGIgPvualoU9kAFP7hn05cf+Nt
 4iN992z6W9yhQF29Y26ynXaCtz+6FsZbP8aBQL1h2coANBLn9o1CgvTQlPIoaSUGQoU5
 qtE7Kg/XGNnDOtxs2MiIdXenBYl4gc/7g7JSA0xuF0npzrYh856vFbLpuh7EWgQel/yD
 +PJzkzPyDmCmB0wgJ0bh0iBQLqQNa1bUi26Wvj+iverCeG0+igs7RlReEDzBCf5hOei/
 UiGA+kRB/lRVBdgGPOhPKZWo3XcjKsYd7C0FQOUoTPHRZ4Gl8kDEn633FffNuzEXzVHE
 LLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=qO9nsdZ3zK/uAHXJXnfCdSr5NKOraFmP+H5agiCJtJwbdGPQy/rxselmngda2o1SLh
 9fkmJhjmhqfrHFzMrIiIw3CiF/lHjk1AjuONtQD8I67KotLZ19qu3PNHu196l1iJRQ2o
 Z/+xfjssqykU2jRA1osJ3e1DM3jLvmykVN4IjKd6g6Ct0erOv1cMQalVz4MCOfNs7lfX
 voleZDmS1aUyyzzzDpUH7fT3Nouz++/WFJHG7Y24l5M4QxcBhzrbSMAhbDS64PdGzc0R
 0LCgUc1gOxvVO5SjSFI0xLhOWpZ+0H+WqG0y5flKJXJB816SVtQbziCxoZEoHblltgJ2
 8n6Q==
X-Gm-Message-State: AOAM532JNGExY+NYvhJwAv4mAbnZ05zki9tJK/5l1fc8v4S0Ej6HdJzh
 HdrKOmACtAI2DnELmE1QwCz9oQ==
X-Google-Smtp-Source: ABdhPJwE0xHr6PeSbtA1xNoXhD2SOoG7eWG3GrsBM9eyrqQ/EG9y2X0SgSbOAAb2NAS+YgXTC8DuJQ==
X-Received: by 2002:a1c:2184:: with SMTP id h126mr4173395wmh.122.1589973938809; 
 Wed, 20 May 2020 04:25:38 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 05/11] net: ethernet: mediatek: remove unnecessary spaces
 from Makefile
Date: Wed, 20 May 2020 13:25:17 +0200
Message-Id: <20200520112523.30995-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042540_283014_2329F05B 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
