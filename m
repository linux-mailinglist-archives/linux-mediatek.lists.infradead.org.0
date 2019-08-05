Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EBC8151D
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 11:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZHMZeJHNkN3ecFU7XrRbUVVQ9HdmzGq+oDnx7tcX50=; b=o/rhRfQQ0F0n3b
	9nDQEZWJzWkSDEDboeqNmCoZolXdvyAUiB3NdfSmol6kNaqqXm4t+Tq+0x5m83PSRDp0775pw4cTW
	cp3jZBakWk+VnX3BKpoGHCPDOlpSEEVNh04yvdylWCU5ogKsExqaG274fR4scsnbHe3qUfQ+Q/5nc
	2c8Uye2cap9PNfbJ0bH3vrBY5suGcxOLKDEE05Kt1b0in519TAxneuOHBhdoLAGfYTClOXSJ4tfNY
	Z3XZYG7k8bM8LnX4Zyz+Lf8zATrXn37RxWt4OlywFuYjtkFHEWdGW0A0pyJxUz6aoJCbs+WVGj5Zt
	BxnEcdQbv1miaw8FF7ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ55-0007RI-DM; Mon, 05 Aug 2019 09:15:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ2U-00054n-Na
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 09:12:24 +0000
X-UUID: 3182d52f9ca24a1786cd70d683e9884d-20190805
X-UUID: 3182d52f9ca24a1786cd70d683e9884d-20190805
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1689583352; Mon, 05 Aug 2019 01:12:16 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 02:12:15 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 17:12:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 5 Aug 2019 17:12:06 +0800
From: Mars Cheng <mars.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 07/11] pinctrl: mediatek: add mt6779 eint support
Date: Mon, 5 Aug 2019 17:11:56 +0800
Message-ID: <1564996320-10897-8-git-send-email-mars.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
References: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_021222_917453_4E38F3F1 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Mars Cheng <mars.cheng@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Wendell Lin <wendell.lin@mediatek.com>,
 Ivan Tseng <ivan.tseng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

add driver setting to support mt6779 eint

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
---
 drivers/pinctrl/mediatek/pinctrl-mt6779.c |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6779.c b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
index 145bf22..49ff3cc 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mt6779.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
@@ -731,11 +731,19 @@
 	"iocfg_rt", "iocfg_lt", "iocfg_tl",
 };
 
+static const struct mtk_eint_hw mt6779_eint_hw = {
+	.port_mask = 7,
+	.ports     = 6,
+	.ap_num    = 209,
+	.db_cnt    = 16,
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
