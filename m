Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 879DE1622F7
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Feb 2020 10:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ic6JJy9RJk6zFwfW8JvDOu3Tv/W3zGwQBseJwX6lz5Y=; b=q43z9Hp+Z1VCEI
	v4A0C+qdrmR7RFQBxeqYEJD5QJ4j2jCfzBnDvUlGcakjZ/jjB2C2iEb39cX+8BlusFFYMNwiLIp7V
	zk8AvNtPN+8CXGgmFjkD/mBGX+SPZFlK4N0vEnsznslh2CHCi6bGPHn2QazJAexFRtwOlAZeW1mSa
	PokqyB66PQsONOc0NFV8PZFuS7+ydo4Hx9RxSEq/0MYpKVvxndWzw5IxVcbU63u2R5l1q4BDT4zSL
	kgzTy5oENGTKwecfDgyKotGcapxFFxdZvWm3palYmkcUlCSS3UN0/4Lr5En0uu1AToBlbiXoNbv4W
	ot6ujt2T1YHRTo0kaDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ynF-0000tC-07; Tue, 18 Feb 2020 09:03:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ynB-0000si-Pl
 for linux-mediatek@lists.infradead.org; Tue, 18 Feb 2020 09:03:47 +0000
X-UUID: 4272b2287771480081467686415fbd67-20200218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=DlP7gUEz9Ia/vWeuqmvg0SYWOZO+KenZYp1SrtwqqiI=; 
 b=iPYhH+mgq9a4ecXMskMpW2j6W0iOSnEnQii/E0EDRx+FE4+1ZlZrLqiLGo7vfoXjH5TlD+cQJtL4UrzjZbwsxEG88BD4J6JIIr9SVGB0wTv1QlepfkNxVpzzrW812Pk++2o1veOusGMl+K4vUhro1nS+NTFcVGqdY0iOuQ9dnHw=;
X-UUID: 4272b2287771480081467686415fbd67-20200218
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1295552657; Tue, 18 Feb 2020 01:03:39 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 01:04:28 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 17:01:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 18 Feb 2020 17:01:35 +0800
From: <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v1 2/2] pinctrl: make MediaTek MT6765 pinctrl ready for
 buidling loadable module
Date: Tue, 18 Feb 2020 17:03:34 +0800
Message-ID: <1582016614-20728-2-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1582016614-20728-1-git-send-email-light.hsieh@mediatek.com>
References: <1582016614-20728-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 18E68612A0FB098274AA7C089CD8263AC2969399CECD05502CBF99E6E5D9818A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_010345_846206_5875293F 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sean.wang@kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Light Hsieh <light.hsieh@mediatek.com>,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Light Hsieh <light.hsieh@mediatek.com>

This patch make pinctrl-mt6765 ready for building as
loadable module.

Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
---
 drivers/pinctrl/mediatek/Kconfig          | 2 +-
 drivers/pinctrl/mediatek/pinctrl-mt6765.c | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
index 4cd1109..c645fdb 100644
--- a/drivers/pinctrl/mediatek/Kconfig
+++ b/drivers/pinctrl/mediatek/Kconfig
@@ -89,7 +89,7 @@ config PINCTRL_MT2712
 	select PINCTRL_MTK
 
 config PINCTRL_MT6765
-	bool "Mediatek MT6765 pin control"
+	tristate "Mediatek MT6765 pin control"
 	depends on OF
 	depends on ARM64 || COMPILE_TEST
 	default ARM64 && ARCH_MEDIATEK
diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
index 905dae8c..2c59d39 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
@@ -6,6 +6,7 @@
  *
  */
 
+#include <linux/module.h>
 #include "pinctrl-mtk-mt6765.h"
 #include "pinctrl-paris.h"
 
@@ -1103,3 +1104,6 @@ static int __init mt6765_pinctrl_init(void)
 	return platform_driver_register(&mt6765_pinctrl_driver);
 }
 arch_initcall(mt6765_pinctrl_init);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("MediaTek MT6765 Pinctrl Driver");
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
