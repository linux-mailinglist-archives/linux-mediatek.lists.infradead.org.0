Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7851A92AE
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Apr 2020 07:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TT8RBg9Sjw7jBL4g58DCh1Webe0lEoKxv0rJplpFpkE=; b=EGhYZ5O5BrIt99
	1okdW+i5MoMCXmweOHwgBTz7TgXaEtoLT/c1K5wrMhaqx5giHNNCCZYBTV6BUW21ahx//h3soX04S
	v/53Xdo9bURFyS4ejceAqwRQIwTE1usj89deY4Zc7rkUn4lH4Yd7esoROfHK2v3kg3BgQu28cdglR
	GOkl8Z69n0uvTK4GV4iC4JrbwfFcaOyYig9sPdEKbCHZM9xFvSUlkrXTwJAfKNXbMo8+a+1/6QnsZ
	I3+d/QFkcmQJholJFzooLuRsCF/FBqnDCJrWHfoqubn5VaSXyqKSzmUX21J+Wuq/dL6UJAhCNgmhw
	boHGHzQw/8ibolOjdFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOauJ-0005f2-J1; Wed, 15 Apr 2020 05:48:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOauF-0005eO-TS
 for linux-mediatek@lists.infradead.org; Wed, 15 Apr 2020 05:48:17 +0000
X-UUID: 79b61033359f4575a5a003e04b7dcad7-20200414
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=rFdJukqMuiVvbS0r8hyuDecUDe2evDV8QeEr8RT3h0Q=; 
 b=TRrLOpkAoduvtnqjlBfPwHAblb5Dt5M/fslX4D6CWV/7V6ESh8JRsWJ9KREZtNhNTgK/O9NcDNVkTa2pNY3bl7Lc72g0G1LSeTw7P0cNsr9vpLHJJ4Qr8122HrKYgdeFNzdeMhTp+SbIKNby98ywvKo2Xsl9UjsYb5rkN6ZlSN4=;
X-UUID: 79b61033359f4575a5a003e04b7dcad7-20200414
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <frankie.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 68107602; Tue, 14 Apr 2020 21:48:07 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 22:38:07 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 13:37:57 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 15 Apr 2020 13:37:58 +0800
From: Frankie Chang <Frankie.Chang@mediatek.com>
To: Joel Fernandes <joel@joelfernandes.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [PATCH v2] binder: transaction latency tracking for user build
Date: Wed, 15 Apr 2020 13:37:23 +0800
Message-ID: <1586929044-12708-1-git-send-email-Frankie.Chang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1586759071.9539.15.camel@mtkswgap22>
References: <1586759071.9539.15.camel@mtkswgap22>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C5AE700466C623C56760133233788485E16B151CBF877C57B456D6F564DA69D72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_224815_955647_0D7C3F1F 
X-CRM114-Status: UNSURE (   5.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Todd Kjos <tkjos@android.com>, wsd_upstream <wsd_upstream@mediatek.com>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Jian-Min Liu <Jian-Min.Liu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Frankie Chang (1):
  binder: transaction latency tracking for user build

 drivers/android/Kconfig                 |    8 ++
 drivers/android/Makefile                |    1 +
 drivers/android/binder.c                |  237 ++++---------------------------
 drivers/android/binder_internal.h       |  227 +++++++++++++++++++++++++++++
 drivers/android/binder_latency_tracer.c |  100 +++++++++++++
 drivers/android/binder_trace.h          |   36 +++++
 6 files changed, 400 insertions(+), 209 deletions(-)
 create mode 100644 drivers/android/binder_latency_tracer.c
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
