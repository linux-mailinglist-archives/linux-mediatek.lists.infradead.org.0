Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AEB160E06
	for <lists+linux-mediatek@lfdr.de>; Mon, 17 Feb 2020 10:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kyyJkouB5uLid/x+JOb88Eo8ToilV6tWMJ3trqh8/1w=; b=ti+yeN+duuMrP6
	1kj6/cpYKqzMSI34iG3XlT+7ZlW1es8veirqQmBkWNNb8l8cc+bYyy6yqKnJboW7osNnUcr4NZTuH
	EN4uds05o5REqZ8I99JIl9uivIPIkfSWDrfAne2fTTqjw9h80VfDCJEFfMCQgbK5/vWLXOxoMe9qm
	y3+fGlr7Uo+YVtfLuHhv6gs1g9f6NKxk6T8HTA2mBK/xq3jXVkmL5WPRcHhe2JyNK7O4AVMKIiYrl
	8OF66dFsTVwdx/gfLAoUcXLlKn4VJHOaiTGDxWx3+KNZapw7emXvsx/2zJgpF2HiY9LUTugvCj3/i
	S3Yr4A4CFp0hLK2Jy70Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cMK-000469-GK; Mon, 17 Feb 2020 09:06:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cLV-0003Xb-Eo; Mon, 17 Feb 2020 09:05:42 +0000
X-UUID: 8e6713ee10374a499fe96c9ff4740013-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=TH2Ce9vmxpcBg+uja+1cRFMB0hG0JtrMLOaW8Iql/R8=; 
 b=lOV+nQz2bpgM8/GGsBM1mzyYU3/NmoBU0CFGxj+pQEJGnN5JRYwG8MMci60p1P+M1GnzODIQr0I00u6XRc9zWn5B9weLakOt37YI2rv9Z6bTKeozmVqszuhPpDktg4NcHRdtTcnwnpbvFxe2yxBxnYyu51ZY0v6463vKZRDhC/Y=;
X-UUID: 8e6713ee10374a499fe96c9ff4740013-20200217
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1021915022; Mon, 17 Feb 2020 01:05:36 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 01:06:23 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 17:04:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 17:03:35 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v1 0/3] Remove atomic_exec
Date: Mon, 17 Feb 2020 17:05:29 +0800
Message-ID: <20200217090532.16019-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_010541_515501_B18FD373 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The atomic_exec was designed for processing continuous
packets of commands in atomic way for Mediatek DRM driver.

After we implement flush function, Mediatek DRM driver
doesn't need atomic_exec, the primary concept is to let
Mediatek DRM driver can make sure previous message done or
be aborted (if the message has not started yet) before they
send next message.

Changes since v0:
 - move the binding changes to first
 - remove unnecessary changes

Bibby Hsieh (3):
  dt-binding: gce: remove atomic_exec in mboxes property
  mailbox: mediatek: implement flush function
  mailbox: mediatek: remove implementation related to atomic_exec

 .../devicetree/bindings/mailbox/mtk-gce.txt   |  10 +-
 drivers/mailbox/mtk-cmdq-mailbox.c            | 128 ++++++++----------
 2 files changed, 64 insertions(+), 74 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
