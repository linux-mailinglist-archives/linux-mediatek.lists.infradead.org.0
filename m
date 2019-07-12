Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CEF676AB
	for <lists+linux-mediatek@lfdr.de>; Sat, 13 Jul 2019 00:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o5LSIv8ICtZw96h8Z6MbOlz7PEX9eGlVRYR4wee/0jA=; b=buDa0bOwP+4syELnoHiuoeBgYY
	Zgmb4OvQou+dOB7Qw+y7AxY8TfP0mNQO/psd1+hTNEMgYD7Lxjhd8et0yuRPuxfXfxsOOsur+r5zD
	cbYvyHS7xsxCfvJ1PG/Kv8rdgfYx0z0xdsZ6sBQdyPxMSo41Jz4SQuQN/NwBhpR/17cZGbMP9Hnx1
	y59pG4ydziRx6wiBPHnnsDp6COMF22yEPajLtNWvX1vzCjsv70TIIeKColF0EwJ1SQcxxXrLK2wnk
	otpiYXLBu0+4gPFVV/c4wdrkgLQdYVELjLyOavLAU6b6PyDLMsY26mRPSI8cLmPJEgpM9Apini83v
	a3WT3v9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm4P9-0003uo-GD; Fri, 12 Jul 2019 22:52:39 +0000
Received: from gofer.mess.org ([88.97.38.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm4P5-0003uN-Kt
 for linux-mediatek@lists.infradead.org; Fri, 12 Jul 2019 22:52:36 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id CB0E4600B4; Fri, 12 Jul 2019 23:47:00 +0100 (BST)
From: Sean Young <sean@mess.org>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/3] media: rc: remove unused #define RC_PROTO_BIT_ALL
Date: Fri, 12 Jul 2019 23:46:59 +0100
Message-Id: <20190712224700.11285-2-sean@mess.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190712224700.11285-1-sean@mess.org>
References: <20190712224700.11285-1-sean@mess.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_155235_828162_40585AC7 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-mediatek@lists.infradead.org,
 Ryder Lee <ryder.lee@mediatek.com>, Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This lists all the protocols that the kernel knows about, however there
are no users.

Signed-off-by: Sean Young <sean@mess.org>
---
 include/media/rc-map.h | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/include/media/rc-map.h b/include/media/rc-map.h
index bebd3c4c6338..3a7f8728f6ec 100644
--- a/include/media/rc-map.h
+++ b/include/media/rc-map.h
@@ -38,22 +38,6 @@
 #define RC_PROTO_BIT_RCMM32		BIT_ULL(RC_PROTO_RCMM32)
 #define RC_PROTO_BIT_XBOX_DVD		BIT_ULL(RC_PROTO_XBOX_DVD)
 
-#define RC_PROTO_BIT_ALL \
-			(RC_PROTO_BIT_UNKNOWN | RC_PROTO_BIT_OTHER | \
-			 RC_PROTO_BIT_RC5 | RC_PROTO_BIT_RC5X_20 | \
-			 RC_PROTO_BIT_RC5_SZ | RC_PROTO_BIT_JVC | \
-			 RC_PROTO_BIT_SONY12 | RC_PROTO_BIT_SONY15 | \
-			 RC_PROTO_BIT_SONY20 | RC_PROTO_BIT_NEC | \
-			 RC_PROTO_BIT_NECX | RC_PROTO_BIT_NEC32 | \
-			 RC_PROTO_BIT_SANYO | \
-			 RC_PROTO_BIT_MCIR2_KBD | RC_PROTO_BIT_MCIR2_MSE | \
-			 RC_PROTO_BIT_RC6_0 | RC_PROTO_BIT_RC6_6A_20 | \
-			 RC_PROTO_BIT_RC6_6A_24 | RC_PROTO_BIT_RC6_6A_32 | \
-			 RC_PROTO_BIT_RC6_MCE | RC_PROTO_BIT_SHARP | \
-			 RC_PROTO_BIT_XMP | RC_PROTO_BIT_CEC | \
-			 RC_PROTO_BIT_IMON | RC_PROTO_BIT_RCMM12 | \
-			 RC_PROTO_BIT_RCMM24 | RC_PROTO_BIT_RCMM32 | \
-			 RC_PROTO_BIT_XBOX_DVD)
 /* All rc protocols for which we have decoders */
 #define RC_PROTO_BIT_ALL_IR_DECODER \
 			(RC_PROTO_BIT_RC5 | RC_PROTO_BIT_RC5X_20 | \
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
