Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F5114F8B3
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Feb 2020 16:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drQBFrKi0v8o+AQkRSnLl7QdawEwjhZXrnPwRetflOg=; b=nRYjB7JAxCB2PM
	Ouazg6qEn9jmtM3cH/tjSCopuUZ1viDzeme6Llwjnq8dc2eljPiasYJvnQqj+/krRH5VLyjz+vKEc
	ltQnRL43zMsrOEQpBnBQ8Mf82T06UD1urSOcOvafVWc0smMZNOusNf9detImWH5vIrpa4BRUWie/2
	b+fWiOE2knSGNpa37iGA2MiPQJ7ipa4lHDhfaNsIdUeWzPE66HfbnOsxBpZLby0bfJBhJ2B2glo8v
	uiHtVXNNSOmMkDJtNfJiT2uO9OSemE6if9IvEhxBLDK9W6ArZxrA1D7gojXzBbpv3XA0WENTA8J9n
	j1aI8uQLUXTEtSSPrhRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixuwK-0000Fg-V5; Sat, 01 Feb 2020 15:44:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixuwI-0000EP-Dq
 for linux-mediatek@lists.infradead.org; Sat, 01 Feb 2020 15:44:07 +0000
X-UUID: 6440c062322f4f5a9a36ebb0f2ff9c52-20200201
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0csIRJLeMgqFDBc0WpZNMpF4/Ash9iE+C/byhNFJPjE=; 
 b=PEkYNhdUxe7MNeplDFBtV/7+EsJT9/a4b+ZdWgvNFsJJJq5EpJjG0nICR19/7GsqK1DPb6KjCS0pqLamd3km9kch05lOSk1NTkjKpTs+A0a5luzDDEfvhhrFKUkM7dsW8XoXNLclNSGFlz4BlxsUViFMdT3u6ys1QNnIQWIhNdU=;
X-UUID: 6440c062322f4f5a9a36ebb0f2ff9c52-20200201
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1030051653; Sat, 01 Feb 2020 07:43:59 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Feb 2020 07:34:17 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Feb 2020 23:33:56 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 1 Feb 2020 23:31:31 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 0/7] switch mt7615 MCU command format from v1 to v2
Date: Sat, 1 Feb 2020 23:33:45 +0800
Message-ID: <cover.1580565624.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_074406_475700_D67C0288 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Josh Boyer <jwboyer@kernel.org>, Sean
 Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

This updates command flow to adapt newer firmware version.

Changes since v2:
- check the return value from __mt76_mcu_send_msg.
- rename dev->fw_ver to '2.0'.
- simplify is_v1 expression.
- revise commit messages.

Ryder Lee (7):
  mt76: mt7615: simplify mcu_set_bmc flow
  mt76: mt7615: simplify mcu_set_sta flow
  mt76: mt7615: add a helper to encapsulate sta_rec operation
  mt76: mt7615: add starec operating flow for firmware v2
  mt76: mt7615: use new tag sta_rec_wtbl
  mt76: mt7615: switch mt7615_mcu_set_tx_ba to v2 format
  mt76: mt7615: switch mt7615_mcu_set_rx_ba to v2 format

 .../net/wireless/mediatek/mt76/mt7615/main.c  |  12 +-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 577 +++++++++---------
 .../net/wireless/mediatek/mt76/mt7615/mcu.h   |   8 +-
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  20 +-
 4 files changed, 310 insertions(+), 307 deletions(-)

-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
