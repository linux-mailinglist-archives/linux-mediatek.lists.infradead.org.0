Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861BE182CC7
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 10:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQsWpKOWNSt0U9trNRfk2daD9dvLv9biiPot7rcfHP8=; b=sv0M7gn/wKEroS
	IkBwL+NQo2UWuby9aSBpNyYe/G9hJwJTbfjy5Y45uSL7z2eIlH60UoBHi5Xp/LUm/8XwvKZAQaw4Y
	YoEWaeMdhjrTu/CjahDf+Q65Q9d56/9njCl9DxoblCfWenGXMaOSxg2ShYqShteqQps+nBDYRi4wF
	t5kJpvb0qIhs37V6BoSrEJFsCx1jm1vI1EA4oTXIbNnLnT1mXgttAD99bdWWMu3PpgENvAcRxeXcw
	qdvHzhm9m95+aBIemYr/dImPgqbXCXZOJTP4JB9BQeC+QlEDdyqSeYCB11nZvXX4D/raZOLKdpTQD
	v8iYGnTMmiyn8cydBPBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKWq-0001lw-B4; Thu, 12 Mar 2020 09:53:24 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKWg-0001d0-61; Thu, 12 Mar 2020 09:53:16 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 33704204CB;
 Thu, 12 Mar 2020 10:53:07 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 045E820046;
 Thu, 12 Mar 2020 10:53:07 +0100 (CET)
Subject: Re: [PATCH 4/5] pci: handled return value of platform_get_irq
 correctly
To: Aman Sharma <amanharitsh123@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
References: <cover.1583952275.git.amanharitsh123@gmail.com>
 <b773b3b1ed25a0e6d5d826b6c43293473cbd24e7.1583952276.git.amanharitsh123@gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <6e413f63-06e3-9613-97dc-ff5968a4f759@free.fr>
Date: Thu, 12 Mar 2020 10:53:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b773b3b1ed25a0e6d5d826b6c43293473cbd24e7.1583952276.git.amanharitsh123@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Mar 12 10:53:07 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_025314_375515_8DB0E352 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Mans Rullgard <mans@mansr.com>, linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 11/03/2020 20:19, Aman Sharma wrote:

> diff --git a/drivers/pci/controller/pcie-tango.c b/drivers/pci/controller/pcie-tango.c
> index 21a208da3f59..18c2c4313eb5 100644
> --- a/drivers/pci/controller/pcie-tango.c
> +++ b/drivers/pci/controller/pcie-tango.c
> @@ -273,9 +273,9 @@ static int tango_pcie_probe(struct platform_device *pdev)
>  		writel_relaxed(0, pcie->base + SMP8759_ENABLE + offset);
>  
>  	virq = platform_get_irq(pdev, 1);
> -	if (virq <= 0) {
> +	if (virq < 0) {
>  		dev_err(dev, "Failed to map IRQ\n");
> -		return -ENXIO;
> +		return virq;
>  	}
>  
>  	irq_dom = irq_domain_create_linear(fwnode, MSI_MAX, &dom_ops, pcie);


Weee, here we go again :-)

https://patchwork.kernel.org/patch/11066455/
https://patchwork.kernel.org/patch/10006651/

Last time around, my understanding was that, going forward,
the best solution was:

	virq = platform_get_irq(...)
	if (virq <= 0)
		return virq ? : -ENODEV;

i.e. map 0 to -ENODEV, pass other errors as-is, remove the dev_err

@Bjorn/Lorenzo did you have a change of heart?

Regards.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
