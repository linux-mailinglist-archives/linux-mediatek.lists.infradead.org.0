Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D852C31AA1
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 10:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PwJ/CAARkF0mtEcjIgI8pSNu4O54lMddMjtXBCr0Nhw=; b=KyRjRsrVuzwe66
	fWrAVVIHDmkjOWuCQ1uHIkPe+pOgRniAEFNW2Or9CCM6in5QSFpc79+qUrCT7kcyWPieMOP1bWc1U
	yFOP0aCNaEvBnT8hJGSGbjbY8+u1DEsyTjpDIIWk6hwYt8orCsafo91OzqPW1gUp348DDcSJH2n8r
	4T1tqpjGgbx4en5x9RmTv5D9L1lyer7xeMJCDs7BqLc6vdiPuUDDF2Hlr+IKqqVXZVj4FhA88DP/K
	12d48FqldabHlDd0HJAPfa8rYCvxeXCJiyHUui9kLru3ZcBRTu2GpzSmfH+taYlkxR3gYlPJOOYly
	T+NNh+wGsuCNWGetJg4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWzka-0000Jx-Qd; Sat, 01 Jun 2019 08:52:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWzkS-0000DO-44; Sat, 01 Jun 2019 08:52:22 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AB1817E6A55325AF0A27;
 Sat,  1 Jun 2019 16:52:11 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Sat, 1 Jun 2019
 16:52:04 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <matthias.bgg@gmail.com>, <shunli.wang@mediatek.com>
Subject: [PATCH] ASoC: da7219: Fix build error without CONFIG_I2C
Date: Sat, 1 Jun 2019 16:51:44 +0800
Message-ID: <20190601085144.13832-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_015220_385468_38B48DAE 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix gcc build error while CONFIG_I2C is not set

sound/soc/codecs/da7219.c:2640:1: warning: data definition has no type or storage class
 module_i2c_driver(da7219_i2c_driver);
 ^~~~~~~~~~~~~~~~~
sound/soc/codecs/da7219.c:2640:1: error: type defaults to int in declaration of module_i2c_driver [-Werror=implicit-int]
sound/soc/codecs/da7219.c:2640:1: warning: parameter names (without types) in function declaration
sound/soc/codecs/da7219.c:2629:26: warning: da7219_i2c_driver defined but not used [-Wunused-variable]

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 6d817c0e9fd7 ("ASoC: codecs: Add da7219 codec driver")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/mediatek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 933ab51..111e44b 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -133,7 +133,7 @@ config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
 
 config SND_SOC_MT8183_DA7219_MAX98357A
 	tristate "ASoC Audio driver for MT8183 with DA7219 MAX98357A codec"
-	depends on SND_SOC_MT8183
+	depends on SND_SOC_MT8183 && I2C
 	select SND_SOC_MT6358
 	select SND_SOC_MAX98357A
 	select SND_SOC_DA7219
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
