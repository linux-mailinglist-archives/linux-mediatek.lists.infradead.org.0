Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D40B5B19
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 07:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ghn3t9rOti/HrnktOWRpn7vMpYjaHtd2rl9VVtHPqUk=; b=rNBHRxNLh6EZq0
	REtWGomBxYoFvaArSTeCBu+EZ3ftytGEgYtleGvEqecbuaDgOjSPHGaVIWU/UVsYpZCVwa3lpiqSW
	3fYc4aMS7FjBWuSaHH5IzSIfx90yGiDdfwK44y1ETvObXOeCeXYL06aCKm00oOcFNA4NaAFPlzj/b
	Kpu4W4iYZoCcwdP2/302cTZmmD1tK4WWXQtU/FotegxIZLQtOFfivImSH9C25Zo6U1jOIhSDQJKzj
	AoG0sqgo3VExOxCsZWUgA4qarO2BMAzeJmpPmbODRCHYRDM7dhdFtzLlJP+n80pwpiXtewQM8/hCT
	zdQsv8rX2Yf4Sq/6jUsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASrW-0001fG-Th; Wed, 18 Sep 2019 05:50:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASrS-0001ew-SI
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 05:50:44 +0000
X-UUID: 4ea6d13b29db4c95aaf594dcbb79f552-20190917
X-UUID: 4ea6d13b29db4c95aaf594dcbb79f552-20190917
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1750901166; Tue, 17 Sep 2019 21:50:32 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 22:50:31 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 13:50:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Sep 2019 13:50:17 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [RESEND, PATCH v7 0/11] Add mt7629 and fix mt7628 pwm
Date: Wed, 18 Sep 2019 13:50:00 +0800
Message-ID: <1568785811-9577-1-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1C15DC248C2AA0060FA28BF0FF0EA24D4EB79AE3C1434E825C8362ED6FEB84CC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_225042_923236_7DCF13A8 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

A gentle ping on this whole patch series

Changes since v7:
  1. PATCH v7 10/11: Add a missed Reviewed-by tag

Changes since v6:
  1. Due to we can use fixed-clock in DT
     We removed has_clks and fixed-clock properties 

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

Sam Shih (6):
  pwm: mediatek: droping the check for of_device_get_match_data
  pwm: mediatek: remove a property "has-clks"
  pwm: mediatek: allocate the clks array dynamically
  pwm: mediatek: use pwm_mediatek as common prefix
  pwm: mediatek: update license and switch to SPDX tag
  arm: dts: mediatek: add mt7629 pwm support

 .../devicetree/bindings/pwm/pwm-mediatek.txt  |   8 +-
 arch/arm/boot/dts/mt7623.dtsi                 |   1 +
 arch/arm64/boot/dts/mediatek/mt7622.dtsi      |   1 +
 drivers/pwm/pwm-mediatek.c                    | 245 +++++++++---------
 arch/arm/boot/dts/mt7629.dtsi                 | 16 ++++++++++++++++
 5 files changed, 149 insertions(+), 122 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
