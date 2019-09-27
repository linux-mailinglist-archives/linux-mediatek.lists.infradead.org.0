Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37A3BFE65
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 07:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TC/SI+5DMhphxZhgT24nkHI8nK1205hnHdifm+hjK7Y=; b=nPxjW8/fnj9XKl
	O7wK2eQWUpiqDUs6akRH5xCHT6I+NfpZtpUWJoYZXoLEfFe3NvtvfvE26BsMNAylr747DzKQd6UIJ
	NFJRmm3pPecvCQIJzzflkDL/qDrcZxS/P64oQdbY6+A7BagFKxT7BW1Wkx1aGTD4F13JFC0WAfXCx
	R2FXSBSSfzy99pfYdetTbq7w3I+6ZqwC7hf6gD1TEoJirJmM7lSPZ10hLnjYCB4ZuKlqD1txcarP1
	xFsfhXp+57bnH+Nve8ZpkvQo+774ij4f/XcAXegA9HPyLpMHzJov2Au4Uw5Ue6Zjo20NQzODxtyH1
	2hlS0cr88mwhauOC3hEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDiOp-0004YO-E8; Fri, 27 Sep 2019 05:02:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDiOj-0004VZ-JZ
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 05:02:30 +0000
X-UUID: 54e526cf6e5d439ead3e0ed1d5ba94af-20190926
X-UUID: 54e526cf6e5d439ead3e0ed1d5ba94af-20190926
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1940081835; Thu, 26 Sep 2019 21:02:21 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 22:02:20 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 13:02:12 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Sep 2019 13:02:12 +0800
From: Light Hsieh <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v6 2/5] pinctrl: mediatek: Supporting driving setting without
 mapping current to register value
Date: Fri, 27 Sep 2019 13:02:09 +0800
Message-ID: <1569560532-1886-2-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1569560532-1886-1-git-send-email-light.hsieh@mediatek.com>
References: <1569560532-1886-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9AE9BB4C62F6457BAF6EABC35F940C01FF1014D91E5D57F63A81A5710AD12F942000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_220229_647228_85961DD0 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Mediatek's smarphone project actual usage does need to know current value
(in mA) in procedure of finding the best driving setting.
The steps in the procedure is like as follow:

1. set driving setting field in setting register as 0, measure waveform,
   perform test, and etc.
2. set driving setting field in setting register as 1, measure waveform,
   perform test, and etc.
...
n. set driving setting field in setting register as n-1, measure
   waveform, perform test, and etc.
Check the results of steps 1~n and adopt the setting that get best result.

This procedure does need to know the mapping between current to register
value.
Therefore, setting driving without mapping current is more pratical for
Mediatek's smartphone usage.

---
 drivers/pinctrl/mediatek/pinctrl-mt6765.c        |  4 ++--
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 21 +++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h |  5 +++++
 drivers/pinctrl/mediatek/pinctrl-paris.c         |  1 +
 4 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
index 32451e8..e024ebc 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
@@ -1077,8 +1077,8 @@
 	.bias_disable_get = mtk_pinconf_bias_disable_get,
 	.bias_set = mtk_pinconf_bias_set,
 	.bias_get = mtk_pinconf_bias_get,
-	.drive_set = mtk_pinconf_drive_set_rev1,
-	.drive_get = mtk_pinconf_drive_get_rev1,
+	.drive_set = mtk_pinconf_drive_set_direct_val,
+	.drive_get = mtk_pinconf_drive_get_direct_val,
 	.adv_pull_get = mtk_pinconf_adv_pull_get,
 	.adv_pull_set = mtk_pinconf_adv_pull_set,
 };
diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 8077855..acfddf9 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -608,6 +608,27 @@ int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
 	return 0;
 }
 
+/* Revision direct value */
+int mtk_pinconf_drive_set_direct_val(struct mtk_pinctrl *hw,
+			       const struct mtk_pin_desc *desc, u32 arg)
+{
+	int err;
+
+	err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DRV, arg);
+
+	return err;
+}
+
+int mtk_pinconf_drive_get_direct_val(struct mtk_pinctrl *hw,
+			       const struct mtk_pin_desc *desc, int *val)
+{
+	int err;
+
+	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DRV, val);
+
+	return err;
+}
+
 int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
 			     const struct mtk_pin_desc *desc, bool pullup,
 			     u32 arg)
diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
index 1b7da42..b3bada0 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
@@ -288,6 +288,11 @@ int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
 int mtk_pinconf_drive_get_rev1(struct mtk_pinctrl *hw,
 			       const struct mtk_pin_desc *desc, int *val);
 
+int mtk_pinconf_drive_set_direct_val(struct mtk_pinctrl *hw,
+			       const struct mtk_pin_desc *desc, u32 arg);
+int mtk_pinconf_drive_get_direct_val(struct mtk_pinctrl *hw,
+			       const struct mtk_pin_desc *desc, int *val);
+
 int mtk_pinconf_adv_pull_set(struct mtk_pinctrl *hw,
 			     const struct mtk_pin_desc *desc, bool pullup,
 			     u32 arg);
diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index 3e13ae7..5217f76 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -970,3 +970,4 @@ static int mtk_paris_pinctrl_resume(struct device *device)
 	.suspend_noirq = mtk_paris_pinctrl_suspend,
 	.resume_noirq = mtk_paris_pinctrl_resume,
 };
+
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
