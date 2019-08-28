Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A585B9FAAE
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 08:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxGJpyfwX+JpcVHILjjG9o5YomqMW6U41GHYb7BNTXY=; b=NZHKP2WYscES4+
	ShrJQjM1kLHyHm2LtPln3rMhnmhIJdnuziNXGpoN9vLiRCw0uBxDFAeZ7atnKKC70oxqItuahAr72
	ttkxAjGPMjABwt2FfcEZVr/7xblaFOkO6V9nZtTWVcuLlm+NKYUgc08zzdrJiyVV21NZ9aG2FopUL
	VTGLw7qDXxtu1ZmY3dIGzZmoTQ22FHyBIE621iWLB6X1R4QiHZ7ZhKvmqI68LoWcVHuiXGzf47Jmo
	CwZB4Nul+udS0VBKG9U1dxZy3RXeVrKBZnJ8TN2+2DtXXjxzd9JKJuneRhHDNQ/nfTS1AOErgK5Kl
	4ScMLU/9dgDtFAAE8w1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rbO-00011v-Oy; Wed, 28 Aug 2019 06:38:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2raH-0008Th-KS; Wed, 28 Aug 2019 06:37:35 +0000
X-UUID: 3544bc33f98b48e18fecd44c3d4fca8b-20190827
X-UUID: 3544bc33f98b48e18fecd44c3d4fca8b-20190827
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <vic.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 541443417; Tue, 27 Aug 2019 22:37:35 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:37:33 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:37:29 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 14:37:29 +0800
From: Vic Wu <vic.wu@mediatek.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 3/5] crypto: mediatek: only treat EBUSY as transient if backlog
Date: Wed, 28 Aug 2019 14:37:14 +0800
Message-ID: <20190828063716.22689-3-vic.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190828063716.22689-1-vic.wu@mediatek.com>
References: <20190828063716.22689-1-vic.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_233733_804121_9813E82F 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Vic Wu <vic.wu@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ryder Lee <ryder.lee@mediatek.com>

The driver was treating -EBUSY as indication of queueing to backlog
without checking that backlog is enabled for the request.

Fix it by checking request flags.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Vic Wu <vic.wu@mediatek.com>
---
 drivers/crypto/mediatek/mtk-sha.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/mediatek/mtk-sha.c b/drivers/crypto/mediatek/mtk-sha.c
index 2226f12d..1ecef3b5 100644
--- a/drivers/crypto/mediatek/mtk-sha.c
+++ b/drivers/crypto/mediatek/mtk-sha.c
@@ -781,7 +781,9 @@ static int mtk_sha_finup(struct ahash_request *req)
 	ctx->flags |= SHA_FLAGS_FINUP;
 
 	err1 = mtk_sha_update(req);
-	if (err1 == -EINPROGRESS || err1 == -EBUSY)
+	if (err1 == -EINPROGRESS ||
+	    (err1 == -EBUSY && (ahash_request_flags(req) &
+				CRYPTO_TFM_REQ_MAY_BACKLOG)))
 		return err1;
 	/*
 	 * final() has to be always called to cleanup resources
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
