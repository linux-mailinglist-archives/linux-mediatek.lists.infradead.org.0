Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D858B95382
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 03:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/MdB41d5DCk8qB08jrZjAw7K3sNVsIgeEZ5hIIlJ5Vw=; b=C0g2NJkRzHO8VV
	Sc8sYVy4Vh8rBbwcngAX5mCOhGiCicFxVKCP74RtI+PpLPwcwpdVk72r32kI7NOREVWoFsbEIf3vn
	r+B/nAYuwBpPr+DUrk8dWIdTIaaJJ7+Y/D29uFKbzB5KuUWr5O4EWCSt4wdYMqmriSRnWT/l/N9jB
	02xmpKgSr3Jqpipa8NDRXXbm7YGl+kd80XGlY6efANXKbuf11ya60k4Nn2U7BfkUQCpHsI6WUWub4
	5NKasiVf+RyR/vesEv2zlI7ytS1cfvqJPWszvxAzfvAZz02Ky7xNiANC66QgqKv65Xy309p2t59OA
	A5zyxH6Cc6xR3TrM1kgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzt94-0007E5-1h; Tue, 20 Aug 2019 01:41:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzt90-0007Dc-Er
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 01:41:07 +0000
X-UUID: 18b798c4c6a64e9f85d9bd574d54f523-20190819
X-UUID: 18b798c4c6a64e9f85d9bd574d54f523-20190819
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1724517693; Mon, 19 Aug 2019 17:40:53 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 18:40:52 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 09:40:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 20 Aug 2019 09:40:44 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v4 0/10] Add mt7629 and fix mt7628 pwm
Date: Tue, 20 Aug 2019 09:40:15 +0800
Message-ID: <1566265225-27452-1-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: ED3387D8F7DE73AC5566392D3F826B33B8E936E381F4CE54C56FB2ECCDD154A12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_184106_505849_22FF6F44 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 devicetree@vger.kernel.org, sam
 shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: sam shih <sam.shih@mediatek.com>

Changes since v4:
- Follow reviewer's comments (v3: pwm: mediatek: add a property "num-pwms")
  Move the changes of droping the check for of_device_get_match_data
  returning non-NULL to next patch
- Follow reviewers's comments 
  (v3: pwm: mediatek: allocate the clks array dynamically)
  1. use pc->soc->has_clks to check clocks exist or not.
  2. Add error message when probe() unable to get clks
- Fixes bug when SoC is old mips which has no complex clock tree.
if clocks not exist, use the new property from DT to apply period caculation;
otherwise, use clk_get_rate to get clock frequency and apply period caculation.

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


Ryder Lee (6):
  pwm: mediatek: add a property "num-pwms"
  pwm: mediatek: allocate the clks array dynamically and fix mt7628 pwm
  dt-bindings: pwm: add a property "num-pwms"
  arm64: dts: mt7622: add a property "num-pwms" for PWM node
  arm: dts: mt7623: add a property "num-pwms" for PWM node
  dt-bindings: pwm: update bindings for MT7629 SoC

sam shih (4):
  pwm: mediatek: droping the check for of_device_get_match_data
  pwm: mediatek: use pwm_mediatek as common prefix
  dt-bindings: pwm: update bindings for MT7628 SoC
  arm: dts: mediatek: add mt7629 pwm support

 .../devicetree/bindings/pwm/pwm-mediatek.txt  |  11 +-
 arch/arm/boot/dts/mt7623.dtsi                 |   1 +
 arch/arm64/boot/dts/mediatek/mt7622.dtsi      |   1 +
 drivers/pwm/pwm-mediatek.c                    | 242 ++++++++++--------
 arch/arm/boot/dts/mt7629.dtsi                 |  16 ++++++++++++++++
 5 files changed, 160 insertions(+), 111 deletions(-)
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
