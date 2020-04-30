Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BDD1C07F1
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 Apr 2020 22:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XLoi63HuA3EFudOrTUao6i7JEcckyzFrCMs/z7NJiX0=; b=YeCtgXocfYELcm
	0DixKwJDK2uMD6GReAPI56iHd8PUUemMu/dmSki+1gz/R8phlFbbQrbHjy5k0JsF9lahq3SCCjwCS
	4eA3ZxUM5TvaZwEGjOjSu780hIkkOHL5kDYYPoQGguU+knNyqF3w2faJoavZZbR9FqqV/JXv5svoG
	mKsP15wHd7NMj9N5p4jGFzr+Nd2Mvm6YShLZU3fE+iupluHMcUYAbFLnmWcpMjSDimvgybYcKATpp
	I6gOgXZAF8Q9QzQ0xhEX2+NuR5WuiNdX9hOZduAklimESeVzVtnJ9/s9kLWOVuF3FQDhNWSQ0wyIx
	zUGTI0SlYciha0SCrY2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUFpy-0004t4-9s; Thu, 30 Apr 2020 20:31:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFpv-0004sa-Nj
 for linux-mediatek@lists.infradead.org; Thu, 30 Apr 2020 20:31:12 +0000
Received: from localhost.localdomain.com (unknown [151.48.155.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71ABE20731;
 Thu, 30 Apr 2020 20:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588278670;
 bh=dodLZODMKGnV6dizLxKLvCaa2y0mojKga6d+qKIU/EU=;
 h=From:To:Cc:Subject:Date:From;
 b=GUvL0JcyRrqBEAyyQRUhuiGTBER6lt1uhJ0diovIg1MMijcv6rnPKikZUvB/0Ua2u
 krOdL+SO+sO4BVBBltmKhr9VbIPKu/Qp3j94sHRFByorotKjlrkuPbS5r4H61oU6hO
 dBiLs7vWShNxk6LRTR5D9XiPZP2ULXPPrd0cF4Kk=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7615: free pci_vector if mt7615_pci_probe fails
Date: Thu, 30 Apr 2020 22:31:03 +0200
Message-Id: <c82cae35e7f0a27644fec166049484edf73209a0.1588278305.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_133111_797524_8E1F4E5E 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org,
 soul.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Always free pci irq vector if mt7615_pci_probe routine fails
Moreover free irq in mt7615_pci_remove routine

Co-developed-by: Soul Huang <sean.wang@mediatek.com>
Signed-off-by: Soul Huang <sean.wang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/pci.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
index c53760a40cbb..05011b481885 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
@@ -39,13 +39,21 @@ static int mt7615_pci_probe(struct pci_dev *pdev,
 
 	ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
 	if (ret)
-		return ret;
+		goto error;
 
 	mt76_pci_disable_aspm(pdev);
 
 	map = id->device == 0x7663 ? mt7663e_reg_map : mt7615e_reg_map;
-	return mt7615_mmio_probe(&pdev->dev, pcim_iomap_table(pdev)[0],
-				 pdev->irq, map);
+	ret = mt7615_mmio_probe(&pdev->dev, pcim_iomap_table(pdev)[0],
+				pdev->irq, map);
+	if (ret)
+		goto error;
+
+	return 0;
+error:
+	pci_free_irq_vectors(pdev);
+
+	return ret;
 }
 
 static void mt7615_pci_remove(struct pci_dev *pdev)
@@ -54,6 +62,7 @@ static void mt7615_pci_remove(struct pci_dev *pdev)
 	struct mt7615_dev *dev = container_of(mdev, struct mt7615_dev, mt76);
 
 	mt7615_unregister_device(dev);
+	devm_free_irq(&pdev->dev, pdev->irq, dev);
 	pci_free_irq_vectors(pdev);
 }
 
-- 
2.25.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
