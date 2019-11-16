Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B25FED0E
	for <lists+linux-mediatek@lfdr.de>; Sat, 16 Nov 2019 16:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRIPnuSLezJwzlcQ+5M7lGGddIYZCDgQqgxT3bcaRO4=; b=AsZ5g9N4e1RzxY
	YpCZDQm3M5f0vTmXW3prQ+NhxgT11vqyHtIqzlSmvsKIqte4g9PeJOEsLHPACitoBNekA4JK1fZu7
	nBZwFbDezYEIWIeRYGKXjpdiV9+rswLvr+8YaeZ0E0bMTlYgl6iPWrYtnc3P1YCvYS6ciNE5zQSDy
	3ywvvRzkVa7NuKf7+F9ZNwwuwpI5o0zg8tigijizMudtdF0yCWUI7ZEElb2TtuCQe118rRXBZKBfn
	5eN0qN5lkgUWRKvhq170FGgdayw5wR1OxxUDwWiUbjhHrWozhIsJJ+zEwxHkh6Hw+hCOBqTFwvcsb
	8ll8pX2ET6ZL5fLFagDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0Cm-0007Jc-OF; Sat, 16 Nov 2019 15:41:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0Ch-0007BS-4N
 for linux-mediatek@lists.infradead.org; Sat, 16 Nov 2019 15:41:40 +0000
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77BEC207DD;
 Sat, 16 Nov 2019 15:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573918898;
 bh=UO3XCC42t0obPxpUMFWs3bkB7qRjPJ5pyIs/hvKqYnY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eaUvNw3DnqYaGrVa1BUAq+bmllDgryEb8i3ElSHsFgXYS64R8ehJ9kVwLUdBljVmR
 htc0M8d65fIa3buSHa4T5IrJUiozRw5dANK6Wsfsya7QTVdfvVWLHQ6l2dtFMvHSHs
 i+aEO0wA+NnDkuDrJGITHGXikaIRzcG585me9k0I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 026/237] PCI: mediatek: Fix class type for MT7622
 to PCI_CLASS_BRIDGE_PCI
Date: Sat, 16 Nov 2019 10:37:41 -0500
Message-Id: <20191116154113.7417-26-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_074139_222932_F4AC7C08 
X-CRM114-Status: GOOD (  10.16  )
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

[ Upstream commit a7f172ab6a8e755e60311f27512034b0441ef421 ]

commit 101c92dc80c8 ("PCI: mediatek: Set up vendor ID and class
type for MT7622") erroneously set the class type for MT7622 to
PCI_CLASS_BRIDGE_HOST.

The PCIe controller of MT7622 integrates a Root Port that has type 1
configuration space header and related bridge windows.

The HW default value of this bridge's class type is invalid.

Fix its class type and set it to PCI_CLASS_BRIDGE_PCI to
match the hardware implementation.

Fixes: 101c92dc80c8 ("PCI: mediatek: Set up vendor ID and class type for MT7622")
Signed-off-by: Honghui Zhang <honghui.zhang@mediatek.com>
[lorenzo.pieralisi@arm.com: reworked the commit log]
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/controller/pcie-mediatek.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index c5ff6ca65eab2..abedf8ec11bba 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -432,7 +432,7 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
 		val = PCI_VENDOR_ID_MEDIATEK;
 		writew(val, port->base + PCIE_CONF_VEND_ID);
 
-		val = PCI_CLASS_BRIDGE_HOST;
+		val = PCI_CLASS_BRIDGE_PCI;
 		writew(val, port->base + PCIE_CONF_CLASS_ID);
 	}
 
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
