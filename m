Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380F81504A2
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Feb 2020 11:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oCLR7a/ayOeGU8GOAL0BiNPSwkJiAgXa4bXmohBVvQg=; b=O2YQfwY6bSzmDh
	5yCQ2YPdyZo16rCLnRvo0jcBNdt0dDIFExzuy0m/nJADbg2cVFdBjky562xDbVUXN3y5UKMFQSwC2
	9Z3XzrV5xxSTWQ60+qZscqWeAwxv+E8sATjBe+3Z94n332M3+PVqy90s8pR69yogptz5i19iHt8Eg
	W5Rr614L3C5KTEPhIszdc1n3ThsZJ13X2SciM/apG4HwPFHgFbtvDHu2ounXxubc2Pg9Rvd+52CeD
	97swIUt00E2Bg1YsJIaPp9O74Aw2VxEHc/IlRZG2aOt+cRUPGYq9IdDJI/pvnLRsHFff0Zp1wJ8qu
	jz5ZdKMmi3DTVKQy+qXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZND-0005gP-As; Mon, 03 Feb 2020 10:54:35 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZN9-0005fG-EH
 for linux-mediatek@lists.infradead.org; Mon, 03 Feb 2020 10:54:32 +0000
Received: by mail-pg1-x529.google.com with SMTP id g3so1903900pgs.11
 for <linux-mediatek@lists.infradead.org>; Mon, 03 Feb 2020 02:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADW24ulzjRxWFs8Inpi2MLUJLlYv0kpD0PDD8jb7dpI=;
 b=gng9XmRj2Jusgtv+OYAhFWAfvviQ4ANaqX3dAANJ1k+PZMrE4ERLooYqWXjiNk3lNK
 nH5zqTbV/Q52LMsnKyq/zfmgTAe0RB9n1NxSy2kAeAvwI7psST63mCuiC4vDRhHjQpz/
 9q/rXFgPt7i+vBrEhnU9H7PTU0M039FzoSKC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADW24ulzjRxWFs8Inpi2MLUJLlYv0kpD0PDD8jb7dpI=;
 b=EuE6cvaCSG8BqN6lZQjLlGG7qX7iPYBkhJIv7qutK6MeOXOrMnw/f2wBOfneGlUmE/
 dkyjW4zmHpynDGsjc+vEPugBTbKAyM68mXOhjpgTEAT1hYR/c3LV9elXSFcwsqrWqdNe
 YnG6oqgXnNOgIpC0qvhDbnq7jieyNrEQ0cUsnHTfZi03OLY+5p+gJBBz5TR0AGX7mRsP
 FAM/EUO9rATH57fPX+Ins280vZqK59KjhNNSxzSZgPAZxoUUGJIQ8eEQGDNPb0RcqzC8
 5DFbNxxKEOfGxa57QvcMmORE1mLbGemOpmM+7Ip9KbjxBUrTs1fKvZ+/qLTLFLrco+Y0
 wTQw==
X-Gm-Message-State: APjAAAXPQQXrJxerk1LrX0o7mQbAkz/FgFSpyl2rDY1fiwi9N2+yX0/k
 b5goRBRRUhhvJZ48VxSONr7YNA==
X-Google-Smtp-Source: APXvYqwmogyQ4tkjuKnABxnJkcUDNUWk6sjSeWh+MezxRj8XAoT7P+8oP0g/yi1wYM4Yic/x6imZaQ==
X-Received: by 2002:aa7:9796:: with SMTP id o22mr23897517pfp.101.1580727270135; 
 Mon, 03 Feb 2020 02:54:30 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 11sm20923835pfz.25.2020.02.03.02.54.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:54:29 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/3] Add mt8173 elm and hana board
Date: Mon,  3 Feb 2020 18:53:45 +0800
Message-Id: <20200203105345.118294-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_025431_498902_0AAA9043 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series adds devicetree and binding document for Acer Chromebook R13 (elm)
and Lenovo Chromebook (hana), which are using mt8173 as SoC.

Changes in v5:
- add gpio-line-names for gpio controller

Changes in v4:
- fix dtbs_check errors on cros-ec-keyboard
- add comments for second source touchscreen and trackpad

Changes in v3:
- address comments in v2, major changes include:
  * move uart aliases from mt8173-elm.dtsi to mt8173.dtsi
  * remove brightness-levels in backlight
  * add interrupt for da9211
  * move pinmux for sdio_fixed_3v3 from mmc3_pins_default
  * remove some non upstream property
  * checked on schematic, cd-gpio in mmc1 should be GPIO_ACTIVE_LOW

Changes in v2:
- fix mediatek.yaml
- fixup some nodes and remove unused nodes in dts


Hsin-Yi Wang (3):
  dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
  arm64: dts: mt8173: add uart aliases
  arm64: dts: mediatek: add mt8173 elm and hana board

 .../devicetree/bindings/arm/mediatek.yaml     |   22 +
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   14 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1169 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |    5 +-
 8 files changed, 1323 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
