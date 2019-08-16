Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232068FC06
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 09:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0DcMQwKq5owBRNcn8nsElVK5H3E58oDi7N1ZPm8IBx0=; b=s2AMf4aIy/ouFQ
	pVVBye4fb9u7VLactVjV1rcaayOucf++oUN5jcQoSJdxXQ8nz8SO9uiEnJpcOxqkk6TQz1W3Lxphc
	9gf+x1ZHtTfsbyzKLPap7GQ9YM69Ws/X10QFaeIPxnxRWEBwQlG1d9xHQdjfBbSSQSiokAAM5kFpT
	cgmQznCM99iBGpyQyrxQiestFKLB0u438Wt8nPLLRzx9mm/VH0Aw4B401rIPsNT33MniwXgEp1e7s
	DLbtBNwUfzRcY4ugI59KbA2xGKub8t0UcsjgxG2R4q7A+O+kETQCBtkQJvLnOtpbQApP+F7ThVlJn
	tjRjK83wNGWLgFGe52KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWYe-00032Z-LX; Fri, 16 Aug 2019 07:21:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWYa-00031n-Ho
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 07:21:53 +0000
X-UUID: 830d37b1b04f49268bc338034940611e-20190815
X-UUID: 830d37b1b04f49268bc338034940611e-20190815
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1109105008; Thu, 15 Aug 2019 23:21:48 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 00:21:46 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 15:21:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 16 Aug 2019 15:21:45 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v3 0/10] Add mt7629 and fix mt7628 pwm
Date: Fri, 16 Aug 2019 15:21:18 +0800
Message-ID: <1565940088-845-1-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_002152_587752_DA2298CB 
X-CRM114-Status: GOOD (  10.05  )
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

Changes since v2:
- use num-pwms instead of mediatek,num-pwms.
- rename the member from num_pwms to fallback_num_pwms to make it 
  more obvious that it doesn't represent the actually used value.
- add a dev_warn and a expressive comment to help other developers 
  to not start adding num_pwms in the compatible_data.

Changes since v1:
- add some checks for backwards compatibility.

Sam Shih (3):
  pwm: mediatek: add new property and fix mt7628 pwm
  dt-bindings: pwm: update bindings for MT7628 SoC
  arm: dts: mediatek: add mt7629 pwm support

 .../devicetree/bindings/pwm/pwm-mediatek.txt      |  3 +++
 arch/arm/boot/dts/mt7629.dtsi                     | 14 ++++++++++++++
 drivers/pwm/pwm-mediatek.c                        | 15 ++++++++++++++-
 3 files changed, 31 insertions(+), 1 deletion(-)

Ryder Lee (7):
  pwm: mediatek: add a property "num-pwms"
  pwm: mediatek: allocate the clks array dynamically
  pwm: mediatek: use pwm_mediatek as common prefix
  dt-bindings: pwm: add a property "num-pwms"
  arm64: dts: mt7622: add a property "num-pwms" for PWM node
  arm: dts: mt7623: add a property "num-pwms" for PWM node
  dt-bindings: pwm: update bindings for MT7629 SoC

 .../devicetree/bindings/pwm/pwm-mediatek.txt  |   8 +-
 arch/arm/boot/dts/mt7623.dtsi                 |   1 +
 arch/arm64/boot/dts/mediatek/mt7622.dtsi      |   1 +
 drivers/pwm/pwm-mediatek.c                    | 226 +++++++++---------
 4 files changed, 126 insertions(+), 110 deletions(-)
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
