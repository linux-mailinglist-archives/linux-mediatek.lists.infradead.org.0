Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E766534104
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 10:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZgNgYcpSd4i4idfeHac1rnhWtAKtPHhXhhdAYim3aA=; b=MwH+M04EnPF7O7
	rHPdye4iI7jT2IgHsHIDpq0OkBWX2jbS4/A8UNHw6I/ZZM5X+tOm848LJc2ErgmDvVQnmPiej7Icm
	vFOXyOb//+h8rLTcH52WjARzxIgsJGjvJLaMRAWTUfmvE5zBGNasrqToz7RkpIfOWA4TFrd41u83Y
	0b1LbukW1DfDiavJcl7kk9nv4GgamV7ZOsvrds51n4keetpOtQMe9x3ybMcFcSJ2TwJmNJ4Wk9Mb9
	ansWk6/EFF0gNRpAvNigCmt0uihl8IC1C34G0QHJATbDXUlfRCr1ra5BP23sk2Fzgs16FAajql03G
	wa4i7ssMpux/8inIb0CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4NS-0002w8-Rt; Tue, 04 Jun 2019 08:01:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4NK-0002oY-45; Tue, 04 Jun 2019 08:00:55 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 76BB4260E1F;
 Tue,  4 Jun 2019 09:00:52 +0100 (BST)
Date: Tue, 4 Jun 2019 09:58:58 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH 2/2] i3c: master: Add driver for MediaTek IP
Message-ID: <20190604095858.38ed9a28@collabora.com>
In-Reply-To: <1559533863-10292-3-git-send-email-qii.wang@mediatek.com>
References: <1559533863-10292-1-git-send-email-qii.wang@mediatek.com>
 <1559533863-10292-3-git-send-email-qii.wang@mediatek.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_010054_297721_A6D5653E 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 bbrezillon@kernel.org, leilk.liu@mediatek.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 xinping.qian@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 11:51:03 +0800
Qii Wang <qii.wang@mediatek.com> wrote:


> +static int mtk_i3c_master_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mtk_i3c_master *master;
> +	struct resource *res;
> +	int ret, irqnr;
> +
> +	master = devm_kzalloc(dev, sizeof(*master), GFP_KERNEL);
> +	if (!master)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "main");
> +	master->regs = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(master->regs))
> +		return PTR_ERR(master->regs);
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dma");
> +	master->dma_regs = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(master->dma_regs))
> +		return PTR_ERR(master->dma_regs);
> +
> +	irqnr = platform_get_irq(pdev, 0);
> +	if (irqnr < 0)
> +		return irqnr;
> +
> +	ret = devm_request_irq(dev, irqnr, mtk_i3c_master_irq,
> +			       IRQF_TRIGGER_NONE, DRV_NAME, master);
> +	if (ret < 0) {
> +		dev_err(dev, "Request I3C IRQ %d fail\n", irqnr);
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32(pdev->dev.of_node, "clock-div",
> +				   &master->clk_src_div);

You say in one comment that this clock divider is fixed in HW but might
change on a per-SoC basis. If that's the case, you should get rid of
this clock-div prop and attach the divider to the compatible (using an
mtk_i3c_master_variant struct that contains a divider field).

> +	if (ret < 0)
> +		return -EINVAL;
> +
> +	spin_lock_init(&master->xferqueue.lock);
> +	INIT_LIST_HEAD(&master->xferqueue.list);
> +
> +	if (dma_set_mask(dev, DMA_BIT_MASK(33))) {
> +		dev_err(dev, "dma_set_mask return error.\n");
> +		return -EINVAL;
> +	}
> +
> +	master->clk_main = devm_clk_get(dev, "main");
> +	if (IS_ERR(master->clk_main)) {
> +		dev_err(dev, "cannot get main clock\n");
> +		return PTR_ERR(master->clk_main);
> +	}
> +	master->clk_dma = devm_clk_get(dev, "dma");
> +	if (IS_ERR(master->clk_dma)) {
> +		dev_err(dev, "cannot get dma clock\n");
> +		return PTR_ERR(master->clk_dma);
> +	}
> +
> +	master->clk_arb = devm_clk_get_optional(dev, "arb");
> +	if (IS_ERR(master->clk_arb))
> +		return PTR_ERR(master->clk_arb);
> +
> +	ret = mtk_i3c_master_clock_enable(master);
> +	if (ret) {
> +		dev_err(dev, "clock enable failed!\n");
> +		return ret;
> +	}
> +
> +	master->dev = dev;
> +	platform_set_drvdata(pdev, master);
> +
> +	ret = i3c_master_register(&master->mas_ctrler, dev,
> +				  &mtk_i3c_master_ops, false);
> +	if (ret) {
> +		dev_err(dev, "Failed to add i3c bus to i3c core\n");
> +		mtk_i3c_master_clock_disable(master);
> +		return ret;
> +	}
> +
> +	return 0;
> +}

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
