Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C7112D93E
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Dec 2019 14:52:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+mBft/6SnZ2GV3GWWpLdV/O19vXvg8kVMbTUKFtvDE=; b=VbAuniWu8KIK8w
	dQUgl+5NFcUuWDP4Uar8ZLJ/JFq+szix6YheAooCRaKVI8dTCKkfJ8N2HBVBReDFnebMQ08ayVfn4
	zVGnO+NK/fbhek523VxwE4+6C/VWWhaF7S81cp+VBz0O8UTJwMIHOpaduNP/SvLjGV8qh4aqfN5fB
	1LivWOen3BF8979UbrZe61apFxR1fyvpUd0IVIAkQoCd3v1jvSKp5PIyI1XoFv/9d2RFDFB90SWWx
	wJF5Hfg6izJqdgBtyl2O3jHolKqzjeyyowh43MNLDP31av/E5Vo85sHmxaFYGnmuDX+Ej66SGj6HA
	GpAGEipZlpMnvmH1KHHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHwF-0006Z5-RU; Tue, 31 Dec 2019 13:51:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHwC-0006Xd-SH
 for linux-mediatek@lists.infradead.org; Tue, 31 Dec 2019 13:51:58 +0000
X-UUID: 33b7c3cc678f43ae9a4b622d44a97300-20191231
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=iF7bo0bD8duTIrSbLoimLZ9b/gptBGQwd48GDl2KccQ=; 
 b=kc/WTTbh0K4/uCPp+ggzU5eNBAcT8mJ+UFq/KGkSsgZ1qZYFaXsQMkr4Nkb+fpmgrpR74jGJOMr79uvZUGLJUx4Ax7y9sbmPBApwBpYv9n6US243aIhfynzLxo1OLZooho1kCjB+D01A5JDnGUG6UeXSOcX+sMKUDzSU2AM7t9g=;
X-UUID: 33b7c3cc678f43ae9a4b622d44a97300-20191231
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1377517176; Tue, 31 Dec 2019 05:51:53 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Dec 2019 05:42:21 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Dec 2019 21:42:19 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 31 Dec 2019 21:41:17 +0800
From: Light Hsieh <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v7 4/6] Refine mtk_pinconf_get()
Date: Tue, 31 Dec 2019 21:41:45 +0800
Message-ID: <1577799707-11855-4-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1577799707-11855-1-git-send-email-light.hsieh@mediatek.com>
References: <1577799707-11855-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_055156_923886_52507AD2 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Correct cases for PIN_CONFIG_SLEW_RATE, PIN_CONFIG_INPUT_SCHMITT_ENABLE,
and PIN_CONFIG_OUTPUT_ENABLE -
Use variable ret to receive value in mtk_hw_get_value() (instead of
variable val) since pinconf_to_config_packed() at end of this function
use variable ret to pack config value.

Change-Id: Icdeecee8f614346a9b53764d20122b2b4940b381
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
