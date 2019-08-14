Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE4A8D04D
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 12:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bRsuuYw7VNvGMYNkwt1wl6INVNr/YJCDMiHgpDG6trk=; b=IOT2PTBLeyex6w
	y95m/Skhgxybub1DLYFs/BZLPwZg5fsGUX0i03+flbmjBWbJlU62BFslPQGAS+eIm4FPOe+60RvS+
	Erlw+eO9ic5FSw9zJJ4Bps48EYr7UVLuYW01tp5ZsxJHuyT9rygP1jaFdxcGqbjcBc7fKjCar5Hwm
	U01H7m2vfiMahXj5vctftqzTRkNkI4QeTiTCvqZUZF0O/9fgH5dKHsahlClMiz+dysb4W/GPI8ESN
	L+t3X5ZkcyUYNHaB5kk/oChvT8y3SGj8URCGgVy7eEaTtw9gyegv3M7U5ZIHkZfL5kkJ9sfOCwQGj
	nB8qX9EQQOb2vZ3ykuUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqBb-0003Ue-Gp; Wed, 14 Aug 2019 10:07:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqBQ-0003RD-3p; Wed, 14 Aug 2019 10:07:09 +0000
X-UUID: 4506d8738cad4769b11d2d2dd9ebe6cc-20190814
X-UUID: 4506d8738cad4769b11d2d2dd9ebe6cc-20190814
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 192779111; Wed, 14 Aug 2019 02:06:55 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 03:06:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 18:06:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 14 Aug 2019 18:06:52 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH 0/4] add dts for Mediatek MT8183 thermal functions
Date: Wed, 14 Aug 2019 18:06:45 +0800
Message-ID: <1565777209-21869-1-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_030708_224014_819D2C7A 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Splitting the dtsi part from [1] and sending it again.

Add tzts1~5 and tztsABB from thermal sensor in SoC for
another get temperatrue. They don't need to thermal throttle.
And we bind coolers for thermal zone nodes of cpu_thermal.

Refernece:
[1] [v2,0/8] Add Mediatek thermal dirver and dtsi (https://patchwork.kernel.org/cover/10938809/)

Matthias Kaehlcke (1):
  arm64: dts: mt8183: Configure CPU cooling

michael.kao (3):
  arm64: dts: mt8183: add thermal zone node
  arm64: dts: mt8183: add dynamic power coefficients
  arm64: dts: mt8183: Add #cooling-cells to CPU nodes

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 139 +++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
