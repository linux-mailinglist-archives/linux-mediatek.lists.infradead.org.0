Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778011F71C6
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jun 2020 03:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KTCOUb1oiWqm94oqSEDeJw4c9/8QW+F8y6T3fmABpaU=; b=Y/3WYmMTIK9GbR
	XfWuTq3FBTC0cFn6JIzRNZdjaRevEQiqLPut4+4N/ZwHxX8ix4ouM2YO5oF0aqD9G2UbUBUqMGpnO
	xo1/25NnGqPiJ+r18F+5J7qYVY+rxuHbxYywsEKNmU9AfW13zNidO+Td5FQrfZB4z7WZInF9xv91Z
	NfzFCUS75UzNmXZBGOuWvqmwXpfNDGvGcb65iNoEUaAa7TccdAf34C1hJ/XnC9q/3gRonuwLe3gbY
	m+IK2jYK6KZi7xbSsnKAThV+TksjsUQy0qjLEf1K2Qv+yGvSzIBl86B33Qo4SasP0iANhDcnD4AU+
	7Jd7VE9zJExs3dwfcNDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjYcv-0006UE-TZ; Fri, 12 Jun 2020 01:37:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjYcU-00065i-18; Fri, 12 Jun 2020 01:36:35 +0000
X-UUID: 1fa0c5ca9cbe40e9be95cdcabd09a2ee-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=mW39zfEbSzCeS9LVeu/0bwZR50QhQsI3o/dC6sfyMJQ=; 
 b=b6P2p5g41rMRVs+ND6EoPHHbghp7o3mNp/Hhy5ABTEoX0fweCzQ57qkPIWPr7so5YGLaGdDbE1ByaSsGJ3cDIkyKTrSkBMehT4A8yS/0RsnCCR36UEK7hst3oK7Cy98OkRfGNCMm1bMCHp5xmU80jjgpoV7QhmhERLychgDi4so=;
X-UUID: 1fa0c5ca9cbe40e9be95cdcabd09a2ee-20200611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 936202389; Thu, 11 Jun 2020 17:36:30 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 18:26:22 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 09:26:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 12 Jun 2020 09:26:21 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 0/2] scsi: ufs: Fix and cleanup device quirks
Date: Fri, 12 Jun 2020 09:26:23 +0800
Message-ID: <20200612012625.6615-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_183634_081684_7F952718 
X-CRM114-Status: UNSURE (   5.41  )
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,
this series provides some device quirk fixes and cleanups.

v1 -> v2:
  - Sort device quirks in alphabetical order (Alim Akhtar)

Stanley Chu (2):
  scsi: ufs: Add DELAY_BEFORE_LPM quirk for Micron devices
  scsi: ufs: Cleanup device vendor name and device quirk table

 drivers/scsi/ufs/ufs_quirks.h |  3 ++-
 drivers/scsi/ufs/ufshcd.c     | 15 +++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
