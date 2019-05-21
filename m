Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E82D24733
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 06:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uncbkn9ndfkLllgVl3ZkeeJJ1FVqI/YNR61WdtrzxN4=; b=FI7yPi3d79u6Qp
	xaNF4VpqGGR2RKWpvo4cbfbw/gyYfKjUp2IBN0zIy2wxCXbUVRTio2nNK8b2G6G/b1suUXJNnzppo
	qUOxvZsJs3uENnM0TH3/N/pPvINj/z2xI6X0wLUJW5fmMraqVD7jlGbr+9Q6PWeHrFh0cgjjif+zJ
	XZ09wXc20FeBNsrxmc8ntv2d0uVFid/QOYtXpOu1qpDoOln0+ZpbTW7n+hdGRk1I92sBqnD7okbWX
	Stb2aAumavtHwZdm0cQB/T59JaoFgfrCUQsAOs7CiZQCk1k3rYTE9vsFzobfJ7W5dJpZ3tJUyGyRo
	Nk39uCoFMMs4uXuALMWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSwrb-00062v-8R; Tue, 21 May 2019 04:58:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSwrX-00062Q-B1
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 04:58:56 +0000
Received: from localhost (unknown [106.201.107.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4207121019;
 Tue, 21 May 2019 04:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558414735;
 bh=w0PrRhb/VLNDP5E1yQloNmbdNQpf/jLdu2sJYIQzoqU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wmWkLTPAQGqtWF4/jrOD7kyg84A83fKHEk6yU+xZ3MeatGBuQ2XTplO2ASwvXXW8f
 jSHwl6zOpH+h2vhWkCJjY/v3sVd31AGKwC5TZF/oL7TM6CS/ifXpKaeoIdx2pEpNnN
 PQlVn0vCEPAoBikbm3TbaIf0ZkRVki+DzGy6e0B0=
Date: Tue, 21 May 2019 10:28:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] dmaengine: mediatek-cqdma: sleeping in atomic context
Message-ID: <20190521045851.GR15118@vkoul-mobl>
References: <20190509100923.GA7024@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509100923.GA7024@mwanda>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_215855_393970_61875121 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Sean Wang <sean.wang@mediatek.com>, kernel-janitors@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Shun-Chih Yu <shun-chih.yu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 09-05-19, 13:09, Dan Carpenter wrote:
> The mtk_cqdma_poll_engine_done() function takes a true/false parameter
> where true means it's called from atomic context.  There are a couple
> places where it was set to false but it's actually in atomic context
> so it should be true.
> 
> All the callers for mtk_cqdma_hard_reset() are holding a spin_lock and
> in mtk_cqdma_free_chan_resources() we take a spin_lock before calling
> the mtk_cqdma_poll_engine_done() function.

Applied, thanks

> 
> Fixes: b1f01e48df5a ("dmaengine: mediatek: Add MediaTek Command-Queue DMA controller for MT6765 SoC")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> The "atomic" parameter is always true so the temptation was to just
> remove it entirely.

a patch is welcome :)

-- 
~Vinod

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
