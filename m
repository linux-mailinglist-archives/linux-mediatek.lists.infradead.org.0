Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E08BFED36
	for <lists+linux-mediatek@lfdr.de>; Sat, 16 Nov 2019 16:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MI+qxtPVR9YHn8EgfrrKU/6v9hiBqmXVgddPFmJgjXk=; b=UaotzfKGa2l759
	Y//83pfrvCMiBCEF+v6EqJVTsTPOdtr9pEKNl1kPe5Tvw3hA+TPvnF16tzZNiZfFkAkgRDEBGCJFH
	rZcUh8ruEKnSFTsv+MNKG6WLqbKTAoyq8kRF8bnRtBg7QZuqP18YMmK6+9+jgH2H9mpwT9MqvMePt
	PFwnM5o/DfE8wF9+DtF/sG30yYvBFEi1dqYNyTW/P6mxD9zg110xeTGv5VIcXEJ7I60k+sjm6fWOJ
	isRW2mT3zNQ1xwQrCiI9DJpINz//mz9nbpKM7nTq/ozHmenw+RtO3sZssDYBzP7qndSpVeKnKDcXj
	q9zJA4TLk5K0mqSg4CSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0Dk-0007ys-0A; Sat, 16 Nov 2019 15:42:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0DE-0007VW-3M
 for linux-mediatek@lists.infradead.org; Sat, 16 Nov 2019 15:42:14 +0000
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70B902075B;
 Sat, 16 Nov 2019 15:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573918931;
 bh=T4Ylin2Dg0jyI71p9QB/r4oozPPJletu7pxesr1Jgvk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JK/k2yuMOVhwxsjJCdm81tsK5rwMtJHLKpXij77Yv4nB/Ci42zyi3ORAOojMsfEKG
 E6kPVlDhRAIzM/lhVm0HUnHAZ7fyAalHvia2KOT6UKfIMDSdq06c2kxqdE0EifaQvc
 ezrXYwecxjpTLo6jB/WrgjpbjONicbstlhoM63FQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 059/237] PCI: mediatek: Fixup MSI enablement
 logic by enabling MSI before clocks
Date: Sat, 16 Nov 2019 10:38:14 -0500
Message-Id: <20191116154113.7417-59-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_074212_189336_1E62B78E 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Honghui Zhang <honghui.zhang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Honghui Zhang <honghui.zhang@mediatek.com>

[ Upstream commit 3828d60fd2ef99f97a677c1f95af2ab3e65e2576 ]

Commit 43e6409db64d ("PCI: mediatek: Add MSI support for MT2712 and
MT7622") added MSI support but enabled MSI in the wrong place, at a step
in the probe sequence where clocks were not still enabled.

Fix this issue by calling mtk_pcie_enable_msi() in mtk_pcie_startup_port_v2()
since clocks are enabled when mtk_pcie_startup_port_v2() is called.

To avoid forward declaration of mtk_pcie_enable_msi(), move the
mtk_pcie_startup_port_v2() function definition in the file.

Fixes: 43e6409db64d ("PCI: mediatek: Add MSI support for MT2712 and MT7622")
Signed-off-by: Honghui Zhang <honghui.zhang@mediatek.com>
[lorenzo.pieralisi@arm.com: squashed commit and adapted log]
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/controller/pcie-mediatek.c | 143 +++++++++++++------------
 1 file changed, 72 insertions(+), 71 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index abedf8ec11bba..dd49033e488d8 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -394,75 +394,6 @@ static struct pci_ops mtk_pcie_ops_v2 = {
 	.write = mtk_pcie_config_write,
 };
 
-static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
-{
-	struct mtk_pcie *pcie = port->pcie;
-	struct resource *mem = &pcie->mem;
-	const struct mtk_pcie_soc *soc = port->pcie->soc;
-	u32 val;
-	size_t size;
-	int err;
-
-	/* MT7622 platforms need to enable LTSSM and ASPM from PCIe subsys */
-	if (pcie->base) {
-		val = readl(pcie->base + PCIE_SYS_CFG_V2);
-		val |= PCIE_CSR_LTSSM_EN(port->slot) |
-		       PCIE_CSR_ASPM_L1_EN(port->slot);
-		writel(val, pcie->base + PCIE_SYS_CFG_V2);
-	}
-
-	/* Assert all reset signals */
-	writel(0, port->base + PCIE_RST_CTRL);
-
-	/*
-	 * Enable PCIe link down reset, if link status changed from link up to
-	 * link down, this will reset MAC control registers and configuration
-	 * space.
-	 */
-	writel(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);
-
-	/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
-	val = readl(port->base + PCIE_RST_CTRL);
-	val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
-	       PCIE_MAC_SRSTB | PCIE_CRSTB;
-	writel(val, port->base + PCIE_RST_CTRL);
-
-	/* Set up vendor ID and class code */
-	if (soc->need_fix_class_id) {
-		val = PCI_VENDOR_ID_MEDIATEK;
-		writew(val, port->base + PCIE_CONF_VEND_ID);
-
-		val = PCI_CLASS_BRIDGE_PCI;
-		writew(val, port->base + PCIE_CONF_CLASS_ID);
-	}
-
-	/* 100ms timeout value should be enough for Gen1/2 training */
-	err = readl_poll_timeout(port->base + PCIE_LINK_STATUS_V2, val,
-				 !!(val & PCIE_PORT_LINKUP_V2), 20,
-				 100 * USEC_PER_MSEC);
-	if (err)
-		return -ETIMEDOUT;
-
-	/* Set INTx mask */
-	val = readl(port->base + PCIE_INT_MASK);
-	val &= ~INTX_MASK;
-	writel(val, port->base + PCIE_INT_MASK);
-
-	/* Set AHB to PCIe translation windows */
-	size = mem->end - mem->start;
-	val = lower_32_bits(mem->start) | AHB2PCIE_SIZE(fls(size));
-	writel(val, port->base + PCIE_AHB_TRANS_BASE0_L);
-
-	val = upper_32_bits(mem->start);
-	writel(val, port->base + PCIE_AHB_TRANS_BASE0_H);
-
-	/* Set PCIe to AXI translation memory space.*/
-	val = fls(0xffffffff) | WIN_ENABLE;
-	writel(val, port->base + PCIE_AXI_WINDOW0);
-
-	return 0;
-}
-
 static void mtk_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
 {
 	struct mtk_pcie_port *port = irq_data_get_irq_chip_data(data);
@@ -639,8 +570,6 @@ static int mtk_pcie_init_irq_domain(struct mtk_pcie_port *port,
 		ret = mtk_pcie_allocate_msi_domains(port);
 		if (ret)
 			return ret;
-
-		mtk_pcie_enable_msi(port);
 	}
 
 	return 0;
@@ -707,6 +636,78 @@ static int mtk_pcie_setup_irq(struct mtk_pcie_port *port,
 	return 0;
 }
 
+static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
+{
+	struct mtk_pcie *pcie = port->pcie;
+	struct resource *mem = &pcie->mem;
+	const struct mtk_pcie_soc *soc = port->pcie->soc;
+	u32 val;
+	size_t size;
+	int err;
+
+	/* MT7622 platforms need to enable LTSSM and ASPM from PCIe subsys */
+	if (pcie->base) {
+		val = readl(pcie->base + PCIE_SYS_CFG_V2);
+		val |= PCIE_CSR_LTSSM_EN(port->slot) |
+		       PCIE_CSR_ASPM_L1_EN(port->slot);
+		writel(val, pcie->base + PCIE_SYS_CFG_V2);
+	}
+
+	/* Assert all reset signals */
+	writel(0, port->base + PCIE_RST_CTRL);
+
+	/*
+	 * Enable PCIe link down reset, if link status changed from link up to
+	 * link down, this will reset MAC control registers and configuration
+	 * space.
+	 */
+	writel(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);
+
+	/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
+	val = readl(port->base + PCIE_RST_CTRL);
+	val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
+	       PCIE_MAC_SRSTB | PCIE_CRSTB;
+	writel(val, port->base + PCIE_RST_CTRL);
+
+	/* Set up vendor ID and class code */
+	if (soc->need_fix_class_id) {
+		val = PCI_VENDOR_ID_MEDIATEK;
+		writew(val, port->base + PCIE_CONF_VEND_ID);
+
+		val = PCI_CLASS_BRIDGE_PCI;
+		writew(val, port->base + PCIE_CONF_CLASS_ID);
+	}
+
+	/* 100ms timeout value should be enough for Gen1/2 training */
+	err = readl_poll_timeout(port->base + PCIE_LINK_STATUS_V2, val,
+				 !!(val & PCIE_PORT_LINKUP_V2), 20,
+				 100 * USEC_PER_MSEC);
+	if (err)
+		return -ETIMEDOUT;
+
+	/* Set INTx mask */
+	val = readl(port->base + PCIE_INT_MASK);
+	val &= ~INTX_MASK;
+	writel(val, port->base + PCIE_INT_MASK);
+
+	if (IS_ENABLED(CONFIG_PCI_MSI))
+		mtk_pcie_enable_msi(port);
+
+	/* Set AHB to PCIe translation windows */
+	size = mem->end - mem->start;
+	val = lower_32_bits(mem->start) | AHB2PCIE_SIZE(fls(size));
+	writel(val, port->base + PCIE_AHB_TRANS_BASE0_L);
+
+	val = upper_32_bits(mem->start);
+	writel(val, port->base + PCIE_AHB_TRANS_BASE0_H);
+
+	/* Set PCIe to AXI translation memory space.*/
+	val = fls(0xffffffff) | WIN_ENABLE;
+	writel(val, port->base + PCIE_AXI_WINDOW0);
+
+	return 0;
+}
+
 static void __iomem *mtk_pcie_map_bus(struct pci_bus *bus,
 				      unsigned int devfn, int where)
 {
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
