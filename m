Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F80B056A
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 00:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fafjJ0S1uTuLsJVMWhY3N/2Lg4dRm3BiYW39hAuB24k=; b=EE3CypCpJa4dZx
	IO+p5UAPhUuot9w8pdgJ0939Iid4EnvralE1QVVSccGXd4HENsjdlOtenkJQ2LIZ7Vnq5Axv5guZv
	I4NSVfiB3WmcE/9xcczbcqDkBqr1HhlLvuCV1zotkOvFAJmr1NSJDYD+uqSlvYOawQmXUyyiZ9aQd
	X8bwUKdcVjZjbrAqekR0Q7kV29iMY32gkqQ6xDe2XJ96wPQerbFZWBSyuT6HvTCkFGtn+gGYunJ6a
	hDsUjXkkYQu4+aYHPSgpQar7TJ3Ia0gLaFaeqTJjqczKdk4K2v8ZArPaveChWeA/0vlq6aqHdDdUa
	lSED846JlSbY0tt62UKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Arr-0006PF-Jy; Wed, 11 Sep 2019 22:13:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Arb-0006Er-5E
 for linux-mediatek@lists.infradead.org; Wed, 11 Sep 2019 22:13:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so12238936pgg.8
 for <linux-mediatek@lists.infradead.org>; Wed, 11 Sep 2019 15:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nf55d0M2fgrTAZT8patiiuxPZwICTFJSYQN2V2QrDmQ=;
 b=anYEbfk0b5+4asQZViJ4GPOYj9WhTStLmh+ecrhz8v0xdn4zwEPtVsZfof1Lme4QKG
 b32MZ4jlp1aoNGec5iHuPGezZ3FzV6+R16gp2x0cz7OsJCmV/AthIUpblCcZuw36Gto7
 mJkKm7YXtOUw2VruFSiLqhQj0OJu9fPbzDsFVuzSNY/cxfPyn9H0FwUDZLL1LMqq00G1
 oI1QPoTi1nvd0pX87LlIIbwYg89eK2LT1S43DfayBVQKgXroKePJDLEGsZqSvKP18I9I
 cHuVxbQjxuvEUCu+JKod7gM2xasHWrJxerWu65fq7bPTxfGnDob4I8Jir7+fVc6Xf8Kk
 JWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nf55d0M2fgrTAZT8patiiuxPZwICTFJSYQN2V2QrDmQ=;
 b=KmrxswlSr9HXO8Qb/wj1vNy1i73s0moYW2lz4nw4sw2gc7DyAV96LUaG5Ccns+fHmV
 gr3TGH4ZK1KL7C6dlgaTh/XU6bA3Y8QzxC/65/GKy0E+2u6LNyZSh3n9yBG8CniF7XF5
 blqPbctEVq/GB7OWHOqzCSiYTJkk4xCq4W6AWazVOcHmqzR2GfpXAjaBisdeWZAQ63w8
 eSL3Q7hInVtc9TbSYYk47jnVESOMNNk4nNPVPkYsnF5b+EsyWyJ1YqZrn35wHIyCbac7
 3L08ZVCMj5F5uQofwLFJr9oSPGgBHUaG1gTbCwRndjGGn4Em2jCEFdWtQvs+9F/a40zX
 5LOA==
X-Gm-Message-State: APjAAAUsIA+50xV0bUYNUEJ3cwbkteWtX4RaPPj2dm5Ri829YXNpMwMj
 aXkJU0vWspLgyLb/OeGMB1XVZw==
X-Google-Smtp-Source: APXvYqzPGDfNqvq/dqDwP6b3TOEtC3Bb+5uRpJ4DO9WApq2laqUm31jZznk69DG8lZqgNynRXwxbkg==
X-Received: by 2002:a65:6284:: with SMTP id f4mr13973604pgv.416.1568239999858; 
 Wed, 11 Sep 2019 15:13:19 -0700 (PDT)
Received: from [192.168.1.188] ([23.158.160.160])
 by smtp.gmail.com with ESMTPSA id r1sm18455579pgv.70.2019.09.11.15.13.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 15:13:18 -0700 (PDT)
Subject: Re: [PATCH v1 1/2] block: bypass blk_set_runtime_active for
 uninitialized q->dev
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 linux-block@vger.kernel.org, martin.petersen@oracle.com, jejb@linux.ibm.com,
 matthias.bgg@gmail.com
References: <1568183562-18241-1-git-send-email-stanley.chu@mediatek.com>
 <1568183562-18241-2-git-send-email-stanley.chu@mediatek.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <66fddf12-0dc4-1c73-affd-f8404e87342f@kernel.dk>
Date: Wed, 11 Sep 2019 16:13:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568183562-18241-2-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_151323_205163_E5ACADC7 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 9/11/19 12:32 AM, Stanley Chu wrote:
> Some devices may skip blk_pm_runtime_init() and have null pointer
> in its request_queue->dev. For example, SCSI devices of UFS Well-Known
> LUNs.
> 
> Currently the null pointer is checked by the user of
> blk_set_runtime_active(), i.e., scsi_dev_type_resume(). It is better to
> check it by blk_set_runtime_active() itself instead of by its users.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>   block/blk-pm.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/block/blk-pm.c b/block/blk-pm.c
> index 0a028c189897..56ed94f7a2a3 100644
> --- a/block/blk-pm.c
> +++ b/block/blk-pm.c
> @@ -207,6 +207,9 @@ EXPORT_SYMBOL(blk_post_runtime_resume);
>    */
>   void blk_set_runtime_active(struct request_queue *q)
>   {
> +	if (!q->dev)
> +		return;
> +
>   	spin_lock_irq(&q->queue_lock);
>   	q->rpm_status = RPM_ACTIVE;
>   	pm_runtime_mark_last_busy(q->dev);

I'd prefer just doing:

	if (q->dev) {
		...
	}

instead. Other than that little complaint, looks good to me.

-- 
Jens Axboe


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
