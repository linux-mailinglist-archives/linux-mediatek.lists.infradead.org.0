Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CE8B4950
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 10:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/COC7GI01y5Qov3hzmdVhUxpoB4WEHanBQSi+h9CJ4o=; b=cwrhLyWnyFKfkR
	JWz56MFKg3gNEpb0gGBUZLQfGEqtKnV4mxcX5XMAw8gRlCebhUd3OrQKKTNJO6byuojRriGOIkvNV
	tMM4mr/2o2RDNrncAWZD75FAvvlDQkWr0Xb69+2s82D0WXdI9+EHnGdz/1qlg2kTEat2iaoRb6bvr
	F3YA888nA4TBIy1I4AI3Zi6w0VMEUO9LRmK6NnU/zAWSM8vjQuM+rXfxl7c5lxXtk6HZ+kVUXSXBR
	hZ+u2DP3qlWPWuswsY3Ce1L/FW66YLQS65Z74XW6mXrTsMN3bhGi0TjChthddfUClMq3ZoZ/F+Ktp
	1ptsL8e5oblV34i1zH8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8oo-00029j-4G; Tue, 17 Sep 2019 08:26:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8oj-000256-U5
 for linux-mediatek@lists.infradead.org; Tue, 17 Sep 2019 08:26:35 +0000
X-UUID: a2a3fcc2bd0a4cb087e016fe5160be65-20190917
X-UUID: a2a3fcc2bd0a4cb087e016fe5160be65-20190917
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2095122701; Tue, 17 Sep 2019 00:26:27 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 01:26:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 16:26:12 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 17 Sep 2019 16:26:12 +0800
From: Light Hsieh <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Subject: [PATCH v3 3/5] pinctrl: mediatek: Refine mtk_pinconf_get() and
 mtk_pinconf_set()
Date: Tue, 17 Sep 2019 16:26:09 +0800
Message-ID: <1568708771-12409-3-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1568708771-12409-1-git-send-email-light.hsieh@mediatek.com>
References: <1568708771-12409-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_012634_024486_54FDB8C8 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-gpio@vger.kernel.org, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

1.Refine mtk_pinconf_get():
1.1 Use only one occurrence of return at end of this function.
1.2 Correct cases for PIN_CONFIG_SLEW_RATE, PIN_CONFIG_INPUT_SCHMITT_ENABLE,
    and PIN_CONFIG_OUTPUT_ENABLE -
    Use variable ret to receive value in mtk_hw_get_value() (instead of
    variable val) since pinconf_to_config_packed() at end of this function
    use variable ret to pack config value.

2.Refine mtk_pinconf_set():
2.1 Use only one occurrence of return at end of this function.
2.2 Modify case of PIN_CONFIG_INPUT_ENABLE -
    Remove check of ies_present flag and always invoke mtk_hw_set_value()
    since mtk_hw_pin_field_lookup() invoked inside mtk_hw_set_value() has
    the same effect of checking if ies control is supported.
    [The rationale is that: available of a control is always checked
     in mtk_hw_pin_field_lookup() and no need to add ies_present flag
     specially for ies control.]
2.3 Simply code logic for case of PIN_CONFIG_INPUT_SCHMITT.
2.4 Add case for PIN_CONFIG_INPUT_SCHMITT_ENABLE and process it with the
    same code for case of PIN_CONFIG_INPUT_SCHMITT.

---
 drivers/pinctrl/mediatek/pinctrl-mt6765.c |   1 -
 drivers/pinctrl/mediatek/pinctrl-paris.c  | 206 +++++++++++-------------------
 2 files changed, 76 insertions(+), 131 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
index e024ebc..bada37f 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
@@ -1070,7 +1070,6 @@
 	.ngrps = ARRAY_SIZE(mtk_pins_mt6765),
 	.eint_hw = &mt6765_eint_hw,
 	.gpio_m = 0,
-	.ies_present = true,
 	.base_names = mt6765_pinctrl_register_base_names,
 	.nbase_names = ARRAY_SIZE(mt6765_pinctrl_register_base_names),
 	.bias_disable_set = mtk_pinconf_bias_disable_set,
diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
index 71c94b2..33d2340 100644
--- a/drivers/pinctrl/mediatek/pinctrl-paris.c
+++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
@@ -78,93 +78,75 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
 {
 	struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
 	u32 param = pinconf_to_config_param(*config);
-	int val, val2, err, reg, ret = 1;
+	int err, reg, ret = 1;
 	const struct mtk_pin_desc *desc;
 
 	desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];
 
 	switch (param) {
 	case PIN_CONFIG_BIAS_DISABLE:
-		if (hw->soc->bias_disable_get) {
+		if (hw->soc->bias_disable_get)
 			err = hw->soc->bias_disable_get(hw, desc, &ret);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	case PIN_CONFIG_BIAS_PULL_UP:
-		if (hw->soc->bias_get) {
+		if (hw->soc->bias_get)
 			err = hw->soc->bias_get(hw, desc, 1, &ret);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	case PIN_CONFIG_BIAS_PULL_DOWN:
-		if (hw->soc->bias_get) {
+		if (hw->soc->bias_get)
 			err = hw->soc->bias_get(hw, desc, 0, &ret);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
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
-			return err;
-
-		/* HW takes input mode as zero; output mode as non-zero */
-		if ((val && param == PIN_CONFIG_INPUT_ENABLE) ||
-		    (!val && param == PIN_CONFIG_OUTPUT_ENABLE))
-			return -EINVAL;
+			goto out;
+		/*     CONFIG     Current direction return value
+		 * -------------  ----------------- ----------------------
+		 * OUTPUT_ENABLE       output       1 (= HW value)
+		 *                     input        0 (= HW value)
+		 * INPUT_ENABLE        output       0 (= reverse HW value)
+		 *                     input        1 (= reverse HW value)
+		 */
+		if (param == PIN_CONFIG_INPUT_ENABLE)
+			ret = !ret;
 
 		break;
 	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
-		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
-		if (err)
-			return err;
-
-		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SMT, &val2);
+		err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &ret);
 		if (err)
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
-		if (hw->soc->drive_get) {
+		if (hw->soc->drive_get)
 			err = hw->soc->drive_get(hw, desc, &ret);
-			if (err)
-				return err;
-		} else {
+		else
 			err = -ENOTSUPP;
-		}
 		break;
 	case MTK_PIN_CONFIG_TDSEL:
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
@@ -173,28 +155,24 @@ static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
 
 			pullup = param == MTK_PIN_CONFIG_PU_ADV;
 			err = hw->soc->adv_pull_get(hw, desc, pullup, &ret);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		} else
+			err = -ENOTSUPP;
 		break;
 	case MTK_PIN_CONFIG_DRV_ADV:
-		if (hw->soc->adv_drive_get) {
+		if (hw->soc->adv_drive_get)
 			err = hw->soc->adv_drive_get(hw, desc, &ret);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	default:
-		return -ENOTSUPP;
+		err = -ENOTSUPP;
 	}
 
-	*config = pinconf_to_config_packed(param, ret);
+out:
+	if (!err)
+		*config = pinconf_to_config_packed(param, ret);
 
-	return 0;
+	return err;
 }
 
 static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
@@ -210,60 +188,46 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 
 	switch ((u32)param) {
 	case PIN_CONFIG_BIAS_DISABLE:
-		if (hw->soc->bias_disable_set) {
+		if (hw->soc->bias_disable_set)
 			err = hw->soc->bias_disable_set(hw, desc);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	case PIN_CONFIG_BIAS_PULL_UP:
-		if (hw->soc->bias_set) {
+		if (hw->soc->bias_set)
 			err = hw->soc->bias_set(hw, desc, 1);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	case PIN_CONFIG_BIAS_PULL_DOWN:
-		if (hw->soc->bias_set) {
+		if (hw->soc->bias_set)
 			err = hw->soc->bias_set(hw, desc, 0);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	case PIN_CONFIG_OUTPUT_ENABLE:
 		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT,
 				       MTK_DISABLE);
-		if (err)
+		/* keep set direction to if SMT is not supported on this pin */
+		if (err != -ENOTSUPP)
 			goto err;
 
 		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
 				       MTK_OUTPUT);
-		if (err)
-			goto err;
 		break;
 	case PIN_CONFIG_INPUT_ENABLE:
-		if (hw->soc->ies_present) {
-			mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_IES,
-					 MTK_ENABLE);
-		}
+		/* regard all non-zero value as enable */
+		mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_IES, !!arg);
 
-		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
-				       MTK_INPUT);
 		if (err)
 			goto err;
+
+		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
+				       MTK_INPUT);
 		break;
 	case PIN_CONFIG_SLEW_RATE:
-		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SR,
-				       arg);
-		if (err)
-			goto err;
-
+		/* regard all non-zero value as enable */
+		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SR, !!arg);
 		break;
 	case PIN_CONFIG_OUTPUT:
 		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
@@ -273,41 +237,29 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 
 		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO,
 				       arg);
-		if (err)
-			goto err;
 		break;
+	case PIN_CONFIG_INPUT_SCHMITT:
 	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
-		/* arg = 1: Input mode & SMT enable ;
+		/* arg = 1: Input mode & SMT enable
 		 * arg = 0: Output mode & SMT disable
 		 */
-		arg = arg ? 2 : 1;
-		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
-				       arg & 1);
+		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR, !arg);
 		if (err)
 			goto err;
 
-		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT,
-				       !!(arg & 2));
-		if (err)
-			goto err;
+		err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT, !!arg);
 		break;
 	case PIN_CONFIG_DRIVE_STRENGTH:
-		if (hw->soc->drive_set) {
+		if (hw->soc->drive_set)
 			err = hw->soc->drive_set(hw, desc, arg);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	case MTK_PIN_CONFIG_TDSEL:
 	case MTK_PIN_CONFIG_RDSEL:
 		reg = (param == MTK_PIN_CONFIG_TDSEL) ?
 		       PINCTRL_PIN_REG_TDSEL : PINCTRL_PIN_REG_RDSEL;
-
 		err = mtk_hw_set_value(hw, desc, reg, arg);
-		if (err)
-			goto err;
 		break;
 	case MTK_PIN_CONFIG_PU_ADV:
 	case MTK_PIN_CONFIG_PD_ADV:
@@ -317,20 +269,14 @@ static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 			pullup = param == MTK_PIN_CONFIG_PU_ADV;
 			err = hw->soc->adv_pull_set(hw, desc, pullup,
 						    arg);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		} else
+			err = -ENOTSUPP;
 		break;
 	case MTK_PIN_CONFIG_DRV_ADV:
-		if (hw->soc->adv_drive_set) {
+		if (hw->soc->adv_drive_set)
 			err = hw->soc->adv_drive_set(hw, desc, arg);
-			if (err)
-				return err;
-		} else {
-			return -ENOTSUPP;
-		}
+		else
+			err = -ENOTSUPP;
 		break;
 	default:
 		err = -ENOTSUPP;
@@ -946,6 +892,7 @@ int mtk_paris_pinctrl_probe(struct platform_device *pdev,
 	return 0;
 }
 
+
 static int mtk_paris_pinctrl_suspend(struct device *device)
 {
 	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
@@ -964,4 +911,3 @@ static int mtk_paris_pinctrl_resume(struct device *device)
 	.suspend_noirq = mtk_paris_pinctrl_suspend,
 	.resume_noirq = mtk_paris_pinctrl_resume,
 };
-
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
