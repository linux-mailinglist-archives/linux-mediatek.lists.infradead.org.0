Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AFE202D4
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 11:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwy8bnS6RqpvFrWwWHd8ROCGGuDjhs6oZdumzkjc4YQ=; b=snQmjMskD1FbCm
	bNoIZ7ZBCNLs10uKQE1AVJ7TZ+kzZ8JWe15wWCpjEDP+hDD7yfBnq+8iNDTK8b0vpTFOkGif51awK
	Bl7b8zYn0w8u6WUHnnkWbqyw1nqTf4OE5dJAh8GQmKw/TFgCSKjpQTU/o/mnhnWsuMBkAo/nUAYKV
	vUzPcUY9FQ5ELbZC/oAICZxF9cW5TYMX+A7Pl0LJ+daCB+vUGctgQboziiEXSUB/nzsUlEGcBs9IZ
	ZzKj0N3UIe2X1n7scqgg+DbrSadQPWjYIYZff6xsjfPFoFF+OHu2UX+hEpzHb08ksVB+k66SVfqJ/
	h//2qMBd9b1c18vRZqtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRD0Y-0002lc-Dv; Thu, 16 May 2019 09:49:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRD0Q-0002cp-Ng; Thu, 16 May 2019 09:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gnpo7O4h+Rtv3zFScy21j6XpL9ofsTpLdcm0W79OBeo=; b=RTOjwGPtZfKR9cKsyV8CUsnea
 cZD20TkHjmD3WbHgf2O1UbhTMdNfO1x3Cx36LF2pqhf8i39WwbPfoFO28hyO9/jLmmRd/iC1ksOs6
 X/3pQFBl4M/EIPn4+mkepEG6BRof1ylnWWEDLyRkj9o2Hh/s81lqNm1FVEPPa7Fxn/MoUy/4vKBfl
 rMyX1p4o3cIEaELNGkCccrYM8UTMc66i5y28LMgpb5Gao80CtBxXxv3xW4C2cnagpTzmED4thx+6A
 llUm7/KP1iiSXzkp5HCUzXUK/7bE6D3GKRK5C8ln2tTJvEin2m9UBrin+dH+WXOE3J8E1IYh2BWtV
 hXblybwPQ==;
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCJC-0004b4-38; Thu, 16 May 2019 09:04:15 +0000
X-UUID: 99cd830f060c46a9991def7f4126b3b5-20190516
X-UUID: 99cd830f060c46a9991def7f4126b3b5-20190516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 67805914; Thu, 16 May 2019 01:02:36 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:02:36 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:02:28 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:02:28 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v6 11/12] soc: mediatek: cmdq: add cmdq_dev_get_event function
Date: Thu, 16 May 2019 17:02:23 +0800
Message-ID: <20190516090224.59070-12-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
References: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9A2755B4FB78B57F33B478C63B99A519E16E32D62B0FFB64A4A767084979C0582000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_050414_273229_1B2177F4 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, linux-mediatek@lists.infradead.org,
 Dennis-YC Hsieh
 <dennis-yc.hsimediatek/mtkcam/drv/fdvt/4.0/cam_fdvt_v4l2.cppeh@mediatek.com>,
 Sascha
 Hauer <kernel@pengutronix.de>, Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby
 Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When client ask gce to clear or wait for event,
client need to pass event number to the API.
We suggest client store the event information in device node,
so we provide an API for client parse the event property.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 18 ++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 12 ++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index a64060a34e01..e9658063c3d4 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -52,6 +52,24 @@ struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx)
 }
 EXPORT_SYMBOL(cmdq_dev_get_subsys);
 
+s32 cmdq_dev_get_event(struct device *dev, int index)
+{
+	s32 result;
+
+	if (!dev)
+		return -EINVAL;
+
+	if (of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
+				       index, &result)) {
+		dev_err(dev, "can't parse gce-events property");
+
+		return -ENODEV;
+	}
+
+	return result;
+}
+EXPORT_SYMBOL(cmdq_dev_get_event);
+
 static void cmdq_client_timeout(struct timer_list *t)
 {
 	struct cmdq_client *client = from_timer(client, t, timer);
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 574006c5cd76..525713bf79b5 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -160,4 +160,16 @@ int cmdq_pkt_flush(struct cmdq_pkt *pkt);
  */
 struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx);
 
+/**
+ * cmdq_dev_get_event() - parse event from the device node of CMDQ client
+ * @dev:	device of CMDQ mailbox client
+ * @index:	the index of desired event
+ *
+ * Return: CMDQ event number
+ *
+ * Help CMDQ client pasing the event number
+ * from the device node of CMDQ client.
+ */
+s32 cmdq_dev_get_event(struct device *dev, int index);
+
 #endif	/* __MTK_CMDQ_H__ */
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
