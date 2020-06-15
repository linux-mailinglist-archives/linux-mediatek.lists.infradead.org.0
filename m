Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822861F9694
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 14:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aYnJOh42VxUywKpB7L0GeCFeY2krwgPakE7fDsaKjlc=; b=gsselWcfdzYYq9
	vMmgAMz33yUpGSiq/VJBB57iZZ1xP571QbxM8aBf/2ztAiQqpeFRIpxc3c3GaFomh8m9VnTzuCpH5
	vP1t0HocmkUj+GFekR5KKOdiPXaMDZJZdSvQgexDrdfvoytVXFt2Mxd2ai26Q9DhcEAPY06y5p1Dj
	ukR+RooeaX9mOXld1+Lx1+EI4fXF54wR/UsK3U/zEWLZUEhk0Se9hHbybgYV2lOhcH0S71okjEIQm
	CT1ppqhWw4hXXWZND9MltNM/5r5X/NxJE9L32zmK+BDX8mQzaS1uiAj/YR7V7mxYZDsqvHRYDn5JL
	hcaUHQGOL70cmNOkyH7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoHk-0002dB-D4; Mon, 15 Jun 2020 12:32:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoHg-0002cM-Cp; Mon, 15 Jun 2020 12:32:18 +0000
X-UUID: f9d8adea23514bb5bb452911fd2e94e3-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=LempUdXCCkO3XMmtbxe09boDlc3IHyauHMUqUrdhizc=; 
 b=j7wAmmAKRJXfgQFfYQ+3SVjF+ALdXZnS6Z5lYLs33HzRB4KTZ0lhtxWevNYtz+Ypt4ezh6W4GeYcnhil34lH5oztHKm0pz0MOdpivdVb4+DWGTzWVd40jrbYBEZRjn+uVYLEXgH+uccEDpkjQrtbRjLQzca5Ul2dzM58f/Yhbx0=;
X-UUID: f9d8adea23514bb5bb452911fd2e94e3-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1183593678; Mon, 15 Jun 2020 04:32:10 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 05:32:07 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 20:32:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 20:32:06 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <linus.walleij@linaro.org>, <bgolaszewski@baylibre.com>,
 <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [PATCH V10 0/2] media: i2c: Add support for OV02A10 sensor
Date: Mon, 15 Jun 2020 20:29:35 +0800
Message-ID: <20200615122937.18965-1-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_053216_445213_FF130CD1 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

This series adds DT bindings in YAML and V4L2 sub-device driver for Omnivision's
OV02A10 2 megapixel CMOS 1/5" sensor, which has a single MIPI lane interface
and output format of 10-bit RAW.

The driver is implemented with V4L2 framework.
 - Async registered as a V4L2 sub-device.
 - As the first component of camera system including Seninf, ISP pipeline.
 - A media entity that provides one source pad in common and two for dual-cam.
 
Previous versions of this patch-set can be found here:
 v9: https://lore.kernel.org/linux-media/20200523084103.31276-1-dongchun.zhu@mediatek.com/
 v8: https://lore.kernel.org/linux-media/20200509080627.23222-1-dongchun.zhu@mediatek.com/
 v7: https://lore.kernel.org/linux-media/20200430080924.1140-1-dongchun.zhu@mediatek.com/
 v6: https://lore.kernel.org/linux-media/20191211112849.16705-1-dongchun.zhu@mediatek.com/
 v5: https://lore.kernel.org/linux-media/20191104105713.24311-1-dongchun.zhu@mediatek.com/
 v4: https://lore.kernel.org/linux-media/20190907092728.23897-1-dongchun.zhu@mediatek.com/
 v3: https://lore.kernel.org/linux-media/20190819034331.13098-1-dongchun.zhu@mediatek.com/
 v2: https://lore.kernel.org/linux-media/20190704084651.3105-1-dongchun.zhu@mediatek.com/
 v1: https://lore.kernel.org/linux-media/20190523102204.24112-1-dongchun.zhu@mediatek.com/

Changes of v10 are addressing comments from Rob, Sakari, Tomasz.
Compared to v9:
 - Add maxItems constraint to powerdown-gpios and reset-gpios
 - Add a description of the data that sensor port node shall have
 - Remove 'data-lanes' property as it provides no information to the receiver
 - Refine 'err_power_off' error handling section after async register sub-device
 - Handle the case when fmt->which is V4L2_SUBDEV_FORMAT_TRY
 - Rollback the controls of HBLANK and VBLANK as userspace may need them
 - Use 'Eight Vertical Color Bars' to normalize standard name of test pattern
 - Fix other review comments in v9

Please review.
Thanks.

Dongchun Zhu (2):
  media: dt-bindings: media: i2c: Document OV02A10 bindings
  media: i2c: ov02a10: Add OV02A10 image sensor driver

 .../bindings/media/i2c/ovti,ov02a10.yaml           |  171 ++++
 MAINTAINERS                                        |    8 +
 drivers/media/i2c/Kconfig                          |   13 +
 drivers/media/i2c/Makefile                         |    1 +
 drivers/media/i2c/ov02a10.c                        | 1042 ++++++++++++++++++++
 5 files changed, 1235 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
 create mode 100644 drivers/media/i2c/ov02a10.c

-- 
2.9.2
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
