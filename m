Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25291D276D
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 08:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NST2S6CpBKVCthegHeRMwpIj/O80C4ubRUkGtnI66K4=; b=G6sJIRHbP6Dfov
	MQBdDWo2diJUN2My1JtcbliFBZk1MMABeuv7gZMYaLkU7KG8h3xFgknJlWS0Im8togBAMug4L7v5N
	Rek9FHvXLa1/isr2hsxOEVrjfgoBjtnQXjiUY+VGhEDc5Dr2kHAu6bMRt5L0cTZYlKme/Mwb/lIVw
	d48L825IBbxenl3vZ2wAvqr7JFY0hLUpJl1di43Lciw99jz64fibOSlsTU/DP84nfoBhOngorrh7R
	XChoG34NeJzUgIcMZDbZUGiQpG/RqDsJMj4vwPqvnU537NcbIviRwFCZZY7YbzsGD4dYqqJKXLOh+
	vfrmFteILr6OcT2hHg5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7FE-0006QM-Gd; Thu, 14 May 2020 06:21:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7F6-0006JM-3u; Thu, 14 May 2020 06:21:17 +0000
X-UUID: 527d3a657b114657b9c172496efb1b1b-20200513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=wQyMY1i9PotArkUWD4AtPY8qAbkcQgFz5GnPbTCKrx0=; 
 b=QLK3qWpILB8znUPvpzLmfBL0qE1d6i12/JE621Uxtze6Q78Y8b8QwbYkpMKCC+Y/Volvgx6AhMRvguBiwWXn7o1mInH86YVWFRYNyXb3WKGuGOoU6EqGSZnoa9APeZLIS0AG1H1TyWq+h2Ml1prIlgSvO6phpvfHiM+BSHWXAN4=;
X-UUID: 527d3a657b114657b9c172496efb1b1b-20200513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 168683931; Wed, 13 May 2020 22:21:11 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 23:21:09 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 14:21:00 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 14:21:00 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v7] Add matrix keypad driver support for Mediatek SoCs  
Date: Thu, 14 May 2020 14:17:44 +0800
Message-ID: <20200514061747.25466-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_232116_161402_87AD39E1 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Change since v6:
- update keypad device tree document schema

fengping.yu (3):
  dt-bindings: Add keypad devicetree documentation
  drivers: input: keyboard: Add mtk keypad driver
  configs: defconfig: Add CONFIG_KEYBOARD_MTK_KPD=y

 .../devicetree/bindings/input/mtk-kpd.yaml    | 102 ++++++++
 arch/arm64/configs/defconfig                  |   2 +
 drivers/input/keyboard/Kconfig                |   8 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mtk-kpd.c              | 223 ++++++++++++++++++
 5 files changed, 336 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.yaml
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

--
2.18.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
