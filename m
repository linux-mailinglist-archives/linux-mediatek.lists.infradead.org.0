Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CF79F6AD
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 01:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b11I6dE6GTIVItupO4Gp1nX9X/r3oC/Jm4ufAUF4cVA=; b=WXeH/58ueJndPs
	qMSuko4W7HzEgpW+DSg7stfRBl7voYwdy+dFtqcNKvhF2JkVIFYHfvIBtpoqfd9PMXThv8G/ac2+N
	UDuwB1SRlP6EjEAKypH8eJFwoAuENEipYV0lLg10mHjVoAkAYJ8uKQLlaXgPKENM1/EFIOIrgbSqH
	P9sMjbg/xE3YLz3TkM1UhTgFbA6giK1RgTRnE1ONnYsMJx82l58cXHIuaDOfK9nilicFkujzk/dyo
	7icURLcDhU993ar8sLpPRWuAr4PT1N9hhj+x1ViCIjXhYd9gymMpXC00slXYjYVRByjBW4Jv4FwXy
	/IAEpvqSw9GJ1VzMFxIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kd2-0001tK-SG; Tue, 27 Aug 2019 23:11:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kch-0001az-14; Tue, 27 Aug 2019 23:11:42 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EECF20856;
 Tue, 27 Aug 2019 23:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566947494;
 bh=aNlA/MApouOcwf72/8GMSwuzsBqyO6Sp9x6HCpSXgGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZRFwTS1rqTxwj2gvps8jYXhfiuL5Eq3hUd/q4PyouqcIke/YpvR0yEqCnHJpG0oBG
 q+uh2ZEibfyAH/G5ndZQGkinr8VnwC95MliB678A5+UIXUovp7a4j0ytcyqog3dgIl
 8jeD5gpDNVsUfsxolJbYrmZuu7z9XbuEg9x+Ts0Y=
Date: Tue, 27 Aug 2019 18:11:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof Wilczynski <kw@linux.com>
Subject: Re: [PATCH] PCI: mediatek: Remove surplus return from a void function
Message-ID: <20190827231133.GG9987@google.com>
References: <20190825221039.6977-1-kw@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825221039.6977-1-kw@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_161140_874590_8DE5D0C2 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 12:10:39AM +0200, Krzysztof Wilczynski wrote:
> Remove unnecessary empty return statement at the
> end of a void function mtk_pcie_intr_handler() in
> the drivers/pci/controller/pcie-mediatek.c.
> 
> The surplus return statement was added as part of
> the work in commit 42fe2f91b4eb ("PCI: mediatek:
> Implement chained IRQ handling setup").
> 
> Signed-off-by: Krzysztof Wilczynski <kw@linux.com>

I squashed this together with the other patch doing the same thing.
If it causes any conflict with Lorenzo's branches, I'll resolve it
when merging.

> ---
>  drivers/pci/controller/pcie-mediatek.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> index 3eaa7081ab2a..626a7c352dfd 100644
> --- a/drivers/pci/controller/pcie-mediatek.c
> +++ b/drivers/pci/controller/pcie-mediatek.c
> @@ -635,8 +635,6 @@ static void mtk_pcie_intr_handler(struct irq_desc *desc)
>  	}
>  
>  	chained_irq_exit(irqchip, desc);
> -
> -	return;
>  }
>  
>  static int mtk_pcie_setup_irq(struct mtk_pcie_port *port,
> -- 
> 2.22.1
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
