Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3051E072C
	for <lists+linux-mediatek@lfdr.de>; Mon, 25 May 2020 08:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lLEBFmy7ft2wHueZSAqcaZmuyEb5cXpxP4RoUlnunuA=; b=qg02tgyOhqb3eK
	jLUyGRSL/C/RCw2wAg6lo5RamB3GMEt9a2WSPD5LxzHNRIjM27x0K9pXnA0mPsQS116EADvYBPDfA
	A00ALMGVg6PZxsODL4KQioKlt1m15XmCD1lcDp3pZJmN/KkS/VYEa2R+RbNIS1op9pbvtpDnDzNtd
	7MEnD8IFkad+81NMdWmhSBBDJAonW4RiRJ8Zv3Gc0Gj/GN62yFQH9PzSjMjev41O48ItJreOhrlt+
	Jev9uwsrEbEF+7sT7jY7X7rluiLWEXPHDw59zpgclaQ6TCZAyeFejATiWg22sMoMETqYFb3z97tW8
	aahQ84RwwLkUjcqAvIVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6nz-0003gm-7T; Mon, 25 May 2020 06:41:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6nv-0003fX-WD; Mon, 25 May 2020 06:41:45 +0000
X-UUID: 48663c73ffd44223941dcd661387d66b-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=rPpVOTNMfIfxzbe8ETe1dm7/wf5N3sl6Al3g3yCdGBA=; 
 b=GLSosxCzgrZVU3EH3VE+cnZIpkCtJkNDv9/mYyryejePguRwrJwSZ+C5ImAAI2B93qX/O+JSL3Hsv1aXGMnmaiwV5sCc/faxC4mxlzFQlQxf6fVAIwOyFZZK8/Sk9BkT/AzAHeSYo01Mq0upww0AhzJAgdnY0OyFrdnT7emH45w=;
X-UUID: 48663c73ffd44223941dcd661387d66b-20200524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1277263386; Sun, 24 May 2020 22:41:40 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 23:41:37 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 14:41:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 25 May 2020 14:41:36 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v1] clk: mediatek: assign the initial value to clk_init_data
 of mtk_mux
Date: Mon, 25 May 2020 14:41:29 +0800
Message-ID: <1590388889-28382-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_234144_056753_E67FF378 
X-CRM114-Status: UNSURE (   9.39  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 stable@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Owen Chen <owen.chen@mediatek.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

It'd be dangerous when struct clk_core have new memebers.
Add the missing initial value to clk_init_data.

Fixes: a3ae549917f1 ("clk: mediatek: Add new clkmux register API")
Cc: <stable@vger.kernel.org>
Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/clk/mediatek/clk-mux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/mediatek/clk-mux.c b/drivers/clk/mediatek/clk-mux.c
index 76f9cd0..14e127e 100644
--- a/drivers/clk/mediatek/clk-mux.c
+++ b/drivers/clk/mediatek/clk-mux.c
@@ -160,7 +160,7 @@ struct clk *mtk_clk_register_mux(const struct mtk_mux *mux,
 				 spinlock_t *lock)
 {
 	struct mtk_clk_mux *clk_mux;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	struct clk *clk;
 
 	clk_mux = kzalloc(sizeof(*clk_mux), GFP_KERNEL);
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
