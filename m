Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D891C55B
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 10:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuxZAOyNVFQE7xJUod4lHxHr41+hgJbmqoEE08Dh6Ss=; b=FY6072sMk+2BNk
	E2EUGXa6iihqx0I5lPtiqOuANy7NJOIt5cWIyn2cCs8gRk8z+zp3mXDifgcBpYdXLvnQDNrUgpt3F
	twLcXAeVzjQ0krPH0OOt9iCn6VopsrEez7YyRwDW2ZvFDQSdQ+XNtn/wORv0+Jhn12eklK5SUiz6R
	l8z+dH7z7nYIoNTFz+W+WRXlyJ+nbDt2NQ3APNEwRY7VeZnXzoHosAmzRN+Mp2Ad8c/ocqrBmDYq2
	jwhJWTuZM0bHla+iVOwko/wqLLJKU9P3KYYE7JDxh+W25RdQpkhREFap2/uxztC2P3ws5GQtcBXrT
	W7xYcxdBAB01g6+1xmcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQT7e-0001Wy-9E; Tue, 14 May 2019 08:49:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQT73-0000nl-4L; Tue, 14 May 2019 08:48:49 +0000
X-UUID: 5547afbbb5b5422f925e5b3182217831-20190514
X-UUID: 5547afbbb5b5422f925e5b3182217831-20190514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1388883095; Tue, 14 May 2019 00:47:39 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 01:47:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 16:47:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 16:47:34 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Date: Tue, 14 May 2019 16:47:21 +0800
Message-ID: <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_014841_676060_0A221CC6 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add fwnode_usb_role_switch_get() to make easier to get
usb_role_switch by fwnode which register it.
It's useful when there is not device_connection registered
between two drivers and only knows the fwnode which register
usb_role_switch.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Tested-by: Biju Das <biju.das@bp.renesas.com>
---
v5 changes:
 1. remove linux/of.h suggested by Biju
 2. add tested by Biju

Note: still depends on [1]
 [1]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
      https://patchwork.kernel.org/patch/10909971/

v4 changes:
  1. use switch_fwnode_match() to find fwnode suggested by Heikki
  2. this patch now depends on [1]

 [1] [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
    https://patchwork.kernel.org/patch/10909971/

v3 changes:
  1. use fwnodes instead of node suggested by Andy
  2. rebuild the API suggested by Heikki

v2 no changes
---
 drivers/usb/roles/class.c | 24 ++++++++++++++++++++++++
 include/linux/usb/role.h  |  8 ++++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
index f45d8df5cfb8..4a1f09a41ec0 100644
--- a/drivers/usb/roles/class.c
+++ b/drivers/usb/roles/class.c
@@ -135,6 +135,30 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(usb_role_switch_get);
 
+/**
+ * fwnode_usb_role_switch_get - Find USB role switch by it's parent fwnode
+ * @fwnode: The fwnode that register USB role switch
+ *
+ * Finds and returns role switch registered by @fwnode. The reference count
+ * for the found switch is incremented.
+ */
+struct usb_role_switch *
+fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
+{
+	struct usb_role_switch *sw;
+	struct device *dev;
+
+	dev = class_find_device(role_class, NULL, fwnode, switch_fwnode_match);
+	if (!dev)
+		return ERR_PTR(-EPROBE_DEFER);
+
+	sw = to_role_switch(dev);
+	WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
+
+	return sw;
+}
+EXPORT_SYMBOL_GPL(fwnode_usb_role_switch_get);
+
 /**
  * usb_role_switch_put - Release handle to a switch
  * @sw: USB Role Switch
diff --git a/include/linux/usb/role.h b/include/linux/usb/role.h
index da2b9641b877..35d460f9ec40 100644
--- a/include/linux/usb/role.h
+++ b/include/linux/usb/role.h
@@ -48,6 +48,8 @@ int usb_role_switch_set_role(struct usb_role_switch *sw, enum usb_role role);
 enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw);
 struct usb_role_switch *usb_role_switch_get(struct device *dev);
 void usb_role_switch_put(struct usb_role_switch *sw);
+struct usb_role_switch *
+fwnode_usb_role_switch_get(struct fwnode_handle *fwnode);
 
 struct usb_role_switch *
 usb_role_switch_register(struct device *parent,
@@ -72,6 +74,12 @@ static inline struct usb_role_switch *usb_role_switch_get(struct device *dev)
 
 static inline void usb_role_switch_put(struct usb_role_switch *sw) { }
 
+static inline struct usb_role_switch *
+fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
+{
+	return ERR_PTR(-ENODEV);
+}
+
 static inline struct usb_role_switch *
 usb_role_switch_register(struct device *parent,
 			 const struct usb_role_switch_desc *desc)
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
