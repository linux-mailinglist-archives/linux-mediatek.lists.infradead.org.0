Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5345BE6D3F
	for <lists+linux-mediatek@lfdr.de>; Mon, 28 Oct 2019 08:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gdbP1xbI+cHPzVjhPB8wjbT5D8OkcgfIksO3oIaigM=; b=ceeuvEO3l6veiv
	o3whHcEDNDER0qgFaraYedBEr60Gb1yYA53txENeQvIQsuHD/YcJq6Bi0Qbg6nIVxEKihbNFk2Cj6
	yUiKpa4OCJHoKAVZQh5tf/QDk/w3YAX+uCJxkVB52Wd6E3KUPO6/e7owweB32DvO50j3xocJBIMkd
	BWirGAX2WiInY/AnTryjq+oe/rV4R59R7T0xTRWgGZDhbUuxw1iGJo/R9+V+HfErqQmDQ0ameTvtx
	UDU8LeAelB2KfaGQJWi+ufR/WzTkDxYrKiL8pakQN7ZAiMjPMPeBrTKWnC3VffQ13MIPbdhQWLAXk
	bvIDFMCkYvBYqg48KoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzTD-000229-06; Mon, 28 Oct 2019 07:29:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzTA-00021N-80
 for linux-mediatek@lists.infradead.org; Mon, 28 Oct 2019 07:29:41 +0000
X-UUID: dd5a58ff896c49219bb04bdfe8b14dac-20191027
X-UUID: dd5a58ff896c49219bb04bdfe8b14dac-20191027
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <eason.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1819353524; Sun, 27 Oct 2019 23:29:11 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 00:29:14 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 15:29:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 28 Oct 2019 15:29:14 +0800
From: Eason Yen <eason.yen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1 1/1] soc: mediatek: add SMC fid table for SIP interface
Date: Mon, 28 Oct 2019 15:29:09 +0800
Message-ID: <1572247749-4276-2-git-send-email-eason.yen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1572247749-4276-1-git-send-email-eason.yen@mediatek.com>
References: <1572247749-4276-1-git-send-email-eason.yen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_002940_289105_43CC92D4 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com,
 Eason Yen <eason.yen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

1. Add a header file to provide SIP interface to ATF
2. Add AUDIO SMC fid

Change-Id: I218e9f571cea079268a5414725a81e9b35702e33
Signed-off-by: Eason Yen <eason.yen@mediatek.com>
---
 include/linux/soc/mediatek/mtk_sip_svc.h |   28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
new file mode 100644
index 0000000..00ee0f4
--- /dev/null
+++ b/include/linux/soc/mediatek/mtk_sip_svc.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __MTK_SIP_SVC_H__
+#define __MTK_SIP_SVC_H__
+
+#include <linux/kernel.h>
+
+/* Error Code */
+#define SIP_SVC_E_SUCCESS               0
+#define SIP_SVC_E_NOT_SUPPORTED         -1
+#define SIP_SVC_E_INVALID_PARAMS        -2
+#define SIP_SVC_E_INVALID_Range         -3
+#define SIP_SVC_E_PERMISSION_DENY       -4
+
+#ifdef CONFIG_ARM64
+#define MTK_SIP_SMC_AARCH_BIT			0x40000000
+#else
+#define MTK_SIP_SMC_AARCH_BIT			0x00000000
+#endif
+
+/* AUDIO related SMC call */
+#define MTK_SIP_AUDIO_CONTROL \
+	(0x82000517 | MTK_SIP_SMC_AARCH_BIT)
+#endif
+/* __MTK_SIP_SVC_H__ */
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
