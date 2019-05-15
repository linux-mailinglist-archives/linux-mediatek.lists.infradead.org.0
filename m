Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBB51F549
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 May 2019 15:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qvcFCz8tPuEiI5iNflcSGdpkqXETDj5hcPwRG2P07Uc=; b=SqIkPesHWPnsWT
	I9inlHe6z8xXcHcWpNYvB877v1nTNMnJH2mGFCW+Fzzv8TC13NOj5m88rUpsCTeolI3y0TvDmcmWl
	cFsjyaG2qrwOFhP4w+sz4E+gIKG5u5X8Q84KlnYYz0e7YGT+R7Nx+CSCx3H7yUb5JHYd/lKluS+2g
	3Lhs9OvLs9UnC3rzb33OzdMiuyI+n47dZotN7xZbqcBVp3CxzezZRzjt4mbnfYWkrAMZNpzWY+fX8
	4fw6kemyyXCwg6YNlamJCBUojODHzIFsUekdWSOvjMp5PPerqiWDVGy92/4z5MpuVUBpm8SdjfPc0
	huEP7VXbWpUb/anHw0/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtn4-0002XD-5s; Wed, 15 May 2019 13:17:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtn0-0002V9-0f
 for linux-mediatek@lists.infradead.org; Wed, 15 May 2019 13:17:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id c66so4693414wme.0
 for <linux-mediatek@lists.infradead.org>; Wed, 15 May 2019 06:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IBIWbSPpc7j2EgIiZbpjBgwSCzEoaoZA6IHHGeyqm0k=;
 b=MHYcqecCUI/xmN0B4JbfnX7hMUbiXLCSV1mF6rl8tZ2E/n8Dqwl7RFPMQb7BsxJ6Xr
 kXLbgqR52m/LoSaW6Wmuv+5/eAqFgWZF1kMc/Rd4879C6I95vL8neWipC4GRZqAVr3Pj
 zYUjZ/FA2xA7QVXfrgynvf+6HEClV+jOcEuav7LiVpqlKa+HNg2QYp5mSpeYRYzqB6lo
 yuR09cbQFJx5C6/7VhsCQ34CfnrVtre6Nc5j/ou1EZdnJfE9mmq7obbZ0chFH6D/rSp1
 81DX849ZUfUsN9Q+u0yj2LzxxfQCcM83++Pl3VJOh1S1BaUxAGliBMtJo+5pFLceJ/fR
 ZMHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IBIWbSPpc7j2EgIiZbpjBgwSCzEoaoZA6IHHGeyqm0k=;
 b=IT3X0pmpYfyzIcYR+M9VWqViRG24X1dlW8+R+3NK33P/d9lxKXCn7BVs9SiusmEMME
 Ujigz3WfPuS30EIRf/aJPOLKacAyto+ulNIy2nm35NZImoSqwJfQbzZWWCEJ1IYa6J0j
 5DEDvII0qO1sc8Ruj2m2XjrvJT9WV2z4LeZkq88wP1m/lFNj0jMjBjHxO0AvxD84BVvL
 BxfP1nulmWyj+9pYDC9AZU2jaYD5jiDxRHDYcgHy2W5sAH3XfuLyWlAjVGxjIGsKm+F9
 WJvUHRJWHZKuTXuw3KTptd2pWznl+9GWREkojUyGGdxeF0olefDCbKJ333yDNxHKlg26
 HcXw==
X-Gm-Message-State: APjAAAVfknq4q8zvvlWk0+1KBKGtXgIJD8XwVarn9RFhnvsNLabR33th
 lwWWdf+ko6LsE+ngD+TbGNz1fQ==
X-Google-Smtp-Source: APXvYqztV9ij0IVX8p1xv1SzUN1LERXsJ9a/GZbNdSp+jRn1j2plcZZjBsrB44VGoOhLMEphD5XOIQ==
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr21232039wmd.43.1557926264158; 
 Wed, 15 May 2019 06:17:44 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id f10sm3268583wrg.24.2019.05.15.06.17.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 15 May 2019 06:17:43 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	matthias.bgg@gmail.com
Subject: [PATCH v3 0/5] mt6392: Add support for MediaTek MT6392 PMIC
Date: Wed, 15 May 2019 15:17:36 +0200
Message-Id: <20190515131741.17294-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_061746_056562_B5D29848 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Fabien Parent <fparent@baylibre.com>
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

Fabien Parent (5):
  dt-bindings: regulator: add support for MT6392
  regulator: mt6392: Add support for MT6392 regulator
  dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
  mfd: mt6397: Add support for MT6392 pmic
  arm64: dts: mt6392: Add PMIC mt6392 dtsi

 .../devicetree/bindings/mfd/mt6397.txt        |  12 +-
 .../bindings/regulator/mt6392-regulator.txt   | 220 ++++++++
 arch/arm64/boot/dts/mediatek/mt6392.dtsi      | 208 ++++++++
 drivers/mfd/mt6397-core.c                     |  55 ++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mt6392-regulator.c          | 490 ++++++++++++++++++
 include/linux/mfd/mt6392/core.h               |  42 ++
 include/linux/mfd/mt6392/registers.h          | 487 +++++++++++++++++
 include/linux/regulator/mt6392-regulator.h    |  40 ++
 10 files changed, 1562 insertions(+), 2 deletions(-)
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
