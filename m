Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6B112ED2
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 15:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+QnqF+RuvrUHhcGX2BAzC3tZdQZhzLtyhr/IaPqfJA=; b=F355GBPzEqjKSE
	5di3VVI/QXckBQIoY3szkYQohJHtMg/JNQEevthzEe52SaK7Mdde6jy5sCGAatco4oviSbE1ncDWX
	od8VyX2U/eNuKQMfV8ZJj1uX2Jf9U5UM5f4vbBiEZOYomq9fHka3vTxnh7DR1uJvBfbi5eUqIZSwB
	yCtOBkdoyf/YWNwXBMoB9h9D5Zc8kRMfqmBn9q0gva21/SikIKq56Q5Cr9b7Xjo6AEUk9V1LxqKBC
	hBlbiRqZHM55jQ0NwJeKuPhR2qU9MQZwYvOuQFtV0z7zskrvXWOVHb0AeEsfIn0gapdO5Bflm9nzF
	ZfXJ1vSM4KoJPti1pspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXwU-0007Ub-6n; Fri, 03 May 2019 13:09:34 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXwR-0007UF-BL
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 13:09:32 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43CxSMG125045;
 Fri, 3 May 2019 13:09:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=qUI30iuQjAmm87uWs76TDx2QVxkW3XKVNbir16Y2Z1Y=;
 b=ayqNl+TM2CCC+3wJRrsmGVGPU9GDWP8839ASLcJMQflgrcapOpISKzsYecxW7MFAGrB3
 /fPSDCMjnLr4PWTz0jR1kmmrwKkqA44B+m43wh+7tdJYieomyq6jpR8WReR8e9hSOCaI
 ueQ/pnwaCQSXSXxc3RlKtJXGguWH9DBCEwSs+fRkjQjL+SJ/mkyp8FxQ+3eNlS8DEKY/
 Lx4sOaGz3k6s7Q0XIzyScCVyoAonLK0Oci0ZrHQJKKWdLOWGZxDOBvxPKD+dU+6uQSmn
 DubFPCWUsNPwJGN8Sa1hP8OmHutsSfJ5Xh+6ZUCFToSjaFoCpN7lnvYZk7qc8/1EE+mR 5w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 2s6xhypkrf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 13:09:24 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x43D99DA136935;
 Fri, 3 May 2019 13:09:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2s6xhhm5p0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 May 2019 13:09:24 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x43D9LGj029163;
 Fri, 3 May 2019 13:09:22 GMT
Received: from mwanda (/196.104.111.181)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 May 2019 06:09:21 -0700
Date: Fri, 3 May 2019 16:09:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Felix Fietkau <nbd@nbd.name>, Ryder Lee <ryder.lee@mediatek.com>
Subject: [PATCH] mt76: mt7615: Use after free in mt7615_mcu_set_bcn()
Message-ID: <20190503130909.GI29695@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=837
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905030082
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9245
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=865 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905030082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_060931_477239_AD972643 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

We dereference "skb" when we assign:

	req.pkt_len = cpu_to_le16(MT_TXD_SIZE + skb->len);
                                                ^^^^^^^^
So this patch just moves the dev_kfree_skb() down a bit to avoid the
use after free.

Fixes: 04b8e65922f6 ("mt76: add mac80211 driver for MT7615 PCIe-based chipsets")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index ea67c6022fe6..dc1301effa24 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -1270,7 +1270,6 @@ int mt7615_mcu_set_bcn(struct mt7615_dev *dev, struct ieee80211_vif *vif,
 	mt7615_mac_write_txwi(dev, (__le32 *)(req.pkt), skb, wcid, NULL,
 			      0, NULL);
 	memcpy(req.pkt + MT_TXD_SIZE, skb->data, skb->len);
-	dev_kfree_skb(skb);
 
 	req.omac_idx = mvif->omac_idx;
 	req.enable = en;
@@ -1281,6 +1280,7 @@ int mt7615_mcu_set_bcn(struct mt7615_dev *dev, struct ieee80211_vif *vif,
 	req.pkt_len = cpu_to_le16(MT_TXD_SIZE + skb->len);
 	req.tim_ie_pos = cpu_to_le16(MT_TXD_SIZE + tim_off);
 
+	dev_kfree_skb(skb);
 	skb = mt7615_mcu_msg_alloc(&req, sizeof(req));
 
 	return mt7615_mcu_msg_send(dev, skb, MCU_EXT_CMD_BCN_OFFLOAD,
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
