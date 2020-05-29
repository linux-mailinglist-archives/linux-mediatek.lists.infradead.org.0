Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DF51E794D
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 11:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+nBcVtBJAGhweiNbgIkW2V3TwJ120S8bqctN4bMz9fA=; b=Px4ZUgre2IYWYi
	Q/TIO4CIYk9tcWUDQi4fVegJ+WzxESmGoj+OunngLx+pbnQvdXN3/PdWar6WXsYEDXOzlasPcqPHB
	SVByh+/FWqgwiqQM9jUlyhn44SljMwx+mgJi+feKlYrZXUUSQpkU/btzkxyn8Bif81WdyQ1oQ36pB
	8oDx201cqVoMObCAD2vQGZVuXAS0fHLq7s+iywsr9ayucnnOkcMsWdHgynbKuJN+kI7novwmKPOTf
	2J7ujPRpgtRRC4rTwC/eu5Vt8CC1hxHCV50kQTOU0TA0BU2YdXZo4MLwuIDIEev5cf6YWlBgkinhz
	gAq3PcOzIW+xbL9fjpZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebFC-0005uF-UV; Fri, 29 May 2020 09:24:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebEd-0005Ne-0Z; Fri, 29 May 2020 09:23:28 +0000
X-UUID: b4759ac15c4d49e2bd9a59ed3eafd004-20200529
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=C7jiqWJqQUQFX3wanPIiepBSjlj6iNhBD/xNOyaJx/o=; 
 b=kDCJTzk4x9EtqMkosbm3DAGFx0pWXlTB7sW3ZcZqrgz+AXw6iJUOLZqazpKxcEMmA9jmKCICggLLMID5HMjyDYmJ1ig5CfhfcE04ZC+Rd7OOnM/EZ40UtPNZqaudmFALvmHyaPlPP22b6OjO2toRWq7109FZebZaPy1ayyuQRcM=;
X-UUID: b4759ac15c4d49e2bd9a59ed3eafd004-20200529
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1765577043; Fri, 29 May 2020 01:23:13 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 02:23:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 29 May 2020 17:23:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 29 May 2020 17:23:09 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 0/5] scsi: ufs-mediatek: Fix clk-gating and introduce
 low-power mode for vccq2
Date: Fri, 29 May 2020 17:23:05 +0800
Message-ID: <20200529092310.1106-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: BC13AC5E0CEC9B039233AABE34122B89E422FCA98B5DA0A01FF13D32ED2EEF7E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_022327_059376_509AE53D 
X-CRM114-Status: UNSURE (   5.67  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: pengshun.zhao@mediatek.com, Stanley Chu <stanley.chu@mediatek.com>,
 bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,
This series fixes clk-gating issues and introduces low-power mode for vccq2 in MediaTek platforms.

v1 -> v2:
  - Add patch [4] and [5]

Stanley Chu (5):
  scsi: ufs-mediatek: Fix imprecise waiting time for ref-clk control
  scsi: ufs-mediatek: Do not gate clocks if auto-hibern8 is not entered
    yet
  scsi: ufs-mediatek: Introduce low-power mode for device power supply
  scsi: ufs-mediatek: Fix unbalanced clock on/off
  scsi: ufs-mediatek: Allow unbound mphy

 drivers/scsi/ufs/ufs-mediatek.c | 112 +++++++++++++++++++++++---------
 drivers/scsi/ufs/ufs-mediatek.h |   2 +-
 2 files changed, 84 insertions(+), 30 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
