Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF47A28FBD
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 05:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L24OCRk3TKIr44u0Q3WHWcRis9txx+Q47hR5/sPo0OY=; b=Os4Cl1zNmSkw6+
	PWxaMQiBPPmjnM12gnIhLVDA3cJlptR1oHTr0/U2zJSV9yPQYaeQVWwX+0llPBr/d0soclNlOoUum
	1l9BNxWZPRvFFIrnDFctM9IMZ0xw3KHWJgdDXM88rYqsRGrbftM54h+xohU1zsOlxTrtX1vVBxm6p
	47G5949GJYUwdEnkRYzSGHGIjIARYk6qiWWur1FjhSKzBJZxSFIjEEUsBtMuC2iZ0N3nbHHaC9Hp1
	8G2CKpkPFQ1sko5bmvj07AWQyN0pjjkwlqLMPgFv3Wz4/M/uprIpi0LN1PTMbpGgAp6irtNfVVr42
	ypa+K+ZACC/LUB3Ol+RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1I3-0004p6-Lb; Fri, 24 May 2019 03:54:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Hy-0004nX-FR
 for linux-mediatek@lists.infradead.org; Fri, 24 May 2019 03:54:39 +0000
X-UUID: 9d55e3ec27ac47ac9e4f24099ca48f6b-20190523
X-UUID: 9d55e3ec27ac47ac9e4f24099ca48f6b-20190523
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 206848363; Thu, 23 May 2019 19:54:33 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 20:54:31 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 11:54:29 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 11:54:29 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <ck.hu@mediatek.com>
Subject: [PATCH v2, 0/3] 8183 emi driver support
Date: Fri, 24 May 2019 11:54:23 +0800
Message-ID: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7B4411BA848D719F40A5820DC5EACE91619EE587BEC418D9A70C8B79E1DEB5692000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_205438_516169_D68ABAEC 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Remove global emi_dev.

Xi Chen (3):
  dt-bindings: soc: Add MT8183 emi dt-bindings
  arm64: dts: mt8183: add emi node
  mt8183: emi: add bandwidth driver support

 .../bindings/memory-controllers/mediatek,emi.txt   |  19 ++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  11 +
 drivers/memory/Kconfig                             |   9 +
 drivers/memory/Makefile                            |   1 +
 drivers/memory/mtk-emi.c                           | 379 +++++++++++++++++++++
 include/soc/mediatek/emi.h                         | 116 +++++++
 6 files changed, 535 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
 create mode 100644 drivers/memory/mtk-emi.c
 create mode 100644 include/soc/mediatek/emi.h

-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
