Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856BD1C846B
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 10:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4hY0fE4qYYQo8lGKsfDmItXeDoYka6SycMjht5S/Jk=; b=n9vq14XwQRSUVh
	IAJDOgX900n1sxqfBFaKbghh1nvKt+iKLS6aGlkpW3my4j6z9sEn8W91e0KndC2LpcOwvO+fsgiMC
	1UOJFmzamweLNk23JO+AcY/XXpfJZK37x+ZA7IFYv0jk0KrHsRuHgdMf4RY5lbAB2rbhlqzO2sDB4
	kI3HWjudbTP4j2VwfDBPsrWdGyqTUvCWkC0Sjhtcg6cZLUpemcbrOh9ggW1wkovi0ATX1WZ8j+0/N
	4HVaTVpWgkGbWKfpw3ifsOf59jSIyvQhW3bcKGkoFODe4574b+QOKwbMW/gLO6c9Fi2UZ+jE6hDGC
	HxXPlijRiPWs4ZZuJ5iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbca-00048l-Aw; Thu, 07 May 2020 08:11:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbcX-00047n-IA
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 08:11:06 +0000
X-UUID: 7a7319712be04ffe94adcc826b0c8b68-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=U3rOHmbZkfyZYNk3QoGRcI8HUwADaDcQDbyBxnNmq/4=; 
 b=rTqaBwSBnzuq0adkIykxKC1DinYI46SFK22FHeqc1aSi7nBSec6UGF8w5rF7399MUBvEP/GF2pg71EVTsOkEZ2lzoag75uBRaCvp6KjhW76OSTL7ayC/HaVfV7dzEBBimPl88/r1cszFnS03GuE1aJsahXukQx+YFp6Pvg0m4yU=;
X-UUID: 7a7319712be04ffe94adcc826b0c8b68-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <frankie.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 805833829; Thu, 07 May 2020 00:11:03 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 01:11:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 16:10:56 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 7 May 2020 16:10:55 +0800
From: Frankie Chang <Frankie.Chang@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Todd Kjos
 <tkjos@google.com>, Joel Fernandes <joel@joelfernandes.org>
Subject: binder: transaction latency tracking for user build
Date: Thu, 7 May 2020 16:10:52 +0800
Message-ID: <1588839055-26677-1-git-send-email-Frankie.Chang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <20200430085105.GF2496467@kroah.com>
References: <20200430085105.GF2496467@kroah.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: BA4C6F361779C1B7134FD62D3A807F06C4F8C4209677814ABEA4A00D1DC073DE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_011105_605493_4C8D71EF 
X-CRM114-Status: UNSURE (   5.21  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Jian-Min Liu <Jian-Min.Liu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Frankie.Chang (3):
  binder: move structs from core file to header file
  binder: add trace at free transaction.
  binder: add transaction latency tracer

 drivers/android/Kconfig                 |   8 +
 drivers/android/Makefile                |   1 +
 drivers/android/binder.c                | 408 +----------------------
 drivers/android/binder_internal.h       | 416 ++++++++++++++++++++++++
 drivers/android/binder_latency_tracer.c | 105 ++++++
 drivers/android/binder_trace.h          |  47 +++
 6 files changed, 581 insertions(+), 404 deletions(-)
 create mode 100644 drivers/android/binder_latency_tracer.c
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
