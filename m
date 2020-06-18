Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B821FF221
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 14:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hDV6oWv9j5JcXtSP1JsiA3aJKMmPBoNV4r+fNg7WLEo=; b=VUrmhRrGACI9jLWfHS3HXdKa/
	j1h2FHrYVgmP/jpcOE3bUzwqHnZNVa9Nw1GoU/F/ODrhI1Bzde8Q753kPGR2FJvW/V9I+k88vg9pz
	PUbe0H3+zCcphOQwJ6UlyZDPBGcSj51ct/1Kv8DQTg9Xf3CgD0eIo+Ta8JanMAiXoXl5uhy/tGsal
	XIFvdmJ+6c9tHLps4FyHgJYc6eZITBjhDB4JixRkDItEN9sZn9pofGTzi6LnbrfaWgJVc0Fg3LL42
	4iBFKY/9zOvuU+lDlkwKSGRlv400buy25IE4rXg5pKdcj57B1Tyf0T50XQpaCr3o61x5MPpN0jPJD
	33U2T8yxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltrb-0002MM-Fb; Thu, 18 Jun 2020 12:41:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltrS-0002Eq-0o; Thu, 18 Jun 2020 12:41:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1FED20663;
 Thu, 18 Jun 2020 12:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592484101;
 bh=eJbZQP0xNHsWf9mN+hL/U5ulTsXIkdm9Muq9GcZ9Tow=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hnf18fDQZpQw+uU2EuqznUf8S5+8LXIsEcdu3cMYyCVnbqseEbstRF3Foj9NJaFqV
 cd2rRx9G71nz2N2DksMNqHGzFP1fOl1v34wM+tRYYWHlhDmMbABFk6UDyuhG6sJS7w
 5JX7vkqYlau1RjMT1d029sotH6bt9MegLrmE0JaA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jltrP-004A7y-Cd; Thu, 18 Jun 2020 13:41:39 +0100
MIME-Version: 1.0
Date: Thu, 18 Jun 2020 13:41:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: Hanks Chen <hanks.chen@mediatek.com>
Subject: Re: [PATCH 1/1] irqchip: Add config MTK_SYSIRQ and MTK_CIRQ
In-Reply-To: <1592483471-14806-1-git-send-email-hanks.chen@mediatek.com>
References: <1592483471-14806-1-git-send-email-hanks.chen@mediatek.com>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <f47e8a1e70c982ecf6245db573630f51@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: hanks.chen@mediatek.com, tglx@linutronix.de,
 jason@lakedaemon.net, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com, cc.hwang@mediatek.com,
 loda.chou@mediatek.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_054142_105873_04A5B04D 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: CC Hwang <cc.hwang@mediatek.com>, Jason Cooper <jason@lakedaemon.net>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2020-06-18 13:31, Hanks Chen wrote:
> Mediatek sysirq and cirq drivers as-is were bound together to the 
> config
> of ARCH_MEDIATEK.  These two drivers should be able to be configured
> separately.  For example, on new Mediatek mobile chips such as 
> Dimensity
> 820, the sysirq driver is not used since the hardware module is 
> removed.
> 
> Add two new configs to sysirq and cirq drivers.
> - config MTK_SYSIRQ for the interrupt polarity controller driver: 
> sysirq
> - config MTK_CIRQ for the low-power interrupt driver: cirq
> 
> Signed-off-by: cc.hwang <cc.hwang@mediatek.com>
> Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
> ---
>  drivers/irqchip/Kconfig  |   12 ++++++++++++
>  drivers/irqchip/Makefile |    3 ++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index 29fead2..cc9aa18 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -572,4 +572,16 @@ config LOONGSON_PCH_MSI
>  	help
>  	  Support for the Loongson PCH MSI Controller.
> 
> +config MTK_SYSIRQ
> +	tristate "Mediatek interrupt polarity controller"

How do you expect this to work as a module?

> +	help
> +	  Interrupt polarity controller driver to swap polarity for
> +	  interrupts for Mediatek mobile chips.
> +
> +config MTK_CIRQ
> +	bool "Mediatek low-power interrupt controller"
> +	help
> +	  Low-power interrupt controller driver to monitor IRQS
> +	  in the sleep mode for Mediatek mobile chips.
> +
>  endmenu
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index 133f9c4..30421d2 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -69,7 +69,8 @@ obj-$(CONFIG_BCM7120_L2_IRQ)		+= irq-bcm7120-l2.o
>  obj-$(CONFIG_BRCMSTB_L2_IRQ)		+= irq-brcmstb-l2.o
>  obj-$(CONFIG_KEYSTONE_IRQ)		+= irq-keystone.o
>  obj-$(CONFIG_MIPS_GIC)			+= irq-mips-gic.o
> -obj-$(CONFIG_ARCH_MEDIATEK)		+= irq-mtk-sysirq.o irq-mtk-cirq.o
> +obj-$(CONFIG_MTK_SYSIRQ)		+= irq-mtk-sysirq.o
> +obj-$(CONFIG_MTK_CIRQ)			+= irq-mtk-cirq.o
>  obj-$(CONFIG_ARCH_DIGICOLOR)		+= irq-digicolor.o
>  obj-$(CONFIG_RENESAS_H8300H_INTC)	+= irq-renesas-h8300h.o
>  obj-$(CONFIG_RENESAS_H8S_INTC)		+= irq-renesas-h8s.o

In general, this approach doesn't look right. As it stands, this is just 
breaking existing configurations

Do you really expect users to know exactly which interrupt controllers 
their system is going to use? This seems like the wrong assumption. If 
you really want to save the handful of bytes these drivers take in your 
image, then add the relevant dependency information in Kconfig.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
