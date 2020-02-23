Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5FE1696E0
	for <lists+linux-mediatek@lfdr.de>; Sun, 23 Feb 2020 09:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g26m3oz0nelbJvm+8N2afAYARTk2bbg0ouX638Morhw=; b=uep5lrEf3Bo3as
	z3xz14hMUKgcdVRCDDjn7hZOO93FkFo2l8pIdBsHbuLbY35oKLjRzu1xVxMe8HOoazsZy77EoAZa0
	tY8+Kyx3yujGertiiSbwo3zT2n1qB7l3gM5MbFqhcmxRXgXv4w0FLQS6C1uYtteJPyG3QN0qrSedu
	6gMMqgKNMoJJYpfA0wm9n5wMoC45jZdX4+7l62UJ2UHORT7NjraB/s1OGuaXa375d+cS8ifcBLyCa
	kv/QhRxWAQbSWM1nqXaj1Wz7swOpxOgfX6+i7kuT2ZuE6YD8eHHLSQyEx+w1J2IeuCWlJbL2hrvFF
	iM2l534meLEqZhOhQoMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5n1T-0005o3-9O; Sun, 23 Feb 2020 08:53:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5n1G-0005gb-Of; Sun, 23 Feb 2020 08:53:48 +0000
X-UUID: edd0024c387f4852a6105783383ae6c4-20200223
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=L6+Le50jyFOltKwz1JENBOZc2qg1uyeNTqnh9DLfcl4=; 
 b=WnM6R2F75bga3qqX7bdF+i6UDekkzY4y8slHZtEFTxxHqj0R3TmWLYniNfaMKj9YLekaSJCowU+6KZ8ZD8PJ8yyndwNiq0OIXeDBNL6BXyL2Gx9flOZYilIVHas3Wn0zK6zVs0OBjQH49DaWz9jVmcXYkUaqAP0pVN2qpbbWHtY=;
X-UUID: edd0024c387f4852a6105783383ae6c4-20200223
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 584089265; Sun, 23 Feb 2020 00:53:37 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 23 Feb 2020 00:54:08 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 23 Feb 2020 16:52:09 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 23 Feb 2020 16:52:29 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Shen Jing
 <jingx.shen@intel.com>, Sasha Levin <sashal@kernel.org>, John Stultz
 <john.stultz@linaro.org>, Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, Jerry Zhang
 <zhangjerry@google.com>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, Mediatek WSD Upstream
 <wsd_upstream@mediatek.com>, CC Hwang <cc.hwang@mediatek.com>, Loda Chou
 <loda.chou@mediatek.com>, Al Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH] usb: gadget: f_fs: try to fix AIO issue under ARM 64 bit
 TAGGED mode
Date: Sun, 23 Feb 2020 16:53:12 +0800
Message-ID: <1582447993-7594-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <n>
References: <n>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_005346_807911_95BEB678 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Macpaul Lin <macpaul.lin@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This issue was found when adbd trying to open functionfs with AIO mode.
Usually, we need to set "setprop sys.usb.ffs.aio_compat 0" to enable
adbd with AIO mode on Android.

When adbd is opening functionfs, it will try to read 24 bytes at the
fisrt read I/O control. If this reading has been failed, adbd will
try to send FUNCTIONFS_CLEAR_HALT to functionfs. When adbd is in AIO
mode, functionfs will be acted with asyncronized I/O path. After the
successful read transfer has been completed by gadget hardware, the
following series of functions will be called.
  ffs_epfile_async_io_complete() -> ffs_user_copy_worker() ->
    copy_to_iter() -> _copy_to_iter() -> copyout() ->
    iterate_and_advance() -> iterate_iovec()

Adding debug trace to these functions, it has been found that in
copyout(), access_ok() will check if the user space address is valid
to write. However if CONFIG_ARM64_TAGGED_ADDR_ABI is enabled, adbd
always passes user space address start with "0x3C" to gdaget's AIO
blocks. This tagged address will cause access_ok() check always fail.
Which causes later calculation in iterate_iovec() turn zero.
Copyout() won't copy data to userspace since the length to be copied
"v.iov_len" will be zero. Finally leads ffs_copy_to_iter() always return
-EFAULT, causes adbd cannot open functionfs and send
FUNCTIONFS_CLEAR_HALT.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/gadget/function/f_fs.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
index ce1d023..b21541a 100644
--- a/drivers/usb/gadget/function/f_fs.c
+++ b/drivers/usb/gadget/function/f_fs.c
@@ -35,6 +35,7 @@
 #include <linux/mmu_context.h>
 #include <linux/poll.h>
 #include <linux/eventfd.h>
+#include <linux/thread_info.h>
 
 #include "u_fs.h"
 #include "u_f.h"
@@ -826,6 +827,8 @@ static void ffs_user_copy_worker(struct work_struct *work)
 	if (io_data->read && ret > 0) {
 		mm_segment_t oldfs = get_fs();
 
+		if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI))
+			set_thread_flag(TIF_TAGGED_ADDR);
 		set_fs(USER_DS);
 		use_mm(io_data->mm);
 		ret = ffs_copy_to_iter(io_data->buf, ret, &io_data->data);
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
