Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8820C9FB21
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 09:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZSvyeU7G8eVJQIUk7FJQagKibpNTUjrG35bTjnYB8d0=; b=qJdoaJNUKb8/3mDkaHiqUcDP5
	EoN6rzw0gQsZ+miFanDOO9QXke4WVMrgWzl2lRbCCchwsyV5uqf1QdZN1pHU9HM2mQoFWAz6Ax0xl
	Hdo4zk5fxzpF+CVtnDilZSGxwMwf4zdb0S7O7JdAmxuUl5gD2BhP+4//a7Qx5XH6tH0bolpCbXe2L
	GBh59qHpDbv9RKfzLU66rkL9zQ7PTDUffsH7zBzsQD1lwWWXi/bMVmsT5ov/fRN+mR4dpKD+zJYGu
	oHUndVv7ARqjqapju3t9nsm0ZpkPsGoGkR6+DCFlXNDYtaXk1bu8gVi19Hkmc2MIRAim7LqvqMdMx
	q+ca9I1VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2s1r-00025A-9q; Wed, 28 Aug 2019 07:06:03 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2s06-0000Sg-UU; Wed, 28 Aug 2019 07:04:18 +0000
Received: from p5dcfb7c9.dip0.t-ipconnect.de ([93.207.183.201]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1i2rzs-0004V3-3B; Wed, 28 Aug 2019 09:04:00 +0200
Subject: Re: [PATCH 5/5] crypto: mediatek: fix incorrect crypto key setting
To: Vic Wu <vic.wu@mediatek.com>, Herbert Xu <herbert@gondor.apana.org.au>
References: <20190828063716.22689-1-vic.wu@mediatek.com>
 <20190828063716.22689-5-vic.wu@mediatek.com>
From: John Crispin <john@phrozen.org>
Message-ID: <f91ceaa6-edb3-1e70-1fdc-d0022fafd316@phrozen.org>
Date: Wed, 28 Aug 2019 09:03:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190828063716.22689-5-vic.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_000415_861848_C50C5B16 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


On 28/08/2019 08:37, Vic Wu wrote:
> Record crypto key to context during setkey and set the key to
> transform state buffer in encrypt/decrypt process.
>
> Signed-off-by: Vic Wu <vic.wu@mediatek.com>

Thanks for the fix !

Tested-by: John Crispin <john@phrozen.og>

> ---
>   drivers/crypto/mediatek/mtk-aes.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
> index 9eeb8b8d..05f21dc8 100644
> --- a/drivers/crypto/mediatek/mtk-aes.c
> +++ b/drivers/crypto/mediatek/mtk-aes.c
> @@ -107,6 +107,7 @@ struct mtk_aes_reqctx {
>   struct mtk_aes_base_ctx {
>   	struct mtk_cryp *cryp;
>   	u32 keylen;
> +	__le32 key[12];
>   	__le32 keymode;
>   
>   	mtk_aes_fn start;
> @@ -541,6 +542,8 @@ static int mtk_aes_handle_queue(struct mtk_cryp *cryp, u8 id,
>   		backlog->complete(backlog, -EINPROGRESS);
>   
>   	ctx = crypto_tfm_ctx(areq->tfm);
> +	/* Write key into state buffer */
> +	memcpy(ctx->info.state, ctx->key, sizeof(ctx->key));
>   
>   	aes->areq = areq;
>   	aes->ctx = ctx;
> @@ -660,7 +663,7 @@ static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
>   	}
>   
>   	ctx->keylen = SIZE_IN_WORDS(keylen);
> -	mtk_aes_write_state_le(ctx->info.state, (const u32 *)key, keylen);
> +	mtk_aes_write_state_le(ctx->key, (const u32 *)key, keylen);
>   
>   	return 0;
>   }
> @@ -1093,10 +1096,8 @@ static int mtk_aes_gcm_setkey(struct crypto_aead *aead, const u8 *key,
>   	if (err)
>   		goto out;
>   
> -	/* Write key into state buffer */
> -	mtk_aes_write_state_le(ctx->info.state, (const u32 *)key, keylen);
> -	/* Write key(H) into state buffer */
> -	mtk_aes_write_state_be(ctx->info.state + ctx->keylen, data->hash,
> +	mtk_aes_write_state_le(ctx->key, (const u32 *)key, keylen);
> +	mtk_aes_write_state_be(ctx->key + ctx->keylen, data->hash,
>   			       AES_BLOCK_SIZE);
>   out:
>   	kzfree(data);

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
