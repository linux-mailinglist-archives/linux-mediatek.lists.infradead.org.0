Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D278EB5C7
	for <lists+linux-mediatek@lfdr.de>; Sun, 28 Apr 2019 11:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vw8hVysZrJ6XL677dQFMeWF/CncMXPfL45GBADWyetw=; b=EKJ33lVpZZ3ci2
	o+NqSMFzMrDORzJRD9V53YSv9o6oRrfydo8rRGwg13foP2uRXFBGW7eOWXFmRIbyO7xqBk5aNbucx
	c8JPazGppkOlaVebgL98hj6hhlRp4IH3R3ufLftV4HW/dirwakyi7sgyYoH1SEiOeY6Q3zVfC9vki
	ufKwcVpOwNoNtjkpjxPtbHcJqq5fZmNfpfurQ+TaWM6L/fYQeHLwjAKGVEeHi0RuvD0CZcpMRAF3l
	nQyFwx/eGZFD25u4dj653LhrhnD/97cR53KtbV1YjbuWc1wtAU085ynqgjAKVfNAA2dXzqCXrMB3L
	ljQ5GV005qo73/nysjzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKg5S-0006bq-2X; Sun, 28 Apr 2019 09:27:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKg5H-0006Vt-W9; Sun, 28 Apr 2019 09:26:58 +0000
X-UUID: 6ae502d6ac174e7a9eabaeafe977d1e5-20190428
X-UUID: 6ae502d6ac174e7a9eabaeafe977d1e5-20190428
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 435730896; Sun, 28 Apr 2019 01:26:41 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 02:26:39 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 28 Apr 2019 17:26:37 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 28 Apr 2019 17:26:37 +0800
Message-ID: <1556443596.10179.212.camel@mhfsdcap03>
Subject: RE: [PATCH v4 5/6] usb: roles: add USB Type-B GPIO connector driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Biju Das <biju.das@bp.renesas.com>
Date: Sun, 28 Apr 2019 17:26:36 +0800
In-Reply-To: <OSBPR01MB210367FCF0BCDF4D9BB7B32CB83E0@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1556261237-13823-1-git-send-email-chunfeng.yun@mediatek.com>
 <1556261237-13823-6-git-send-email-chunfeng.yun@mediatek.com>
 <OSBPR01MB210367FCF0BCDF4D9BB7B32CB83E0@OSBPR01MB2103.jpnprd01.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_022656_043207_72A0B9A6 
X-CRM114-Status: GOOD (  29.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Biju,
On Fri, 2019-04-26 at 09:22 +0000, Biju Das wrote:
> Hi Chunfeng Yun,
> 
> Thanks for the patch.
> 
> > Subject: [PATCH v4 5/6] usb: roles: add USB Type-B GPIO connector driver
> > 
> > Due to the requirement of usb-connector.txt binding, the old way using
> > extcon to support USB Dual-Role switch is now deprecated when use Type-B
> > connector.
> > This patch introduces a driver of Type-B connector which typically uses an
> > input GPIO to detect USB ID pin, and try to replace the function provided by
> > extcon-usb-gpio driver
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v4 changes:
> >   1. remove linux/gpio.h suggested by Linus
> >   2. put node when error happens
> > 
> > v3 changes:
> >   1. treat bype-B connector as a virtual device;
> >   2. change file name again
> > 
> > v2 changes:
> >   1. file name is changed
> >   2. use new compatible
> > ---
> >  drivers/usb/roles/Kconfig           |  11 +
> >  drivers/usb/roles/Makefile          |   1 +
> >  drivers/usb/roles/typeb-conn-gpio.c | 305
> > ++++++++++++++++++++++++++++
> >  3 files changed, 317 insertions(+)
> >  create mode 100644 drivers/usb/roles/typeb-conn-gpio.c
> > 
> > diff --git a/drivers/usb/roles/Kconfig b/drivers/usb/roles/Kconfig index
> > f8b31aa67526..d1156e18a81a 100644
> > --- a/drivers/usb/roles/Kconfig
> > +++ b/drivers/usb/roles/Kconfig
> > @@ -26,4 +26,15 @@ config USB_ROLES_INTEL_XHCI
> >  	  To compile the driver as a module, choose M here: the module will
> >  	  be called intel-xhci-usb-role-switch.
> > 
> > +config TYPEB_CONN_GPIO
> > +	tristate "USB Type-B GPIO Connector"
> > +	depends on GPIOLIB
> > +	help
> > +	  The driver supports USB role switch between host and device via
> > GPIO
> > +	  based USB cable detection, used typically if an input GPIO is used
> > +	  to detect USB ID pin.
> > +
> > +	  To compile the driver as a module, choose M here: the module will
> > +	  be called typeb-conn-gpio.ko
> > +
> >  endif # USB_ROLE_SWITCH
> > diff --git a/drivers/usb/roles/Makefile b/drivers/usb/roles/Makefile index
> > 757a7d2797eb..5d5620d9d113 100644
> > --- a/drivers/usb/roles/Makefile
> > +++ b/drivers/usb/roles/Makefile
> > @@ -3,3 +3,4 @@
> >  obj-$(CONFIG_USB_ROLE_SWITCH)		+= roles.o
> >  roles-y					:= class.o
> >  obj-$(CONFIG_USB_ROLES_INTEL_XHCI)	+= intel-xhci-usb-role-
> > switch.o
> > +obj-$(CONFIG_TYPEB_CONN_GPIO)		+= typeb-conn-gpio.o
> > diff --git a/drivers/usb/roles/typeb-conn-gpio.c b/drivers/usb/roles/typeb-
> > conn-gpio.c
> > new file mode 100644
> > index 000000000000..097d2ca12a12
> > --- /dev/null
> > +++ b/drivers/usb/roles/typeb-conn-gpio.c
> > @@ -0,0 +1,305 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * USB Type-B GPIO Connector Driver
> > + *
> > + * Copyright (C) 2019 MediaTek Inc.
> > + *
> > + * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > + *
> > + * Some code borrowed from drivers/extcon/extcon-usb-gpio.c  */
> > +
> > +#include <linux/device.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/irq.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_graph.h>
> > +#include <linux/pinctrl/consumer.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regulator/consumer.h>
> > +#include <linux/usb/role.h>
> > +
> > +#define USB_GPIO_DEB_MS		20	/* ms */
> > +#define USB_GPIO_DEB_US		((USB_GPIO_DEB_MS) * 1000)	/* us
> > */
> > +
> > +#define USB_CONN_IRQF	\
> > +	(IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING |
> > IRQF_ONESHOT)
> > +
> > +struct usb_conn_info {
> > +	struct device *dev;
> > +	struct usb_role_switch *role_sw;
> > +	enum usb_role last_role;
> > +	struct regulator *vbus;
> > +	struct delayed_work dw_det;
> > +	unsigned long debounce_jiffies;
> > +
> > +	struct gpio_desc *id_gpiod;
> > +	struct gpio_desc *vbus_gpiod;
> > +	int id_irq;
> > +	int vbus_irq;
> > +};
> > +
> > +/**
> > + * "DEVICE" = VBUS and "HOST" = !ID, so we have:
> > + * Both "DEVICE" and "HOST" can't be set as active at the same time
> > + * so if "HOST" is active (i.e. ID is 0)  we keep "DEVICE" inactive
> > + * even if VBUS is on.
> > + *
> > + *  Role          |   ID  |  VBUS
> > + * ------------------------------------
> > + *  [1] DEVICE    |   H   |   H
> > + *  [2] NONE      |   H   |   L
> > + *  [3] HOST      |   L   |   H
> > + *  [4] HOST      |   L   |   L
> > + *
> > + * In case we have only one of these signals:
> > + * - VBUS only - we want to distinguish between [1] and [2], so ID is
> > +always 1
> > + * - ID only - we want to distinguish between [1] and [4], so VBUS = ID
> > +*/ static void usb_conn_detect_cable(struct work_struct *work) {
> > +	struct usb_conn_info *info;
> > +	enum usb_role role;
> > +	int id, vbus, ret;
> > +
> > +	info = container_of(to_delayed_work(work),
> > +			    struct usb_conn_info, dw_det);
> > +
> > +	/* check ID and VBUS */
> > +	id = info->id_gpiod ?
> > +		gpiod_get_value_cansleep(info->id_gpiod) : 1;
> > +	vbus = info->vbus_gpiod ?
> > +		gpiod_get_value_cansleep(info->vbus_gpiod) : id;
> > +
> > +	if (!id)
> > +		role = USB_ROLE_HOST;
> > +	else if (vbus)
> > +		role = USB_ROLE_DEVICE;
> > +	else
> > +		role = USB_ROLE_NONE;
> > +
> > +	dev_dbg(info->dev, "role %d/%d, gpios: id %d, vbus %d\n",
> > +		info->last_role, role, id, vbus);
> > +
> > +	if (info->last_role == role) {
> > +		dev_warn(info->dev, "repeated role: %d\n", role);
> > +		return;
> > +	}
> > +
> > +	if (info->last_role == USB_ROLE_HOST)
> > +		regulator_disable(info->vbus);
> > +
> > +	ret = usb_role_switch_set_role(info->role_sw, role);
> > +	if (ret)
> > +		dev_err(info->dev, "failed to set role: %d\n", ret);
> > +
> > +	if (role == USB_ROLE_HOST) {
> > +		ret = regulator_enable(info->vbus);
> > +		if (ret)
> > +			dev_err(info->dev, "enable vbus regulator failed\n");
> > +	}
> > +
> > +	info->last_role = role;
> > +
> > +	dev_dbg(info->dev, "vbus regulator is %s\n",
> > +		regulator_is_enabled(info->vbus) ? "enabled" : "disabled"); }
> > +
> > +static void usb_conn_queue_dwork(struct usb_conn_info *info,
> > +				 unsigned long delay)
> > +{
> > +	queue_delayed_work(system_power_efficient_wq, &info-
> > >dw_det, delay); }
> > +
> > +static irqreturn_t usb_conn_isr(int irq, void *dev_id) {
> > +	struct usb_conn_info *info = dev_id;
> > +
> > +	usb_conn_queue_dwork(info, info->debounce_jiffies);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static int usb_conn_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct device_node *np = dev->of_node;
> > +	struct device_node *parent;
> > +	struct device_node *child;
> > +	struct usb_conn_info *info;
> > +	int ret = 0;
> > +
> > +	if (!np)
> > +		return -EINVAL;
> > +
> > +	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
> > +	if (!info)
> > +		return -ENOMEM;
> > +
> > +	info->dev = dev;
> > +
> > +	child = of_get_child_by_name(np, "connector");
> > +	if (!child) {
> > +		dev_err(dev, "failed to find connector node\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	info->id_gpiod = devm_gpiod_get_from_of_node(
> > +				dev, child, "id-gpios", 0, GPIOD_IN, "idpin");
> > +	if (IS_ERR(info->id_gpiod)) {
> > +		of_node_put(child);
> > +		return PTR_ERR(info->id_gpiod);
> > +	}
> > +
> > +	info->vbus_gpiod = devm_gpiod_get_from_of_node(
> > +				dev, child, "vbus-gpios", 0, GPIOD_IN,
> > +				"vbuspin");
> > +	if (IS_ERR(info->vbus_gpiod)) {
> > +		of_node_put(child);
> > +		return PTR_ERR(info->vbus_gpiod);
> > +	}
> > +
> > +	if (!info->id_gpiod && !info->vbus_gpiod) {
> > +		dev_err(dev, "failed to get gpios\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	of_node_put(child);
> > +
> > +	if (info->id_gpiod)
> > +		ret = gpiod_set_debounce(info->id_gpiod,
> > USB_GPIO_DEB_US);
> > +	if (!ret && info->vbus_gpiod)
> > +		ret = gpiod_set_debounce(info->vbus_gpiod,
> > USB_GPIO_DEB_US);
> > +	if (ret < 0)
> > +		info->debounce_jiffies =
> > msecs_to_jiffies(USB_GPIO_DEB_MS);
> > +
> > +	INIT_DELAYED_WORK(&info->dw_det, usb_conn_detect_cable);
> > +
> > +	info->vbus = devm_regulator_get(dev, "vbus");
> > +	if (IS_ERR(info->vbus)) {
> > +		dev_err(dev, "failed to get vbus\n");
> > +		return PTR_ERR(info->vbus);
> > +	}
> > +
> > +	child = of_graph_get_endpoint_by_regs(np, -1, 0);
> > +	parent = of_graph_get_remote_port_parent(child);
> > +	info->role_sw =
> > fwnode_usb_role_switch_get(of_fwnode_handle(parent));
> > +	of_node_put(child);
> > +	of_node_put(parent);
> > +	if (IS_ERR(info->role_sw)) {
> > +		dev_err(dev, "failed to get role switch\n");
> > +		return PTR_ERR(info->role_sw);
> > +	}
> > +
> > +	if (info->id_gpiod) {
> > +		info->id_irq = gpiod_to_irq(info->id_gpiod);
> > +		if (info->id_irq < 0) {
> > +			dev_err(dev, "failed to get ID IRQ\n");
> May be usb_role_switch_put(info->role_sw); ??
Good catch, will fix it.

Thanks
> > +			return info->id_irq;
> > +		}
> > +
> > +		ret = devm_request_threaded_irq(dev, info->id_irq, NULL,
> > +						usb_conn_isr,
> > USB_CONN_IRQF,
> > +						pdev->name, info);
> > +		if (ret < 0) {
> > +			dev_err(dev, "failed to request ID IRQ\n");
> May be usb_role_switch_put(info->role_sw); ??
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	if (info->vbus_gpiod) {
> > +		info->vbus_irq = gpiod_to_irq(info->vbus_gpiod);
> > +		if (info->vbus_irq < 0) {
> > +			dev_err(dev, "failed to get VBUS IRQ\n");
> May be usb_role_switch_put(info->role_sw);
> > +			return info->vbus_irq;
> > +		}
> > +
> > +		ret = devm_request_threaded_irq(dev, info->vbus_irq,
> > NULL,
> > +						usb_conn_isr,
> > USB_CONN_IRQF,
> > +						pdev->name, info);
> > +		if (ret < 0) {
> > +			dev_err(dev, "failed to request VBUS IRQ\n");
> May be usb_role_switch_put(info->role_sw); ??
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	platform_set_drvdata(pdev, info);
> > +
> > +	/* Perform initial detection */
> > +	usb_conn_queue_dwork(info, 0);
> > +
> > +	return 0;
> > +}
> > +
> > +static int usb_conn_remove(struct platform_device *pdev) {
> > +	struct usb_conn_info *info = platform_get_drvdata(pdev);
> > +
> > +	cancel_delayed_work_sync(&info->dw_det);
> > +
> > +	if (info->last_role == USB_ROLE_HOST)
> > +		regulator_disable(info->vbus);
> > +
> > +	usb_role_switch_put(info->role_sw);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused usb_conn_suspend(struct device *dev) {
> > +	struct usb_conn_info *info = dev_get_drvdata(dev);
> > +
> > +	if (info->id_gpiod)
> > +		disable_irq(info->id_irq);
> > +	if (info->vbus_gpiod)
> > +		disable_irq(info->vbus_irq);
> > +
> > +	pinctrl_pm_select_sleep_state(dev);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused usb_conn_resume(struct device *dev) {
> > +	struct usb_conn_info *info = dev_get_drvdata(dev);
> > +
> > +	pinctrl_pm_select_default_state(dev);
> > +
> > +	if (info->id_gpiod)
> > +		enable_irq(info->id_irq);
> > +	if (info->vbus_gpiod)
> > +		enable_irq(info->vbus_irq);
> > +
> > +	usb_conn_queue_dwork(info, 0);
> > +
> > +	return 0;
> > +}
> > +
> > +static SIMPLE_DEV_PM_OPS(usb_conn_pm_ops,
> > +			 usb_conn_suspend, usb_conn_resume);
> > +
> > +#define DEV_PMS_OPS (IS_ENABLED(CONFIG_PM_SLEEP) ?
> > &usb_conn_pm_ops :
> > +NULL)
> > +
> > +static const struct of_device_id usb_conn_dt_match[] = {
> > +	{ .compatible = "linux,typeb-conn-gpio", },
> > +	{ }
> > +};
> > +MODULE_DEVICE_TABLE(of, usb_conn_dt_match);
> > +
> > +static struct platform_driver usb_conn_driver = {
> > +	.probe		= usb_conn_probe,
> > +	.remove		= usb_conn_remove,
> > +	.driver		= {
> > +		.name	= "typeb-conn-gpio",
> > +		.pm	= DEV_PMS_OPS,
> > +		.of_match_table = usb_conn_dt_match,
> > +	},
> > +};
> > +
> > +module_platform_driver(usb_conn_driver);
> > +
> > +MODULE_AUTHOR("Chunfeng Yun <chunfeng.yun@mediatek.com>");
> > +MODULE_DESCRIPTION("USB Type-B GPIO connector driver");
> > +MODULE_LICENSE("GPL v2");
> > --
> > 2.21.0
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
