Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF581ADA63
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 11:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0HCRaVIyJubyNwzXhIgtkYRzqjjrX9vGwGdfdlJAUzE=; b=MlZUBeGHPrTJQu
	DQt8zUzByAGzrYLN1ycNcxs1xeTWjifn59MGUmapy4nLzDy2zNraaGp2LGhI5HcAVnYepsGkDkops
	8fsavGPDA5AbBuv2Aax9OUZS1EASXb8+CVsDA2qoov5XuAb8xdNA/h63eHWT5ZYrI+xWFOHWQF3uq
	mXEpQZbtI1EmNSoUwsY6+jSWhDR3Qm1GsLDMj6fn8nSTSLieoARQ3FvrZGg9hXc3m6Nnj6QgyhpYt
	UrGc0w7t8WgvW8r9oNzthGO7Q4dkRffaOgzzt90USkilsc1LnoGvgRzoQM9dclzt/Di+Cmv+yYdrB
	4BWY45tiwxwQkdikS8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNcT-0003OW-Dp; Fri, 17 Apr 2020 09:49:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPNcP-0003ND-I1; Fri, 17 Apr 2020 09:49:06 +0000
X-UUID: 98f7a2ad82924fc4b760361dba2c27d3-20200417
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=iZuTCT/J0fHisHx7WtJAL9zKonXahC0te+mVqf6Soa0=; 
 b=WxsTLLlrQavvq6OkxUqojnXXIxiLR/1Mk2gAVpiZbI3c25gm3oBtivjnWU+ajRZIdMPzLG+FzkfuukLu7doTywFgMOXPdujZR2SP8AAVeUCrVHIvq2BCKtrWyzGuob98FogczhH76D9A6y/Ao2my2LR4E9kA8sHJfA9JSrcuRGs=;
X-UUID: 98f7a2ad82924fc4b760361dba2c27d3-20200417
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chuanjia.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1356360981; Fri, 17 Apr 2020 01:48:54 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 17 Apr 2020 02:38:57 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 17 Apr 2020 17:38:57 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 17 Apr 2020 17:38:55 +0800
From: <chuanjia.liu@mediatek.com>
To: <robh+dt@kernel.org>, <bhelgaas@google.com>, <matthias.bgg@gmail.com>,
 <lorenzo.pieralisi@arm.com>, <amurray@thegoodpenguin.co.uk>
Subject: [PATCH 0/4] Spilt PCIe node to comply with hardware design
Date: Fri, 17 Apr 2020 17:35:01 +0800
Message-ID: <20200417093505.13978-1-chuanjia.liu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_024905_603690_D3104B9A 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, chuanjia.liu@mediatek.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 jianjun.wang@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

There are two independent PCIe controllers in MT2712/MT7622 platform,
and each of them should contain an independent MSI domain.

In current architecture, MSI domain will be inherited from the root
bridge, and all of the devices will share the same MSI domain.
Hence that, the PCIe devices will not work properly if the irq number
which required is more than 32.

Split the PCIe node for MT2712/MT7622 platform to fix MSI issue and
comply with the hardware design.

chuanjia.liu (4):
  dt-bindings: PCI: Mediatek: Update PCIe binding
  PCI: mediatek: Use regmap to get shared pcie-cfg base
  arm64: dts: mediatek: Split PCIe node for MT2712/MT7622
  ARM: dts: mediatek: Update mt7629 PCIe node

 .../bindings/pci/mediatek-pcie-cfg.yaml       |  38 ++++++
 .../devicetree/bindings/pci/mediatek-pcie.txt | 120 ++++++++++++------
 arch/arm/boot/dts/mt7629-rfb.dts              |   3 +-
 arch/arm/boot/dts/mt7629.dtsi                 |  23 ++--
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi     |  51 +++++---
 .../dts/mediatek/mt7622-bananapi-bpi-r64.dts  |  16 +--
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts  |   6 +-
 arch/arm64/boot/dts/mediatek/mt7622.dtsi      |  68 ++++++----
 drivers/pci/controller/pcie-mediatek.c        |  25 +++-
 9 files changed, 234 insertions(+), 116 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie-cfg.yaml

--
2.18.0 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
