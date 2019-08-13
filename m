Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883B78B6D2
	for <lists+linux-mediatek@lfdr.de>; Tue, 13 Aug 2019 13:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOAWzkgPDWsd654wI4uPvxeDfvIzJWVpN4WNv/RlIAw=; b=uXBgE1xdtfSkWG
	ufeuHuvjno0M4J79t9HEPiKQhyT7Ri9IVl6RUP+K9bSFegL2IuPx0RnpQmTZy/vlmT90IWVTYWssv
	rCuBhoECI4CEVHln/Kt3twYt/jHydYeZsFBvpDoiRAR+WaevnnyeaEEj2kw0ictFOk1Jw/CmwyThA
	jqtk/lyFeNXdMxsxISsMPE9yYvzBCWsE0qiVzr3ZGKevYRRQMgdE2HDM48JRCsXYgvMC5mSHcm942
	ZTkjRHJhhdZALV1rdhzel8wkVhlrZ/5G8vz8gCUxAJdQIuv5rHLaxq06su1a7s5tddSJYQVtf6zJA
	k4K1vheot8P38f74rHjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxV0I-0003uU-Nz; Tue, 13 Aug 2019 11:30:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUxr-0000Vx-0a; Tue, 13 Aug 2019 11:27:45 +0000
X-UUID: 3ee524e9210848f39e973b027e9bb768-20190813
X-UUID: 3ee524e9210848f39e973b027e9bb768-20190813
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1539899862; Tue, 13 Aug 2019 03:27:41 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 04:27:40 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 19:27:33 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 13 Aug 2019 19:27:36 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v9 08/11] usb: roles: get usb-role-switch from parent
Date: Tue, 13 Aug 2019 19:27:11 +0800
Message-ID: <1565695634-9711-9-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1565695634-9711-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1565695634-9711-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E383AA8907476D6D4196653257DA48990A5CF32FF58C8C2E573605B4F4D7F2282000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_042743_200153_FDDFD93E 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

when the USB host controller is the parent of the connector,
usually type-B, sometimes don't need the graph, so we should
check whether it's parent registers usb-role-switch or not
firstly, and get it if exists.

Suggested-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v9:
  1. replace signed-off-by by suggested-by Heikki
  2. use class_find_device_by_fwnode()

v8: no changes
v7:
  add signed-off-by Chunfeng

v6:
  new patch
---
 drivers/usb/roles/class.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
index 2abb6fe384ca..94b4e7db2b94 100644
--- a/drivers/usb/roles/class.c
+++ b/drivers/usb/roles/class.c
@@ -102,6 +102,19 @@ static void *usb_role_switch_match(struct device_connection *con, int ep,
 	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
 }
 
+static struct usb_role_switch *
+usb_role_switch_is_parent(struct fwnode_handle *fwnode)
+{
+	struct fwnode_handle *parent = fwnode_get_parent(fwnode);
+	struct device *dev;
+
+	if (!parent || !fwnode_property_present(parent, "usb-role-switch"))
+		return NULL;
+
+	dev = class_find_device_by_fwnode(role_class, parent);
+	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
+}
+
 /**
  * usb_role_switch_get - Find USB role switch linked with the caller
  * @dev: The caller device
@@ -113,8 +126,10 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
 {
 	struct usb_role_switch *sw;
 
-	sw = device_connection_find_match(dev, "usb-role-switch", NULL,
-					  usb_role_switch_match);
+	sw = usb_role_switch_is_parent(dev_fwnode(dev));
+	if (!sw)
+		sw = device_connection_find_match(dev, "usb-role-switch", NULL,
+						  usb_role_switch_match);
 
 	if (!IS_ERR_OR_NULL(sw))
 		WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
@@ -134,8 +149,10 @@ struct usb_role_switch *fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
 {
 	struct usb_role_switch *sw;
 
-	sw = fwnode_connection_find_match(fwnode, "usb-role-switch", NULL,
-					  usb_role_switch_match);
+	sw = usb_role_switch_is_parent(fwnode);
+	if (!sw)
+		sw = fwnode_connection_find_match(fwnode, "usb-role-switch",
+						  NULL, usb_role_switch_match);
 	if (!IS_ERR_OR_NULL(sw))
 		WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
 
-- 
2.22.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
