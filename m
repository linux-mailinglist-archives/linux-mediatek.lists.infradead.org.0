Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4551D144C4A
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Jan 2020 08:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1nSNryK8Gly2HyN2vj67KfyY8NjotkcbJ6XyaOcpb4=; b=qcBeOILcHM5jrx
	F6bROFiORuTzqQhpZPkZOT5WPYaxYfQikU4TMS1VloxHt+PETLpjk4OzmTSHyuNkRRTcc+2QS3qfN
	lQyAbXtN7GmmRysAmn0hamjNlFM6iI+RIKZgvgR+FInKZ8QR9DMRxhQ85fOb+ko5W5t3TZaLYNBPy
	YqfZK+oqugzPfQ/NO8/irZAMGA0JfjcO5Dv8NSyEHGZOxfTAL64ZrrXOKJLfvjLygu5wyAtx1/Z6k
	4q9y3uwP7LZRljN+AJUe2F+df6wDuQ6/BQKIs3144wSmqy/qutk0F5P9uybVdMBT9KFdUukunatkI
	F8cTxwZzDBz2I1KbWpzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuA2w-00026k-8S; Wed, 22 Jan 2020 07:03:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuA2t-00025k-06
 for linux-mediatek@lists.infradead.org; Wed, 22 Jan 2020 07:03:24 +0000
X-UUID: 8860150a76084f50bd3e14378bba7434-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=KYKiD5j0ZkuE2k7CXv0OEhneTSIarHmN4pmbVSrJZz8=; 
 b=eghCJLxeziOYKvwI4vWWwkGf2rnRVXpNblJVhYYadSKHYCGcvg/zemHUZAWD7gAUVu8CCRgf6Nrwl1JScQDBzD3UZG7pkYzrdQi//cs7/f3ilsF/z1zSIkd3xT8iPT8CF06Ldc/x7M32fUl3GMZ2NAjY6mXgYAlyL/J00rOqxYs=;
X-UUID: 8860150a76084f50bd3e14378bba7434-20200121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 626750370; Tue, 21 Jan 2020 23:03:20 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 22:53:18 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 22 Jan 2020 14:52:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 22 Jan 2020 14:51:58 +0800
From: <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v8 4/6] pinctrl: mediatek: Refine mtk_pinconf_get()
Date: Wed, 22 Jan 2020 14:53:12 +0800
Message-ID: <1579675994-7001-4-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1579675994-7001-1-git-send-email-light.hsieh@mediatek.com>
References: <1579675994-7001-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E6CD82C4D7810ABB8729827AAB2874B5D67870C461F194C83EDB7B24F76FD18F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_230323_049576_81C30C28 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Correct cases for PIN_CONFIG_SLEW_RATE, PIN_CONFIG_INPUT_SCHMITT_ENABLE,
and PIN_CONFIG_OUTPUT_ENABLE -
Use variable ret to receive value in mtk_hw_get_value() (instead of
variable val) since pinconf_to_config_packed() at end of this function
use variable ret to pack config value.

Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
---
 drivers/pinctrl/mediatek/pinctrl-paris.c | 40 ++++++++++++--------------------
 1 file changed, 15 insertions(+), 25 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index 2f07500..d09a726 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -78,7 +78,7 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
 {
 	struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
 	u32 param = pinconf_to_config_param(*config);
-	int val, val2, err, reg, ret = 1;
+	int err, reg, ret = 1;
 	const struct mtk_pin_desc *desc;
 
 	if (pin >= hw->soc->npins) {
@@ -107,17 +107,11 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
 			err = -ENOTSUPP;
 		break;
 	case PIN_CONFIG_SLEW_RATE:
-		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &val);
-		if (err)
-			return err;
-
-		if (!val)
-			return -EINVAL;
-
+		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &ret);
 		break;
 	case PIN_CONFIG_INPUT_ENABLE:
 	case PIN_CONFIG_OUTPUT_ENABLE:
-		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
+		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &ret);
 		if (err)
 			goto out;
 		/*     CONFIG     Current direction return value
@@ -128,20 +122,22 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
 		 *                     input        1 (= reverse HW value)
 		 */
 		if (param == PIN_CONFIG_INPUT_ENABLE)
-			val = !val;
+			ret = !ret;
 
 		break;
 	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
-		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
+		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &ret);
 		if (err)
-			return err;
-
-		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SMT, &val2);
-		if (err)
-			return err;
+			goto out;
+		/* return error when in output mode
+		 * because schmitt trigger only work in input mode
+		 */
+		if (ret) {
+			err = -EINVAL;
+			goto out;
+		}
 
-		if (val || !val2)
-			return -EINVAL;
+		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SMT, &ret);
 
 		break;
 	case PIN_CONFIG_DRIVE_STRENGTH:
@@ -154,13 +150,7 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
 	case MTK_PIN_CONFIG_RDSEL:
 		reg = (param == MTK_PIN_CONFIG_TDSEL) ?
 		       PINCTRL_PIN_REG_TDSEL : PINCTRL_PIN_REG_RDSEL;
-
-		err = mtk_hw_get_value(hw, desc, reg, &val);
-		if (err)
-			return err;
-
-		ret = val;
-
+		err = mtk_hw_get_value(hw, desc, reg, &ret);
 		break;
 	case MTK_PIN_CONFIG_PU_ADV:
 	case MTK_PIN_CONFIG_PD_ADV:
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
