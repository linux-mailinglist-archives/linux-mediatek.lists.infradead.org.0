Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E5A3213B
	for <lists+linux-mediatek@lfdr.de>; Sun,  2 Jun 2019 02:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrbED1aXSuifkMjbjFlIh57SSoq1nTKO/Itl7xEaxuc=; b=lMMFnBKyHyE0lJ
	pJA/KmYXL4fDk8YYumgOOYx2KvI5QD9W1MQ9WvyGciJ4GOVp7W5lMcQNYXjxrkCMeJxrAGOReAMSj
	3TrmAcbn4JAhCCqN6RCIYpNmQtHlwhavkPh3gacBgc94BI2Ts1wR5B/olnxrjp6t26TSkRW1L9mKy
	3Fqlh4xLDd98dkz+7DddDZ/h9TdCNA0NnISjTtJBTz8vHCZ8xo2uPyONlEfu69eHAoDmZLqIFuwoE
	7H+YcnM/Yz9z8bJmngyv/IIyQa1GN0YvALheMLah9MD9aiEU95N+IXFqMsblxpk955hY8gkiZcWjP
	R3hyCPIaEt9UuE2EF4FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXDxu-0000mu-7W; Sun, 02 Jun 2019 00:03:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXDxq-0000jP-G4
 for linux-mediatek@lists.infradead.org; Sun, 02 Jun 2019 00:03:08 +0000
X-UUID: 20bb66571c89415abcbed8f3c330c82e-20190601
X-UUID: 20bb66571c89415abcbed8f3c330c82e-20190601
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 752207550; Sat, 01 Jun 2019 16:02:56 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 17:02:53 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 2 Jun 2019 08:02:52 +0800
From: <sean.wang@mediatek.com>
To: <marcel@holtmann.org>, <johan.hedberg@gmail.com>
Subject: [PATCH v7 1/2] Bluetooth: btusb: Add protocol support for MediaTek
 MT7668U USB devices
Date: Sun, 2 Jun 2019 08:02:48 +0800
Message-ID: <1559433769-23749-2-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559433769-23749-1-git-send-email-sean.wang@mediatek.com>
References: <1559433769-23749-1-git-send-email-sean.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_170306_545904_232926FF 
X-CRM114-Status: GOOD (  22.05  )
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
Cc: linux-bluetooth@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

This adds the support of enabling MT7668U Bluetooth function running
on the top of btusb driver.

The information in /sys/kernel/debug/usb/devices about the Bluetooth
device is listed as the below.

T:  Bus=02 Lev=01 Prnt=01 Port=00 Cnt=01 Dev#=  2 Spd=5000 MxCh= 0
D:  Ver= 3.00 Cls=ef(misc ) Sub=02 Prot=01 MxPS= 9 #Cfgs=  1
P:  Vendor=0e8d ProdID=7668 Rev= 1.00
S:  Manufacturer=MediaTek Inc.
S:  Product=Wireless_Device
S:  SerialNumber=000000000
C:* #Ifs= 3 Cfg#= 1 Atr=a0 MxPwr=160mA
A:  FirstIf#= 0 IfCount= 2 Cls=e0(wlcon) Sub=01 Prot=01
I:* If#= 0 Alt= 0 #EPs= 3 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=81(I) Atr=03(Int.) MxPS=  16 Ivl=125us
E:  Ad=82(I) Atr=02(Bulk) MxPS=1024 Ivl=0ms
E:  Ad=02(O) Atr=02(Bulk) MxPS=1024 Ivl=0ms
I:* If#= 1 Alt= 0 #EPs= 2 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=83(I) Atr=01(Isoc) MxPS=   0 Ivl=1ms
E:  Ad=03(O) Atr=01(Isoc) MxPS=   0 Ivl=1ms
I:  If#= 1 Alt= 1 #EPs= 2 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=83(I) Atr=01(Isoc) MxPS=   9 Ivl=1ms
E:  Ad=03(O) Atr=01(Isoc) MxPS=   9 Ivl=1ms
I:  If#= 1 Alt= 2 #EPs= 2 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=83(I) Atr=01(Isoc) MxPS=  17 Ivl=1ms
E:  Ad=03(O) Atr=01(Isoc) MxPS=  17 Ivl=1ms
I:  If#= 1 Alt= 3 #EPs= 2 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=83(I) Atr=01(Isoc) MxPS=  25 Ivl=1ms
E:  Ad=03(O) Atr=01(Isoc) MxPS=  25 Ivl=1ms
I:  If#= 1 Alt= 4 #EPs= 2 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=83(I) Atr=01(Isoc) MxPS=  33 Ivl=1ms
E:  Ad=03(O) Atr=01(Isoc) MxPS=  33 Ivl=1ms
I:  If#= 1 Alt= 5 #EPs= 2 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=83(I) Atr=01(Isoc) MxPS=  49 Ivl=1ms
E:  Ad=03(O) Atr=01(Isoc) MxPS=  49 Ivl=1ms
I:  If#= 1 Alt= 6 #EPs= 2 Cls=e0(wlcon) Sub=01 Prot=01 Driver=btusb
E:  Ad=83(I) Atr=01(Isoc) MxPS=  63 Ivl=1ms
E:  Ad=03(O) Atr=01(Isoc) MxPS=  63 Ivl=1ms

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 drivers/bluetooth/Kconfig |  11 +
 drivers/bluetooth/btusb.c | 576 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 587 insertions(+)

diff --git a/drivers/bluetooth/Kconfig b/drivers/bluetooth/Kconfig
index b9c34ff9a0d3..57d710e619a6 100644
--- a/drivers/bluetooth/Kconfig
+++ b/drivers/bluetooth/Kconfig
@@ -52,6 +52,17 @@ config BT_HCIBTUSB_BCM
 
 	  Say Y here to compile support for Broadcom protocol.
 
+config BT_HCIBTUSB_MTK
+	bool "MediaTek protocol support"
+	depends on BT_HCIBTUSB
+	default n
+	help
+	  The MediaTek protocol support enables firmware download
+	  support and chip initialization for MediaTek Bluetooth
+	  USB controllers.
+
+	  Say Y here to compile support for MediaTek protocol.
+
 config BT_HCIBTUSB_RTL
 	bool "Realtek protocol support"
 	depends on BT_HCIBTUSB
diff --git a/drivers/bluetooth/btusb.c b/drivers/bluetooth/btusb.c
index 7db48ae65cd2..91b4ac7cb203 100644
--- a/drivers/bluetooth/btusb.c
+++ b/drivers/bluetooth/btusb.c
@@ -26,6 +26,7 @@
 #include <linux/usb.h>
 #include <linux/usb/quirks.h>
 #include <linux/firmware.h>
+#include <linux/iopoll.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/suspend.h>
@@ -70,6 +71,7 @@ static struct usb_driver btusb_driver;
 #define BTUSB_BCM2045		0x40000
 #define BTUSB_IFNUM_2		0x80000
 #define BTUSB_CW6622		0x100000
+#define BTUSB_MEDIATEK		0x200000
 
 static const struct usb_device_id btusb_table[] = {
 	/* Generic Bluetooth USB device */
@@ -361,6 +363,10 @@ static const struct usb_device_id blacklist_table[] = {
 	{ USB_VENDOR_AND_INTERFACE_INFO(0x0bda, 0xe0, 0x01, 0x01),
 	  .driver_info = BTUSB_REALTEK },
 
+	/* MediaTek Bluetooth devices */
+	{ USB_VENDOR_AND_INTERFACE_INFO(0x0e8d, 0xe0, 0x01, 0x01),
+	  .driver_info = BTUSB_MEDIATEK },
+
 	/* Additional Realtek 8723AE Bluetooth devices */
 	{ USB_DEVICE(0x0930, 0x021d), .driver_info = BTUSB_REALTEK },
 	{ USB_DEVICE(0x13d3, 0x3394), .driver_info = BTUSB_REALTEK },
@@ -441,6 +447,7 @@ static const struct dmi_system_id btusb_needs_reset_resume_table[] = {
 #define BTUSB_DIAG_RUNNING	10
 #define BTUSB_OOB_WAKE_ENABLED	11
 #define BTUSB_HW_RESET_ACTIVE	12
+#define BTUSB_TX_WAIT_VND_EVT	13
 
 struct btusb_data {
 	struct hci_dev       *hdev;
@@ -464,6 +471,7 @@ struct btusb_data {
 	struct usb_anchor bulk_anchor;
 	struct usb_anchor isoc_anchor;
 	struct usb_anchor diag_anchor;
+	struct usb_anchor ctrl_anchor;
 	spinlock_t rxlock;
 
 	struct sk_buff *evt_skb;
@@ -1217,6 +1225,7 @@ static void btusb_stop_traffic(struct btusb_data *data)
 	usb_kill_anchored_urbs(&data->bulk_anchor);
 	usb_kill_anchored_urbs(&data->isoc_anchor);
 	usb_kill_anchored_urbs(&data->diag_anchor);
+	usb_kill_anchored_urbs(&data->ctrl_anchor);
 }
 
 static int btusb_close(struct hci_dev *hdev)
@@ -2452,6 +2461,563 @@ static int btusb_shutdown_intel_new(struct hci_dev *hdev)
 	return 0;
 }
 
+#ifdef CONFIG_BT_HCIBTUSB_MTK
+
+#define FIRMWARE_MT7668		"mediatek/mt7668pr2h.bin"
+
+#define HCI_WMT_MAX_EVENT_SIZE		64
+
+enum {
+	BTMTK_WMT_PATCH_DWNLD = 0x1,
+	BTMTK_WMT_FUNC_CTRL = 0x6,
+	BTMTK_WMT_RST = 0x7,
+	BTMTK_WMT_SEMAPHORE = 0x17,
+};
+
+enum {
+	BTMTK_WMT_INVALID,
+	BTMTK_WMT_PATCH_UNDONE,
+	BTMTK_WMT_PATCH_DONE,
+	BTMTK_WMT_ON_UNDONE,
+	BTMTK_WMT_ON_DONE,
+	BTMTK_WMT_ON_PROGRESS,
+};
+
+struct btmtk_wmt_hdr {
+	u8	dir;
+	u8	op;
+	__le16	dlen;
+	u8	flag;
+} __packed;
+
+struct btmtk_hci_wmt_cmd {
+	struct btmtk_wmt_hdr hdr;
+	u8 data[256];
+} __packed;
+
+struct btmtk_hci_wmt_evt {
+	struct hci_event_hdr hhdr;
+	struct btmtk_wmt_hdr whdr;
+} __packed;
+
+struct btmtk_hci_wmt_evt_funcc {
+	struct btmtk_hci_wmt_evt hwhdr;
+	__be16 status;
+} __packed;
+
+struct btmtk_tci_sleep {
+	u8 mode;
+	__le16 duration;
+	__le16 host_duration;
+	u8 host_wakeup_pin;
+	u8 time_compensation;
+} __packed;
+
+struct btmtk_hci_wmt_params {
+	u8 op;
+	u8 flag;
+	u16 dlen;
+	const void *data;
+	u32 *status;
+};
+
+static void btusb_mtk_wmt_recv(struct urb *urb)
+{
+	struct hci_dev *hdev = urb->context;
+	struct btusb_data *data = hci_get_drvdata(hdev);
+	struct hci_event_hdr *hdr;
+	struct sk_buff *skb;
+	int err;
+
+	if (urb->status == 0 && urb->actual_length > 0) {
+		hdev->stat.byte_rx += urb->actual_length;
+
+		/* WMT event shouldn't be fragmented and the size should be
+		 * less than HCI_WMT_MAX_EVENT_SIZE.
+		 */
+		skb = bt_skb_alloc(HCI_WMT_MAX_EVENT_SIZE, GFP_ATOMIC);
+		if (!skb) {
+			hdev->stat.err_rx++;
+			goto err_out;
+		}
+
+		hci_skb_pkt_type(skb) = HCI_EVENT_PKT;
+		skb_put_data(skb, urb->transfer_buffer, urb->actual_length);
+
+		hdr = (void *)skb->data;
+		/* Fix up the vendor event id with 0xff for vendor specific
+		 * instead of 0xe4 so that event send via monitoring socket can
+		 * be parsed properly.
+		 */
+		hdr->evt = 0xff;
+
+		/* When someone waits for the WMT event, the skb is being cloned
+		 * and being processed the events from there then.
+		 */
+		if (test_bit(BTUSB_TX_WAIT_VND_EVT, &data->flags)) {
+			data->evt_skb = skb_clone(skb, GFP_KERNEL);
+			if (!data->evt_skb)
+				goto err_out;
+		}
+
+		err = hci_recv_frame(hdev, skb);
+		if (err < 0)
+			goto err_free_skb;
+
+		if (test_and_clear_bit(BTUSB_TX_WAIT_VND_EVT,
+				       &data->flags)) {
+			/* Barrier to sync with other CPUs */
+			smp_mb__after_atomic();
+			wake_up_bit(&data->flags,
+				    BTUSB_TX_WAIT_VND_EVT);
+		}
+err_out:
+		return;
+err_free_skb:
+		kfree_skb(data->evt_skb);
+		data->evt_skb = NULL;
+		return;
+	} else if (urb->status == -ENOENT) {
+		/* Avoid suspend failed when usb_kill_urb */
+		return;
+	}
+
+	usb_mark_last_busy(data->udev);
+
+	/* The URB complete handler is still called with urb->actual_length = 0
+	 * when the event is not available, so we should keep re-submitting
+	 * URB until WMT event returns, Also, It's necessary to wait some time
+	 * between the two consecutive control URBs to relax the target device
+	 * to generate the event. Otherwise, the WMT event cannot return from
+	 * the device successfully.
+	 */
+	udelay(100);
+
+	usb_anchor_urb(urb, &data->ctrl_anchor);
+	err = usb_submit_urb(urb, GFP_ATOMIC);
+	if (err < 0) {
+		/* -EPERM: urb is being killed;
+		 * -ENODEV: device got disconnected
+		 */
+		if (err != -EPERM && err != -ENODEV)
+			bt_dev_err(hdev, "urb %p failed to resubmit (%d)",
+				   urb, -err);
+		usb_unanchor_urb(urb);
+	}
+}
+
+static int btusb_mtk_submit_wmt_recv_urb(struct hci_dev *hdev)
+{
+	struct btusb_data *data = hci_get_drvdata(hdev);
+	struct usb_ctrlrequest *dr;
+	unsigned char *buf;
+	int err, size = 64;
+	unsigned int pipe;
+	struct urb *urb;
+
+	urb = usb_alloc_urb(0, GFP_KERNEL);
+	if (!urb)
+		return -ENOMEM;
+
+	dr = kmalloc(sizeof(*dr), GFP_KERNEL);
+	if (!dr) {
+		usb_free_urb(urb);
+		return -ENOMEM;
+	}
+
+	dr->bRequestType = USB_TYPE_VENDOR | USB_DIR_IN;
+	dr->bRequest     = 1;
+	dr->wIndex       = cpu_to_le16(0);
+	dr->wValue       = cpu_to_le16(48);
+	dr->wLength      = cpu_to_le16(size);
+
+	buf = kmalloc(size, GFP_KERNEL);
+	if (!buf) {
+		kfree(dr);
+		return -ENOMEM;
+	}
+
+	pipe = usb_rcvctrlpipe(data->udev, 0);
+
+	usb_fill_control_urb(urb, data->udev, pipe, (void *)dr,
+			     buf, size, btusb_mtk_wmt_recv, hdev);
+
+	urb->transfer_flags |= URB_FREE_BUFFER;
+
+	usb_anchor_urb(urb, &data->ctrl_anchor);
+	err = usb_submit_urb(urb, GFP_KERNEL);
+	if (err < 0) {
+		if (err != -EPERM && err != -ENODEV)
+			bt_dev_err(hdev, "urb %p submission failed (%d)",
+				   urb, -err);
+		usb_unanchor_urb(urb);
+	}
+
+	usb_free_urb(urb);
+
+	return err;
+}
+
+static int btusb_mtk_hci_wmt_sync(struct hci_dev *hdev,
+				  struct btmtk_hci_wmt_params *wmt_params)
+{
+	struct btusb_data *data = hci_get_drvdata(hdev);
+	struct btmtk_hci_wmt_evt_funcc *wmt_evt_funcc;
+	u32 hlen, status = BTMTK_WMT_INVALID;
+	struct btmtk_hci_wmt_evt *wmt_evt;
+	struct btmtk_hci_wmt_cmd wc;
+	struct btmtk_wmt_hdr *hdr;
+	int err;
+
+	/* Submit control IN URB on demand to process the WMT event */
+	err = btusb_mtk_submit_wmt_recv_urb(hdev);
+	if (err < 0)
+		return err;
+
+	/* Send the WMT command and wait until the WMT event returns */
+	hlen = sizeof(*hdr) + wmt_params->dlen;
+	if (hlen > 255)
+		return -EINVAL;
+
+	hdr = (struct btmtk_wmt_hdr *)&wc;
+	hdr->dir = 1;
+	hdr->op = wmt_params->op;
+	hdr->dlen = cpu_to_le16(wmt_params->dlen + 1);
+	hdr->flag = wmt_params->flag;
+	memcpy(wc.data, wmt_params->data, wmt_params->dlen);
+
+	set_bit(BTUSB_TX_WAIT_VND_EVT, &data->flags);
+
+	err = __hci_cmd_send(hdev, 0xfc6f, hlen, &wc);
+
+	if (err < 0) {
+		clear_bit(BTUSB_TX_WAIT_VND_EVT, &data->flags);
+		return err;
+	}
+
+	/* The vendor specific WMT commands are all answered by a vendor
+	 * specific event and will have the Command Status or Command
+	 * Complete as with usual HCI command flow control.
+	 *
+	 * After sending the command, wait for BTUSB_TX_WAIT_VND_EVT
+	 * state to be cleared. The driver specific event receive routine
+	 * will clear that state and with that indicate completion of the
+	 * WMT command.
+	 */
+	err = wait_on_bit_timeout(&data->flags, BTUSB_TX_WAIT_VND_EVT,
+				  TASK_INTERRUPTIBLE, HCI_INIT_TIMEOUT);
+	if (err == -EINTR) {
+		bt_dev_err(hdev, "Execution of wmt command interrupted");
+		clear_bit(BTUSB_TX_WAIT_VND_EVT, &data->flags);
+		return err;
+	}
+
+	if (err) {
+		bt_dev_err(hdev, "Execution of wmt command timed out");
+		clear_bit(BTUSB_TX_WAIT_VND_EVT, &data->flags);
+		return -ETIMEDOUT;
+	}
+
+	/* Parse and handle the return WMT event */
+	wmt_evt = (struct btmtk_hci_wmt_evt *)data->evt_skb->data;
+	if (wmt_evt->whdr.op != hdr->op) {
+		bt_dev_err(hdev, "Wrong op received %d expected %d",
+			   wmt_evt->whdr.op, hdr->op);
+		err = -EIO;
+		goto err_free_skb;
+	}
+
+	switch (wmt_evt->whdr.op) {
+	case BTMTK_WMT_SEMAPHORE:
+		if (wmt_evt->whdr.flag == 2)
+			status = BTMTK_WMT_PATCH_UNDONE;
+		else
+			status = BTMTK_WMT_PATCH_DONE;
+		break;
+	case BTMTK_WMT_FUNC_CTRL:
+		wmt_evt_funcc = (struct btmtk_hci_wmt_evt_funcc *)wmt_evt;
+		if (be16_to_cpu(wmt_evt_funcc->status) == 0x404)
+			status = BTMTK_WMT_ON_DONE;
+		else if (be16_to_cpu(wmt_evt_funcc->status) == 0x420)
+			status = BTMTK_WMT_ON_PROGRESS;
+		else
+			status = BTMTK_WMT_ON_UNDONE;
+		break;
+	}
+
+	if (wmt_params->status)
+		*wmt_params->status = status;
+
+err_free_skb:
+	kfree_skb(data->evt_skb);
+	data->evt_skb = NULL;
+
+	return err;
+}
+
+static int btusb_mtk_setup_firmware(struct hci_dev *hdev, const char *fwname)
+{
+	struct btmtk_hci_wmt_params wmt_params;
+	const struct firmware *fw;
+	const u8 *fw_ptr;
+	size_t fw_size;
+	int err, dlen;
+	u8 flag;
+
+	err = request_firmware(&fw, fwname, &hdev->dev);
+	if (err < 0) {
+		bt_dev_err(hdev, "Failed to load firmware file (%d)", err);
+		return err;
+	}
+
+	fw_ptr = fw->data;
+	fw_size = fw->size;
+
+	/* The size of patch header is 30 bytes, should be skip */
+	if (fw_size < 30)
+		goto err_release_fw;
+
+	fw_size -= 30;
+	fw_ptr += 30;
+	flag = 1;
+
+	wmt_params.op = BTMTK_WMT_PATCH_DWNLD;
+	wmt_params.status = NULL;
+
+	while (fw_size > 0) {
+		dlen = min_t(int, 250, fw_size);
+
+		/* Tell deivice the position in sequence */
+		if (fw_size - dlen <= 0)
+			flag = 3;
+		else if (fw_size < fw->size - 30)
+			flag = 2;
+
+		wmt_params.flag = flag;
+		wmt_params.dlen = dlen;
+		wmt_params.data = fw_ptr;
+
+		err = btusb_mtk_hci_wmt_sync(hdev, &wmt_params);
+		if (err < 0) {
+			bt_dev_err(hdev, "Failed to send wmt patch dwnld (%d)",
+				   err);
+			goto err_release_fw;
+		}
+
+		fw_size -= dlen;
+		fw_ptr += dlen;
+	}
+
+	wmt_params.op = BTMTK_WMT_RST;
+	wmt_params.flag = 4;
+	wmt_params.dlen = 0;
+	wmt_params.data = NULL;
+	wmt_params.status = NULL;
+
+	/* Activate funciton the firmware providing to */
+	err = btusb_mtk_hci_wmt_sync(hdev, &wmt_params);
+	if (err < 0) {
+		bt_dev_err(hdev, "Failed to send wmt rst (%d)", err);
+		return err;
+	}
+
+	/* Wait a few moments for firmware activation done */
+	usleep_range(10000, 12000);
+
+err_release_fw:
+	release_firmware(fw);
+
+	return err;
+}
+
+static int btusb_mtk_func_query(struct hci_dev *hdev)
+{
+	struct btmtk_hci_wmt_params wmt_params;
+	int status, err;
+	u8 param = 0;
+
+	/* Query whether the function is enabled */
+	wmt_params.op = BTMTK_WMT_FUNC_CTRL;
+	wmt_params.flag = 4;
+	wmt_params.dlen = sizeof(param);
+	wmt_params.data = &param;
+	wmt_params.status = &status;
+
+	err = btusb_mtk_hci_wmt_sync(hdev, &wmt_params);
+	if (err < 0) {
+		bt_dev_err(hdev, "Failed to query function status (%d)", err);
+		return err;
+	}
+
+	return status;
+}
+
+static int btusb_mtk_reg_read(struct btusb_data *data, u32 reg, u32 *val)
+{
+	int pipe, err, size = sizeof(u32);
+	void *buf;
+
+	buf = kzalloc(size, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	pipe = usb_rcvctrlpipe(data->udev, 0);
+	err = usb_control_msg(data->udev, pipe, 0x63,
+			      USB_TYPE_VENDOR | USB_DIR_IN,
+			      reg >> 16, reg & 0xffff,
+			      buf, size, USB_CTRL_SET_TIMEOUT);
+	if (err < 0)
+		goto err_free_buf;
+
+	*val = get_unaligned_le32(buf);
+
+err_free_buf:
+	kfree(buf);
+
+	return err;
+}
+
+static int btusb_mtk_id_get(struct btusb_data *data, u32 *id)
+{
+	return btusb_mtk_reg_read(data, 0x80000008, id);
+}
+
+static int btusb_mtk_setup(struct hci_dev *hdev)
+{
+	struct btusb_data *data = hci_get_drvdata(hdev);
+	struct btmtk_hci_wmt_params wmt_params;
+	ktime_t calltime, delta, rettime;
+	struct btmtk_tci_sleep tci_sleep;
+	unsigned long long duration;
+	struct sk_buff *skb;
+	const char *fwname;
+	int err, status;
+	u32 dev_id;
+	u8 param;
+
+	calltime = ktime_get();
+
+	err = btusb_mtk_id_get(data, &dev_id);
+	if (err < 0) {
+		bt_dev_err(hdev, "Failed to get device id (%d)", err);
+		return err;
+	}
+
+	switch (dev_id) {
+	case 0x7668:
+		fwname = FIRMWARE_MT7668;
+		break;
+	default:
+		bt_dev_err(hdev, "Unsupported support hardware variant (%08x)",
+			   dev_id);
+		return -ENODEV;
+	}
+
+	/* Query whether the firmware is already download */
+	wmt_params.op = BTMTK_WMT_SEMAPHORE;
+	wmt_params.flag = 1;
+	wmt_params.dlen = 0;
+	wmt_params.data = NULL;
+	wmt_params.status = &status;
+
+	err = btusb_mtk_hci_wmt_sync(hdev, &wmt_params);
+	if (err < 0) {
+		bt_dev_err(hdev, "Failed to query firmware status (%d)", err);
+		return err;
+	}
+
+	if (status == BTMTK_WMT_PATCH_DONE) {
+		bt_dev_info(hdev, "firmware already downloaded");
+		goto ignore_setup_fw;
+	}
+
+	/* Setup a firmware which the device definitely requires */
+	err = btusb_mtk_setup_firmware(hdev, fwname);
+	if (err < 0)
+		return err;
+
+ignore_setup_fw:
+	err = readx_poll_timeout(btusb_mtk_func_query, hdev, status,
+				 status < 0 || status != BTMTK_WMT_ON_PROGRESS,
+				 2000, 5000000);
+	/* -ETIMEDOUT happens */
+	if (err < 0)
+		return err;
+
+	/* The other errors happen in btusb_mtk_func_query */
+	if (status < 0)
+		return status;
+
+	if (status == BTMTK_WMT_ON_DONE) {
+		bt_dev_info(hdev, "function already on");
+		goto ignore_func_on;
+	}
+
+	/* Enable Bluetooth protocol */
+	param = 1;
+	wmt_params.op = BTMTK_WMT_FUNC_CTRL;
+	wmt_params.flag = 0;
+	wmt_params.dlen = sizeof(param);
+	wmt_params.data = &param;
+	wmt_params.status = NULL;
+
+	err = btusb_mtk_hci_wmt_sync(hdev, &wmt_params);
+	if (err < 0) {
+		bt_dev_err(hdev, "Failed to send wmt func ctrl (%d)", err);
+		return err;
+	}
+
+ignore_func_on:
+	/* Apply the low power environment setup */
+	tci_sleep.mode = 0x5;
+	tci_sleep.duration = cpu_to_le16(0x640);
+	tci_sleep.host_duration = cpu_to_le16(0x640);
+	tci_sleep.host_wakeup_pin = 0;
+	tci_sleep.time_compensation = 0;
+
+	skb = __hci_cmd_sync(hdev, 0xfc7a, sizeof(tci_sleep), &tci_sleep,
+			     HCI_INIT_TIMEOUT);
+	if (IS_ERR(skb)) {
+		err = PTR_ERR(skb);
+		bt_dev_err(hdev, "Failed to apply low power setting (%d)", err);
+		return err;
+	}
+	kfree_skb(skb);
+
+	rettime = ktime_get();
+	delta = ktime_sub(rettime, calltime);
+	duration = (unsigned long long)ktime_to_ns(delta) >> 10;
+
+	bt_dev_info(hdev, "Device setup in %llu usecs", duration);
+
+	return 0;
+}
+
+static int btusb_mtk_shutdown(struct hci_dev *hdev)
+{
+	struct btmtk_hci_wmt_params wmt_params;
+	u8 param = 0;
+	int err;
+
+	/* Disable the device */
+	wmt_params.op = BTMTK_WMT_FUNC_CTRL;
+	wmt_params.flag = 0;
+	wmt_params.dlen = sizeof(param);
+	wmt_params.data = &param;
+	wmt_params.status = NULL;
+
+	err = btusb_mtk_hci_wmt_sync(hdev, &wmt_params);
+	if (err < 0) {
+		bt_dev_err(hdev, "Failed to send wmt func ctrl (%d)", err);
+		return err;
+	}
+
+	return 0;
+}
+
+MODULE_FIRMWARE(FIRMWARE_MT7668);
+#endif
+
 #ifdef CONFIG_PM
 /* Configure an out-of-band gpio as wake-up pin, if specified in device tree */
 static int marvell_config_oob_wake(struct hci_dev *hdev)
@@ -3059,6 +3625,7 @@ static int btusb_probe(struct usb_interface *intf,
 	init_usb_anchor(&data->bulk_anchor);
 	init_usb_anchor(&data->isoc_anchor);
 	init_usb_anchor(&data->diag_anchor);
+	init_usb_anchor(&data->ctrl_anchor);
 	spin_lock_init(&data->rxlock);
 
 	if (id->driver_info & BTUSB_INTEL_NEW) {
@@ -3172,6 +3739,15 @@ static int btusb_probe(struct usb_interface *intf,
 	if (id->driver_info & BTUSB_MARVELL)
 		hdev->set_bdaddr = btusb_set_bdaddr_marvell;
 
+#ifdef CONFIG_BT_HCIBTUSB_MTK
+	if (id->driver_info & BTUSB_MEDIATEK) {
+		hdev->setup = btusb_mtk_setup;
+		hdev->shutdown = btusb_mtk_shutdown;
+		hdev->manufacturer = 70;
+		set_bit(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks);
+	}
+#endif
+
 	if (id->driver_info & BTUSB_SWAVE) {
 		set_bit(HCI_QUIRK_FIXUP_INQUIRY_MODE, &hdev->quirks);
 		set_bit(HCI_QUIRK_BROKEN_LOCAL_COMMANDS, &hdev->quirks);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
