Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E7313D37E
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Jan 2020 06:13:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k5NuFwN6MW0kJKSBoknvpYFIVNc4AHEu6Noo36j48Jc=; b=ZbTJNZaL9YKuW6
	jEKmEAMUVGcTUAvE0V9vmwz55INzheS4ih+5dwfEp0aB9XhttIMVW/N/4a0HwEXM1tcnFSc9DWwXr
	Um+FEkLlbTHRCcPptdsJz5t4f7VI0excmTOaSz/2awyp+vz0FAF0h8OTUJQN1lGOz5k8RJ9FR/hvc
	grj8B7OwXa/6wwWpFAMwcZZyiMZshhCSLtGuxKNidqqNDGdexdwNdT3E0wZmhrfxgQAbajo2AKTEL
	OWyR054NX5DIu4KBji4aGHLj3fKa9kSVQiArtn11W6qdoLqdr981cwuWklMCigfEg9Kn6wzCBhyNr
	F2hfJFBlnYiy7V/H81Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxSg-0005kL-MQ; Thu, 16 Jan 2020 05:12:54 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxSA-0005Dr-Eg
 for linux-mediatek@lists.infradead.org; Thu, 16 Jan 2020 05:12:24 +0000
Received: by mail-pl1-x631.google.com with SMTP id c23so7826127plz.4
 for <linux-mediatek@lists.infradead.org>; Wed, 15 Jan 2020 21:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BRe0TrdVmcVtbIZZ2KLRX9N0GymyC3/nGwiGQDyGEys=;
 b=AWcTRLurLZrDTN4kPbgrNx+Gvro/+iF3bZo8jwglRFu5XImFzqd5qPmwHJKkGPO8Gs
 yQacvOm7gemgiFs96KE+wH1Kp9lu/Thc+CATc/U2QbO6vKnHkgj90iIgRQT/rdtD9Jou
 cq+KHPhTUF6UHJ8OJhmFP65f1xdRIHCv8LYwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BRe0TrdVmcVtbIZZ2KLRX9N0GymyC3/nGwiGQDyGEys=;
 b=RB0vdulRaj3v25xOI7YwrcIJSkoGTAl9YSHz2bd5zN/mjYo4LmMGZCch4uIEOESixc
 bACmGAwmtdVS4/aSHio6huxVGyW+qlMsTkCZNSUzznnt/2TgKzBmwD9ofGkw6xC9XjF8
 T1ZEXHBfEU82pFgIJGyeYR5KQ9JyIyQ7TFv4Hr/kZ2AJwR60ejZ1qpEJRYIkGCPY0Uqs
 1ykvX6o9CilceWeD+pZThhf4JppUaHoF8vxgb9saQhr/z7GCjSu7N1wcZPDIn5IVjwZF
 Nee5kDLb6yJvcGfE4CPejIw9+pnJGDQF1Mlsq90xoqZITUPPkZpdj4/DFERKJVv4P3NN
 pZJg==
X-Gm-Message-State: APjAAAVVPArY0MPBD8dF0lz+DSSBKUcGHqSryIu1Hs1a3W8A9jgqwJOV
 2k6fwyyZdVqhSoyxYlyRoZwZCg==
X-Google-Smtp-Source: APXvYqxIfo2NO8XTOT3ctZvv2cDs0ozaWXCueeTQ9tAdo83/1BkyWq7joz0lSGjM0p0REFCHbibU8A==
X-Received: by 2002:a17:902:9a08:: with SMTP id
 v8mr30503834plp.134.1579151537384; 
 Wed, 15 Jan 2020 21:12:17 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id l9sm21540217pgh.34.2020.01.15.21.12.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 21:12:16 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] Add mt8173 elm and hana board
Date: Thu, 16 Jan 2020 13:12:06 +0800
Message-Id: <20200116051209.37970-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_211222_487004_2561DA9C 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
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
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   60 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1028 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |    5 +-
 8 files changed, 1172 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
