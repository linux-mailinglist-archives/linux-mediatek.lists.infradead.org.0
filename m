Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EF9D9B56
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 22:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ospvb/vNay9spuuD7zxGEJDwYy6Jn3WIjnPjDQbQlAU=; b=pbxIZ7dtffhhzk
	Di0k1Jl9Zh9IVznrPfskM15bpQgwESd6wWVaLh6XeFySsJnD5xKWDUAtm/EmI4VwoQvtRlVuOdnP7
	ioIKMHS459FIIR/MdR5z06ZJV8LCclyrpQDQjkTEa95iZ9g0eKfnv2ZjNFSKoDbWasGg3jy+f3H+x
	s78lP8IrjcWesfck1+63SpNxpvGPp2BMjWik2n1NlnqOHKFrTwrap22x0ZcrrrGESPeWaPrfMa+XO
	GeOK8xe0n9JV6Kl9jQFdfjCL9iqC8TEO3w9K7wsTBJP8seWIDQaAmkabvet0+wRN6QCj9PBzplZB9
	nl5Saxy9YeQkVHCGjX7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpiH-00035k-79; Wed, 16 Oct 2019 20:16:05 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZU-0001yT-Uc; Wed, 16 Oct 2019 20:07:03 +0000
Received: by mail-oi1-f194.google.com with SMTP id t84so99545oih.10;
 Wed, 16 Oct 2019 13:07:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YA57ID7HssfptBArCep2MY8T32tzTOpp6n73JZLWHrY=;
 b=dPzORixcbNK9Op4NTTnu88CWAidekrpFDEITBTaD6NWb3WwK98d94aL+2nuQU0AjZn
 YxYan36A+eprVqXPcWQ8gxDAcOWHenEA2L7PqsQnTNnVnAMgaC86grFQ2HGy+14pOrzj
 FB+d7Z0imEpD0o32+CwCnV3WDwR4FLyVup7xliumoZB+bvAXq3k3rWqsG6Tucbwc2HLv
 zF3/G7hkVbT5lrsJ0liajCr6AjFD/0BekSFKxfA7esnCayaMsq60KUg9V4VYEFY7j6Uj
 ALUq+E0hDPVF0a/7/qXUG44KITM5FVFSA9krGBB1gZEQSocKZRAxcMh+7dqDXEKVqJgq
 oLUw==
X-Gm-Message-State: APjAAAWEQXPegIWIdghcZwAYhOTfZNiHPzvCN6/vAFSPnHLYqfGXT1BQ
 4sZ/jZowcbxaBoXBRLC8/A==
X-Google-Smtp-Source: APXvYqyakPWBO0mkOpMpK5U/GSZnT1haaiWULUW+yiLTI26g2Lgw4JGeutIuaV6f+nslk+Tc2+/0YA==
X-Received: by 2002:aca:5b02:: with SMTP id p2mr111363oib.94.1571256420107;
 Wed, 16 Oct 2019 13:07:00 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:06:59 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 05/25] PCI: dwc: Use pci_parse_request_of_pci_ranges()
Date: Wed, 16 Oct 2019 15:06:27 -0500
Message-Id: <20191016200647.32050-6-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130701_018406_919843E2 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Convert the Designware host bridge to use the common
pci_parse_request_of_pci_ranges().

Cc: Jingoo Han <jingoohan1@gmail.com>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch

 .../pci/controller/dwc/pcie-designware-host.c | 28 ++++++-------------
 1 file changed, 8 insertions(+), 20 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 0f36a926059a..aeec8b65eb97 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -319,7 +319,7 @@ int dw_pcie_host_init(struct pcie_port *pp)
 	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
 	struct platform_device *pdev = to_platform_device(dev);
-	struct resource_entry *win, *tmp;
+	struct resource_entry *win;
 	struct pci_bus *child;
 	struct pci_host_bridge *bridge;
 	struct resource *cfg_res;
@@ -342,31 +342,19 @@ int dw_pcie_host_init(struct pcie_port *pp)
 	if (!bridge)
 		return -ENOMEM;

-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-					&bridge->windows, &pp->io_base);
-	if (ret)
-		return ret;
-
-	ret = devm_request_pci_bus_resources(dev, &bridge->windows);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (ret)
 		return ret;

 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry_safe(win, tmp, &bridge->windows) {
+	resource_list_for_each_entry(win, &bridge->windows) {
 		switch (resource_type(win->res)) {
 		case IORESOURCE_IO:
-			ret = devm_pci_remap_iospace(dev, win->res,
-						     pp->io_base);
-			if (ret) {
-				dev_warn(dev, "Error %d: failed to map resource %pR\n",
-					 ret, win->res);
-				resource_list_destroy_entry(win);
-			} else {
-				pp->io = win->res;
-				pp->io->name = "I/O";
-				pp->io_size = resource_size(pp->io);
-				pp->io_bus_addr = pp->io->start - win->offset;
-			}
+			pp->io = win->res;
+			pp->io->name = "I/O";
+			pp->io_size = resource_size(pp->io);
+			pp->io_bus_addr = pp->io->start - win->offset;
+			pp->io_base = pci_pio_to_address(pp->io->start);
 			break;
 		case IORESOURCE_MEM:
 			pp->mem = win->res;
--
2.20.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
