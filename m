Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21905A526D
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 11:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tfvmDGJFEEbUCGYPx9RWBDvQK1fu8UWaoM1u12LzkFI=; b=i4NNWlqXNdhyAv
	bn6VnoVb2wmzJxDb72pcSWRdxkcd4wjptEJNpekd7xtTHKNe0leW7Ni00bl0/6u29Ilo7kvGe17O5
	YyuafWY8OnVjkwP9KbuZyV8zsZS7REnyEocrAdOrY61klkou4gSbeSAZCNjB1unsbqW1KXPoeFzPd
	ijFaTok6jgoylGatVU06YtpC1gG4YIoZ3JT985Y9UPP+ryoWZ1P86CgdHM0c9/mFSyih7DxMi4ebe
	EPMFsxYbP/HPN54NZVkcKySEpC/3lXQtZpx6MrVxTk3cECoKTOg4tsMTbQYn5Fv5fw/8JRJVDXOlo
	CsKBBvqOIcTkcKl6rcCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iDr-0007Et-4K; Mon, 02 Sep 2019 09:02:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iD7-0006cH-PP; Mon, 02 Sep 2019 09:01:19 +0000
X-UUID: 26c68027eca743b481a361ea10ea7234-20190902
X-UUID: 26c68027eca743b481a361ea10ea7234-20190902
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1297661453; Mon, 02 Sep 2019 01:01:11 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 02:01:09 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 17:01:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 2 Sep 2019 17:01:01 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring
 <robh@kernel.org>
Subject: [RESEND PATCH v1 0/3] Runtime PM support for MT8183 mcucfg clock
 provider
Date: Mon, 2 Sep 2019 17:00:56 +0800
Message-ID: <1567414859-3244-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: CED2E5001E391BB1FEC2C7595861BC005DBAAB114CC917788707A64A5447BC502000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_020117_837353_98E1FF45 
X-CRM114-Status: UNSURE (   6.33  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 CK Hu <ck.hu@mediatek.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series is based on v5.3-rc1 and Mediatek MT8183 scpsys support v7[1].
Since Runtime PM is supported in Common Clock Framework which keeps clock
controller's power domain enabled to ensure clock status accessing correctly.

[1] https://patchwork.kernel.org/cover/11118371/

---

Weiyi Lu (3):
  clk: mediatek: Register clock gate with device
  clk: mediatek: Runtime PM support for MT8183 mcucfg clock provider
  arm64: dts: Add power-domains properity to mfgcfg

 arch/arm64/boot/dts/mediatek/mt8183.dtsi |  1 +
 drivers/clk/mediatek/clk-gate.c          |  5 +++--
 drivers/clk/mediatek/clk-gate.h          |  3 ++-
 drivers/clk/mediatek/clk-mt8183-mfgcfg.c |  7 +++++--
 drivers/clk/mediatek/clk-mtk.c           | 16 +++++++++++++---
 drivers/clk/mediatek/clk-mtk.h           |  5 +++++
 6 files changed, 29 insertions(+), 8 deletions(-)


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
