Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0A41DE657
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xv02LsBjwJjBW/VMfFITHCayfKlSxhx+2i0tGrmSolg=; b=aYuTALw+Ff/tuX
	AzOpNwoBEa7yRloB8qdpsijC5CdNJth42JGL/TGfFttCe3OOLf/3pGxUqWf38gaN/kHaYvakJM5XB
	6oSklflmQkg+2/PcrrLqdo0Z4AJgKTTGZqPLui8ISM2HD8OfrbbLKOFiBhNSemwyL73IngkmCHlBZ
	TaDMuhcRbHQr9O/0tZIcjsgNzfpMPIL6iUbl7isuDl+5ixFqiu5q7mUmQShtkxl2Qc0jt1kyie/uI
	SZWV62jV1b1swvE5D1rurr1ZxJu8wVR64dzqGEq1ZcSyWX527M5Q5CJ+R9RKnq8FvTEpkad+wk42f
	2z8vFjPLSHVh0rrnDP8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6Uq-0005ZH-NV; Fri, 22 May 2020 12:09:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6SX-0003Lb-1D
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id z4so8432283wmi.2
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=I7AimdvAZOh1g/UByPwXTG3z06QWyuPRsDF0Y6Dye4Brq8bAXcTR36UrTTrcFRmV0z
 ApTCDxKUugYCbGqBd6jh4pdAjVZB5LNOe18if99Ec/1JIe97HNEOCfXfXu10oJmV6OmW
 9t9TvWm6ZFXkqUfNvBW38GHqf+KiIY4Ck6Bq5FNSeB4KhtkBbVYBv+DU7/Q4cvNK6bT2
 boLjHlkp7E1pzNHDzgB/i418XwGyHKXG/cG9h7nTX2pmZoouvxti476UwfnpJePKI4ng
 bURCFe9jqs2O8IdxAxqztdqMugBYRUqdY248cJi+D+VgWvkQ0FT0ORMOETRpJjaJitXR
 6orA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=75HMiSxkO2iGkQyQ4GVIN4XRI1pdsKTRs1XUFo380Tg=;
 b=klglC5wcDR3hxMAhgIoJnL/n0oVpkmJ+0nQ+D0p0wCccSydX+26+QmD0/rpHZTun/g
 CHXgvGJFC1vp7NgCgJ9aqGwHB//1U/GoKHky0X8suGoJBRoukcwi/K0SkDxrCbAEFfYM
 //P/EH4EHF/NIfmTv7DoaPc6pW8J2MAFmKEMjSC4cvIbBfIYq+cZTmfJQVdzHn8tiKXe
 MXmBSXUTGTiuOB+I1mOHPryT9W1yUKHQvRoSK4HD/FE+f5Gp4j2woM5prxwRNHMSQoLF
 /QxnBEkrVaSGLhTqZ7U7FktgAJiAvh7hRDhuVjFuvhAKnjH5GOcCE2mEP6Csis8Zp4KG
 o5Pw==
X-Gm-Message-State: AOAM533/GsyoizDPN7VGohRn7qHSgqHTqGXGM2dhA55XhCv9PAdqC9AE
 hGtrX6PxPxdkXxsevTs/nDhkeQ==
X-Google-Smtp-Source: ABdhPJwEi7VyHt7K7+omiVssnygbzQxiUSCPmAIEWo/ISCAmaztuxM/ZHSeqf8g+5/jkvW5bZaKWMg==
X-Received: by 2002:a1c:e188:: with SMTP id
 y130mr14051662wmg.105.1590149247468; 
 Fri, 22 May 2020 05:07:27 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 05/11] net: ethernet: mediatek: remove unnecessary spaces
 from Makefile
Date: Fri, 22 May 2020 14:06:54 +0200
Message-Id: <20200522120700.838-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050729_124707_2AB42B6A 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
