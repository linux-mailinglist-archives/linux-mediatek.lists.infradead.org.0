Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC3DB0FA6
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 15:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSxbg83Y9RN8P3q7Trt/KTpy4p1ffmQmMcHRMJmibuQ=; b=uz+BVBRDQfCS1V
	6+ogOb6aY4FcHFYZMuZHrsmM283csCpfwwLt/dWPvr8jkt5J2Iq9GRZLybS6+GKER79xjWX5cwc5F
	t6UspBMy7YisWw8LxZZRUDFpIa9Mm5Lj9ptl4GwuAL2zwAA0FKtTfekZWSRwa2NDkWruCAn3CmLfy
	A+nh1dzsszYkm1SKoKuFoIkA0DoT59bxr4eZMklsINI7ElLNaPb6kvRzyyVdzcgrExYzAwdQ6c4kc
	kEkYgjaXuALCOGMvm1Iu7/qYrdX8jhCA7Ns86ze+2u2JmpFiLaNMncbPtnYeyWuwG4GTxA0Z8K4hZ
	HtAIC+GorlkVyMpYw06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Ou5-0007bA-Db; Thu, 12 Sep 2019 13:12:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Otl-0007O8-HM
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 13:12:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id 205so16004450pfw.2
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Sep 2019 06:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eDPbVXqU+y+RmPn4/ZLvHXxFmtHPu9FG57Z6VOzUMvY=;
 b=HnE6QibGc8QbXvgR7z4lNSDL09+NmGKGy1fRXULhjvG0xbmEdafAJkCDi0302zxTwt
 qBPwDfRYcQB7pUUuEdBpFzdGMwGnMo4BwjofoqTRT2+qK7/5cCDO40UvT4ULFlUtOzWU
 z5aajg2c+ulNJSH3EudIAIulziEwBpZphkcXIGpikHIGOXTeYK99PrDs43X1xUeKmjc4
 vRVE60SnTPpsjQrfNkCwMLRLNhm38Eu7xU6Qo/5AeJ+CJE1ve6p8qsbZ7Tmna+66s5N6
 cbui7ZzWXNWy377MilRPai/306n+XaMMeck8va3DiwUhi3Vh+LNL9HVtJocbHL8yNGyV
 HGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eDPbVXqU+y+RmPn4/ZLvHXxFmtHPu9FG57Z6VOzUMvY=;
 b=G+XpH3C09PSkdmN0L5qimU4W2VvF78uLA1AOBTYVDVDCzgubvcdUXoLpvmxTzDbczO
 BjfgpvtsE7+xyZcXpazCEiGuBJAOm+h4WLVsQMREn3/gIp/rIIOm8pDqmTfrzlIYKrLx
 MCSenoOOdSoVA6tB6QQk+8NjkW/veQQpi+8Ly+DXiLahkPKCzbivJISzcrMDVGz7caua
 +f8JLK9y4JLQBNkRSbeOfp+VSME6+GfTeGFG1gjZNyHQX2ZqUp17UhORSjhRonKvpOH/
 lz4utbrbEt05XvWrz34vi2E8n9aDpKqqI9JJZcFa+0tk1Kzr72M8IW7glsDCkWYMRcxx
 kBtA==
X-Gm-Message-State: APjAAAUvVDySozsRFKEjrOTgJrQksuHVKLsA9Hhu/2tpoce6wZKwDwJO
 gXvv7wp2mfMmH91HmC0HTbVrpg==
X-Google-Smtp-Source: APXvYqy5IRnkfN40k2/B7q313u2BRWeMvX80jlePX/MlMV1tGW/e5n3Y99EGn/AhhLeBvPK61j8c0Q==
X-Received: by 2002:a62:2787:: with SMTP id n129mr10490181pfn.45.1568293952678; 
 Thu, 12 Sep 2019 06:12:32 -0700 (PDT)
Received: from ?IPv6:2600:380:4b2e:3b64:29ff:2f14:b019:100?
 ([2600:380:4b2e:3b64:29ff:2f14:b019:100])
 by smtp.gmail.com with ESMTPSA id m13sm24678837pgn.57.2019.09.12.06.12.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 06:12:31 -0700 (PDT)
Subject: Re: [PATCH v2] fixup null q->dev checking in both block and scsi layer
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 linux-block@vger.kernel.org, martin.petersen@oracle.com, jejb@linux.ibm.com,
 matthias.bgg@gmail.com
References: <1568277328-4597-1-git-send-email-stanley.chu@mediatek.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2a285805-cdf3-fe7a-0d1a-9f53f821d025@kernel.dk>
Date: Thu, 12 Sep 2019 07:12:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568277328-4597-1-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_061233_632513_C74D0117 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 9/12/19 2:35 AM, Stanley Chu wrote:
> Some devices may skip blk_pm_runtime_init() and have null pointer in
> its request_queue->dev. For example, SCSI devices of UFS Well-Known
> LUNs.
> 
> Currently the null pointer is checked by the user of
> blk_set_runtime_active(), i.e., scsi_dev_type_resume(). It is better
> to check it by blk_set_runtime_active() itself instead of by its
> users.

Applied, thanks.

-- 
Jens Axboe


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
