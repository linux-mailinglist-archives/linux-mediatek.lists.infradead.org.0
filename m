Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF80C32D9
	for <lists+linux-mediatek@lfdr.de>; Tue,  1 Oct 2019 13:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=HnHlWhVDsmpLUwMBapCpjPA9/rcrC1w4KaOQacyyazM=; b=pSW
	EmIQcEWAUKzk0JBu7uAC4M8C+F46g9A2bJkz35+ac6CDS3igu4/P2/vZfXUA4uBDfFfhGTgIsedFd
	oQVEBTsS5n1DfD3e1X75v4eUkEJC6g67087IJcagqb+hH+x3kQRwgJvbNGkY7rSmG9zeQYch+kfz0
	wchwsTYdsYGW8uaDE2JIlQoGQgWmAXpwbp6gLaQVbddZyk48euUY7V5g+ubjQtFe9O4sWCQZpt3tG
	EzuuJaWost8qSVlZrdPYSti9j8JJ80DnzGfRmKM8567LkjXZ/NFyH/SZLg9sPDUcrL89fbcZ9ZlGp
	kZ4/mOlyPKa63zoXaRe7n1BdFYYFdXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGZD-0001Y3-Mg; Tue, 01 Oct 2019 11:43:43 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGWj-0007Ph-0h; Tue, 01 Oct 2019 11:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=z6hLIza3q6cYchvVHYiHKN/ZHrei8SPlYx9ockTASYE=; b=m96scqtLNyc6
 h7zycSmfCjk8HcAr5pjagGXNgf3F26sVMHXmBbFWwr+7GRl4aFIMGM3zuhSQyFMdNY0gLQVl3qn4B
 +nq26LmeHKsoxfSx908CLa6DAOK+AdVxbXx9lHUWQC1AnJ/KFoLZt0sXyp6c87LEFTAGZv8ixZjy2
 9Mp8o=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGWg-0004Yg-FL; Tue, 01 Oct 2019 11:41:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id EAA1C27429C0; Tue,  1 Oct 2019 12:41:05 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Markus Elfring <elfring@users.sourceforge.net>
Subject: Applied "spi: mediatek: Use devm_platform_ioremap_resource() in
 mtk_spi_slave_probe()" to the spi tree
In-Reply-To: <225b76ca-a367-4bef-d8ce-42c7af9242a5@web.de>
X-Patchwork-Hint: ignore
Message-Id: <20191001114105.EAA1C27429C0@ypsilon.sirena.org.uk>
Date: Tue,  1 Oct 2019 12:41:05 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044109_118432_E9771690 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Leilk Liu <leilk.liu@mediatek.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The patch

   spi: mediatek: Use devm_platform_ioremap_resource() in mtk_spi_slave_probe()

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.5

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

From 6cdcb5d394413d906773f1ae2efaa86485d6d6e1 Mon Sep 17 00:00:00 2001
From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 21 Sep 2019 15:12:33 +0200
Subject: [PATCH] spi: mediatek: Use devm_platform_ioremap_resource() in
 mtk_spi_slave_probe()

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
Link: https://lore.kernel.org/r/225b76ca-a367-4bef-d8ce-42c7af9242a5@web.de
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-slave-mt27xx.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/spi/spi-slave-mt27xx.c b/drivers/spi/spi-slave-mt27xx.c
index 61bc43b0fe57..44edaa360405 100644
--- a/drivers/spi/spi-slave-mt27xx.c
+++ b/drivers/spi/spi-slave-mt27xx.c
@@ -368,7 +368,6 @@ static int mtk_spi_slave_probe(struct platform_device *pdev)
 {
 	struct spi_controller *ctlr;
 	struct mtk_spi_slave *mdata;
-	struct resource *res;
 	int irq, ret;
 
 	ctlr = spi_alloc_slave(&pdev->dev, sizeof(*mdata));
@@ -392,17 +391,8 @@ static int mtk_spi_slave_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, ctlr);
 
 	init_completion(&mdata->xfer_done);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		ret = -ENODEV;
-		dev_err(&pdev->dev, "failed to determine base address\n");
-		goto err_put_ctlr;
-	}
-
 	mdata->dev = &pdev->dev;
-
-	mdata->base = devm_ioremap_resource(&pdev->dev, res);
+	mdata->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mdata->base)) {
 		ret = PTR_ERR(mdata->base);
 		goto err_put_ctlr;
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
