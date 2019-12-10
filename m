Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE041180DE
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 07:54:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Eq6tIlau+UEVtXZXv28J4FLKqZe8FTuKBS/V7Adpo0=; b=nBpx878qM9oWXg
	Xs3gywOsYfcFVnTA5CwXC7azce9hALNkQ6ziPhWexZgpcMT5neoCSiASL2IT2UknhN1oCrr5x9G0P
	5oR80mH8DR759EaEfuoKOPJPUfPSpPr4Jldjdvd7HnGjrgqWPViLl0V1jrOo+EUGILYtJfHzCGdlT
	uxEnn6JF6s7yjLzIlN2BqslHQfNyt/t+8hihVsCinr3f8V+JHjUD44NZR3guyMUZ+No6XIegTfIl8
	LVCSSOHa9AN0VytRKb2D6LzLAQ4eAgYJuZnAb8NNlI2j/bkmKrzxcbMes5mU3PY7dHgdezO+GbnF9
	anzuFnfHYMYk7cxAmzxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZPw-0002kK-1o; Tue, 10 Dec 2019 06:54:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZPN-0002J1-0M; Tue, 10 Dec 2019 06:54:10 +0000
X-UUID: 338d05a953da4581b64c000c99ae273e-20191209
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bjEwZOajHRTsCwlXnYQg/z3J8I+P+Fu/Wqga7go7+kg=; 
 b=FFXQvowqVtxKe+s63RiU2f0kzyz/vsdpxcgkKxq7tgFK+35w4bNqsD0v+MEHK8nurpECiHWaFRso1/l8Rd80WS7JjdnmoOETofUhOM6aqiJaHlebVVIYqIlw9B4no3x8mCC91gyOQgMeDgiA5MpKvESjd2OSG8M8gINBnn6loBw=;
X-UUID: 338d05a953da4581b64c000c99ae273e-20191209
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1662434047; Mon, 09 Dec 2019 22:54:05 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 22:48:16 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 14:47:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Dec 2019 14:47:17 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v9 3/9] soc: mediatek: Add basic_clk_id to scp_power_data
Date: Tue, 10 Dec 2019 14:46:47 +0800
Message-ID: <1575960413-6900-4-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
References: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_225409_050598_4C1331BD 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Try to stop extending the clk_id or clk_names if there are
more and more new BASIC clocks. To get its own clocks by the
basic_clk_id of each power domain.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index f669d37..915d635 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -117,6 +117,8 @@ enum clk_id {
  * @sram_pdn_ack_bits: The mask for sram power control acked bits.
  * @bus_prot_mask: The mask for single step bus protection.
  * @clk_id: The basic clocks required by this power domain.
+ * @basic_clk_id: provide the same purpose with field "clk_id"
+ *                by declaring basic clock prefix name rather than clk_id.
  * @caps: The flag for active wake-up action.
  */
 struct scp_domain_data {
@@ -127,6 +129,7 @@ struct scp_domain_data {
 	u32 sram_pdn_ack_bits;
 	u32 bus_prot_mask;
 	enum clk_id clk_id[MAX_CLKS];
+	const char *basic_clk_id[MAX_CLKS];
 	u8 caps;
 };
 
@@ -493,16 +496,26 @@ static struct scp *init_scp(struct platform_device *pdev,
 
 		scpd->data = data;
 
-		for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
-			struct clk *c = clk[data->clk_id[j]];
+		if (data->clk_id[0]) {
+			WARN_ON(data->basic_clk_id[0]);
 
-			if (IS_ERR(c)) {
-				dev_err(&pdev->dev, "%s: clk unavailable\n",
-					data->name);
-				return ERR_CAST(c);
-			}
+			for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
+				struct clk *c = clk[data->clk_id[j]];
+
+				if (IS_ERR(c)) {
+					dev_err(&pdev->dev,
+						"%s: clk unavailable\n",
+						data->name);
+					return ERR_CAST(c);
+				}
 
-			scpd->clk[j] = c;
+				scpd->clk[j] = c;
+			}
+		} else if (data->basic_clk_id[0]) {
+			for (j = 0; j < MAX_CLKS &&
+					data->basic_clk_id[j]; j++)
+				scpd->clk[j] = devm_clk_get(&pdev->dev,
+						data->basic_clk_id[j]);
 		}
 
 		genpd->name = data->name;
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
