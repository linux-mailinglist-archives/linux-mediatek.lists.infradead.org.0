Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B571FF0D9
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 13:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkjhoAsmx06TAo1lrntssTnpDZVPcYlBMpUsFfqRVf4=; b=W8H4Ff1N3glbtj
	ihOVsX+IIuA5nF76LR6VuoGQ/TW3zjXvpDuUhMUUkV9IQMmTmvpEDJGTHUX0OdKk6B3R3mMvIac1W
	Gfda0iqGhZC5n7zDF6X0E9URGGxm4r2zt3fFvZwcEW37FaEIkaomW6TFAZKxm4KY14WOrTdyqIkpU
	OU32TGY3FjHARfL4x05e6JEONSNnx+LzmHOA5tQfnnFXKa7BG1yhx0CEE1t52NVXQB7PUlEvR02JO
	hUtwZJ9leb4+9W26Id/ihXbQc+BEaI1EblD3Wgs6RcmvJ+L8FxFYPg60HBrFM/nb/xd4A9dnf704I
	wUVv0rZfzyzM8LJG/m9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsyM-00085Z-Iw; Thu, 18 Jun 2020 11:44:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsxl-0007JU-6m; Thu, 18 Jun 2020 11:44:10 +0000
X-UUID: 6dd98d46b1514099a06d55f147177786-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=B71l7gQY32AVSPj0Iz+n3QYxFS0Q7pqS5cd7ybjbLfI=; 
 b=pHIIJTxF+ujBhphha1txOcO4GzJ8KtLNRU+9vtVMd0VNDgd7fwGuRfa9IxX8+yQmdcCghHVt4fxWByjTBoNV3ZV1OM8Fmr2xmRKVdO3iMqzMwgV5AaERlkrcuaF9gP8YZ8nH6HTAQQ2dB3FzcERFnxaY9ABOcqAhIIvm+0VgU7w=;
X-UUID: 6dd98d46b1514099a06d55f147177786-20200618
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 867150420; Thu, 18 Jun 2020 03:43:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 04:34:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 19:34:02 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 18 Jun 2020 19:34:02 +0800
From: Hanks Chen <hanks.chen@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, "Michael
 Turquette" <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@kernel.org>
Subject: [PATCH v6 5/7] pinctrl: mediatek: add mt6779 eint support
Date: Thu, 18 Jun 2020 19:33:36 +0800
Message-ID: <1592480018-3340-6-git-send-email-hanks.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1592480018-3340-1-git-send-email-hanks.chen@mediatek.com>
References: <1592480018-3340-1-git-send-email-hanks.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8C82BBF0C2C048DF0D06905D2C1624E4734FF640109C428B357B14E8BF7619632000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_044409_258011_8E8AC7EF 
X-CRM114-Status: UNSURE (   8.70  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Hanks Chen <hanks.chen@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

add driver setting to support mt6779 eint

Acked-by: Sean Wang <sean.wang@kernel.org>
Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
---
 drivers/pinctrl/mediatek/pinctrl-mt6779.c |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6779.c b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
index 145bf22..3282260 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mt6779.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
@@ -731,11 +731,19 @@
 	"iocfg_rt", "iocfg_lt", "iocfg_tl",
 };
 
+static const struct mtk_eint_hw mt6779_eint_hw = {
+	.port_mask = 7,
+	.ports     = 6,
+	.ap_num    = 195,
+	.db_cnt    = 13,
+};
+
 static const struct mtk_pin_soc mt6779_data = {
 	.reg_cal = mt6779_reg_cals,
 	.pins = mtk_pins_mt6779,
 	.npins = ARRAY_SIZE(mtk_pins_mt6779),
 	.ngrps = ARRAY_SIZE(mtk_pins_mt6779),
+	.eint_hw = &mt6779_eint_hw,
 	.gpio_m = 0,
 	.ies_present = true,
 	.base_names = mt6779_pinctrl_register_base_names,
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
