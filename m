Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7705711124
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 04:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=XXga2+Yhqi6vIxVpQZGmMap5WeXjQFGz57S1A8e4FQw=; b=SOw
	2XyogMWYXFX5xBD+4fyAeOOgSAZW2r8Q2SnffLSlefRerLgPurvrK4bjsipr9A9uStz0PUxfUEqFy
	lvFr9zlh6LaRikLekgS12l0Ds7MDE9SQswOj6XEQ9GtKnStapNuRS3ec9BbzolxC9RFnK9fNfGbuJ
	F7gzocdQ74rdoEtgzT+bQsCAckhWbzizM25tiAkBy3+0RMzCMKD3tTCAfXgGPpTX9XOZLfo0286AP
	oAqyaeU+qySpPrGhAzONyi20p3AsoqT1FhgjJuNZfl3OdimB7nBNOVbAQ+y5f7rp8Z6TOcnLIpdcc
	x2f0ky0yHLUk/DTkKMGeGEBI699xs0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1Iq-0003pQ-Ve; Thu, 02 May 2019 02:18:28 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1Ii-0003i8-OS
 for linux-mediatek@lists.infradead.org; Thu, 02 May 2019 02:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=xkmTlJvBk2CY0QQnHQgQpvfF3NVtN7m9lajR+LsPLsw=; b=uan32wqgmRLB
 oZSTcn0BXiB6O0M2MGT0e/d+Y9fNuZ/IluTr/xP539sTl05bV43OrBJCJo4O0QK2o8wBLBGJzbSEp
 +Nb+O41V5924JuHfnXgUzULrFbTVv5I+VmBrtVETQHnxjcE8vuTquk8CVBYD1qPhO168u8Oploky3
 gk+n4=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1Ib-0005qh-Sa; Thu, 02 May 2019 02:18:14 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id 2CF36441D3C; Thu,  2 May 2019 03:18:10 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Shunli Wang <shunli.wang@mediatek.com>
Subject: Applied "ASoC: Mediatek: MT8183: add I2S2 control path from UL2 and
 UL3" to the asoc tree
In-Reply-To: <20190409091337.43934-2-shunli.wang@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190502021810.2CF36441D3C@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:18:10 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191820_943418_D28CF172 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, srv_heupstream@mediatek.com,
 garlic.tseng@mediatek.com, jiaxin.yu@mediatek.com, tzungbi@google.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 shunli.wang@mediatek.com, kaichieh.chuang@mediatek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: Mediatek: MT8183: add I2S2 control path from UL2 and UL3

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From d232591c9482ddb121b60782d2e7dac1c4880bdb Mon Sep 17 00:00:00 2001
From: Shunli Wang <shunli.wang@mediatek.com>
Date: Tue, 9 Apr 2019 17:13:37 +0800
Subject: [PATCH] ASoC: Mediatek: MT8183: add I2S2 control path from UL2 and
 UL3

This patch add the control path from UL2 or UL3 to I2S2.
The patch is based on broonie tree "for-next" branch.

Signed-off-by: Shunli Wang <shunli.wang@mediatek.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index 43be51bf0329..1bc0fafe5e29 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -291,11 +291,15 @@ static struct snd_soc_dai_driver mt8183_memif_dai_driver[] = {
 static const struct snd_kcontrol_new memif_ul1_ch1_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("ADDA_UL_CH1", AFE_CONN21,
 				    I_ADDA_UL_CH1, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I2S0_CH1", AFE_CONN21,
+				    I_I2S0_CH1, 1, 0),
 };
 
 static const struct snd_kcontrol_new memif_ul1_ch2_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("ADDA_UL_CH2", AFE_CONN22,
 				    I_ADDA_UL_CH2, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I2S0_CH2", AFE_CONN21,
+				    I_I2S0_CH2, 1, 0),
 };
 
 static const struct snd_kcontrol_new memif_ul2_ch1_mix[] = {
@@ -307,6 +311,8 @@ static const struct snd_kcontrol_new memif_ul2_ch1_mix[] = {
 				    I_DL2_CH1, 1, 0),
 	SOC_DAPM_SINGLE_AUTODISABLE("DL3_CH1", AFE_CONN5,
 				    I_DL3_CH1, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I2S2_CH1", AFE_CONN5,
+				    I_I2S2_CH1, 1, 0),
 };
 
 static const struct snd_kcontrol_new memif_ul2_ch2_mix[] = {
@@ -318,16 +324,22 @@ static const struct snd_kcontrol_new memif_ul2_ch2_mix[] = {
 				    I_DL2_CH2, 1, 0),
 	SOC_DAPM_SINGLE_AUTODISABLE("DL3_CH2", AFE_CONN6,
 				    I_DL3_CH2, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I2S2_CH2", AFE_CONN6,
+				    I_I2S2_CH2, 1, 0),
 };
 
 static const struct snd_kcontrol_new memif_ul3_ch1_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("ADDA_UL_CH1", AFE_CONN32,
 				    I_ADDA_UL_CH1, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I2S2_CH1", AFE_CONN32,
+				    I_I2S2_CH1, 1, 0),
 };
 
 static const struct snd_kcontrol_new memif_ul3_ch2_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("ADDA_UL_CH2", AFE_CONN33,
 				    I_ADDA_UL_CH2, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I2S2_CH2", AFE_CONN33,
+				    I_I2S2_CH2, 1, 0),
 };
 
 static const struct snd_kcontrol_new memif_ul4_ch1_mix[] = {
@@ -380,16 +392,22 @@ static const struct snd_soc_dapm_route mt8183_memif_routes[] = {
 	{"UL1", NULL, "UL1_CH2"},
 	{"UL1_CH1", "ADDA_UL_CH1", "ADDA Capture"},
 	{"UL1_CH2", "ADDA_UL_CH2", "ADDA Capture"},
+	{"UL1_CH1", "I2S0_CH1", "I2S0"},
+	{"UL1_CH2", "I2S0_CH2", "I2S0"},
 
 	{"UL2", NULL, "UL2_CH1"},
 	{"UL2", NULL, "UL2_CH2"},
 	{"UL2_CH1", "ADDA_UL_CH1", "ADDA Capture"},
 	{"UL2_CH2", "ADDA_UL_CH2", "ADDA Capture"},
+	{"UL2_CH1", "I2S2_CH1", "I2S2"},
+	{"UL2_CH2", "I2S2_CH2", "I2S2"},
 
 	{"UL3", NULL, "UL3_CH1"},
 	{"UL3", NULL, "UL3_CH2"},
 	{"UL3_CH1", "ADDA_UL_CH1", "ADDA Capture"},
 	{"UL3_CH2", "ADDA_UL_CH2", "ADDA Capture"},
+	{"UL3_CH1", "I2S2_CH1", "I2S2"},
+	{"UL3_CH2", "I2S2_CH2", "I2S2"},
 
 	{"UL4", NULL, "UL4_CH1"},
 	{"UL4", NULL, "UL4_CH2"},
@@ -421,7 +439,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = DL1_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_DL2] = {
 		.name = "DL2",
@@ -438,7 +458,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = DL2_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_DL3] = {
 		.name = "DL3",
@@ -455,7 +477,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = DL3_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_VUL2] = {
 		.name = "VUL2",
@@ -472,7 +496,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = VUL2_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_AWB] = {
 		.name = "AWB",
@@ -489,7 +515,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = AWB_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_AWB2] = {
 		.name = "AWB2",
@@ -506,7 +534,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = AWB2_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_VUL12] = {
 		.name = "VUL12",
@@ -523,7 +553,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = VUL12_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_MOD_DAI] = {
 		.name = "MOD_DAI",
@@ -540,7 +572,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = MOD_DAI_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 	[MT8183_MEMIF_HDMI] = {
 		.name = "HDMI",
@@ -553,10 +587,13 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.mono_reg = -1,
 		.mono_shift = -1,
 		.enable_reg = -1,	/* control in tdm for sync start */
+		.enable_shift = -1,
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_shift = HDMI_HD_SFT,
 		.agent_disable_reg = -1,
+		.agent_disable_shift = -1,
 		.msb_reg = -1,
+		.msb_shift = -1,
 	},
 };
 
@@ -671,6 +708,7 @@ static const struct mtk_base_irq_data irq_data[MT8183_IRQ_NUM] = {
 		.irq_cnt_shift = 0,
 		.irq_cnt_maskbit = 0x3ffff,
 		.irq_fs_reg = -1,
+		.irq_fs_shift = -1,
 		.irq_fs_maskbit = -1,
 		.irq_en_reg = AFE_IRQ_MCU_CON0,
 		.irq_en_shift = IRQ8_MCU_ON_SFT,
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
