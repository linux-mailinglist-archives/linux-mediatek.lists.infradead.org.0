Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF86DA14BA
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 11:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3/TyL0Qou6cBgp8TWZdVH5OedRjMYuEMnbSWiXCOcho=; b=u8+IUVlqbHtbgd
	+8uE5vzEjv3nEvHlN8QtoFBw0K/vaFX/e+yNzvEpgI1bTuQJCoefHlncT4Hm4uGLGAONt1eZLzMBD
	s5rz4hct6NiZPLn3bcP4SQokbo05yAblUa3ni5ZNlPloAQu6kgvPKlwkPgOnqAPO44u65RI/6TB1y
	mewatFWz4azaJuxc4fvwZP2fmRrjdr1bO0ZwBVuHA3EGWthQi2f2db1VpiUCX+f6zk7SjhEn4fIeY
	DugYy0nIXJ9LieRQLw/hpNWFWq+4BT9YZqqWZhabT+KwmXsGpJG3ucyReIT1PfFEMpjd0JdgwnmNB
	Jfz2MawsuE+lNjUndQKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Gek-0001Ag-9N; Thu, 29 Aug 2019 09:23:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ge3-0000c6-PT; Thu, 29 Aug 2019 09:23:09 +0000
X-UUID: d75bbba9372340598ead63c6e029411e-20190829
X-UUID: d75bbba9372340598ead63c6e029411e-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 261645994; Thu, 29 Aug 2019 01:23:09 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 02:23:07 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 17:23:04 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 17:23:03 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v11 00/11] add USB GPIO based connection detection driver
Date: Thu, 29 Aug 2019 17:22:27 +0800
Message-ID: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: CF72600A8E3B74F2B4A3F789FB7C5C6E97A9154F3CEFE5ADBB3278660AD8AFB82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_022307_833902_671F320F 
X-CRM114-Status: GOOD (  14.14  )
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

Because the USB Connector is introduced and the requirement of
usb-connector.txt binding, the old way using extcon to support
USB Dual-Role switch is now deprecated, meanwhile there is no
available common driver when use Type-B connector, typically
using an input GPIO to detect USB ID pin.
This patch series introduce a USB GPIO based connection detection
driver and try to replace the function provided by extcon-usb-gpio
driver.

v11 changes:
  1. add Reviewed-by Linus for [02/11] ad [03/11]
  2. change compatible as "gpio-usb-b-connector", and remove label
    in example suggested by Rob

NOTE: based on the following series
 https://lore.kernel.org/patchwork/patch/1103630/
 [v3,1/7] drivers: Introduce device lookup variants by name

 they are already in:
 https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/log/drivers/base/core.c?h=driver-core-next

v10 changes:
  1. revert commit log changes of [06/11] and [07/11]

v9 changes:
  1. replace signed-off-by by suggested-by Heikki
  2. add reviewed-by Linus
  3. use class_find_device_by_fwnode() introduced by series [1]

[1]:
 https://lore.kernel.org/patchwork/patch/1103630/
 [v3,1/7] drivers: Introduce device lookup variants by name

 they are already in:
 https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/log/drivers/base/core.c?h=driver-core-next

v8 changes:
  1. rename the driver's name suggested by Heikki
  2. move the driver from usb/roles/ into usb/common/ suggested by Heikki
  3. introduce Kconfig for usb common core to add the new driver
  4. modify binding of the driver 
  5. rename the subject title

v7 changes:
  1. [5/10]: add signed-off-by Chunfeng
  2. [6/10]: add signed-off-by Chunfeng
  3. [6/10]: depends on linux-next of Rafael's tree [1]
  4. [7/10]: add signed-off-by Chunfeng and tested-by Biju
  5. [9/10]: add tested-by Nagarjuna, and remove DEV_PMS_OPS suggested by Andy

[1] https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/log/?h=linux-next

v6 changes:
  1. merge [1] and [2] into this series
  2. don't use graph anymore to find usb-role-switch
  3. abandon [3] and introduce three patches (6, 7, 8 in this series)
     to rebuild APIs getting usb-role-switch

  [1]: [v3] dt-binding: usb: add usb-role-switch property
       https://patchwork.kernel.org/patch/10934835/
  [2]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
       https://patchwork.kernel.org/patch/10909971/

  [3]: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node

v5 changes:
  1. remove linux/of.h and put usb_role_switch when error happens,
     suggested by Biju
  2. treat Type-B connector as USB controller's child, but not as
     a virtual device, suggested by Rob
  3. provide and use generic property "usb-role-switch", see [1],
     suggested by Rob

  Note: this series still depends on [2]

  [1]: [v3] dt-binding: usb: add usb-role-switch property
       https://patchwork.kernel.org/patch/10934835/
  [2]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
       https://patchwork.kernel.org/patch/10909971/

v4 changes:
  1. use switch_fwnode_match() to find fwnode suggested by Heikki
  2. assign fwnode member of usb_role_switch struct suggested by Heikki
  3. make [4/6] depend on [2]
  3. remove linux/gpio.h suggested by Linus
  4. put node when error happens

  [4/6] usb: roles: add API to get usb_role_switch by node
  [2] [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
    https://patchwork.kernel.org/patch/10909971/

v3 changes:
  1. add GPIO direction, and use fixed-regulator for GPIO controlled
    VBUS regulator suggested by Rob;
  2. rebuild fwnode_usb_role_switch_get() suggested by Andy and Heikki
  3. treat the type-B connector as a virtual device;
  4. change file name of driver again
  5. select USB_ROLE_SWITCH in mtu3/Kconfig suggested by Heikki
  6. rename ssusb_mode_manual_switch() to ssusb_mode_switch()

v2 changes:
 1. make binding clear, and add a extra compatible suggested by Hans

Chunfeng Yun (8):
  dt-binding: usb: add usb-role-switch property
  dt-bindings: connector: add optional properties for Type-B
  dt-bindings: usb: add binding for USB GPIO based connection detection
    driver
  dt-bindings: usb: mtu3: add properties about USB Role Switch
  usb: roles: get usb-role-switch from parent
  usb: common: create Kconfig file
  usb: common: add USB GPIO based connection detection driver
  usb: mtu3: register a USB Role Switch for dual role mode

Heikki Krogerus (2):
  device connection: Add fwnode_connection_find_match()
  usb: roles: Add fwnode_usb_role_switch_get() function

Yu Chen (1):
  usb: roles: Introduce stubs for the exiting functions in role.h

 .../bindings/connector/usb-connector.txt      |  14 +
 .../devicetree/bindings/usb/generic.txt       |   4 +
 .../devicetree/bindings/usb/mediatek,mtu3.txt |  10 +
 .../devicetree/bindings/usb/usb-conn-gpio.txt |  30 ++
 drivers/base/devcon.c                         |  43 ++-
 drivers/usb/Kconfig                           |  35 +--
 drivers/usb/common/Kconfig                    |  51 ++++
 drivers/usb/common/Makefile                   |   1 +
 drivers/usb/common/usb-conn-gpio.c            | 284 ++++++++++++++++++
 drivers/usb/mtu3/Kconfig                      |   1 +
 drivers/usb/mtu3/mtu3.h                       |   5 +
 drivers/usb/mtu3/mtu3_debugfs.c               |   4 +-
 drivers/usb/mtu3/mtu3_dr.c                    |  48 ++-
 drivers/usb/mtu3/mtu3_dr.h                    |   6 +-
 drivers/usb/mtu3/mtu3_plat.c                  |   3 +-
 drivers/usb/roles/class.c                     |  41 ++-
 include/linux/device.h                        |  10 +-
 include/linux/usb/role.h                      |  37 +++
 18 files changed, 569 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
 create mode 100644 drivers/usb/common/Kconfig
 create mode 100644 drivers/usb/common/usb-conn-gpio.c

-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
