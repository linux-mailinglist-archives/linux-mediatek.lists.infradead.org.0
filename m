Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29901FA761
	for <lists+linux-mediatek@lfdr.de>; Wed, 13 Nov 2019 04:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ty+1BGRyFEBhGXwHzCz+OVktxUpP5OFgTiu0BISu4A0=; b=ed/lsR00aWmkkm
	XytqGdz2NriEppxtVatSb6GxdRrswEniwjNPJ6ULwY1e/bBlyEPX0dNeihSDggm6rfhMo4FtTSzSZ
	209DIXXINCUxYWFrGVixqckV9OB0OZbRSBRlHlwKzNa/8dbZyB49eu0VXtbz75SJItsvJ4GqTGmOi
	ddLCHg0nqXWEwCAZ7ZoONssuFPqvpbzQlFmwXIY183rp+qYBxjcDLJF3XOlyQ9QFdBenLuxKeGI5+
	GZU0KnTlo2dknKnVAapIN8sh69e6sgQH0/dg99mswKzEEfdPUEbRy3VuTN+/hQsJgRbnhJAo4HQ63
	DOnn0X/tvSHz3qFswakQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjVO-0003YX-VN; Wed, 13 Nov 2019 03:39:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjVH-0003Pw-PA; Wed, 13 Nov 2019 03:39:37 +0000
X-UUID: 7b2ebe2c2b3f4657a6d97822806a95a5-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=l+3HLJlr9FU1jj0l+q4WqZWs0HC9AL455Rau+3GvDuw=; 
 b=HBILv9heeeUS1LBs8Dcev111DYoy0ti8qll/+M5WgD9H6M+JuxwlbRJjLJ2PWLoTvz79SeEWoAW5e7SP+BedGj+nqADpQ7WNvddgmHCkypXnAzwe3gTUtiqQwvspclspVxRQ24Qo9mf9dRCIJw0Bz1Jlo7zPHD/y9tFQ7mkmIK0=;
X-UUID: 7b2ebe2c2b3f4657a6d97822806a95a5-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 614352770; Tue, 12 Nov 2019 19:39:25 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 19:39:25 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 13 Nov 2019 11:39:24 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 13 Nov 2019 11:39:23 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1] memory: mtk-smi: Add bandwidth initial setting for MT6779
Date: Wed, 13 Nov 2019 11:39:20 +0800
Message-ID: <1573616362-2557-1-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_193935_821019_E8E1605F 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch add description and bandwidth initial golden setting for MT6779 SMI.
The setting make better performance of memory control for multimedia modules.


Ming-Fan Chen (2):
  dt-bindings: mediatek: Add binding for MT6779 SMI
  memory: mtk-smi: Add bandwidth initial golden setting for MT6779

 .../memory-controllers/mediatek,smi-common.txt     |    3 +-
 .../memory-controllers/mediatek,smi-larb.txt       |    3 +-
 drivers/memory/mtk-smi.c                           |  141 +++++++++++++++++++-
 3 files changed, 143 insertions(+), 4 deletions(-)
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
