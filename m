Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A58E133E7B
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 10:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqqVGpWV0KUPdX7Nnksyzvg3yxezZ1AfwdjxMpqvKiY=; b=HFQ/qMD2Lsn+Ox
	PHCFpXlrz9B5KpMiyOK0oQu/93sClQHh6E/38SrLWty1kVKL9dBCF7UQeww0zOZIPvyHdS6CWHgJS
	OQZ8q+f0zkhRFwZfaXdQ1Cbmm5hJKxulkXeBqVz/XgSPm0j0cixjlEFRQdHgAnvkxc7Iv5klH2i1n
	2twgpeQ5EF42Kn2TfLQ8PShE3lisFZIhJoBdaz2YzMR69MealfIgYZ2Cqsq6cWwGWZaj37J1O/Lp/
	UaOeVLtIfLZWppA0J6jbSNRAUKT3iXkJBe/6kNEAsZGiMJsvNy/B9JdpKInvejpZgBgG4NJDXWvL/
	dfsMmqn3VhTYCyQzyouw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7s8-0002IT-EE; Wed, 08 Jan 2020 09:43:28 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7rv-00029r-1s; Wed, 08 Jan 2020 09:43:16 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A72C020007;
 Wed,  8 Jan 2020 09:43:04 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>, jassisinghbrar@gmail.com,
 nsaenzjulienne@suse.de, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 nios2-dev@lists.rocketboards.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH 13/13] mailbox: armada-37xx-rwtm: convert to
 devm_platform_ioremap_resource
In-Reply-To: <20191228183538.26189-13-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
 <20191228183538.26189-13-tiny.windzz@gmail.com>
Date: Wed, 08 Jan 2020 10:43:04 +0100
Message-ID: <87imlmb7x3.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_014315_236384_ABF4C5C6 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Yangtao Li,

> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Applied on mvebu/drivers

Thanks,

Gregory

> ---
>  drivers/mailbox/armada-37xx-rwtm-mailbox.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/mailbox/armada-37xx-rwtm-mailbox.c b/drivers/mailbox/armada-37xx-rwtm-mailbox.c
> index 19f086716dc5..02b7b28e6969 100644
> --- a/drivers/mailbox/armada-37xx-rwtm-mailbox.c
> +++ b/drivers/mailbox/armada-37xx-rwtm-mailbox.c
> @@ -143,7 +143,6 @@ static const struct mbox_chan_ops a37xx_mbox_ops = {
>  static int armada_37xx_mbox_probe(struct platform_device *pdev)
>  {
>  	struct a37xx_mbox *mbox;
> -	struct resource *regs;
>  	struct mbox_chan *chans;
>  	int ret;
>  
> @@ -156,9 +155,7 @@ static int armada_37xx_mbox_probe(struct platform_device *pdev)
>  	if (!chans)
>  		return -ENOMEM;
>  
> -	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -
> -	mbox->base = devm_ioremap_resource(&pdev->dev, regs);
> +	mbox->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(mbox->base)) {
>  		dev_err(&pdev->dev, "ioremap failed\n");
>  		return PTR_ERR(mbox->base);
> -- 
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
