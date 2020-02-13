Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1A315B951
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 07:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmPCZlJOjiDVowViEt8Ui04BJgxyjuXgBZtjzVauQhw=; b=V9pKY2wV4+MsSP
	DJqCxCrCIdEf3up9aWJtlXxzIYxm1x9fTpCjyayu85B1tVAfctXgkF6f9iOrEr7q4EOcpsUpeyeb2
	jhskB7EUHPXdxWG55GCUxx/xeb2dLZtpsjJuP6FlfTekaIKMsnnXHb4+A1BSNS2ci/ODFO8VZcwcK
	9f8qWzMol66RbIPnB+1WbQhEVeRWwbRb6PMWum4H9i5xkJ7lPFAkFpt/RMv4SOvQcynp1V/Nm+/q4
	iO3r0mSBVhRbFU4jJ7/PAUdw+CbgYrPT+uSba7+u14ro2Vb9uoupT7APnhjAgNaUii+LWP7n4TpAJ
	GPem0H22QsOO05Koy46A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27g1-000517-RI; Thu, 13 Feb 2020 06:08:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27fy-0004zo-Hu
 for linux-mediatek@lists.infradead.org; Thu, 13 Feb 2020 06:08:40 +0000
X-UUID: c2046a1228304c3381e62bb05760b615-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=8VdXVQNyjjqCbi8cPjQQlNmPIH+x+RuRE6RKW8qnHJo=; 
 b=RBYtw9fFXlkv+8Cy7BIynXL3WhZ5Ur7BLmdsWh/f49+O8pwoVDVkM1LOMyhMV3+HRk84rFROagndLQKtXpIngnbHD1fbwFT8vU+5dYyOa9MZGgUJCwV7IOe40CnLlDtg2zugP+7hPT5KStfdEsZeQ1/3wuz9gb6byxuE5vtlIqs=;
X-UUID: c2046a1228304c3381e62bb05760b615-20200212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 701799925; Wed, 12 Feb 2020 22:08:33 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 22:09:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 14:06:04 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 13 Feb 2020 14:07:23 +0800
From: <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v1 2/2] pinctrl: Kconfig/Makefile for building MediaTek
 pinctrl v2 driver as kernel module
Date: Thu, 13 Feb 2020 14:08:25 +0800
Message-ID: <1581574105-1160-2-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1581574105-1160-1-git-send-email-light.hsieh@mediatek.com>
References: <1581574105-1160-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C75554F7328D1A3950DBF2EEBDB12F6218876AF31B46EDEF109019BC3043D8132000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_220838_606964_C90105D1 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sean.wang@kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Light Hsieh <light.hsieh@mediatek.com>,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Light Hsieh <light.hsieh@mediatek.com>

1. drivers/pinctrl/mediatek/Kconfig:
1.1 PINCTRL_MT6765: change from bool to tristate. It is specified in
        defconfig file.
1.2 PINCTRL_MTK_PARIS: change from bool to tristate and select
        PINCTRL_MTK_V2. No need to specify in defconfig file.
      * PINCTRL_MTK_PARIS will be y if any PINCTRL_MTXXXX selecting
        PINCTRL_MTK_PARIS is y.
      * PINCTRL_MTK_PARIS will be n if all PINCTRL_MTXXXX selecting
        PINCTRL_MTK_PARIS are n.
      * PINCTRL_MTK_PARIS will be m if all PINCTRL_MTXXXX selecting
        PINCTRL_MTK_PARIS are m.
1.3 PINCTRL_MTK_MOORE: select EINT_MTK and PINCTRL_MTK_V2.
1.4 PINCTRL_MTK_V2: add this tristate config which depends on
        PINCTRL_MTK_PARIS and PINCTRL_MTK_MOORE. No need to specify in
        defconfig file.
      * PINCTRL_MTK_V2 will be y if either PINCTRL_MTK_PARIS or
        PINCTRL_MTK_MOORE is y.
      * PINCTRL_MTK_V2 will be n if both PINCTRL_MTK_PARIS and
        PINCTRL_MTK_MOORE are n.
      * PINCTRL_MTK_V2 will be m if both PINCTRL_MTK_PARIS is m and
        PINCTRL_MTK_MOORE is n.
1.5 EINT_MTK: change from bool to tristate and add rule for default.
        No need to specify in defconfig file.
      * First rule: determine if EINT_MTK is y or n according to
        selection of PINCTRL_MTK or PINCTRL_MTK_MORE.
      * Second rule: determine if EINT_MTK is y, m, or n according to
        selection of PINCTRL_MTK_PARIS.

2. drivers/pinctrl/mediatek/Makefile: Use PINCTRL_MTK_V2 to determine
        if pinctrl-mtk-common-v2.c is built as kernel module or
        built-in.

Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
---
 drivers/pinctrl/mediatek/Kconfig  | 17 +++++++++++++----
 drivers/pinctrl/mediatek/Makefile |  5 +++--
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
index 701f9af..d48c313 100644
--- a/drivers/pinctrl/mediatek/Kconfig
+++ b/drivers/pinctrl/mediatek/Kconfig
@@ -3,10 +3,12 @@ menu "MediaTek pinctrl drivers"
 	depends on ARCH_MEDIATEK || COMPILE_TEST
 
 config EINT_MTK
-	bool "MediaTek External Interrupt Support"
+	tristate "MediaTek External Interrupt Support"
 	depends on PINCTRL_MTK || PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS || COMPILE_TEST
 	select GPIOLIB
 	select IRQ_DOMAIN
+	default y if PINCTRL_MTK || PINCTRL_MTK_MOORE
+	default PINCTRL_MTK_PARIS
 
 config PINCTRL_MTK
 	bool
@@ -17,23 +19,30 @@ config PINCTRL_MTK
 	select EINT_MTK
 	select OF_GPIO
 
+config PINCTRL_MTK_V2
+	tristate
+	depends on PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS
+
 config PINCTRL_MTK_MOORE
-	bool
+	tristate
 	depends on OF
 	select GENERIC_PINCONF
 	select GENERIC_PINCTRL_GROUPS
 	select GENERIC_PINMUX_FUNCTIONS
+	select EINT_MTK
 	select GPIOLIB
 	select OF_GPIO
+	select PINCTRL_MTK_V2
 
 config PINCTRL_MTK_PARIS
-	bool
+	tristate
 	depends on OF
 	select PINMUX
 	select GENERIC_PINCONF
 	select GPIOLIB
 	select EINT_MTK
 	select OF_GPIO
+	select PINCTRL_MTK_V2
 
 # For ARMv7 SoCs
 config PINCTRL_MT2701
@@ -80,7 +89,7 @@ config PINCTRL_MT2712
 	select PINCTRL_MTK
 
 config PINCTRL_MT6765
-	bool "Mediatek MT6765 pin control"
+	tristate "Mediatek MT6765 pin control"
 	depends on OF
 	depends on ARM64 || COMPILE_TEST
 	default ARM64 && ARCH_MEDIATEK
diff --git a/drivers/pinctrl/mediatek/Makefile b/drivers/pinctrl/mediatek/Makefile
index a74325a..4b71328 100644
--- a/drivers/pinctrl/mediatek/Makefile
+++ b/drivers/pinctrl/mediatek/Makefile
@@ -2,8 +2,9 @@
 # Core
 obj-$(CONFIG_EINT_MTK)		+= mtk-eint.o
 obj-$(CONFIG_PINCTRL_MTK)	+= pinctrl-mtk-common.o
-obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o pinctrl-mtk-common-v2.o
-obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o pinctrl-mtk-common-v2.o
+obj-$(CONFIG_PINCTRL_MTK_V2)	+= pinctrl-mtk-common-v2.o
+obj-$(CONFIG_PINCTRL_MTK_MOORE) += pinctrl-moore.o
+obj-$(CONFIG_PINCTRL_MTK_PARIS) += pinctrl-paris.o
 
 # SoC Drivers
 obj-$(CONFIG_PINCTRL_MT2701)	+= pinctrl-mt2701.o
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
