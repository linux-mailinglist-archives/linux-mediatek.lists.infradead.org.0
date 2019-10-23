Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D9E194B
	for <lists+linux-mediatek@lfdr.de>; Wed, 23 Oct 2019 13:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GCdAll0tq9DnBvjxNrv9rVCZsxVU7nFkPPuh/pSJjG4=; b=mPvMJ+4MsTEbFj
	TGZYeErEjM3u2NfKUFRp1Rqcoma1hD00V9fopedHRZpYT8equZtw76AHf3/l7ekJR+30SUXgNcquu
	zsI5PmxRW4UVcXC0tROrvGE3PRKTTghMzDQCjVj3tTIxwV9siKIwqkVWBQBwaoUiZOn1ZC6biWkQO
	yD+16Rbym2FzcSjcx2Ua2OSjIxM2/l4J1jrmiDp86RGcSBsVDdobnSOnUMF/pAHQl53seoiYqKIg5
	5H3zLnRs3gAHIAnAOw9SqgzB3QgLo+KAkz9PTXidjez1w3c3E60y+QknK+iyV0JL+BKX1IPbm5gUI
	beQTxSumoZfPSq7d220g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNF8B-0003CM-TC; Wed, 23 Oct 2019 11:48:48 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNF7y-000314-A6; Wed, 23 Oct 2019 11:48:35 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iNF7o-000451-Tl; Wed, 23 Oct 2019 11:48:24 +0000
From: Colin King <colin.king@canonical.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Vic Wu <vic.wu@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] crypto: mediatek: remove redundant bitwise-or
Date: Wed, 23 Oct 2019 12:48:24 +0100
Message-Id: <20191023114824.30509-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_044834_484127_D48762DB 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Bitwise-or'ing 0xffffffff with the u32 variable ctr is the same result
as assigning the value to ctr.  Remove the redundant bitwise-or and
just use an assignment.

Addresses-Coverity: ("Suspicious &= or |= constant expression")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/crypto/mediatek/mtk-aes.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 90c9644fb8a8..d43410259113 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -591,7 +591,7 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 	start = ctr;
 	end = start + blocks - 1;
 	if (end < start) {
-		ctr |= 0xffffffff;
+		ctr = 0xffffffff;
 		datalen = AES_BLOCK_SIZE * -start;
 		fragmented = true;
 	}
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
