Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B5C1FF0A5
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 13:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hBsasUoAUiu28KZrVsJlo7ggofjMMNwfEuMBHqO8Tso=; b=Hm2B7zxjvdDgpu
	xLGur7mbhaLIspkgTdIm5ZNczDTawxpevAdWmqaEBd85pwFoWeQ3XJ6rV3mP4QyM+hqa1kpd5X3bs
	j7Ac7bz8rqvLT6gKQOqVzNQcSXg1J29cVRXwuXv4roL9vUseUqEskMYZpg3rRGPoIuxDXFoo6b087
	6KCZLYKS5Tw0yAEhkez07XJBGKTh8UqBcE9Ucu3MKkS2wL4ROdncTfDZW3PMeB6Yh2DBznmW12u37
	lTbWofpu2wYHwmjisx6u67yPdlYDKbRYmiC8y2BXRpSCD0gvGNuuE7eJbhc60D5ljIm7Qw8017eSd
	OcjYI6YAVkkIhPHeD1Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsol-0000Ls-1H; Thu, 18 Jun 2020 11:34:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsoI-0008Jn-Bu; Thu, 18 Jun 2020 11:34:23 +0000
X-UUID: 8ee310dc690f42c7b7db0ecbe38269bf-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=jOW7/ZlqTBzww6L1JbZKHV6k0YOMNioqgiPWE3AJk84=; 
 b=Lv6qw0zN9bx+nP3IBoLut4P1JDt6do55+rmeLOj/HFCxKRUo31Wp3H5O6kASUO3V/pxh1DvX2i/1lfCv5euvMKiqa+H6eHQjkvSi2JFwFntXnMrpOlzhIsQPCjf2Lz2vi/rR0r/lkWx2lHuewN14NXnYWGTLJGOiMo6K1WKL5Fs=;
X-UUID: 8ee310dc690f42c7b7db0ecbe38269bf-20200618
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1515181308; Thu, 18 Jun 2020 03:34:06 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 04:34:16 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 19:34:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 18 Jun 2020 19:34:01 +0800
From: Hanks Chen <hanks.chen@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, "Michael
 Turquette" <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@kernel.org>
Subject: [PATCH v6] Add basic SoC Support for Mediatek MT6779 SoC
Date: Thu, 18 Jun 2020 19:33:31 +0800
Message-ID: <1592480018-3340-1-git-send-email-hanks.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_043422_556674_5C3B93D3 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch add basic SoC Support for Mediatek MT6779 SoC

Change since v6:
Commit "dt-bindings: pinctrl: add bindings for MediaTek"
-- fix format of bindings and add interrupt definition.
Commit "pinctrl: mediatek: update pinmux definitions for"
-- use the standard include path
Commit "pinctrl: mediatek: avoid virtual gpio trying to set"
-- remove unnecessary error handler
Commit "pinctrl: mediatek: add pinctrl support for MT6779 SoC"
-- add some useful help text in kconfig
Commit "clk: mediatek: add UART0 clock support"
-- add UART0 clock support
Commit "arm64: dts: add dts nodes for MT6779"
-- add "baud" and "bus" clocks for uart
-- add new approach for mmsys


Change since v5:
1. remove unnecessary string in commit message


Change since v4:
1. fix format of pinctrl bindings


Change since v3:
1. add bindings for "mediatek,mt6779-pinctrl"
2. add some comments into the code (e.g. virtual gpio ...)
3. add Acked-by tags
4. add pmu node into dts
5. support ppi partition and fix base address in gic node of dts


Change since v2:
1. add Reviewed-by tags
2. fix checkpatch warnings with strict level


Change since v1:
first patchset


Andy Teng (1):
  dt-bindings: pinctrl: add bindings for MediaTek MT6779 SoC

Hanks Chen (6):
  pinctrl: mediatek: update pinmux definitions for mt6779
  pinctrl: mediatek: avoid virtual gpio trying to set reg
  pinctrl: mediatek: add pinctrl support for MT6779 SoC
  pinctrl: mediatek: add mt6779 eint support
  clk: mediatek: add UART0 clock support
  arm64: dts: add dts nodes for MT6779

 .../bindings/pinctrl/mediatek,mt6779-pinctrl.yaml  |  210 ++
 arch/arm64/boot/dts/mediatek/Makefile              |    1 +
 arch/arm64/boot/dts/mediatek/mt6779-evb.dts        |   31 +
 arch/arm64/boot/dts/mediatek/mt6779.dtsi           |  261 +++
 drivers/clk/mediatek/clk-mt6779.c                  |    2 +
 drivers/pinctrl/mediatek/Kconfig                   |   12 +
 drivers/pinctrl/mediatek/Makefile                  |    1 +
 drivers/pinctrl/mediatek/pinctrl-mt6779.c          |  783 ++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c   |   25 +
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h   |    1 +
 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h      | 2085 ++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.c           |    7 +
 include/dt-bindings/pinctrl/mt6779-pinfunc.h       | 1242 ++++++++++++
 13 files changed, 4661 insertions(+)
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
