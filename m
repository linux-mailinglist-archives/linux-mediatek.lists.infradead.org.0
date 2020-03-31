Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D5019A128
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Mar 2020 23:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1gEGtoO71sZs/9EEmARjblamC55mVlKOTJExUIHtuIk=; b=HRzV5lgZwQpEom
	9TC8+YDyDwfIex7ttg7kPO6WG9ZxUPMFb6q5eg7KpcVFhSFysJO7kNwtMOmHoKNf3HVEBqY2or82+
	Xdr7wONfRTmg+/i7fYiNzbQNBAEFiAvqzymrZJBXomVj94OqTpc+jXf4fmjKo1zNuKJJ/UzQpyWIE
	Yp2fgBLDDFsR2WcQNgA96m9NsPvTsDJTeHU945thCRWWb3VGmwQTlLvS0kV5j7byrD5rQeJG9uuTE
	uTT4k1/bpubfUx7faIuXvKvT0t6DtWvZpGnWI4hiN4qT6sMX2P5Ev8488R2YZPmy4Qo+C9d+ziZYb
	xQn1TPJOsaX1ASWcmKSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOiQ-0001DX-Sk; Tue, 31 Mar 2020 21:46:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOiE-00012P-EO; Tue, 31 Mar 2020 21:46:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 25A652970A8
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: mark.rutland@arm.com, ck.hu@mediatek.com, sboyd@kernel.org,
 ulrich.hecht+renesas@gmail.com
Subject: [PATCH 1/4] soc: mediatek: Enable mmsys driver by default if Mediatek
 arch is selected
Date: Tue, 31 Mar 2020 23:46:06 +0200
Message-Id: <20200331214609.1742152-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_144622_614999_34C82506 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Matthias Brugger <mbrugger@suse.com>, hsinyi@chromium.org,
 linux-kernel@vger.kernel.org, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@kernel.org,
 matthias.bgg@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The mmsys driver supports only MT8173 device for now, but like other system
controllers is an important piece for other Mediatek devices. Actually
it depends on the mt8173 clock specific driver but that dependency is
not real as it can build without the clock driver. Instead of depends on
a specific model, make the driver depends on the generic ARCH_MEDIATEK and
enable by default so other Mediatek devices can start using it without
flood the Kconfig.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/soc/mediatek/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
index e84513318725..59a56cd790ec 100644
--- a/drivers/soc/mediatek/Kconfig
+++ b/drivers/soc/mediatek/Kconfig
@@ -46,8 +46,7 @@ config MTK_SCPSYS
 
 config MTK_MMSYS
 	bool "MediaTek MMSYS Support"
-	depends on COMMON_CLK_MT8173_MMSYS
-	default COMMON_CLK_MT8173_MMSYS
+	default ARCH_MEDIATEK
 	help
 	  Say yes here to add support for the MediaTek Multimedia
 	  Subsystem (MMSYS).
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
