Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67328C311E
	for <lists+linux-mediatek@lfdr.de>; Tue,  1 Oct 2019 12:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yooig0imzUl5PQ88wofmzCYAI4FXch+oOwWTKWNb8NM=; b=I3S+ArykY359KO
	EiNrL+GbAfwY09yeSUf6zquM354YF5twYXj6pk5r44bhH3UtxbYehNoArt7YnHM5om/YxjdndPEgw
	xp2RvzyFwq4YMRiY0jBle7jDppJ+jj74jRtL/ANYwkf/RWdYPTIs15ZhnLd6ubqgv/skTT8ceuWRz
	ZnQyk8lKd7Zgibpo3GcXQ3cdPe1fy+jlbDNaVLQRbO+M47f3VizpVAK8FEfxGm3UdGjEK3HZj1XQy
	rY/eZCBaBxEOxgtpk3qhGW0E7Ax8FTADHNHwXj20CGfdN3CniVbHsEGsFQ1GEcuIXtk7yrRrcw0yd
	XjXoe9WMRNjsNnjuBsTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFGM-0002Yc-3m; Tue, 01 Oct 2019 10:20:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFGI-0001W3-PE
 for linux-mediatek@lists.infradead.org; Tue, 01 Oct 2019 10:20:08 +0000
X-UUID: dad85c4253ae4813bf549db5af05de37-20191001
X-UUID: dad85c4253ae4813bf549db5af05de37-20191001
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1965056420; Tue, 01 Oct 2019 02:19:57 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 03:19:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 18:04:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 1 Oct 2019 18:04:48 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH] docs: printk-formats: add ptrdiff_t type to printk-formats
Date: Tue, 1 Oct 2019 18:04:49 +0800
Message-ID: <20191001100449.19481-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_032006_828776_77C62465 
X-CRM114-Status: UNSURE (   7.32  )
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
Cc: Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When print the difference between two pointers, we should use
the ptrdiff_t modifier %t.

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 Documentation/core-api/printk-formats.rst | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
index ecbebf4ca8e7..8a0f49cd158b 100644
--- a/Documentation/core-api/printk-formats.rst
+++ b/Documentation/core-api/printk-formats.rst
@@ -135,6 +135,20 @@ equivalent to %lx (or %lu). %px is preferred because it is more uniquely
 grep'able. If in the future we need to modify the way the kernel handles
 printing pointers we will be better equipped to find the call sites.
 
+Pointer Differences
+-------------------
+
+::
+
+	%td	2560
+	%tx	a00
+
+For printing the pointer differences, use the %t modifier for ptrdiff_t.
+
+Example::
+
+	printk("test: difference between pointers: %td\n", ptr2 - ptr1);
+
 Struct Resources
 ----------------
 
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
