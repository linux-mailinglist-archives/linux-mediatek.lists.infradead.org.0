Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED57013A007
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Jan 2020 04:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XKhy+dKxnN8o4RcSC3y5MRYoR+LqOfqsSgponTH0TYg=; b=MY99m0cZeMu27L
	bSsQDeAJFg652vbBqFrEijgEMP+SZeoaRLYJbY25GeU6HbrEeAUBl+Soqg2Zx2b7d+XsApEZWG7pd
	6maKF5LQ4IHzmkLT/60hlojXaVDGFhFl/O2QGyL5+Ql58w3sydtqXbJOGi7M0CUhnLn/H0BXCeN0j
	VjQooqYruV8so/wskxsKtDO4l9lQPi6R1K2uLhl4Oe+o86+ady6Jzi3L+m+lIf4UilB1wjn3JmTbA
	jECFDj+SuBfLL6VVQukDHMZCgfr6ZNOXEBC+jErJd38TMCwiO1fGxstLv2He0k4hqyHeUqwLg9R5Y
	qsuQOFoktVSD0Tjmo9Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irD7Z-0007VT-J3; Tue, 14 Jan 2020 03:44:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irD7W-0007Uo-AO; Tue, 14 Jan 2020 03:43:59 +0000
X-UUID: 50631215eb2145dcb40e28b5e3f2442f-20200113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=l1LB1RrzPHfxgwSbc7kiDcv5fjLNgTXp3z5W5A8tXfo=; 
 b=cge5ak1NgoL0D1u0L3NLyteIGO/YYp7R+nY3cwdIp7y8vmRPewpD77E3qxxR5+j7oK3gyAT01V0XDQ54yzdckUJKx2I7TUAS1UrdRJdFTVKLmdHs0OSzTOqn14KCf0w/yP7Lu4i/eqF4NPTVVoJ1Bjr4VMVd/YAtSKtBcp9+eH0=;
X-UUID: 50631215eb2145dcb40e28b5e3f2442f-20200113
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <maoguang.meng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1018291786; Mon, 13 Jan 2020 19:43:51 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 19:36:22 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 11:35:08 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 11:36:31 +0800
From: <maoguang.meng@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: media: platform: VIDEO_MEDIATEK_JPEG can also depend on MTK_IOMMU
Date: Tue, 14 Jan 2020 11:36:12 +0800
Message-ID: <20200114033612.16904-1-maoguang.meng@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: D58AFFB3BD81A49B5EFA5B0B1DB085E38D02C470B92696A388E40B4F79B922552000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_194358_371241_FC682679 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Xia Jiang <xia.jiang@mediatek.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maoguang Meng <maoguang.meng@mediatek.com>, Sean Young <sean@mess.org>, Arnd
 Bergmann <arnd@arndb.de>, Neil Armstrong <narmstrong@baylibre.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Maoguang Meng <maoguang.meng@mediatek.com>

mediatek jpeg vcodec driver can depend on MTK_IOMMU or MTK_IOMMU_V1.


Signed-off-by: Maoguang Meng <maoguang.meng@mediatek.com>
---
 drivers/media/platform/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index e84f35d3a68e..85377c88e91a 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -200,7 +200,7 @@ config VIDEO_IMX_PXP
 
 config VIDEO_MEDIATEK_JPEG
 	tristate "Mediatek JPEG Codec driver"
-	depends on MTK_IOMMU_V1 || COMPILE_TEST
+	depends on MTK_IOMMU_V1 || MTK_IOMMU || COMPILE_TEST
 	depends on VIDEO_DEV && VIDEO_V4L2
 	depends on ARCH_MEDIATEK || COMPILE_TEST
 	select VIDEOBUF2_DMA_CONTIG
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
