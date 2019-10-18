Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817E3DC471
	for <lists+linux-mediatek@lfdr.de>; Fri, 18 Oct 2019 14:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHxxcJqgFs5NP7roORqQCjw3+0wskuCswEnNB8AZSg8=; b=OR7FTClm2hxWJV
	oS55rXg6jpedvRTnZXiw0cJCUsDisUyxSggVsYupCg9KrkNkwUukheBm57lSM5A6IL+2iCglIuk4L
	ImqVvo8qX2Dc5Vw+hWhREyq23WT2/4s23RS8xqoycKKis1llawdiZe/Wk4qc1jsMuI6xAOuOjQFqo
	01kDHLo7fNt7rOf9Wp4XFQYjc6RH98sfQfR9new8Un/i/KWlMj5Oy2+qNJ7CwqWBMdrKDEvoYeQJ8
	lkvhKhCOA93TqBkmxR/wEbWaeqUu2tCsEtA0t6vCl2o836AXnLkJD55JYHOWpEJIqa++dl4y5sz+m
	b9mhmnbD2v3FD91p+5Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLR4v-0003U9-MK; Fri, 18 Oct 2019 12:09:57 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLR4h-0003JM-AN; Fri, 18 Oct 2019 12:09:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE0EFCA3;
 Fri, 18 Oct 2019 05:09:32 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 104C03F6C4;
 Fri, 18 Oct 2019 05:09:32 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:09:30 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 04/25] PCI: altera: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20191018120930.GE47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-5-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-5-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_050943_405958_C744DD00 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:06:26PM -0500, Rob Herring wrote:
> Convert altera host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
> 
> If an I/O range is present, then it will now be mapped. It's expected
> that h/w which doesn't support I/O range will not define one.
> 
> Cc: Ley Foon Tan <lftan@altera.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: rfi@lists.rocketboards.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> v2:
> - Remove temporary resource list
> ---
>  drivers/pci/controller/pcie-altera.c | 41 ++--------------------------
>  1 file changed, 2 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
> index d2497ca43828..ba025efeae28 100644
> --- a/drivers/pci/controller/pcie-altera.c
> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -92,7 +92,6 @@ struct altera_pcie {
>  	u8			root_bus_nr;
>  	struct irq_domain	*irq_domain;
>  	struct resource		bus_range;
> -	struct list_head	resources;
>  	const struct altera_pcie_data	*pcie_data;
>  };
>  
> @@ -670,39 +669,6 @@ static void altera_pcie_isr(struct irq_desc *desc)
>  	chained_irq_exit(chip, desc);
>  }
>  
> -static int altera_pcie_parse_request_of_pci_ranges(struct altera_pcie *pcie)
> -{
> -	int err, res_valid = 0;
> -	struct device *dev = &pcie->pdev->dev;
> -	struct resource_entry *win;
> -
> -	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &pcie->resources, NULL);
> -	if (err)
> -		return err;
> -
> -	err = devm_request_pci_bus_resources(dev, &pcie->resources);
> -	if (err)
> -		goto out_release_res;
> -
> -	resource_list_for_each_entry(win, &pcie->resources) {
> -		struct resource *res = win->res;
> -
> -		if (resource_type(res) == IORESOURCE_MEM)
> -			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
> -	}
> -
> -	if (res_valid)
> -		return 0;
> -
> -	dev_err(dev, "non-prefetchable memory resource required\n");
> -	err = -EINVAL;
> -
> -out_release_res:
> -	pci_free_resource_list(&pcie->resources);
> -	return err;
> -}
> -
>  static int altera_pcie_init_irq_domain(struct altera_pcie *pcie)
>  {
>  	struct device *dev = &pcie->pdev->dev;
> @@ -833,9 +799,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	INIT_LIST_HEAD(&pcie->resources);
> -
> -	ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> +	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +					      NULL);
>  	if (ret) {
>  		dev_err(dev, "Failed add resources\n");
>  		return ret;
> @@ -853,7 +818,6 @@ static int altera_pcie_probe(struct platform_device *pdev)
>  	cra_writel(pcie, P2A_INT_ENA_ALL, P2A_INT_ENABLE);
>  	altera_pcie_host_init(pcie);
>  
> -	list_splice_init(&pcie->resources, &bridge->windows);
>  	bridge->dev.parent = dev;
>  	bridge->sysdata = pcie;
>  	bridge->busnr = pcie->root_bus_nr;
> @@ -884,7 +848,6 @@ static int altera_pcie_remove(struct platform_device *pdev)
>  
>  	pci_stop_root_bus(bridge->bus);
>  	pci_remove_root_bus(bridge->bus);
> -	pci_free_resource_list(&pcie->resources);
>  	altera_pcie_irq_teardown(pcie);
>  
>  	return 0;
> -- 
> 2.20.1
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
