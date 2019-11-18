Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A1EFFE1E
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 Nov 2019 06:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d69AfcXoiyU3ZU6VKRof0Aljl0f6nXasKetl7GqaL2M=; b=c+cRpwuNEQ460C
	5W6M34DIJAqTUn6ySBV6+yHwo9mQCsWc3tck0qO/QVnfifSW9UOz779v0LPx4ahaSZllASn7KZObA
	jVjVyhi4QRnOM7zrx+0wHO6hOZLlASH8X1+z+xTW7K9hpQ+MQ8xBZMeCdpjqWi44t3H6r61+wYcD0
	ezMh8PRGLu1eUL+dkIkgZNusJk2eXFxk2JqnTNa7qdBDubFYx4rXMq0di9apTHKQRfbHPU1GDLLod
	Xky/KyCjgG7LuPIos8f/mFUoGViGrzOm9tjMyfOipNk86A65GcRGh00Tip7ztroDElXjnDrjf5HeO
	Z1ZKuBb/C9An3KsRVftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWZsw-0007v6-HA; Mon, 18 Nov 2019 05:47:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWZsu-0007th-3q
 for linux-mediatek@lists.infradead.org; Mon, 18 Nov 2019 05:47:37 +0000
X-UUID: 7dfb54345832421e883878f4e902ac6c-20191117
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=NlWDv9SeYsgi2iRUgyMRzJCtwYNFcrKvnRskCn7RxFw=; 
 b=HUV8LWcEufP3lgh09H4dCiX+4K0hRxp3bJ/Dw+nSRccYU0KBjKIfvG+vtmWYU+rR+gCIuiz4wIugjDYN/USwG55arzRspi98G27k3+dGN/JS647FsfQ0TpQomdBMSgbHx6JYapYWPcr1PTwRztB++WgARTUhlr9bMzijZ5sIeAM=;
X-UUID: 7dfb54345832421e883878f4e902ac6c-20191117
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1325576084; Sun, 17 Nov 2019 21:47:32 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 17 Nov 2019 21:47:43 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 18 Nov 2019 13:47:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 18 Nov 2019 13:47:37 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH] Input: evdev - convert kzalloc()/vzalloc() to kvzalloc()
Date: Mon, 18 Nov 2019 13:47:27 +0800
Message-ID: <20191118054727.31045-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_214736_166127_D7384938 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

We observed a large(order-3) allocation in evdev_open() and it may
cause an OOM kenrel panic in kzalloc(), before we getting to the
vzalloc() fallback.

Fix it by converting kzalloc()/vzalloc() to kvzalloc() to avoid the
OOM killer logic as we have a vmalloc fallback.

InputReader invoked oom-killer: gfp_mask=0x240c2c0
(GFP_KERNEL|__GFP_NOWARN|__GFP_COMP|__GFP_ZERO), nodemask=0, order=3,
oom_score_adj=-900
...
(dump_backtrace) from (show_stack+0x18/0x1c)
(show_stack) from (dump_stack+0x94/0xa8)
(dump_stack) from (dump_header+0x7c/0xe4)
(dump_header) from (out_of_memory+0x334/0x348)
(out_of_memory) from (__alloc_pages_nodemask+0xe9c/0xeb8)
(__alloc_pages_nodemask) from (kmalloc_order_trace+0x34/0x128)
(kmalloc_order_trace) from (__kmalloc+0x258/0x36c)
(__kmalloc) from (evdev_open+0x5c/0x17c)
(evdev_open) from (chrdev_open+0x100/0x204)
(chrdev_open) from (do_dentry_open+0x21c/0x354)
(do_dentry_open) from (vfs_open+0x58/0x84)
(vfs_open) from (path_openat+0x640/0xc98)
(path_openat) from (do_filp_open+0x78/0x11c)
(do_filp_open) from (do_sys_open+0x130/0x244)
(do_sys_open) from (SyS_openat+0x14/0x18)
(SyS_openat) from (__sys_trace_return+0x0/0x10)
...
Normal: 12488*4kB (UMEH) 6984*8kB (UMEH) 2101*16kB (UMEH) 0*32kB
0*64kB 0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 139440kB
HighMem: 206*4kB (H) 131*8kB (H) 42*16kB (H) 2*32kB (H) 0*64kB
0*128kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 2608kB
...
Kernel panic - not syncing: Out of memory and no killable processes...

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 drivers/input/evdev.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/input/evdev.c b/drivers/input/evdev.c
index d7dd6fcf2db0..cf5d7d63fd48 100644
--- a/drivers/input/evdev.c
+++ b/drivers/input/evdev.c
@@ -484,10 +484,7 @@ static int evdev_open(struct inode *inode, struct file *file)
 	struct evdev_client *client;
 	int error;
 
-	client = kzalloc(struct_size(client, buffer, bufsize),
-			 GFP_KERNEL | __GFP_NOWARN);
-	if (!client)
-		client = vzalloc(struct_size(client, buffer, bufsize));
+	client = kvzalloc(struct_size(client, buffer, bufsize), GFP_KERNEL);
 	if (!client)
 		return -ENOMEM;
 
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
