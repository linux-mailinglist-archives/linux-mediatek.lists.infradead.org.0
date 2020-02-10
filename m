Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C281E156F82
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Feb 2020 07:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kjmBddlAD4KoTmQ5ofTV26V+/CV1wYDmRg9hiBSdM1I=; b=cAK5hE08OMIp4y
	s8QHbrE4SPg/7ISXDcxTdQxsRaOpjs9EQDpzpxkV7ksUrU8ZA7/6DxjEGLMm/Q/zx3fR3JjVekLRG
	ikq6xrIPkEePynilg2vD+/bnz4F//1c0PdPZLGo9EdjXD38Na6YeF4Wqo+UWnM8OpuwNwaKAv0dO8
	WX6CcFkFXLtIajAdEsbfNUlzjbJ6VizJDHR5yGtQ3ZmkaVEcd2VOetcy1lgT294cJgfrhxYuNza3m
	kfrNNiMYgXU1H5AN/19a/M2Ry7Miy53yIlNbiOuB/tzROXvC1KIkpbNvqYv9MMRPtg67IssDYZOX9
	k0LoD/b0jn9+2H+6tGgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12gK-0001B9-Gd; Mon, 10 Feb 2020 06:36:32 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12gA-00011o-Gh
 for linux-mediatek@lists.infradead.org; Mon, 10 Feb 2020 06:36:23 +0000
Received: by mail-pf1-x42b.google.com with SMTP id 185so3212340pfv.3
 for <linux-mediatek@lists.infradead.org>; Sun, 09 Feb 2020 22:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lo17ppS/z0H1lSs1uTt0PZLLJNNtFvUKsUcqWlfn7Dc=;
 b=bUN6TfTE7usvEbrf47ULqCV7Q1Wmo6/Vzyto8zU5n07Oijvw4PAsNQlaYy5fRB+Own
 LBZXlJr3KquKZ+JciXDyIRgUHtAVe27qImHD4CtpQCOp6qC9h4wib31fnJ40b+jIxn/S
 6ytT9ejZ497xQAfK5M11UhTtxBHR5HpdXQsBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lo17ppS/z0H1lSs1uTt0PZLLJNNtFvUKsUcqWlfn7Dc=;
 b=M0KdlRrf6UiUtDsvn6ZpDxbkr1ucIZVZGr0s+PxOUPdh6d0aJ3AREPw1xJ00tzcJfW
 iiWqwQczo3IE4zMITQ3uekVzR8u59Tiq7QvOL9APNM9cI7VYPlrPlCA+6pQbhnx8d+L+
 IZTtpaDnD6TuYDP7sttLHXnd5w3Ve0NxbEomXtV+tNhXXQwdaYD0dhanGvIOM21FC7TB
 7tP/i1RW9A4C3EwPmREwcb1ZZ2koqlk+fxtghB/zNlHhwEL8I01gVm4mreuDvCjYgvWn
 Hsejoc56CxPZZUeyAiHADH2Vi+ee9r3N7VmAuHipi2KpotnXATBot12oxJziWCHCsy/p
 /Qfg==
X-Gm-Message-State: APjAAAU/dTppIMxJixz5Qi7Pen3BoAr7W7zHwv8ysAJ9krFjCJ99Ranw
 YQcra5tee6tE0G8rc6VFqLckjg==
X-Google-Smtp-Source: APXvYqyV5uXjYlcd6ghIM6ap/HEp0sTQIJM1ZhrD03kxdqxEcvdfBDVhE8hzFps31kS5WDBa6r922Q==
X-Received: by 2002:a62:6342:: with SMTP id x63mr11616369pfb.103.1581316580334; 
 Sun, 09 Feb 2020 22:36:20 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id f15sm11070041pgj.30.2020.02.09.22.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 22:36:19 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 0/5] Add mt8173 elm and hana board
Date: Mon, 10 Feb 2020 14:35:19 +0800
Message-Id: <20200210063523.133333-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_223622_551636_A7BDD064 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v7:
- add pull-up for da9211 to fix spurious interrupts

Changes in v6:
- fix several unit name warnings in mt8173.dtsi and mt8173-elm.dtsi

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

Hsin-Yi Wang (5):
  dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
  arm64: dts: mt8173: add uart aliases
  arm64: dts: mt8173: fix unit name warnings
  arm64: dts: mediatek: add mt8173 elm and hana board
  media: mtk-mdp: Use correct aliases name

 .../devicetree/bindings/arm/mediatek.yaml     |   22 +
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   14 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1173 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |   43 +-
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |    8 +-
 9 files changed, 1350 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
