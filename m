Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991061886DB
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Mar 2020 15:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6M3FCL2bzi3klY0G3okRV6FS4huDHJLWWK0tZJjiT2U=; b=UeOYTFYSwxTSAK
	5xaULv6rqFvkutUPCvrhgrmk3DzJkI87Ya9cZSH6yWpCO2WiwekMZyq/XYN1Jon035IDzfcf2bbpB
	DHLh0FykmWbNsIp9AoAnaG+QCAYsajkkACeMjAs9gOZoYJ+HG0v/LOMQmh68UqwRObwM2/m6COGIV
	yU5hrY/q8zPRXoVL5Cp5ThSfY0Ub5MZ0NdsSHgfF2B4kf+hEobvoaa8KjD3x/rR9NblUqyk4vCUZq
	iE7nEkfyzMAOZcOP401+l/wuHacqr27RUWUmyAeqZvZj8vxeQJfnNwCTu/N/M3wJK/6dv8RJfSD1s
	1bQnSeo6U/DM81rd9yww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECs4-0006YH-Kh; Tue, 17 Mar 2020 14:07:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECs0-0006UP-ET
 for linux-mediatek@lists.infradead.org; Tue, 17 Mar 2020 14:07:02 +0000
X-UUID: ca8b98563a784c4c8b649bad8ea73760-20200317
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=AGQJ9ca+jEWLEkXtTwRFZVcl4oKYY1P9wsWPmVMGq1o=; 
 b=Da5NAWj8M1SschSHqYpWgQ8asn9BERoG2SvUFR7F6fDspg8jfNEZzTkbcuQCATlqwhINYt1AlWz9XOHiK3ffwxdCsA5VCy+hz1Gf+Uo8920Sw1Yn0clg2lbNmkguoarXlDcf3RcofurtyF7vzmptNWUp11k31Qp6al1u8DD6P7E=;
X-UUID: ca8b98563a784c4c8b649bad8ea73760-20200317
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 936190880; Tue, 17 Mar 2020 06:06:52 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Mar 2020 07:07:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Mar 2020 22:05:49 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 17 Mar 2020 22:06:04 +0800
From: Hanks Chen <hanks.chen@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Subject: [PATCH v3 0/6] Add basic SoC Support for Mediatek MT6779 SoC
Date: Tue, 17 Mar 2020 22:06:41 +0800
Message-ID: <1584454007-2115-1-git-send-email-hanks.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_070700_492160_87C84CDC 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andy Teng <andy.teng@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patchset is based on v5.6-rc1. Basic SoC support for the new Mediatek
SoC, MT6779, which targets for smartphone.

It provides ccf, pinctrl, uart, timer, gic...etc.

Change History:

Change since v3:
1. add bindings for "mediatek,mt6779-pinctrl"
2. add some comments into the code (e.g. virtual gpio ...)
3. add Acked-by tags
4. add pmu node into dts
5. support ppi partition and fix base address in gic node of dts

[note]
[1] need bindings for "arm,cortex-a75" in patch 6
> Already in Rob's tree here:
> https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=5c2614e995de07b41eb355155eb5e0e3d593718b


Change since v2:
1. add Reviewed-by tags
2. fix checkpatch warnings with strict level

Change since v1:
first patchset


Andy Teng (1):
  dt-bindings: pinctrl: add bindings for MediaTek MT6779 SoC

Hanks Chen (5):
  pinctrl: mediatek: update pinmux definitions for mt6779
  pinctrl: mediatek: avoid virtual gpio trying to set reg
  pinctrl: mediatek: add pinctrl support for MT6779 SoC
  pinctrl: mediatek: add mt6779 eint support
  arm64: dts: add dts nodes for MT6779

 .../bindings/pinctrl/mediatek,mt6779-pinctrl.yaml  |  208 ++
 arch/arm64/boot/dts/mediatek/Makefile              |    1 +
 arch/arm64/boot/dts/mediatek/mt6779-evb.dts        |   31 +
 arch/arm64/boot/dts/mediatek/mt6779.dtsi           |  265 +++
 drivers/pinctrl/mediatek/Kconfig                   |    7 +
 drivers/pinctrl/mediatek/Makefile                  |    1 +
 drivers/pinctrl/mediatek/pinctrl-mt6779.c          |  783 ++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c   |   28 +
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h   |    1 +
 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h      | 2085 ++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.c           |    7 +
 include/dt-bindings/pinctrl/mt6779-pinfunc.h       | 1242 ++++++++++++
 12 files changed, 4659 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6779-evb.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6779.dtsi
 create mode 100644 drivers/pinctrl/mediatek/pinctrl-mt6779.c
 create mode 100644 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
 create mode 100644 include/dt-bindings/pinctrl/mt6779-pinfunc.h
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
