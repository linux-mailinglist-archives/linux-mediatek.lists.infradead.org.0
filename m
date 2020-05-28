Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8528C1E5C88
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 11:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNiE526NKXXpEZcoK2Rdhst7jPsqvNkwmFZ36UPmccI=; b=Vyo5O7HzCvbeSI
	wagZ9jK23qGMW6pYhsEz7EmzzAF6kauf2TKXtY6KsvDnXqgbdz9sgeHvqZOyWIgU7CDFqGnAN5GHa
	GHCZA0jxSYnkcyqi6GF7ypB2hIK7jks/gEuf29TskTCSk2C1BkOgdfebAusoX1LiA+kZ/nW7f1+mC
	GCdm04ZBINwE6wi0D0PT/Cs4frKesvbozjA93oR9JsWh5QVA92OJD5Iv1N9LGv78DoltF1Lx8yTK9
	OAr0tzCAwhnr47YbzHl1japH1ZYaCgTPu2CAHNTexap/TPcLbPapIJa3tSHyHC/sO66dEfUzb6oNC
	vsLp8XWmyh3+Hb7Yrtng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFIA-0002ko-Sg; Thu, 28 May 2020 09:57:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFI7-0002gw-Ky; Thu, 28 May 2020 09:57:37 +0000
X-UUID: 5efe76c22fde44a69e1b449748d7871b-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=XQGLN6fdFutFHBD8vBepvTvkM1enLSGlXBe6T7pY8CE=; 
 b=jrF79ihggdkpoiu/VgCPR50TEF95ya0hqkdPLqftGmSwGo1S5C3ngWHHUJPrT2anLOoudJZpEO2J/+xiNwBnsN1mKQUv4FqKyi3Z62LIlLFAoBG4eujSaIV00CCkXnrq467R11iIkUe6y4w63fmcR3knYIUQm6di77jN/8ZLodw=;
X-UUID: 5efe76c22fde44a69e1b449748d7871b-20200528
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 932205881; Thu, 28 May 2020 01:57:30 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 02:57:28 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 17:57:27 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 28 May 2020 17:57:27 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v4 3/4] dmaengine: mediatek-cqdma: fix compatible
Date: Thu, 28 May 2020 17:57:11 +0800
Message-ID: <1590659832-31476-4-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
References: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_025735_693389_8F26E3F1 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, EastL <EastL.Lee@mediatek.com>,
 dmaengine@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch fixes mediatek-cqdma compatible to common.

Signed-off-by: EastL <EastL.Lee@mediatek.com>
---
 drivers/dma/mediatek/mtk-cqdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
index 905bbcb..bca7118 100644
--- a/drivers/dma/mediatek/mtk-cqdma.c
+++ b/drivers/dma/mediatek/mtk-cqdma.c
@@ -544,7 +544,7 @@ static void mtk_cqdma_hw_deinit(struct mtk_cqdma_device *cqdma)
 }
 
 static const struct of_device_id mtk_cqdma_match[] = {
-	{ .compatible = "mediatek,mt6765-cqdma" },
+	{ .compatible = "mediatek,cqdma" },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mtk_cqdma_match);
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
