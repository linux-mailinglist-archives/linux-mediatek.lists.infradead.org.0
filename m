Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338F2FC05B
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 Nov 2019 07:48:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tltN58fhGvBykiffh8O2MT+a02wOEzbgMWGrPmDpYTw=; b=e1tuZ++AlUvbCr
	CnQk7yNPBYZrO1xEgRIGLQuDjmLoNP/qxIVE6exsTh4P0nCLcxhzjLGu7KZg8uPOUGDQZqgfnfNq3
	Zbi+HH7GEQ+az7qaqj5XxBUJOz0scaH42fmBUrunUJDYPVL7SCYRDvjqHoDTpETeNPoararNkXwLf
	B4DhziB9zsW4tfV08QggVPt1IMilUNWhDhvezuoSNu/THxG+KMrjHxwPKw5fLvLUmE7kiZBR2zsIJ
	to4u9e/nEsdhZFexKhxW94uGsKH9Op8ul5ynM0AYklz2EMSQLztpOk2GwXrdqUwSCnTBe31IAuEUs
	6auS5U3GsUad64kGy59g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV8vT-0001ib-7D; Thu, 14 Nov 2019 06:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV8vE-0001Wx-Su; Thu, 14 Nov 2019 06:48:06 +0000
Received: from localhost (unknown [223.226.110.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C114C20715;
 Thu, 14 Nov 2019 06:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573714084;
 bh=kwJjaG+SEqpT4/sq5ZdwWvkA07Xb/lWO0se3jKCGklU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Te48b4YPfaWP8IvK5q0sJ5iOQakxbMaqikYck9YuSFBl0OdWCMaf9cfjmgKlRtGMm
 IaKGxhh4bei9KOuaVcG+5mVLi5o8EdQZhRrQS1p3gop2tHEabuIlr3/8C5e443VjOA
 Ys7XLVG8cL3JzzFerBZzyW0MEW7aXw+Ee3wKas7A=
Date: Thu, 14 Nov 2019 12:17:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Satendra Singh Thakur <sst2005@gmail.com>
Subject: Re: [PATCH v1] dmaengine: mediatek: hsdma_probe: fixed a memory leak
 when devm_request_irq fails
Message-ID: <20191114064757.GP952516@vkoul-mobl>
References: <20191105165914.GD952516@vkoul-mobl>
 <20191109113523.6067-1-sst2005@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109113523.6067-1-sst2005@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_224804_953134_CC4274E7 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Satendra,

On 09-11-19, 17:05, Satendra Singh Thakur wrote:
> When devm_request_irq fails, currently, the function
> dma_async_device_unregister gets called. This doesn't free
> the resources allocated by of_dma_controller_register.
> Therefore, we have called of_dma_controller_free for this purpose.

This should have been a v2! Anyway I have applied this and other patch

Thanks
-- 
~Vinod

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
