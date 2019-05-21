Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B03258F5
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 22:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=rllxzqYi/uoqsEbeNPL89B8CvgzU3fkZ1fhMTQy+k20=; b=pNQ
	kM5RR9BPfJw9oiclWA73iafWDOJI72994ZerBx1pnMzj9FMYC3rwYE/U91pSxp460cO4xil6Ri3+Q
	oY/5jz7oNsL1k1/aO7RssnlAkRNxxlzqqhQ2SB+jSaPQFlW9jqylcbuaXJM0+IeQXl8xNB6VZ4QeI
	KA04mWE+tDiVtFuTEFbpvPOhJR8EVoKaSKdasnwQraR5h1U3FNtQS0KAQCya+RVUS91QN2KxNvuXH
	kP+wdYZeHkBmdKRl73Hhv4TnvoU98tbTcOAqk/N5XLh634wOh8ANZNb8b6msbFJfVMSfhgEkhxIib
	Zqgc5Oa4yR3xQXOxV1ljHuHbU87CosA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBRa-00057B-Uy; Tue, 21 May 2019 20:33:06 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBRL-0004j5-Kf
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 20:33:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=XkrsRvXUswg4QUhoQelGk2TIO7uoJT0THp96pk/PqpU=; b=mDw2IY45NtNe
 PFpGJE288M3fuc/vuDr+64cfEk4PMCirTiP1sjJuDtIvdZ31vajgm4OAYq6u01Yng1O50z8GlcV+L
 f7O4rcJPr5HGeLqEOg+Ex9Yy4pIXRbxaWTkKvN+aASE8MChGnz6Hy4WPT63nXlCVUOJMcU6aqplAO
 +Dfe0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTBRE-0001yF-Et; Tue, 21 May 2019 20:32:44 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id BC44C1126D16; Tue, 21 May 2019 21:32:40 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Applied "ASoC: Mediatek: MT8183: fix compile error" to the asoc tree
In-Reply-To: <1558430978-2440-3-git-send-email-jiaxin.yu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190521203240.BC44C1126D16@debutante.sirena.org.uk>
Date: Tue, 21 May 2019 21:32:40 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_133252_505298_3F3A9865 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, wsd_upstream@mediatek.com,
 garlic.tseng@mediatek.com, tzungbi@google.com, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, kaichieh.chuang@mediatek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   ASoC: Mediatek: MT8183: fix compile error

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

From 383d30e72e682021fdaf0371ade1c58ad2c434a4 Mon Sep 17 00:00:00 2001
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Tue, 21 May 2019 17:29:38 +0800
Subject: [PATCH] ASoC: Mediatek: MT8183: fix compile error

mtk_regmap_update_bits() has been changed to take a shift and warn
when reg >= 0 but shift < 0.So the hd_align_mshift must not have shift.
Change it from XXX_HD_ALIGN_MASK_SFT to XXX_HD_ALIGN_MASK.

Fixes: cf61f5b01531 ("ASoC: Mediatek: MT8183: set data align")

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index ab2bce1d9b3d..56c37323bc13 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -439,7 +439,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL1_HD_SFT,
-		.hd_align_mshift = DL1_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = DL1_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -460,7 +460,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL2_HD_SFT,
-		.hd_align_mshift = DL2_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = DL2_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -481,7 +481,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = DL3_HD_SFT,
-		.hd_align_mshift = DL3_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = DL3_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -502,7 +502,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = VUL2_HD_SFT,
-		.hd_align_mshift = VUL2_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = VUL2_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -523,7 +523,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = AWB_HD_SFT,
-		.hd_align_mshift = AWB_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = AWB_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -544,7 +544,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = AWB2_HD_SFT,
-		.hd_align_mshift = AWB2_ALIGN_MASK_SFT,
+		.hd_align_mshift = AWB2_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -565,7 +565,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = VUL12_HD_SFT,
-		.hd_align_mshift = VUL12_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = VUL12_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -586,7 +586,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = MOD_DAI_HD_SFT,
-		.hd_align_mshift = MOD_DAI_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = MOD_DAI_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
@@ -607,7 +607,7 @@ static const struct mtk_base_memif_data memif_data[MT8183_MEMIF_NUM] = {
 		.hd_reg = AFE_MEMIF_HD_MODE,
 		.hd_align_reg = AFE_MEMIF_HDALIGN,
 		.hd_shift = HDMI_HD_SFT,
-		.hd_align_mshift = HDMI_HD_ALIGN_MASK_SFT,
+		.hd_align_mshift = HDMI_HD_ALIGN_SFT,
 		.agent_disable_reg = -1,
 		.agent_disable_shift = -1,
 		.msb_reg = -1,
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
