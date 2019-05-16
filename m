Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D652620344
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 12:17:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=N7LHWMWXp97e1lJXpnD75Z2GB8NAdwphrFveBdhPXSU=; b=nw9
	w3bEKnU1FAG456lZ+ND5w5gwI/onsJX+6op74uEG0yg2PZr7btZ70pZW2Tr97Mj8K/1Rn7KD4ZOdG
	sbdLLMpn7TleELwIfr8OoKyowa8QcjCUL4dm3wqggRYhHxztbAk2d0F+W62X76VYqbK1qpIwEc10x
	EYJ5oiLjlA9hM/C+U+JQwB7ntWUmEaK57TW9npMSesibEAz5NbON9Zy0rSlZ2k0sOpXcc7ydoX8gU
	gCanHph0v1HgxfsLZdUXgdu5ZnmELFd6+v6jmbLwaoTKrvXX7X988Ylo2HgsgDtwzPAl/u90g9DHJ
	P+OI18xcFXU0mROCs/TZ++7vKVEQHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDS0-0006Qx-Eu; Thu, 16 May 2019 10:17:24 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDRx-0006QO-FN
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 10:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=PNhKLqkoHsis9JaC7dp5LY6ZI+vEatGr2GBZw+NxQYg=; b=sFgg2F+okHmg
 p+F9eloVMSD5uHh0MwOnuoI9cTHcXTn43KMBLJVt4jufVB4oRhlMNWcW24g+9i6KwDsNSEcHQzoH4
 xiKjwbJruM0KGwk0YdcG5zV9M16h6RJZw9B8DanBeENiVqWqlNRnOnSOpVqI2nHgcClKUf79As8X7
 5/mH4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hRDRs-00062A-Fl; Thu, 16 May 2019 10:17:16 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 0A1FB1126D45; Thu, 16 May 2019 11:17:16 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Shunli Wang <shunli.wang@mediatek.com>
Subject: Applied "ASoC: Mediatek: MT8183: set data align" to the asoc tree
In-Reply-To: <20190516095438.15759-3-shunli.wang@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190516101716.0A1FB1126D45@debutante.sirena.org.uk>
Date: Thu, 16 May 2019 11:17:16 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_031721_655984_50BE97C2 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

   ASoC: Mediatek: MT8183: set data align

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

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

From cf61f5b01531a2b64b875894fa97aa891d39e871 Mon Sep 17 00:00:00 2001
From: Shunli Wang <shunli.wang@mediatek.com>
Date: Thu, 16 May 2019 17:54:38 +0800
Subject: [PATCH] ASoC: Mediatek: MT8183: set data align

This patch sets register and bit information about
data align for every memory interface.

Signed-off-by: Shunli Wang <shunli.wang@mediatek.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index 1bc0fafe5e29..ab2bce1d9b3d 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -437,7 +437,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = DL1_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL1_HD_SFT,
+		.hd_align_mshift = DL1_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -456,7 +458,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = DL2_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL2_HD_SFT,
+		.hd_align_mshift = DL2_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -475,7 +479,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = DL3_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL3_HD_SFT,
+		.hd_align_mshift = DL3_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -494,7 +500,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = VUL2_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = VUL2_HD_SFT,
+		.hd_align_mshift = VUL2_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -513,7 +521,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = AWB_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = AWB_HD_SFT,
+		.hd_align_mshift = AWB_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -532,7 +542,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = AWB2_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = AWB2_HD_SFT,
+		.hd_align_mshift = AWB2_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -551,7 +563,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = VUL12_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = VUL12_HD_SFT,
+		.hd_align_mshift = VUL12_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -570,7 +584,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = AFE_DAC_CON0,
 		.enable_shift = MOD_DAI_ON_SFT,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = MOD_DAI_HD_SFT,
+		.hd_align_mshift = MOD_DAI_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -589,7 +605,9 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.enable_reg = -1,	/* control in tdm for sync start */
 		.enable_shift = -1,
 		.hd_reg = AFE_MEMIF_HD_MODE,
+		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = HDMI_HD_SFT,
+		.hd_align_mshift = HDMI_HD_ALIGN_MASK_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
