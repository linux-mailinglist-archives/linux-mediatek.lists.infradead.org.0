Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBD7109F41
	for <lists+linux-mediatek@lfdr.de>; Tue, 26 Nov 2019 14:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=atvC/Sc7aTg8l6NzBUXDJjfgK4dZOV5qgRlt7RKkLqM=; b=e/jCSxVDdGpyVk
	ccT2eYqmnfcPLpAjZHl1kcwoRHHxgW0YN+lwKbxXsE3Fi5IvYrwkLRXLoHbDtwbqU68an7rZlOrhe
	J83Eat+ms3FGLllHGR9MSJx4HCt7o0akIBSywJBzyUmByJkJpgJmbOawhX+BgFKpllocJx8VHBgQT
	n8b8lsJKZU7360S3kapoRJXmos3QaTWB0P5du9gZ5iT8QzStPcCsgGXAZzUGa4ewdE6YC38ocvpiR
	syPfD0WihxglnhFbl6MZTFAbpnIoDgZscB2RhA4vKDatf/fo/WhvIu88ApKgbM5ZV3fNjTzzToIPi
	AeLrjvRox8kZWq3S1hTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZasg-00087y-DM; Tue, 26 Nov 2019 13:27:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZasd-0007cQ-6e
 for linux-mediatek@lists.infradead.org; Tue, 26 Nov 2019 13:27:48 +0000
X-UUID: 84084d7e4d0842f08a5b29cdc9d067ce-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=jZRVn5TlvJrTrTr3DZJgx1M6iBQCf9Nk3/ncmMlFv4c=; 
 b=sKmh7Frpf5FrYabJtyr0C02YStKhoY47JaXj37/xIZWxmAQFyg88BFtAYaovq9/VCk69cVIR6Y5FuuAWN80/HjLlNLs1dzWmRsi4P/3MkH7FlOk51YH8vQXfY0VKqk0WBnSKUf1wdSCm2LOtskjTiPNlMYBH0XmO75SmPskMUa0=;
X-UUID: 84084d7e4d0842f08a5b29cdc9d067ce-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <shayne.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1737591156; Tue, 26 Nov 2019 05:27:38 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 05:18:11 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 21:17:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 21:17:36 +0800
From: Shayne Chen <shayne.chen@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>
Subject: [PATCH] mt76: fix possible undetected invalid MAC address
Date: Tue, 26 Nov 2019 21:15:54 +0800
Message-ID: <20191126131554.32457-1-shayne.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: C5DD055B51CD7A390C073BA74141EDA9DD3D1017221B87A0542E61E140A4008C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_052747_274214_377C4951 
X-CRM114-Status: UNSURE (   8.42  )
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
Cc: Ryder
 Lee <ryder.lee@mediatek.com>, linux-wireless <linux-wireless@vger.kernel.org>,
 linux-mediatek <linux-mediatek@lists.infradead.org>,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Make sure the MAC address is checked before function returns.

If CONFIG_OF is set and the device node is null, the function will 
return directly, and an invalid MAC address will not be checked.

Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/eeprom.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/eeprom.c b/drivers/net/wireless/mediatek/mt76/eeprom.c
index 804224e81103..358fb0a1e523 100644
--- a/drivers/net/wireless/mediatek/mt76/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/eeprom.c
@@ -80,13 +80,14 @@ mt76_eeprom_override(struct mt76_dev *dev)
 	const u8 *mac;
 
 	if (!np)
-		return;
+		goto out;
 
 	mac = of_get_mac_address(np);
 	if (!IS_ERR(mac))
 		ether_addr_copy(dev->macaddr, mac);
 #endif
 
+out:
 	if (!is_valid_ether_addr(dev->macaddr)) {
 		eth_random_addr(dev->macaddr);
 		dev_info(dev->dev,
-- 
2.17.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
