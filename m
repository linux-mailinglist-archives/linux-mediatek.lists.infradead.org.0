Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FFD1788D6
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Mar 2020 04:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ex3Vz3Gy78impKlqYMqcBjKBHBFdaDBqFqJxh+12oY=; b=m1ZavUjjyhsQuq
	m6aQyzxf/8xXKAP2MUR5pXCziG5xwQCaguH0msfcCkDKaaY05Nj4hsjobIHeNSRHTptFFAmHBUgm7
	2M2ophS2NsJg7DcGkotAzNx5VXpTmvPo5gAdsFV15Gy3nJ/crgSZrpkTR6sit/raKiicvCjINJumP
	jKP97qTa/7RIaSLdR4zVGcYhxtQNRdX4aFZQepKPiGc88Rnvt34z1FbXg7qN30qaNTI9G9M6zJrGf
	ASz//CfVn6r1rTVf/MRP/IplQI/b8SFfXqSc9jUEfbJUfZAuMw8Jj3McH8VuRI9US1Hhxki62yFMR
	Qa2gA67Xo8uvDMrACHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9KHl-0006f0-O1; Wed, 04 Mar 2020 03:01:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9KHi-0006e2-8M
 for linux-mediatek@lists.infradead.org; Wed, 04 Mar 2020 03:01:23 +0000
X-UUID: 4559999ba79d4deb8e64703e8de5d05e-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=4Tp8i81rBL0bV3dcOPyhC4/n91xDQC95NgC/GnLFqIE=; 
 b=bRdeliBMsJYguedrqxZYnh7RXR6U15ACA4oD7raeOqem42as4vqXnGIny+kdUIm9mdVlIg5H1GYS2SYvDNOMywCSJsHWzNnEue/A2cVAsASg7ZLff8nfU/UNNXbkVxZq9cgLNHcx1GxCyOtvgE/7LcjCSMduX4v3IQFl8Rs0dC8=;
X-UUID: 4559999ba79d4deb8e64703e8de5d05e-20200303
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1190185211; Tue, 03 Mar 2020 19:01:18 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:58:43 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 10:56:28 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Mar 2020 10:58:16 +0800
From: <light.hsieh@mediatek.com>
To: <ulf.hansson@linaro.org>
Subject: [PATCH v1 0/3] set ro attribute of block device according to
 write-protection status
Date: Wed, 4 Mar 2020 10:57:32 +0800
Message-ID: <1583290655-7858-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: E978A8E0381A4EFA74F0521E4BB358506639EA9010A2EA3F0FCB60A953564A212000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_190122_305657_5D8BB755 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@kernel.dk, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 Light Hsieh <light.hsieh@mediatek.com>, linux-block@vger.kernel.org,
 linux-mediatek@lists.infradead.org, stanley.chu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Light Hsieh <light.hsieh@mediatek.com>

*** BLURB HERE ***

Light Hsieh (3):
  mmc: record wp_grp_size and boot_wp_status
  mmc: check write-protection status during BLKROSET ioctl
  block: set partition read/write policy according to write-protection
    status

 block/ioctl.c             |   2 +-
 block/partition-generic.c |  10 +++
 drivers/mmc/core/block.c  | 217 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mmc/core/mmc.c    |  16 ++++
 include/linux/blkdev.h    |   1 +
 include/linux/mmc/card.h  |   3 +
 include/linux/mmc/mmc.h   |   2 +
 7 files changed, 250 insertions(+), 1 deletion(-)

-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
