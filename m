Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3C01C57E7
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 16:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xv02LsBjwJjBW/VMfFITHCayfKlSxhx+2i0tGrmSolg=; b=HEvck2E5spQ8go
	eSbJJy7sVd7Ev0HGHaxeY5k8EzZN1ijziZ0Qi7mCgxE2Q3HeY/uwwc/040Hmny3mc23TYwrT98xAg
	n2606OhuZTrhdT38hNiatEL9szTqAtxRyUClLcJ1Ofqs2F0Lh0xr4XVQIqpWkhQSKWkvVS/6ug4Kb
	Zxam/jV6sV6a1UMNWGtbDQHMsyjdQUAmJVF0moMGIzXDL7DCeErv3c/B4m0jQV+PQm+Dkf+erm49R
	jNTQjWlPiITLWPFOKbteeFy5PlLNWZaBjzPNnpljHH6TtTF61F2o1bp8JjcLwsR7kgyA3VsB+UhuX
	ws/pa79huvX+kfSvIt4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyBd-0003pK-3a; Tue, 05 May 2020 14:04:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAC-0002HW-SP
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 14:03:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so2484345wmg.1
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 07:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=ezkHqFr+hwvoCUtODTn4bBFeBlly8HWvJiblO2xXxesyL1/DLZmDW9fWmLJy7I2RQr
 z4/XNFhycXjhViK/BtzNr49/HW22OGYzoaHSo6ikn+HA9TUGYGli4gQkHpqtEr2bTpYA
 yLqoD0FHi+vSoCHjSuXExIZJhGpSCZTAG0sV4/ATtjgUJmbj1QRCYqjecaYdkoQzH5+V
 8JoTWUO+/cc22OXSb3qfzo0V8+qGZc1XoFvMhJN3sR80zAAuS6l5SlPTJ5F5tMVyWHcn
 v3iKjJkQoYARwNCRLfmlHgh7MJVBQOH4mgE7mBdrIK5lphaZhbbBqRK6JZ4soEZ+4q0N
 QkcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=N/noykk1kSwXaxAPMcTLmlbNmsMEvBUzShRtxYFbS/JuKk2qd1aHx6Iwm7tsJADt7E
 o9AwOVsa0840g5iT7M6HLSfQqGBjc95fmgiH8d8r/nNryWZPNvTLESE9brJu7McSn6LW
 /oejJ0XYKbsEmU7/xuF68SGYMxcw/fei/rysw6DQ/xVuHsMt4LaC3rxeUefftioS62mn
 WrhdceOG7qZX/dNUQYn8xrKg5X1YkGq0Pi+Z+IyY2/o4pFFUDvAkdEoz+4AWjeayNIfL
 cbAkf6USICDxRqmM78M28J5dK50XB9t74WM2ycuyRdza45aHHAT9PXFYHmYPuAo815+2
 zmXw==
X-Gm-Message-State: AGi0PubbhOcJ5htxXJ8/Y//GcZgpXGzNwdNmi1oXSPW7iN9RZcNEY50t
 E/xBP06yxdSYQ3vBn5mqT/892Q==
X-Google-Smtp-Source: APiQypInGXnY7PvS5QaUhdwBc8tu5ppIGoSSB01va3t8HjUU2Ty34gk2vT4nfcEtZEackOyvGp/6MQ==
X-Received: by 2002:a1c:a7c2:: with SMTP id q185mr3740385wme.42.1588687389697; 
 Tue, 05 May 2020 07:03:09 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 04/11] net: ethernet: mediatek: remove unnecessary spaces from
 Makefile
Date: Tue,  5 May 2020 16:02:24 +0200
Message-Id: <20200505140231.16600-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070313_000113_8C273182 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
