Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8B112B503
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Dec 2019 14:58:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c35N2v22Ggf0i3VdIuXss/3qtOEOZBKKnjf0CS+Hw84=; b=FFXNem/bHxAzqt
	PhhGH7BqqecQZjk7Rz2+FxbBkl0ZgVDCkv+76W70kSmOfQc4rRL8UNNYIeI5jQKXsLzFSZn/LR76G
	fFYM4ByznmsiwbG0maNHKCBzphXHD6m8gbBVSv9MrIfq4CtrekZWf6DcCrsNEdwBTqBoOoSzqZujZ
	Nf4BU81csMJCPnh9SjYYOG13utHRlnK/8XLyJWBkVwRET7UOg39HoHdaFWMb10ksEx2NSiKYq/xdx
	jCmHCyvuJi6P9z6WbB2I2C8h2Jd++VEVTin76kY3betggUsXU61ocmg7QFk7LGzDD3nm6wxzT2BgD
	ZAImqkot3XJPwyqzACgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikq8X-00078x-0n; Fri, 27 Dec 2019 13:58:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikq7w-0006ib-QO; Fri, 27 Dec 2019 13:58:07 +0000
X-UUID: 1d9338db1159477a95b9ac393ce7b819-20191227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=vYlasMHZuSRc7riEfaQchdvZqxI+lnzARcdtzG6dJ1I=; 
 b=o+8uFrDaaWdGNbnucAQlzE0g/eLEDCW5Ts2DldQCovOOfbUdPvTyhU5z3JS9GWgLgnXXiOopVZqCkCmImXWw0upl8cIMqpvWKNd3w86dz3P38ynMw/ByXWSLh7EyunHPY/KKagQePSMHZS0o8Jy6jSab5S/nNygG/jrrOTJJZtg=;
X-UUID: 1d9338db1159477a95b9ac393ce7b819-20191227
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 87212270; Fri, 27 Dec 2019 05:58:01 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 05:58:09 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 21:56:51 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 21:58:13 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <matthias.bgg@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <linux-watchdog@vger.kernel.org>
Subject: [PATCH v2 2/2] dt-bindings: mt8183: Add watchdog dt-binding
Date: Fri, 27 Dec 2019 21:56:54 +0800
Message-ID: <20191227135654.3165-3-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191227135654.3165-1-yong.liang@mediatek.com>
References: <20191227135654.3165-1-yong.liang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0A35626FFBB8B6A8C65112D579E66C70E9775BE129D8A22DCA67577B39F4D4752000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_055804_866607_EB081E15 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "yong.liang" <yong.liang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

This patch add watchdog binding documentation for
watchdog on MTK Socs.

Signed-off-by: yong.liang <yong.liang@mediatek.com>
---
 Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
index fd380eb28df5..b3f9f2b4b6cc 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -9,6 +9,7 @@ Required properties:
 	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
 	"mediatek,mt7623-wdt", "mediatek,mt6589-wdt": for MT7623
 	"mediatek,mt7629-wdt", "mediatek,mt6589-wdt": for MT7629
+	"mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8183
 	"mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8516
 
 - reg : Specifies base physical address and size of the registers.
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
