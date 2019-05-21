Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6E258F4
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 22:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=zAsaQTzBB2yr1jvoKLanZaM0Gcj3AmawmGaBnxshmqk=; b=JP1
	kpOyXjhBXiPNQD4elApfn8NQki08QZvbaezVKKVSVxiqDpaEgaEmFnd53EBTkUJuIyqoPj5dz8kap
	c82xaNUmpG1KM51FRu1fXrU6bjJhPsI+eAfIF6464tKGzXu5oAhNsJ9jJRaI8bsM3p9t0nQeH1Djy
	Z3xx2gcBVMJJLqtv7nuWKBwRkhAq5izLC/3y5Fjo4tmP1vSv/HfgScAECnmSQOVzatjLJMVfbwx9e
	+OzsLx5OmtNs5Ft3A2fOeD12t8Kz3oMUuyPtS+Yt9DbiCZoh4/1K28EDrWNtfB7urPe7u83hkxHqC
	4yvYLtDEqskw74c9p5YiHySehvTC4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBRY-00051E-Uz; Tue, 21 May 2019 20:33:04 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBRL-0004i1-De
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 20:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=dAzJxnon9GLWXKQiC3q94Xs+4pz9rlIkJSYLfHOSoME=; b=PFHy+I7tunml
 JplaOoFq40Abav1hbn9Ly54bfJ+PU0petCYMHhJPpwxGKl9iCIyykEAMz/C4lC1zz7zxoGkpP7FQ3
 DukSfEigmPfsb5gOP8zDYLF33B4HKfnElWIdhns7SSczVbgzBIe5lUKIf+qBkKr93Z3U6shmJfHDh
 J10S4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTBRE-0001yG-Eo; Tue, 21 May 2019 20:32:44 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 02D251126D17; Tue, 21 May 2019 21:32:40 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Applied "ASoC: Mediatek: MT8183: fix compile error" to the asoc tree
In-Reply-To: <1558430978-2440-2-git-send-email-jiaxin.yu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190521203241.02D251126D17@debutante.sirena.org.uk>
Date: Tue, 21 May 2019 21:32:40 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_133252_219260_463FC87A 
X-CRM114-Status: GOOD (  11.85  )
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
 Jiaxin@sirena.org.uk, garlic.tseng@mediatek.com, tzungbi@google.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 kaichieh.chuang@mediatek.com
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

From e355d3de196fe08e4de99bc0521c25a36c903b1b Mon Sep 17 00:00:00 2001
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Tue, 21 May 2019 17:29:37 +0800
Subject: [PATCH] ASoC: Mediatek: MT8183: fix compile error

mtk_regmap_update_bits() has been changed from four
parameters to five parameters.

Fixes: 1628fc3f4771 ("ASoC: Mediatek: MT8183: add memory interface data align")

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index 19048c3dc324..d16563408465 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -266,8 +266,7 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 			       1, hd_audio, memif->data->hd_shift);
 
 	mtk_regmap_update_bits(afe->regmap, memif->data->hd_align_reg,
-			       memif->data->hd_align_mshift,
-			       hd_align ? memif->data->hd_align_mshift : 0);
+			       1, hd_align, memif->data->hd_align_mshift);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
