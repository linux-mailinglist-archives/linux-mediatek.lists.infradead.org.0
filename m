Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A356523F
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jul 2019 09:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jFngdmjhyBBRUtHU3jFGuhy8lhm9PErJwMsNXCv4GiI=; b=fsQu6JFJzqExrE
	CwzXsW6bZgvNSfgwvz7dK172rsVpyPEbUe+mRO7lA5bQQPVrhJbWbgSCzI15ZKhXs2uN0lb9CXQ9N
	hWaheGe0KxxTSed1JFgxYpCLLv7Xh6hPy3Ezyc0/qSO4n74DhX/3LovT7Brmkx6s+bnEsBpaaqMGI
	sn5oaz1xa+o9DS2K9L6ZBA5W4rlvwje4+ZFqCefRBZmfhfJc280NvQg+RNTSxy6fo7/0JydtJQfXs
	FxxWQRxRUbX5B/4GUXohBMqFWlUJpXRSAvxso0DNx+LC8RyCSVo+gNMzPLFHphUUQMlJ0m8Afr3Pd
	/jAlTzt+Ezee55qTVrnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlTDi-0001m4-EL; Thu, 11 Jul 2019 07:10:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlTDc-0001kZ-Ib
 for linux-mediatek@lists.infradead.org; Thu, 11 Jul 2019 07:10:18 +0000
X-UUID: abe20fa051224c9689540954a04cbe3d-20190710
X-UUID: abe20fa051224c9689540954a04cbe3d-20190710
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 598702056; Wed, 10 Jul 2019 23:10:10 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 00:10:09 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 11 Jul 2019 15:10:08 +0800
Received: from localhost.localdomain (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 11 Jul 2019 15:10:06 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v3 0/3] mt8183 emi driver support
Date: Thu, 11 Jul 2019 15:09:59 +0800
Message-ID: <1562829002-24650-1-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_001016_630334_A1CDF726 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Xi Chen (3):
  dt-bindings: soc: Add MT8183 emi dt-bindings
  arm64: dts: mt8183: add emi node
  mt8183: emi: add bandwidth driver support

 .../bindings/memory-controllers/mediatek,emi.txt   |  14 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |   5 +
 drivers/memory/Kconfig                             |   9 +
 drivers/memory/Makefile                            |   1 +
 drivers/memory/mtk-emi.c                           | 346 +++++++++++++++++++++
 include/soc/mediatek/emi.h                         |  70 +++++
 6 files changed, 445 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,emi.txt
 create mode 100644 drivers/memory/mtk-emi.c
 create mode 100644 include/soc/mediatek/emi.h

-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
