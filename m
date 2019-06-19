Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D228E4BB35
	for <lists+linux-mediatek@lfdr.de>; Wed, 19 Jun 2019 16:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b1Pkx4iUHEWoMBCPYlE9tkUlalTXASVzIS1g8+a+OZM=; b=V92o29lacfpubm
	SF2T2AS9LgSOnL4H309jg6/FvSzVzpi8er4Bndaela56DUVyRuAWBAS6UolDpmvirEILHYs9D7MT3
	ICPzaxqamJvZ/+Uh6zWSXYfpB35Nfje7FByNCd9MdaUNIdi5OYP9gXju+FAMBhw9fHcP5VtDHfQ4R
	AzinKGFpbP0vzSSFP7uqnX8WGjyDXPuqDOapR4l1SsfX15TQUG/CuO1pn2ojrQmilBIJMNU0CbxQ1
	9RTVk6RWFqrP0j3FbFsvwhcmOXX2ZNjYI5HrXN4mRzr+bGVIP27jBlv8UXQS7s+f0Gn3FE9/SQ/Ht
	c4SngcNKKP2rlyKt1K6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbRo-00063o-Fz; Wed, 19 Jun 2019 14:20:24 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbRj-00061B-P1
 for linux-mediatek@lists.infradead.org; Wed, 19 Jun 2019 14:20:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so2064661wml.0
 for <linux-mediatek@lists.infradead.org>; Wed, 19 Jun 2019 07:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xe8Z7G8xOvRe6JhL6dXMu61WRA0y1QcBsLv7BXFLXu8=;
 b=llwcE/vozsWWrzWhJC9CO+SJiPMgZWnVaC4ILiC18AVKVObOtbHqSSD55EKh2GLEEr
 yW9kTMVwvXP0MW/YcvnEzOedwNkcQ2D6Cxmo+AS0urgcS1z0zlUcceMrzXx2kxIcjkSe
 rg0kUNgaJK0dkzvGoo3D8exmVpbm6fWRJy4NnAcO/IwjxmoZ1uk2SjFKEcmvTM1uZ9xv
 yWPWThjFu9RrEyhJQztu3gNLR0VQhk5HqJBiUqcFL8ffaWx1BlPizsHiRlsW2nPl5iyA
 QKRJyQJuHOE0l/qMKvWfFtsaYJ0knEMonny7dmoUcVIIV9Xu6mn+9Sc+psaIdyOuFPsd
 bCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xe8Z7G8xOvRe6JhL6dXMu61WRA0y1QcBsLv7BXFLXu8=;
 b=qfgv3wIODQc8PPQTj4V7yJYj3ngTJJiw7CtKYHmB0EfpmdN7wGBBMLGDPLIptRtD1M
 r9/GgfnCf1IsBB/pc1m7KUaZaAW1vHsYRj2knAZ2fLxmVHnREnuwS5hFv/l25ZYsm5SP
 sMg74SUOmAQOy/xygXINXMdOvTjBML/LObLWz7epFlXtkXKLO34krLgIC+EoFr8las0n
 XpSIYmIRHmuuEFfBmmxX1aGdZDBWZLsDETe1uJYPoWdjRCUYJ0WUS9rcSzhfnbaQ8LQ7
 lV0f+fphh4tCQEulFemtyQPp2vzAqhVyG58xm6vQPl3MNnWOZdRr2U3QOT4MpBj02UPB
 g7+Q==
X-Gm-Message-State: APjAAAVenZh7zUoWh9wDz2cdVs6dBfE+SB6POhPVzZCwL0SkMbbONxG8
 0jsOmV9Rqz7cAPYm+dUVR8Xo+w==
X-Google-Smtp-Source: APXvYqzUYdb3XhMJ78/mGb9h4pNZliClNr3lXrzr0m0AXlFqRlXutMI0MOSuI04PSQl09GOwpUpkgQ==
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr8111575wmc.22.1560954017792; 
 Wed, 19 Jun 2019 07:20:17 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id o20sm24209979wrh.8.2019.06.19.07.20.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 07:20:17 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
 lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v4 0/7] mt6392: Add support for MediaTek MT6392 PMIC
Date: Wed, 19 Jun 2019 16:20:06 +0200
Message-Id: <20190619142013.20913-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_072019_830980_33AFE0CA 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch series aims at bringing support for the MediaTek MT6392 PMIC. This
PMIC is used on the MT8516 Pumpkin board.

This patch series adds support for the following features:
 * PMIC keys
 * regulator
 * RTC

Fabien Parent (7):
  dt-bindings: regulator: add support for MT6392
  dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
  dt-bindings: input: mtk-pmic-keys: add MT6392 binding definition
  mfd: mt6397: Add support for MT6392 pmic
  regulator: mt6392: Add support for MT6392 regulator
  input: keyboard: mtk-pmic-keys: add MT6392 support
  arm64: dts: mt6392: Add PMIC mt6392 dtsi

 .../bindings/input/mtk-pmic-keys.txt          |  11 +-
 .../devicetree/bindings/mfd/mt6397.txt        |  12 +-
 .../bindings/regulator/mt6392-regulator.txt   | 220 ++++++++
 arch/arm64/boot/dts/mediatek/mt6392.dtsi      | 208 ++++++++
 drivers/input/keyboard/mtk-pmic-keys.c        |  14 +
 drivers/mfd/mt6397-core.c                     |  47 ++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mt6392-regulator.c          | 490 ++++++++++++++++++
 include/linux/mfd/mt6392/core.h               |  42 ++
 include/linux/mfd/mt6392/registers.h          | 487 +++++++++++++++++
 include/linux/regulator/mt6392-regulator.h    |  40 ++
 12 files changed, 1575 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi
 create mode 100644 drivers/regulator/mt6392-regulator.c
 create mode 100644 include/linux/mfd/mt6392/core.h
 create mode 100644 include/linux/mfd/mt6392/registers.h
 create mode 100644 include/linux/regulator/mt6392-regulator.h

-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
