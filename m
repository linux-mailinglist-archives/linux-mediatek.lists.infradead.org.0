Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E61CD9B8A
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 22:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3UMz1zHZ+l9kNLA41xEFWlY8Tw4W1BnL73tNAeU2qQ=; b=pZIvQbNSm0e1Mu
	izdTG1rI26J2JPl2+BRa3MA8w0NRGGVn1Crs/3F7o4S46VyIEkpYHsK87GcwqPINiH0DON2sRU5Ba
	cNBrUZrcTB9O5K4qfbsFIBd6j3Gh7SzvmtP09N9TrduQ7W+Zgww3idv9SWfa+b41iO1hv1mgowVs9
	swmPbuF4ua0AFctFcCXubQvVRYuhPOFR0qOntgkxu8oH1XL463GEKNyBqsov5Spqh6aJcMXIoCdPJ
	G39ZojZt64d6EFVdBkiGzdnDzJbOQZJhWn2ZxiE5Vwb1h2tB0SG0b50d13cusoaY/2pBgubyCrIEC
	n/AUDkE+caW1nugTBPWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKplw-0006aB-LL; Wed, 16 Oct 2019 20:19:52 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZr-0002Ix-Up; Wed, 16 Oct 2019 20:07:27 +0000
Received: by mail-ot1-f65.google.com with SMTP id y39so21278597ota.7;
 Wed, 16 Oct 2019 13:07:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8EjZCMf9X25YL2xnDGvatS6WOhekTnEbr44pTFr9BnI=;
 b=tJeHcKKblBF4Wztb3AqtLPlrVvnCTr2mJ4vix4rn+/5ycV0X2pAaxcojW8AR3pUoEv
 iAn047cKL82KyVgP3ljH65ox3TMPOtWFR63dsRZRPxcpgRQ7h6PhzyJJ8YnoKzDCV101
 691IO06CtdphldhODYw6d2tFCTnduJ2PHuvCyh9CTys0nEsHUlqudRRrl90Xmkwno4PG
 MAw74bORdUiXlfq4UpiwjOzRHFy7QuxP+i56pT2Y1nSmiICDSf0eVvK0OK6OVorobtnb
 mQeogbhkb4mgCNLb5wKcGit2eF5+PQV4zFIzC8In+ouqIy7K0M0GndD9rgE7p+X+QYnh
 bv1A==
X-Gm-Message-State: APjAAAWq4tpxihrPj8Fl3xgn7nV0YgcJqOq724htUgauo8rHD1a8liau
 KRUCSzmZmsGu1UnzqbsrTw==
X-Google-Smtp-Source: APXvYqzTJeYoQM+BkZM8HRDuXdjqrFMtTYAuFWBkh10dsGSfzyliazEsJrxYjIRJ2m4HiNIDFy9TSw==
X-Received: by 2002:a9d:5914:: with SMTP id t20mr35250oth.344.1571256442080;
 Wed, 16 Oct 2019 13:07:22 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:21 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 17/25] PCI: versatile: Remove usage of PHYS_OFFSET
Date: Wed, 16 Oct 2019 15:06:39 -0500
Message-Id: <20191016200647.32050-18-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130724_108013_BE0D9E97 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

PHYS_OFFSET is not universally defined on all arches and using it prevents
enabling COMPILE_TEST. PAGE_OFFSET and __pa() are always available, so use
them to get the physical start of memory address.

This should have probably used 'dma-ranges' to get the address, but we
don't want to force a DT update to do that. At least in QEMU, the SMAP
registers have no effect (or perhaps the only value that is handled is 0).

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch to fix build failure on some arches.

 drivers/pci/controller/pci-versatile.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
index 18697f2ea345..eae1b859990b 100644
--- a/drivers/pci/controller/pci-versatile.c
+++ b/drivers/pci/controller/pci-versatile.c
@@ -99,7 +99,7 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	resource_list_for_each_entry(entry, &bridge->windows) {
 		if (resource_type(entry->res) == IORESOURCE_MEM) {
 			writel(entry->res->start >> 28, PCI_IMAP(mem));
-			writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
+			writel(__pa(PAGE_OFFSET) >> 28, PCI_SMAP(mem));
 			mem++;
 		}
 	}
@@ -136,9 +136,9 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	/*
 	 * Configure the PCI inbound memory windows to be 1:1 mapped to SDRAM
 	 */
-	writel(PHYS_OFFSET, local_pci_cfg_base + PCI_BASE_ADDRESS_0);
-	writel(PHYS_OFFSET, local_pci_cfg_base + PCI_BASE_ADDRESS_1);
-	writel(PHYS_OFFSET, local_pci_cfg_base + PCI_BASE_ADDRESS_2);
+	writel(__pa(PAGE_OFFSET), local_pci_cfg_base + PCI_BASE_ADDRESS_0);
+	writel(__pa(PAGE_OFFSET), local_pci_cfg_base + PCI_BASE_ADDRESS_1);
+	writel(__pa(PAGE_OFFSET), local_pci_cfg_base + PCI_BASE_ADDRESS_2);

 	/*
 	 * For many years the kernel and QEMU were symbiotically buggy
--
2.20.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
