Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9071D30CD
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 15:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GDTuRWU9YrAE4QegY0Fl16AJZi7zTElXMAsQgy05QAU=; b=AFeOH27W773a2E
	RPBVi1seYwFMUQ1FELyLENc/6PMBpW3T2UelEF5JdjuL2P/KXKw9f4Xut6bQFpI0NjayBRsviY1sa
	a+QUR4Dsz37wQAujIh62/ovXcA4Iv5Y8kvdxEtoMdjiTKfNNX5li18I4+0hMha7pQ8FRrHxe4eIJt
	l3VXD/l/8g9pj5nhOnDm/+lEI83Yc8JIfgWc+r1fOURAmo2a7yWIGDTUgbxqDcAVobnyPIcgQ435Q
	5WD+lE+QY3ef0rY8nOUB3FnjKd6mkSTnH5WsSKR0kTygHmtxRUgd7vu6Q+M+UQM/QAvN7YOiF+sws
	/2f2FlGmy3RsmclSXJFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDfr-0005Tp-6o; Thu, 14 May 2020 13:13:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDfQ-00055K-BC; Thu, 14 May 2020 13:12:53 +0000
X-UUID: e1d1d613706c4103939aba86c25748ce-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=cuoKK6jhD7pvYpNhFVneYUDj8vLgMGJ953l7rb/BFcs=; 
 b=HjgMEGbvjGpUW/h1Yz5cFynS45sP70gYsnAg2cxOYhynHKFxg55dXuL324N7PEzs75rSL12cw3bYi74IhEC+ypu/GTrl2YT9s8cRDLnng0U4/DpWLW68MEytw2yICs36xl4RbWnOxpLcLui3X4EipiAKsr7r/IKHcpa4+nNiJ/0=;
X-UUID: e1d1d613706c4103939aba86c25748ce-20200514
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1166438794; Thu, 14 May 2020 05:12:37 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 06:12:32 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 21:12:30 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 21:12:29 +0800
From: Qii Wang <qii.wang@mediatek.com>
To: <wsa@the-dreams.de>
Subject: [PATCH v2 0/2] Add i2c ac-timing adjust support
Date: Thu, 14 May 2020 21:09:03 +0800
Message-ID: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_061252_391445_3489BA62 
X-CRM114-Status: UNSURE (   6.28  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, qii.wang@mediatek.com,
 srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series are based on 5.7-rc1, we provide two patches to support i2c ac-timing.

Main changes compared to v1:
--add maintainer for mediatek i2c controller driver
--fix warning of self-assignment

Qii Wang (2):
  MAINTAINERS: add maintainer for mediatek i2c controller driver
  i2c: mediatek: Add i2c ac-timing adjust support

 MAINTAINERS                     |   7 +
 drivers/i2c/busses/i2c-mt65xx.c | 328 +++++++++++++++++++++++++++++++++-------
 2 files changed, 284 insertions(+), 51 deletions(-)

--
1.9.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
