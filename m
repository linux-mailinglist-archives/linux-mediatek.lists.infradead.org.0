Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3D6DA668
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 09:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9hIZ3Rl5u6Sc6zXIKOtVgfSxhhG0wbglfB2lLU9510=; b=BB8HP+z3U3f+PH
	3IdhcRORLeQUItdwZ4WKomhmmccSqbwK53uIwSdT1QUe99MPigvckQ9H5Rv2IIO/5TG3g2ikbrK9F
	9ukgwTUqWbhscap2KfbzH0UgIHYfD6ug1QnEr8BWrnCWIrXCa0vnzsEImZrwjjW4+WgRlQ0hP/jQa
	Q2eEoWeDHrxxnlHOPMmFItcZkVwG/ugeVWd004ttZrj8s026H9KXegNoBIMT4kzqBvHSHkP+f0IIy
	OA3vIlRRrNA1M1tcrrzTITSs0onSNk+0sFJz1KcC0YFXMZ+tNN7033WGRi/5CIwvtHwZFM1jwXcYc
	aw/MDC6eHX/w1YSCnrGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0BE-0008DZ-Ly; Thu, 17 Oct 2019 07:26:40 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iL0Az-00081E-Rg; Thu, 17 Oct 2019 07:26:25 +0000
Date: Thu, 17 Oct 2019 00:26:25 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 11/25] PCI: rockchip: Drop storing driver private
 outbound resource data
Message-ID: <20191017072625.GB19517@infradead.org>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-12-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-12-robh@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
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

On Wed, Oct 16, 2019 at 03:06:33PM -0500, Rob Herring wrote:
> +	entry = resource_list_get_entry_of_type(&bridge->windows, IORESOURCE_MEM);

This add another too long line.  Please audit the whole series for that.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
