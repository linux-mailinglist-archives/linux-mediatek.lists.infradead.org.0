Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9499E1E7B3C
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 13:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pbCRgkbirpe5e2JLDDjq0DxkHv+VNG/F1FTeL+3dqtI=; b=MFJSIKTKXGwRyQ
	ttNmzcCZ0jhsN+TYjFflNBbMYUUH4WRX9IKY74KW5hR8HvZcuot6pjLNh9npQtjBteKlzOz+GxXzi
	EeZPj2iLqxfa3Lg4qH9a6bJAhy1IEv7lsklZBb5hC3zFYMFVkH02872+70KCEaAMeZSm+GVR4IF5U
	0Z7jyuTmDzhRW+2Gb2HO5VyZtIbC1RK+JGwjp7aVIs6f5RT7BUCs9Cm3tamvOHVLdPzGZxxN7eo7H
	d+gZKlc9jdiX5qV3HkRDz6X8jB5ItiBCjy2+3iQ1pQulvT+hh58s3FNOAt2ECHWWS5uE44C7dSEMS
	tWDFiPSrLpKNgJt0vVgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jecrJ-0007eS-1j; Fri, 29 May 2020 11:07:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecqn-00078Z-HD; Fri, 29 May 2020 11:06:59 +0000
X-UUID: 5c724e649e524c3fa729287950a85146-20200529
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=jZUffhDsS3iywjAJ/yJ5JfUnRTxh9XWi8vUqBMSK1xw=; 
 b=MAeKSDfGibfhzNGpPlWlhJ/kWsZ4/N80ioIeOhEGfnRn/faegoj3xhPuJufnwFq45IodCqZ+aF5bUNUbzM8rYaIWU0OjCsYFaNOpfs8fsCBPRhKtCJe/9TaHin9DIIrmv4bbFFCv/8ljt+sDmssUASCaQQOUMOXjv6XuBF8n3JU=;
X-UUID: 5c724e649e524c3fa729287950a85146-20200529
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 821815558; Fri, 29 May 2020 03:06:43 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 04:06:47 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 19:06:43 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 29 May 2020 19:06:43 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <tiwai@suse.com>,
 <matthias.bgg@gmail.com>, <hariprasad.kelam@gmail.com>
Subject: [PATCH] ASoC: mediatek: mt6358: support DMIC one-wire mode
Date: Fri, 29 May 2020 19:04:53 +0800
Message-ID: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 56AF50F10CD9D0433DF18F5F850C09F0DF00BA6224F5C412DE4A190D0C76F8BF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_040657_591136_8B719D79 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, howie.huang@mediatek.com,
 linux-kernel@vger.kernel.org, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 tzungbi@google.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Supports DMIC one-wire mode. Adds a mixer control to enable and disable.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/codecs/mt6358.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/mt6358.c b/sound/soc/codecs/mt6358.c
index 1b830ea..ca7628d 100644
--- a/sound/soc/codecs/mt6358.c
+++ b/sound/soc/codecs/mt6358.c
@@ -95,6 +95,8 @@ struct mt6358_priv {
 	struct regulator *avdd_reg;
 
 	int wov_enabled;
+
+	int dmic_one_wire_mode;
 };
 
 int mt6358_set_mtkaif_protocol(struct snd_soc_component *cmpnt,
@@ -566,6 +568,28 @@ static int mt6358_put_wov(struct snd_kcontrol *kcontrol,
 	return 0;
 }
 
+static int mt6358_dmic_one_wire_mode_get(struct snd_kcontrol *kcontrol,
+					 struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *cmpnt = snd_soc_kcontrol_component(kcontrol);
+	struct mt6358_priv *priv = snd_soc_component_get_drvdata(cmpnt);
+
+	ucontrol->value.integer.value[0] = priv->dmic_one_wire_mode;
+
+	return 0;
+}
+
+static int mt6358_dmic_one_wire_mode_set(struct snd_kcontrol *kcontrol,
+					 struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *cmpnt = snd_soc_kcontrol_component(kcontrol);
+	struct mt6358_priv *priv = snd_soc_component_get_drvdata(cmpnt);
+
+	priv->dmic_one_wire_mode = ucontrol->value.integer.value[0];
+
+	return 0;
+}
+
 static const DECLARE_TLV_DB_SCALE(playback_tlv, -1000, 100, 0);
 static const DECLARE_TLV_DB_SCALE(pga_tlv, 0, 600, 0);
 
@@ -588,6 +612,10 @@ static int mt6358_put_wov(struct snd_kcontrol *kcontrol,
 
 	SOC_SINGLE_BOOL_EXT("Wake-on-Voice Phase2 Switch", 0,
 			    mt6358_get_wov, mt6358_put_wov),
+
+	SOC_SINGLE_BOOL_EXT("Dmic One Wire Mode", 0,
+			    mt6358_dmic_one_wire_mode_get,
+			    mt6358_dmic_one_wire_mode_set),
 };
 
 /* MUX */
@@ -1740,7 +1768,10 @@ static int mt6358_amic_enable(struct mt6358_priv *priv)
 	mt6358_mtkaif_tx_enable(priv);
 
 	/* UL dmic setting off */
-	regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_H, 0x0000);
+	if (priv->dmic_one_wire_mode)
+		regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_H, 0x0400);
+	else
+		regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_H, 0x0080);
 
 	/* UL turn on */
 	regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_L, 0x0001);
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
