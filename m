Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3446D1E0A6F
	for <lists+linux-mediatek@lfdr.de>; Mon, 25 May 2020 11:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6O7mFFjW/REIKX0eaERoMsOYjPWEQ7keem9ITzOxys=; b=GnP/kQGsJkaDD/
	6TeU2ooLaiFwSqV74bp3xi4tvBhGsfbG2KUakXaQGsoHeg/AmiLsDDUEA0YCGiQziAa3fBmHqM+6y
	VlnxrwnA7RMk3H0hUhwn19DJMdqP+MAzCUsBme3KE/Bp5NQE2L7djpm6meMEVPdZW47KRq4zVKK9g
	J9sZMZEzwRJ29WgGimVvUADk4+Su3KGQJ7otiBl74rmB2yW//wrXSwUWrlgb3VxEzGFKJ58cURp7m
	m4gcM/X0JsV1JS7b31zPBKlKDSWDgAzZ0VPAZxsbYtKMCLcDYBm4F4AIfAwJg1+y8vK2wO2x87sxK
	jUpLEvDjlP+ZIOp1st7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9Om-00047f-0F; Mon, 25 May 2020 09:27:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9EW-0007Y7-11; Mon, 25 May 2020 09:17:23 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04P9HEUw095689;
 Mon, 25 May 2020 04:17:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590398234;
 bh=ZfUbh82N6QxYzzf9GICZYBFd0OVcUih5gJ0g44AGOsU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=AE7Sq50Q8Zk6S0li2ZHnlTayVnuWFIlb5A88mgXqSL2oiqjSiT6Yf0cnbNcnAknEO
 giH2KdlqsoVzBafBmBxQaFlp+k5BQj/yWmg7YxCAKOF+rOMbirsvAAKGRTB/4P+XEx
 PSxVbYtCGjNri18mQ/m1VKZYvEFfgIN5tpVDZh9g=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04P9HEJw014754
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 25 May 2020 04:17:14 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 25
 May 2020 04:17:14 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 25 May 2020 04:17:14 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P9FjAF034800;
 Mon, 25 May 2020 04:17:08 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH v9 15/19] mtd: spi-nor: core: perform a Soft Reset on shutdown
Date: Mon, 25 May 2020 14:45:40 +0530
Message-ID: <20200525091544.17270-16-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200525091544.17270-1-p.yadav@ti.com>
References: <20200525091544.17270-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021720_337258_6D001E64 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mason Yang <masonccyang@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>, Sekhar Nori <nsekhar@ti.com>,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Perform a Soft Reset on shutdown on flashes that support it so that the
flash can be reset to its initial state and any configurations made by
spi-nor (given that they're only done in volatile registers) will be
reset. This will hand back the flash in pristine state for any further
operations on it.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/core.c  | 42 +++++++++++++++++++++++++++++++++++++
 include/linux/mtd/spi-nor.h |  2 ++
 2 files changed, 44 insertions(+)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index a94376344be5..68559386f6f8 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -40,6 +40,9 @@
 
 #define SPI_NOR_MAX_ADDR_WIDTH	4
 
+#define SPI_NOR_SRST_SLEEP_MIN 200
+#define SPI_NOR_SRST_SLEEP_MAX 400
+
 /**
  * spi_nor_get_cmd_ext() - Get the command opcode extension based on the
  *			   extension type.
@@ -3201,6 +3204,41 @@ static int spi_nor_init(struct spi_nor *nor)
 	return 0;
 }
 
+static void spi_nor_soft_reset(struct spi_nor *nor)
+{
+	struct spi_mem_op op;
+	int ret;
+
+	op = (struct spi_mem_op)SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_SRSTEN, 8),
+			SPI_MEM_OP_NO_DUMMY,
+			SPI_MEM_OP_NO_ADDR,
+			SPI_MEM_OP_NO_DATA);
+	spi_nor_spimem_setup_op(nor, &op, SNOR_PROTO_8_8_8_DTR);
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_warn(nor->dev, "Software reset failed: %d\n", ret);
+		return;
+	}
+
+	op = (struct spi_mem_op)SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_SRST, 8),
+			SPI_MEM_OP_NO_DUMMY,
+			SPI_MEM_OP_NO_ADDR,
+			SPI_MEM_OP_NO_DATA);
+	spi_nor_spimem_setup_op(nor, &op, SNOR_PROTO_8_8_8_DTR);
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_warn(nor->dev, "Software reset failed: %d\n", ret);
+		return;
+	}
+
+	/*
+	 * Software Reset is not instant, and the delay varies from flash to
+	 * flash. Looking at a few flashes, most range somewhere below 100
+	 * microseconds. So, sleep for a range of 200-400 us.
+	 */
+	usleep_range(SPI_NOR_SRST_SLEEP_MIN, SPI_NOR_SRST_SLEEP_MAX);
+}
+
 /* mtd resume handler */
 static void spi_nor_resume(struct mtd_info *mtd)
 {
@@ -3220,6 +3258,10 @@ void spi_nor_restore(struct spi_nor *nor)
 	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
 	    nor->flags & SNOR_F_BROKEN_RESET)
 		nor->params->set_4byte_addr_mode(nor, false);
+
+	if (nor->info->flags & SPI_NOR_OCTAL_DTR_READ &&
+	    nor->flags & SNOR_F_SOFT_RESET)
+		spi_nor_soft_reset(nor);
 }
 EXPORT_SYMBOL_GPL(spi_nor_restore);
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index d251a5d02be2..06884a188315 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -51,6 +51,8 @@
 #define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
 #define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
 #define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
+#define SPINOR_OP_SRSTEN	0x66	/* Software Reset Enable */
+#define SPINOR_OP_SRST		0x99	/* Software Reset */
 
 /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
 #define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
