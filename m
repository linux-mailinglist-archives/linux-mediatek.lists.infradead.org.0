Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB49D1BF287
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 Apr 2020 10:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3xGc/2WiOoEWOoXDc/tIAMRoPN9xe7O03XgCQWGbdc=; b=gSbUctM9CzI3Rt
	VsX83Ot3B6xM9Wu0DWxbSc+3r3hVxN0Jpz02WJtIJu0jHh1FgFre2jVz02NiIN9wqvwEQke76Bl7D
	bWyt5RUeoc07UT0M4S9eqB9o7Vo3UIZ/fTw8uULdOWZHA5NY8vqpFwFaGx1AkGUvG/qfI7Vcq7z9K
	N8+N2V1IVnJgEIzSksOVWvrgMtN/qH33WmaBpoESqnwrThc57u1MxVwVB13YGNHjvk49j45xBOI4k
	2Qy82wOhi5XEMjjnZu19kjm0JbMNdUkR3fhngIrlfJlc16Xp453Fg5Mcn8d/65L+9/ltQjnN5DPiX
	FC/QjwZWNGEnMmK20KCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4Qq-0002tA-Qg; Thu, 30 Apr 2020 08:20:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4Qn-0002rK-QK
 for linux-mediatek@lists.infradead.org; Thu, 30 Apr 2020 08:20:31 +0000
X-UUID: 7f3599175e2545aa88de1c4a6469958f-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=w1PTlJUtkcNYITdH/xyYtODmgpFWIxh9hEEtJ7ibU00=; 
 b=PNOC4qW2tjcXS4KLcyzvOCvdFfyKLj/PfuHbRxIA60TENxTDIZdF+jYdS7rdm7GhFSM2M5QUO/HvOML5q8NEvjJJoybbdMTuxGTUsge8/esDxsg2cNiKBA2VMXeKUZtxE0zDR0pt8Ad402LfUTQj9479yMtIc7nNb+RYpwrABrw=;
X-UUID: 7f3599175e2545aa88de1c4a6469958f-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <frankie.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1480380449; Thu, 30 Apr 2020 00:20:17 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 01:14:03 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 16:14:02 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 30 Apr 2020 16:14:03 +0800
From: Frankie Chang <Frankie.Chang@mediatek.com>
To: Todd Kjos <tkjos@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: binder: transaction latency tracking for user build
Date: Thu, 30 Apr 2020 16:13:58 +0800
Message-ID: <1588234439-7959-1-git-send-email-Frankie.Chang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1586929044-12708-2-git-send-email-Frankie.Chang@mediatek.com>
References: <1586929044-12708-2-git-send-email-Frankie.Chang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 92DAC2B9F6833CF10572FD14EBE445516A5D9091CA5ADE0EAB2126F5D5D65D532000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_012029_868494_A5636D95 
X-CRM114-Status: UNSURE (   4.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Todd Kjos <tkjos@android.com>, wsd_upstream <wsd_upstream@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Jian-Min Liu <Jian-Min.Liu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Frankie Chang (1):
  binder: transaction latency tracking for user build

 drivers/android/Kconfig                 |    8 +
 drivers/android/Makefile                |    1 +
 drivers/android/binder.c                |  408 +-----------------------------
 drivers/android/binder_internal.h       |  416 +++++++++++++++++++++++++++++++
 drivers/android/binder_latency_tracer.c |  105 ++++++++
 drivers/android/binder_trace.h          |   49 ++++
 6 files changed, 583 insertions(+), 404 deletions(-)
 create mode 100644 drivers/android/binder_latency_tracer.c
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
