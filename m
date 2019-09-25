Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E27BDA66
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 11:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fss5ECUqXinyzfX/WlVnMKMLcjAJwFvXN+ONcPrf38=; b=m8PN7Xbn9Nqj87
	F5bgF0mtPbXfeJvsARJqE8xJLBuXWobrtTDxnqKYACjSDT+RXOlaWsnr0mVxWvdTNHmmhWjZYawUk
	zuTDj7qJy6De6Hi3sQGdWC2qDiCbCv530d6By20mAC4kaAeiHNapqv0cxlMLu700VeU1wsOitRlvI
	H17geO5TC3LsOLvBtchclIq9ijszlF3g+SrYadjGkSteF/EictfUV6qWdwQuvpdf3yI28gdAJqOOW
	xZ8c9AKQXC8mZy43kHqXRAj4QR57kU8zVt5H/gnQ/vX+WsM5E8TSy7KQVjAhTL4jPy3a/gUTkx4Bx
	lwqVOqzta6KOjykzvnYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3At-0006kB-3c; Wed, 25 Sep 2019 09:01:27 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD39t-0006Ob-Lp; Wed, 25 Sep 2019 09:00:35 +0000
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A5CD4100009;
 Wed, 25 Sep 2019 09:00:14 +0000 (UTC)
Date: Wed, 25 Sep 2019 11:00:13 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 06/11] PCI: of: Add inbound resource parsing to helpers
Message-ID: <20190925110013.43ffbce6@windsurf>
In-Reply-To: <20190924214630.12817-7-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-7-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_020027_235402_C21CEB89 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
 [URIs: amperecomputing.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Linus Walleij <linus.walleij@linaro.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Nadav Haklai <nadavh@marvell.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 16:46:25 -0500
Rob Herring <robh@kernel.org> wrote:

> Extend devm_of_pci_get_host_bridge_resources() and
> pci_parse_request_of_pci_ranges() helpers to also parse the inbound
> addresses from DT 'dma-ranges' and populate a resource list with the
> translated addresses. This will help ensure 'dma-ranges' is always
> parsed in a consistent way.
> 
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Toan Le <toan@os.amperecomputing.com>
> Cc: Ley Foon Tan <lftan@altera.com>
> Cc: Tom Joseph <tjoseph@cadence.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: Ryder Lee <ryder.lee@mediatek.com>
> Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Cc: Simon Horman <horms@verge.net.au>
> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Cc: rfi@lists.rocketboards.org
> Cc: linux-mediatek@lists.infradead.org
> Cc: linux-renesas-soc@vger.kernel.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
>  drivers/pci/controller/pci-aardvark.c         |  2 +-
>  drivers/pci/controller/pci-ftpci100.c         |  3 +-
>  drivers/pci/controller/pci-host-common.c      |  2 +-
>  drivers/pci/controller/pci-v3-semi.c          |  2 +-
>  drivers/pci/controller/pci-versatile.c        |  2 +-
>  drivers/pci/controller/pci-xgene.c            |  1 +
>  drivers/pci/controller/pcie-altera.c          |  2 +-
>  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
>  drivers/pci/controller/pcie-iproc-platform.c  |  1 +
>  drivers/pci/controller/pcie-mediatek.c        |  2 +-
>  drivers/pci/controller/pcie-mobiveil.c        |  4 +-
>  drivers/pci/controller/pcie-rcar.c            |  3 +-
>  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
>  drivers/pci/controller/pcie-xilinx-nwl.c      |  2 +-
>  drivers/pci/controller/pcie-xilinx.c          |  2 +-
>  drivers/pci/of.c                              | 44 ++++++++++++++++++-
>  drivers/pci/pci.h                             |  8 +++-
>  include/linux/pci.h                           |  2 +
>  19 files changed, 72 insertions(+), 18 deletions(-)

for the AArdvark bits:

Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
(on Armada 3720-DB, with a E1000E NIC)

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
