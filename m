Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB7140262
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Jan 2020 04:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=29zGiR+F71EGZ8tGy7tnsWuhgpjjgLQh14Rk+oFyxLE=; b=sC0DgSgk9C6cEv
	ZkSfibhTxBL5PIfDH+1M1F4Wii5MQQ8+DjvSZzrUd7UagLHOa0OA2Q/96ogJ0D+rBT3G8yhrXBvFa
	xmdYT4xbYgUHINxTlEo8+xw6iE5lmwh4dX4HTn1LK8jLMZ+pH7BXpTc2RhbW8TCYPg1yxD/i0uitA
	xWSroF48iY1nP+2OISOD73SophnMuZK1LlYpExW9/HZT5F6GyjEzqFvuf/gXVkE9zn17ARc//2WeW
	dqml5r6nhW8k9c/W6he4NpIu4hnPJy1mga2dDFF4yA/fGMXChNeJqTaKEAgYhmjzUltw0mM7Mcw6A
	DUNtwdE+ruYuVM1Dl6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isISM-0002eo-1n; Fri, 17 Jan 2020 03:37:58 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isISJ-0002du-Vd
 for linux-mediatek@lists.infradead.org; Fri, 17 Jan 2020 03:37:57 +0000
Received: by mail-pl1-x636.google.com with SMTP id p27so9261336pli.10
 for <linux-mediatek@lists.infradead.org>; Thu, 16 Jan 2020 19:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W3ZrmALb04VJvJYJRFDnB2xc6oarHSelUabhN5PENno=;
 b=S93imiwqTJgV9ntX1fa1Q4p88MPfMvVD6Z0uhgELxYfARwZGOCZkDu3BcPpqKPVcDm
 /rV0AiXUemaxpZro3ZodBQeZi8D7mKx54Z3yC6A5IjlE5ul5gU2e++Jo1EGMPQcxUB5b
 dTHjUYrKitks66CvR3LLUvGzMPibI3EBQvY4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W3ZrmALb04VJvJYJRFDnB2xc6oarHSelUabhN5PENno=;
 b=CxWk4g8GY8LviT8/HWP78ysg8ANJmI1CqHRMgRiWCA9kaeFpMeCcaUJl59U+tXFX16
 Y+St4RnaS23XSidMnyIy5pr5v30L+cUgRGMM08g1TMKReUL5uc6s6cmzoxnHawmrUrY2
 oWmvfOgeWh/M8lffgcLjIOJBJ9p1JjaJeJUXXQV+vEkKbX7wisqJPVkFC0MZpcGGNX8Y
 3RpCwsOXiXny4PB/PhHMvmA5+DpCzkCr/gCCPE+XnItTl8HFSCcvTooSeQ78ob5QWUNY
 UALSUWKeWKlQAYyUWDye9UlzU+CaTOhT76CWai3BqYqySxWj26T+2Hoo15up6/At1Ado
 6c4w==
X-Gm-Message-State: APjAAAX9iS+ahg2SNijogvp5YM3D3bMNWL1A1PbygUi8+S4rvrhP+En2
 4Z9m7993laXHlFb9GoOGyYGqCA==
X-Google-Smtp-Source: APXvYqz8oNglxNkmhRqIcnk3Hs0gldj3Lgjt+22dbA0S2qnTnMZGFb0p0ixnztKYQ0yeztInjhjuxA==
X-Received: by 2002:a17:90a:d986:: with SMTP id
 d6mr3245192pjv.78.1579232275097; 
 Thu, 16 Jan 2020 19:37:55 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id j38sm25940259pgj.27.2020.01.16.19.37.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 19:37:54 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/3] Add mt8173 elm and hana board
Date: Fri, 17 Jan 2020 11:37:46 +0800
Message-Id: <20200117033749.137420-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_193756_041928_A7E45194 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
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
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 ++
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1029 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |    5 +-
 8 files changed, 1183 insertions(+), 1 deletion(-)
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
