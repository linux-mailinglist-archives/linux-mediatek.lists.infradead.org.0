Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA30104ED8
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 Nov 2019 10:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D31YCyY7Uy9w2UJf9oZrCxWoagqh/w3nSYLaF6z6ui8=; b=jRSvA+QPBWPbl+
	hnNVNx5t6LvVaHwWYgPEMdK1cd3zi0e/HlHXXgQ1kbuU4uP8obOf2Du+dA71vvs+h7bdWg3yYhMUe
	RfEf2Zmcy3wn7ov0lxpf7aXm30d9To7lD2s1sCyNrEQg2UIOlrxVJByjQ4+P3ulpWr3VlVCCSVd1y
	ehHHLJsGLDaPGHYL0vJMdlqfWL65wiEDp4fcvs079/fbnVli935tKjT7KiLJRCmdzn98A+PK4Xk1K
	W5P9arJ3os4cW1FC6Zw9/hJripNdrjfpWvW5UCtFjzGZL8vJ4gRt98BfbCRsUERSAvVV13q5slsdu
	mjNU7guyrLt7ZGaQ4nZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiY0-0002bZ-0X; Thu, 21 Nov 2019 09:14:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiWq-0001Rh-Ar; Thu, 21 Nov 2019 09:13:34 +0000
X-UUID: fc645a50fc7c49ba852ccf515a311c70-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=UJ8CVpRl5qpmELbv5i/7Rub+Aa7T5EcEvIQVudHKMAA=; 
 b=jF6NNb1Mqk3jvc+h7Jj49pB2vur2qZxWn0frzEuDDAL780Lh3NqAYo1Q0RxDCX1BVje95yrqtSn+jR9pvlm38UfI0ujEF6A/glUNI7kRvHSv4BUC5VW5ruvsUBDXLKt6h+mK2ciFKZWdfH8gJX89kCBYXC39GX+8Uxh8I8lnrMg=;
X-UUID: fc645a50fc7c49ba852ccf515a311c70-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1008694416; Thu, 21 Nov 2019 01:13:27 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 01:13:47 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 17:13:21 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 17:13:30 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v1 11/12] soc: mediatek: cmdq: add wait no clear event function
Date: Thu, 21 Nov 2019 17:12:31 +0800
Message-ID: <1574327552-11806-12-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_011332_382823_68F318AB 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>, Dennis
 YC Hsieh <dennis-yc.hsieh@mediatek.com>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add wait no clear event function in cmdq helper functions to wait specific
event without clear to 0 after receive it.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c |   15 +++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  |   10 ++++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 3b10241..7f1e332 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -323,6 +323,21 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
 }
 EXPORT_SYMBOL(cmdq_pkt_wfe);
 
+int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event)
+{
+	struct cmdq_instruction inst = { {0} };
+
+	if (event >= CMDQ_MAX_EVENT)
+		return -EINVAL;
+
+	inst.op = CMDQ_CODE_WFE;
+	inst.value = CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
+	inst.event = event;
+
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_wait_no_clear);
+
 int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
 {
 	struct cmdq_instruction inst = { {0} };
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 77e8944..5211827 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -148,6 +148,16 @@ int cmdq_pkt_mem_move(struct cmdq_pkt *pkt, phys_addr_t src_addr,
 int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
 
 /**
+ * cmdq_pkt_wait_no_clear() - Append wait for event command to the CMDQ packet,
+ *			      without update event to 0 after receive it.
+ * @pkt:	the CMDQ packet
+ * @event:	the desired event type to wait
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event);
+
+/**
  * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet
  * @pkt:	the CMDQ packet
  * @event:	the desired event to be cleared
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
