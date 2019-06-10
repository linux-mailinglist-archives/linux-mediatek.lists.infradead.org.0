Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FDD3ADB8
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 05:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ovjMNSGdvicIMu8YuLz2SYeDGgmN4iQjrdyEr4wlDTM=; b=u/YHsKC8/LN4Oe
	Gc+f3Ts5igkjEMmSAHivUnGDMSjvzjpFkJnnH0UWBTrL5lO9O+POJy0TbTbxo3HhWCXeej6ctX1+/
	Owk54qOj8D8mKrTvwOwBLEN1pA75SHjfmzaoarCaEvWnWnrR2KKvYDfkv37uXHNBGK41wWEP3wzLr
	yFSjsYEI5vYr9fzUcs9jZTRpfprEGqEzGVzFXi38+m+GjpaB7Sw1FLLwzsa49tZbUFC8sHyXTkXmV
	1wgEXIqmuvtyb6UE7MnHf2fHFfG+gZeNYU/IUPT2ackU0TdIymV0p8B9tjBglribIo+1/xBzlUZfC
	/pt/NUM8iS62aIBqjwhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haBFK-0006y8-5G; Mon, 10 Jun 2019 03:45:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haBFG-0006xo-JS; Mon, 10 Jun 2019 03:45:19 +0000
X-UUID: 6bde1e0627764bf78b9741eaf7497f91-20190609
X-UUID: 6bde1e0627764bf78b9741eaf7497f91-20190609
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1547652833; Sun, 09 Jun 2019 19:45:04 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Jun 2019 20:45:02 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 11:44:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 10 Jun 2019 11:44:55 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [RFC v1] clk: core: support clocks that need to be enabled during
 re-parent
Date: Mon, 10 Jun 2019 11:44:53 +0800
Message-ID: <1560138293-4163-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_204518_647667_A87737AA 
X-CRM114-Status: UNSURE (   9.93  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, Biao Huang <biao.huang@mediatek.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When using property assigned-clock-parents to assign parent clocks,
core clocks might still be disabled during re-parent.
Add flag 'CLK_OPS_CORE_ENABLE' for those clocks must be enabled
during re-parent.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/clk/clk.c            | 9 +++++++++
 include/linux/clk-provider.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 443711f..b2e6fe3 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -1717,6 +1717,10 @@ static struct clk_core *__clk_set_parent_before(struct clk_core *core,
 		clk_core_prepare_enable(parent);
 	}
 
+	/* enable core if CLK_OPS_CORE_ENABLE is set */
+	if (core->flags & CLK_OPS_CORE_ENABLE)
+		clk_core_prepare_enable(core);
+
 	/* migrate prepare count if > 0 */
 	if (core->prepare_count) {
 		clk_core_prepare_enable(parent);
@@ -1744,6 +1748,10 @@ static void __clk_set_parent_after(struct clk_core *core,
 		clk_core_disable_unprepare(old_parent);
 	}
 
+	/* re-balance ref counting if CLK_OPS_CORE_ENABLE is set */
+	if (core->flags & CLK_OPS_CORE_ENABLE)
+		clk_core_disable_unprepare(core);
+
 	/* re-balance ref counting if CLK_OPS_PARENT_ENABLE is set */
 	if (core->flags & CLK_OPS_PARENT_ENABLE) {
 		clk_core_disable_unprepare(parent);
@@ -2973,6 +2981,7 @@ static int clk_dump_show(struct seq_file *s, void *data)
 	ENTRY(CLK_IS_CRITICAL),
 	ENTRY(CLK_OPS_PARENT_ENABLE),
 	ENTRY(CLK_DUTY_CYCLE_PARENT),
+	ENTRY(CLK_OPS_CORE_ENABLE),
 #undef ENTRY
 };
 
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index bb6118f..39a1fed 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -34,6 +34,7 @@
 #define CLK_OPS_PARENT_ENABLE	BIT(12)
 /* duty cycle call may be forwarded to the parent clock */
 #define CLK_DUTY_CYCLE_PARENT	BIT(13)
+#define CLK_OPS_CORE_ENABLE	BIT(14)	/* core need enable during re-parent */
 
 struct clk;
 struct clk_hw;
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
