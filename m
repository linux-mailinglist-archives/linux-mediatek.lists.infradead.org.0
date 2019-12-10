Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54DF1181DE
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 09:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IWIShKZKB2ElNJZgpp3zPX+GbmdeTYTYBefKrb8A77k=; b=ndFu9gtHtZAN8s
	Kjww2BMR3uiXScltGVltG4Wo+vDCH3RRVG4BrdDv22WH6sUOaP8wqE1r4q3VGbY/20dNrwdnhO2hX
	2KUi+aY+cJIZRMjYtpf1HqO4bZGqTQdXNnrAlR3VK4hGecVEc25g+OKc83kUG1MiL76GF/b8UsamB
	A1B+5r11vqODgf8FlbQtoVxo3VIvI+KWNRM3WObJPlUQpi6OYZGOH8As+7PD60Gb9OM5N6+Bjrzhf
	z1NP8WzmDa/khRBkwwTvNHZYpHoRhX3YRTTo5hF6mF3MyBeD++Ndn5xWm5sdkjpEk0BhDrz65bu2D
	yEzwcl5Kw3RoOHmOKAyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieafa-00007g-Lw; Tue, 10 Dec 2019 08:14:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieafV-0008U0-3T
 for linux-mediatek@lists.infradead.org; Tue, 10 Dec 2019 08:14:54 +0000
X-UUID: 52a2f52a81ea44d2a4018546d7bcf345-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=uC8RbIA/Bmt5jx7r3LAgXAyyrUdbG45GJY60y9w1Jj0=; 
 b=kzQG1PijyQIvz17fz+F/cb/IZaPnQR2v6XDMsEcwMk2B9pdtwxmPkQGVHpN0kIcp7nWg5Vb+Iy8ENI8FvTnEhHvpQHqRSmzQOjjExTkESI+bY1r7gw8RShydh0SYdOwlZK2oSdRNeIb2XqgZW4wREq+uRqGAJCo6kE0X5DZz4m0=;
X-UUID: 52a2f52a81ea44d2a4018546d7bcf345-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <landen.chao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2065345494; Tue, 10 Dec 2019 00:14:48 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 00:15:02 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 16:14:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Dec 2019 16:14:26 +0800
From: Landen Chao <landen.chao@mediatek.com>
To: <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <vivien.didelot@savoirfairelinux.com>, <matthias.bgg@gmail.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH net-next 0/6] net-next: dsa: mt7530: add support for MT7531
Date: Tue, 10 Dec 2019 16:14:36 +0800
Message-ID: <cover.1575914275.git.landen.chao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_001453_159593_223223F7 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Landen Chao <landen.chao@mediatek.com>,
 frank-w@public-files.de, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch series adds support for MT7531.

MT7531 is the next generation of MT7530 which could be found on Mediatek
router platforms such as MT7622 or MT7629. 

It is also a 7-ports switch with 5 giga embedded phys, 2 cpu ports, and
the same MAC logic of MT7530. Cpu port 6 only supports HSGMII interface.
Cpu port 5 supports either RGMII or HSGMII in different HW SKU. Due to
support for HSGMII interface, pll, and pad setting are different from
MT7530.

Landen Chao (6):
  net: dsa: mt7530: Refine message in Kconfig
  net: dsa: mt7530: Extend device data ready for adding a new hardware
  dt-bindings: net: dsa: add new MT7531 binding to support MT7531
  net: dsa: mt7530: Add the support of MT7531 switch
  arm64: dts: mt7622: add mt7531 dsa to mt7622-rfb1 board
  arm64: dts: mt7622: add mt7531 dsa to bananapi-bpi-r64 board

 .../devicetree/bindings/net/dsa/mt7530.txt    |  77 +-
 .../dts/mediatek/mt7622-bananapi-bpi-r64.dts  |  50 +
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts  |  63 +-
 drivers/net/dsa/Kconfig                       |   6 +-
 drivers/net/dsa/mt7530.c                      | 874 ++++++++++++++++--
 drivers/net/dsa/mt7530.h                      | 173 +++-
 6 files changed, 1168 insertions(+), 75 deletions(-)

-- 
2.17.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
