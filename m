Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7AD98BE7
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 08:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sMmjD8uELqIBqc4Vq2sAyGit4V9KwJ579E8kO2Y46Nc=; b=Q+yJQFZNmV8Efg
	bhtK1oWssNEqUL7BeHYuzU6fIYbGTuoazieDGO+J4moRXaEY1e0/V3Bpp7u1xF3kSLKTKuZ6p5tPo
	fdbYokR/ADn+m6XS05k7lDd++oGOZ7QDIsF9Zt43rNS7Cd6aUdh8TlFeCmGsaXyIpLb/2HGpwECBk
	FyoWEm1VHOfoybVscf7pu/f3u/WBPohvN4aEvgKWhtNu9Y1ULEcMzpgWySEmCezs+vk5M/0FTp32Y
	uMT1pw7+7IsG+j7QVrRYpD5fft/YELKFWqY45a8dh62BvkaBMYOXtqtYfXRCg3XO1GMq6/oJc8G7g
	QN43GzAWcgiyVdQ2RUzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h48-0001jB-Bi; Thu, 22 Aug 2019 06:59:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h44-0001gS-Iq
 for linux-mediatek@lists.infradead.org; Thu, 22 Aug 2019 06:59:21 +0000
X-UUID: e6619a27e5dc4556aee2226f88b90ca7-20190821
X-UUID: e6619a27e5dc4556aee2226f88b90ca7-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1455721544; Wed, 21 Aug 2019 22:59:11 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 23:59:09 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 14:59:08 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 22 Aug 2019 14:59:08 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v5 0/13] Add mt7629 and fix mt7628 pwm
Date: Thu, 22 Aug 2019 14:58:30 +0800
Message-ID: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 12CFB085C5D238A2521CDD7EC48FA63A77B9CEB2F2950846F6EAD765795AD1F82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_235920_635215_478B781E 
X-CRM114-Status: GOOD (  11.23  )
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Changes since v5:
- Follow reviewer's comments:
  1. the license stuff is a separate change
  2. split fix mt7628 pwm into a single patch
  3. to ensure to not use mtk_pwm_clk_name[10] 
     (After dynamic allocate clock array patch, 
      this is no need to check)
  4. Use clock-frequency property to replace 
     the use of has_clks

Changes since v4:
- Follow reviewer's comments (v3: pwm: mediatek: add a property "num-pwms")
  Move the changes of droping the check for of_device_get_match_data
  returning non-NULL to next patch
- Follow reviewers's comments 
  (v3: pwm: mediatek: allocate the clks array dynamically)
  1. use pc->soc->has_clks to check clocks exist or not.
  2. Add error message when probe() unable to get clks
- Fixes bug when SoC is old mips which has no complex clock tree.
if clocks not exist, use the new property from DT to apply period 
calculation; otherwise, use clk_get_rate to get clock frequency and 
apply period calculation.

Changes since v3:
- add a new property "clock-frequency" and fix mt7628 pwm
- add mt7629 pwm support

Changes since v2:
- use num-pwms instead of mediatek,num-pwms.
- rename the member from num_pwms to fallback_num_pwms to make it 
  more obvious that it doesn't represent the actually used value.
- add a dev_warn and a expressive comment to help other developers 
  to not start adding num_pwms in the compatible_data.

Changes since v1:
- add some checks for backwards compatibility.


Ryder Lee (5):
  pwm: mediatek: add a property "num-pwms"
  dt-bindings: pwm: add a property "num-pwms"
  arm64: dts: mt7622: add a property "num-pwms" for PWM
  arm: dts: mt7623: add a property "num-pwms" for PWM
  dt-bindings: pwm: update bindings for MT7629 SoC

Sam Shih (8):
  pwm: mediatek: droping the check for of_device_get_match_data
  pwm: mediatek: add a property "clock-frequency"
  pwm: mediatek: allocate the clks array dynamically
  pwm: mediatek: use pwm_mediatek as common prefix
  pwm: mediatek: update license and switch to SPDX tag
  dt-bindings: pwm: update bindings for MT7628 SoC
  pwm: mediatek: remove a property "has-clock"
  arm: dts: mediatek: add mt7629 pwm support

 .../devicetree/bindings/pwm/pwm-mediatek.txt  |  12 +-
 arch/arm/boot/dts/mt7623.dtsi                 |   1 +
 arch/arm64/boot/dts/mediatek/mt7622.dtsi      |   1 +
 drivers/pwm/pwm-mediatek.c                    | 257 ++++++++++--------
 arch/arm/boot/dts/mt7629.dtsi                 | 16 ++++++++++++++++
 5 files changed, 168 insertions(+), 119 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
