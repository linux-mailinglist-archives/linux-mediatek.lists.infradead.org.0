Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DE9D627A
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 14:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omqThHKyeW7pmXoZZADitJ2Li1XU2AnUXoX7MELF7IU=; b=ukEPzjqD5+jwV3
	FejH9VPWFUH/jXzwBEkuFEm8Qw6zkNvafUMOnHgtQZeR93wW3nO/MLCgObzrflDzCtfzXZXcQlmvd
	VEFwqkiuDenHRb5aF7IlY5noVYXr9Xk/7QN/2+7vzI8kkjHfZcUCpA0PRAp1LvmWxRxuaKByLx2O5
	09v1nI+hSK26hgJLvfo7eCig5gPi34tjk50ABgbD06qBcf4vroPdGKKHalPuhObcrNhW5ga8wdbZZ
	Cnk0xrzbnghvmOZcDKaCOKMtjfqvO8qjzP6n6+pJqIVFj+l07Rlss4AHVlirv5yJlRnd5XCt8hCyZ
	HFBQfVc2B3lNhOMWjb/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzPX-0007gf-Hx; Mon, 14 Oct 2019 12:25:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKR-0002qu-Dx
 for linux-mediatek@lists.infradead.org; Mon, 14 Oct 2019 12:20:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id f22so16532458wmc.2
 for <linux-mediatek@lists.infradead.org>; Mon, 14 Oct 2019 05:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=33/CVTeLGzG6b73PvB1DolonEza52HznBgK284X66LM=;
 b=YuGrHoDfANblcFUkJMtNWZSdHaVVNeMSENLXrnZ5HZSsUAHaeaz5wnHcRk+SwQN/PL
 ecMtLbDLlpwuvB4S80EFIxogXP+a8DEhqbT4+x+LUCrByDYPSpoxsWb3/wqC8DJRFlmx
 5cqaluBRZnAZ5D7l9MGsgljBENIzY1Y/e+lNOY4TNLhv9qT5A64yKq/RNOC6XLWFg2hB
 DeNH2TLRT7M2/FL/AUCv4EHNhWrTwROt74Or4yiSHTylzJ6kY6r8r1TjOUV17PNHC+y3
 6PhrPM0gm0PcIZPGOfMbyhJLTzoksELhmokoVrhMYao6j9dfLyXjQ6TKprTG1fbvaxpb
 rRRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=33/CVTeLGzG6b73PvB1DolonEza52HznBgK284X66LM=;
 b=RjrV6LSR+F8by7VNtFurmMlXPHB9g9fMIOyCa2yFdubGUe8f2l2os/MvO6e/LKhOZk
 H9Zm5DKlTsNkR09/kLUFt1RoUd+JJYdliLJTk+JA8ocsKMk57LN0o+GZpAAsV7WRHPqB
 rRZyN3hJZlDctiYM1pBf6dVxfKbfeHPHWr5bpGwJ/vTohyLnvyc6YUGzaaNVm75QyCFO
 ukGUbwiXJ1+aSbPS0p9hFwIDBHQBZL3I7D/PTcJ2MGN7K8zgnjY5Ng+zxpE5AwJoxeki
 f1bdEwfRre7Vkz6HCY2k1ucvVVJ/ZsJwjFhdZ5019eT2KEVQhYkF7f2R8y53Uied2QWZ
 stNA==
X-Gm-Message-State: APjAAAWljDKoKmnbci3L9tXnaNj9wZkiYOdkqCaJ/3acLnpjpeo1KSDj
 ss7bAWM7n8GJMAQPqM76PQ1LZQ==
X-Google-Smtp-Source: APXvYqzwt1gAGQyHVZZli3ifyomkNjhqrep4t00sMECrkP8NELiwHA9Mo6fuRLM0MR0s1YwITu3L4w==
X-Received: by 2002:a1c:e086:: with SMTP id
 x128mr14291016wmg.139.1571055597473; 
 Mon, 14 Oct 2019 05:19:57 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id i1sm20222470wmb.19.2019.10.14.05.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:19:56 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 17/25] crypto: mediatek - switch to skcipher API
Date: Mon, 14 Oct 2019 14:19:02 +0200
Message-Id: <20191014121910.7264-18-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051959_970041_A8167CD4 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
dated 20 august 2015 introduced the new skcipher API which is supposed to
replace both blkcipher and ablkcipher. While all consumers of the API have
been converted long ago, some producers of the ablkcipher remain, forcing
us to keep the ablkcipher support routines alive, along with the matching
code to expose [a]blkciphers via the skcipher API.

So switch this driver to the skcipher API, allowing us to finally drop the
blkcipher code in the near future.

Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/mediatek/mtk-aes.c | 248 +++++++++-----------
 1 file changed, 116 insertions(+), 132 deletions(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 90c9644fb8a8..d3416020669f 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -11,6 +11,7 @@
 
 #include <crypto/aes.h>
 #include <crypto/gcm.h>
+#include <crypto/internal/skcipher.h>
 #include "mtk-platform.h"
 
 #define AES_QUEUE_SIZE		512
@@ -414,7 +415,7 @@ static int mtk_aes_map(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 static void mtk_aes_info_init(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
 			      size_t len)
 {
-	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
+	struct skcipher_request *req = skcipher_request_cast(aes->areq);
 	struct mtk_aes_base_ctx *ctx = aes->ctx;
 	struct mtk_aes_info *info = &ctx->info;
 	u32 cnt = 0;
@@ -450,7 +451,7 @@ static void mtk_aes_info_init(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
 		return;
 	}
 
-	mtk_aes_write_state_le(info->state + ctx->keylen, req->info,
+	mtk_aes_write_state_le(info->state + ctx->keylen, (void *)req->iv,
 			       AES_BLOCK_SIZE);
 ctr:
 	info->tfm[0] += AES_TFM_SIZE(SIZE_IN_WORDS(AES_BLOCK_SIZE));
@@ -552,13 +553,13 @@ static int mtk_aes_transfer_complete(struct mtk_cryp *cryp,
 
 static int mtk_aes_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 {
-	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
-	struct mtk_aes_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct skcipher_request *req = skcipher_request_cast(aes->areq);
+	struct mtk_aes_reqctx *rctx = skcipher_request_ctx(req);
 
 	mtk_aes_set_mode(aes, rctx);
 	aes->resume = mtk_aes_transfer_complete;
 
-	return mtk_aes_dma(cryp, aes, req->src, req->dst, req->nbytes);
+	return mtk_aes_dma(cryp, aes, req->src, req->dst, req->cryptlen);
 }
 
 static inline struct mtk_aes_ctr_ctx *
@@ -571,7 +572,7 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 {
 	struct mtk_aes_base_ctx *ctx = aes->ctx;
 	struct mtk_aes_ctr_ctx *cctx = mtk_aes_ctr_ctx_cast(ctx);
-	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
+	struct skcipher_request *req = skcipher_request_cast(aes->areq);
 	struct scatterlist *src, *dst;
 	u32 start, end, ctr, blocks;
 	size_t datalen;
@@ -579,11 +580,11 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 
 	/* Check for transfer completion. */
 	cctx->offset += aes->total;
-	if (cctx->offset >= req->nbytes)
+	if (cctx->offset >= req->cryptlen)
 		return mtk_aes_transfer_complete(cryp, aes);
 
 	/* Compute data length. */
-	datalen = req->nbytes - cctx->offset;
+	datalen = req->cryptlen - cctx->offset;
 	blocks = DIV_ROUND_UP(datalen, AES_BLOCK_SIZE);
 	ctr = be32_to_cpu(cctx->iv[3]);
 
@@ -620,12 +621,12 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 static int mtk_aes_ctr_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 {
 	struct mtk_aes_ctr_ctx *cctx = mtk_aes_ctr_ctx_cast(aes->ctx);
-	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
-	struct mtk_aes_reqctx *rctx = ablkcipher_request_ctx(req);
+	struct skcipher_request *req = skcipher_request_cast(aes->areq);
+	struct mtk_aes_reqctx *rctx = skcipher_request_ctx(req);
 
 	mtk_aes_set_mode(aes, rctx);
 
-	memcpy(cctx->iv, req->info, AES_BLOCK_SIZE);
+	memcpy(cctx->iv, req->iv, AES_BLOCK_SIZE);
 	cctx->offset = 0;
 	aes->total = 0;
 	aes->resume = mtk_aes_ctr_transfer;
@@ -634,10 +635,10 @@ static int mtk_aes_ctr_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 }
 
 /* Check and set the AES key to transform state buffer */
-static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
+static int mtk_aes_setkey(struct crypto_skcipher *tfm,
 			  const u8 *key, u32 keylen)
 {
-	struct mtk_aes_base_ctx *ctx = crypto_ablkcipher_ctx(tfm);
+	struct mtk_aes_base_ctx *ctx = crypto_skcipher_ctx(tfm);
 
 	switch (keylen) {
 	case AES_KEYSIZE_128:
@@ -651,7 +652,7 @@ static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
 		break;
 
 	default:
-		crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
 		return -EINVAL;
 	}
 
@@ -661,10 +662,10 @@ static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
 	return 0;
 }
 
-static int mtk_aes_crypt(struct ablkcipher_request *req, u64 mode)
+static int mtk_aes_crypt(struct skcipher_request *req, u64 mode)
 {
-	struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
-	struct mtk_aes_base_ctx *ctx = crypto_ablkcipher_ctx(ablkcipher);
+	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
+	struct mtk_aes_base_ctx *ctx = crypto_skcipher_ctx(skcipher);
 	struct mtk_aes_reqctx *rctx;
 	struct mtk_cryp *cryp;
 
@@ -672,185 +673,168 @@ static int mtk_aes_crypt(struct ablkcipher_request *req, u64 mode)
 	if (!cryp)
 		return -ENODEV;
 
-	rctx = ablkcipher_request_ctx(req);
+	rctx = skcipher_request_ctx(req);
 	rctx->mode = mode;
 
 	return mtk_aes_handle_queue(cryp, !(mode & AES_FLAGS_ENCRYPT),
 				    &req->base);
 }
 
-static int mtk_aes_ecb_encrypt(struct ablkcipher_request *req)
+static int mtk_aes_ecb_encrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_ECB);
 }
 
-static int mtk_aes_ecb_decrypt(struct ablkcipher_request *req)
+static int mtk_aes_ecb_decrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_ECB);
 }
 
-static int mtk_aes_cbc_encrypt(struct ablkcipher_request *req)
+static int mtk_aes_cbc_encrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_CBC);
 }
 
-static int mtk_aes_cbc_decrypt(struct ablkcipher_request *req)
+static int mtk_aes_cbc_decrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_CBC);
 }
 
-static int mtk_aes_ctr_encrypt(struct ablkcipher_request *req)
+static int mtk_aes_ctr_encrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_CTR);
 }
 
-static int mtk_aes_ctr_decrypt(struct ablkcipher_request *req)
+static int mtk_aes_ctr_decrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_CTR);
 }
 
-static int mtk_aes_ofb_encrypt(struct ablkcipher_request *req)
+static int mtk_aes_ofb_encrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_OFB);
 }
 
-static int mtk_aes_ofb_decrypt(struct ablkcipher_request *req)
+static int mtk_aes_ofb_decrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_OFB);
 }
 
-static int mtk_aes_cfb_encrypt(struct ablkcipher_request *req)
+static int mtk_aes_cfb_encrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_CFB128);
 }
 
-static int mtk_aes_cfb_decrypt(struct ablkcipher_request *req)
+static int mtk_aes_cfb_decrypt(struct skcipher_request *req)
 {
 	return mtk_aes_crypt(req, AES_FLAGS_CFB128);
 }
 
-static int mtk_aes_cra_init(struct crypto_tfm *tfm)
+static int mtk_aes_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct mtk_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct mtk_aes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct mtk_aes_reqctx));
 	ctx->base.start = mtk_aes_start;
 	return 0;
 }
 
-static int mtk_aes_ctr_cra_init(struct crypto_tfm *tfm)
+static int mtk_aes_ctr_init_tfm(struct crypto_skcipher *tfm)
 {
-	struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);
+	struct mtk_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 
-	tfm->crt_ablkcipher.reqsize = sizeof(struct mtk_aes_reqctx);
+	crypto_skcipher_set_reqsize(tfm, sizeof(struct mtk_aes_reqctx));
 	ctx->base.start = mtk_aes_ctr_start;
 	return 0;
 }
 
-static struct crypto_alg aes_algs[] = {
+static struct skcipher_alg aes_algs[] = {
 {
-	.cra_name		= "cbc(aes)",
-	.cra_driver_name	= "cbc-aes-mtk",
-	.cra_priority		= 400,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_init		= mtk_aes_cra_init,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.setkey		= mtk_aes_setkey,
-		.encrypt	= mtk_aes_cbc_encrypt,
-		.decrypt	= mtk_aes_cbc_decrypt,
-		.ivsize		= AES_BLOCK_SIZE,
-	}
+	.base.cra_name		= "cbc(aes)",
+	.base.cra_driver_name	= "cbc-aes-mtk",
+	.base.cra_priority	= 400,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= mtk_aes_setkey,
+	.encrypt		= mtk_aes_cbc_encrypt,
+	.decrypt		= mtk_aes_cbc_decrypt,
+	.ivsize			= AES_BLOCK_SIZE,
+	.init			= mtk_aes_init_tfm,
 },
 {
-	.cra_name		= "ecb(aes)",
-	.cra_driver_name	= "ecb-aes-mtk",
-	.cra_priority		= 400,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_init		= mtk_aes_cra_init,
-	.cra_blocksize		= AES_BLOCK_SIZE,
-	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.setkey		= mtk_aes_setkey,
-		.encrypt	= mtk_aes_ecb_encrypt,
-		.decrypt	= mtk_aes_ecb_decrypt,
-	}
+	.base.cra_name		= "ecb(aes)",
+	.base.cra_driver_name	= "ecb-aes-mtk",
+	.base.cra_priority	= 400,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.setkey			= mtk_aes_setkey,
+	.encrypt		= mtk_aes_ecb_encrypt,
+	.decrypt		= mtk_aes_ecb_decrypt,
+	.init			= mtk_aes_init_tfm,
 },
 {
-	.cra_name		= "ctr(aes)",
-	.cra_driver_name	= "ctr-aes-mtk",
-	.cra_priority		= 400,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_init		= mtk_aes_ctr_cra_init,
-	.cra_blocksize		= 1,
-	.cra_ctxsize		= sizeof(struct mtk_aes_ctr_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= mtk_aes_setkey,
-		.encrypt	= mtk_aes_ctr_encrypt,
-		.decrypt	= mtk_aes_ctr_decrypt,
-	}
+	.base.cra_name		= "ctr(aes)",
+	.base.cra_driver_name	= "ctr-aes-mtk",
+	.base.cra_priority	= 400,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= 1,
+	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= mtk_aes_setkey,
+	.encrypt		= mtk_aes_ctr_encrypt,
+	.decrypt		= mtk_aes_ctr_decrypt,
+	.init			= mtk_aes_ctr_init_tfm,
 },
 {
-	.cra_name		= "ofb(aes)",
-	.cra_driver_name	= "ofb-aes-mtk",
-	.cra_priority		= 400,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_init		= mtk_aes_cra_init,
-	.cra_blocksize		= 1,
-	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= mtk_aes_setkey,
-		.encrypt	= mtk_aes_ofb_encrypt,
-		.decrypt	= mtk_aes_ofb_decrypt,
-	}
+	.base.cra_name		= "ofb(aes)",
+	.base.cra_driver_name	= "ofb-aes-mtk",
+	.base.cra_priority	= 400,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= AES_BLOCK_SIZE,
+	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= mtk_aes_setkey,
+	.encrypt		= mtk_aes_ofb_encrypt,
+	.decrypt		= mtk_aes_ofb_decrypt,
 },
 {
-	.cra_name		= "cfb(aes)",
-	.cra_driver_name	= "cfb-aes-mtk",
-	.cra_priority		= 400,
-	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
-				  CRYPTO_ALG_ASYNC,
-	.cra_init		= mtk_aes_cra_init,
-	.cra_blocksize		= 1,
-	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
-	.cra_alignmask		= 0xf,
-	.cra_type		= &crypto_ablkcipher_type,
-	.cra_module		= THIS_MODULE,
-	.cra_u.ablkcipher = {
-		.min_keysize	= AES_MIN_KEY_SIZE,
-		.max_keysize	= AES_MAX_KEY_SIZE,
-		.ivsize		= AES_BLOCK_SIZE,
-		.setkey		= mtk_aes_setkey,
-		.encrypt	= mtk_aes_cfb_encrypt,
-		.decrypt	= mtk_aes_cfb_decrypt,
-	}
+	.base.cra_name		= "cfb(aes)",
+	.base.cra_driver_name	= "cfb-aes-mtk",
+	.base.cra_priority	= 400,
+	.base.cra_flags		= CRYPTO_ALG_ASYNC,
+	.base.cra_blocksize	= 1,
+	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
+	.base.cra_alignmask	= 0xf,
+	.base.cra_module	= THIS_MODULE,
+
+	.min_keysize		= AES_MIN_KEY_SIZE,
+	.max_keysize		= AES_MAX_KEY_SIZE,
+	.ivsize			= AES_BLOCK_SIZE,
+	.setkey			= mtk_aes_setkey,
+	.encrypt		= mtk_aes_cfb_encrypt,
+	.decrypt		= mtk_aes_cfb_decrypt,
 },
 };
 
@@ -1259,7 +1243,7 @@ static void mtk_aes_unregister_algs(void)
 	crypto_unregister_aead(&aes_gcm_alg);
 
 	for (i = 0; i < ARRAY_SIZE(aes_algs); i++)
-		crypto_unregister_alg(&aes_algs[i]);
+		crypto_unregister_skcipher(&aes_algs[i]);
 }
 
 static int mtk_aes_register_algs(void)
@@ -1267,7 +1251,7 @@ static int mtk_aes_register_algs(void)
 	int err, i;
 
 	for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
-		err = crypto_register_alg(&aes_algs[i]);
+		err = crypto_register_skcipher(&aes_algs[i]);
 		if (err)
 			goto err_aes_algs;
 	}
@@ -1280,7 +1264,7 @@ static int mtk_aes_register_algs(void)
 
 err_aes_algs:
 	for (; i--; )
-		crypto_unregister_alg(&aes_algs[i]);
+		crypto_unregister_skcipher(&aes_algs[i]);
 
 	return err;
 }
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
