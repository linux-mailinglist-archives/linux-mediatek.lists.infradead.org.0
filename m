Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673C41ADBE1
	for <lists+linux-mediatek@lfdr.de>; Fri, 17 Apr 2020 13:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ei/VETl58+VEo+RGrurNyBtOlaqcTmVddu91oH1QHJA=; b=NytEM0VO5XHeS4
	Siwq90XZeWGknvGxfDQ+Nrxo+NjkB/4KPni3D1EfyoRqBblx2kXooZbcGIyq7pqLN+k6G0IPNvVUv
	lYsAdyhwJF6ZHy68OR7YvCx+pcz5JLYiWpeJLeXl6PVJR14XslS0cqItwCN6GjUlMAec19p33qCs2
	78lioVMef6Zcsv6BdPLr6AslsqI3kShAAFh4ks6R4IDFZ4/l9Wr7RuFiS6IdxVf4eLEsmQWhS3AQZ
	XcQRjIt4OXuaMJQTcA0onN9yJZdbFhN1k5s2dVldtWjBO7CiVMbjo3V7LxZFxbLvvhm/NTf4GNhtG
	UVohXB5/3mtF6va+9o6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOtF-0006d4-3u; Fri, 17 Apr 2020 11:10:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOtB-0006bM-FY
 for linux-mediatek@lists.infradead.org; Fri, 17 Apr 2020 11:10:30 +0000
Received: from lore-desk.lan (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02F52221EA;
 Fri, 17 Apr 2020 11:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587121829;
 bh=lSLiJZMHBX2HuBwf46zfvddPluaJK4U7XxsyEnN7C1Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cKpyD4mHHPdCtelz0qvX7SDImLQUdiuBuPF3HNTe11eeoQoq80+iQmUyxbYQTyKYn
 zPHD0PuRU8df0KtjnUp3vnyAjcLHzvsF95sWeXhfgXh2tjYsaSSCPq70NcZLqowAba
 AhI5edOSshiA2AEuV/fmbFE2N93KYfb8/OSSzyTQ=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 1/3] mt76: mt7615: provide aid info to the mcu
Date: Fri, 17 Apr 2020 13:10:04 +0200
Message-Id: <21e5f8065a0d494c3e38dcac357b6f5a59ccdb65.1587121517.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1587121517.git.lorenzo@kernel.org>
References: <cover.1587121517.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_041029_541516_66184734 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

For sta mode mac80211 provides aid in vif->bss_conf.aid.
In order to properly support 802.11 power-save, configure correct aid
to mcu during sta association

Co-developed-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index bc7b55e41337..48eb099661fa 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -790,12 +790,15 @@ mt7615_mcu_sta_basic_tlv(struct sk_buff *skb, struct ieee80211_vif *vif,
 	case NL80211_IFTYPE_MESH_POINT:
 	case NL80211_IFTYPE_AP:
 		basic->conn_type = cpu_to_le32(CONNECTION_INFRA_STA);
+		basic->aid = cpu_to_le16(sta->aid);
 		break;
 	case NL80211_IFTYPE_STATION:
 		basic->conn_type = cpu_to_le32(CONNECTION_INFRA_AP);
+		basic->aid = cpu_to_le16(vif->bss_conf.aid);
 		break;
 	case NL80211_IFTYPE_ADHOC:
 		basic->conn_type = cpu_to_le32(CONNECTION_IBSS_ADHOC);
+		basic->aid = cpu_to_le16(sta->aid);
 		break;
 	default:
 		WARN_ON(1);
@@ -803,7 +806,6 @@ mt7615_mcu_sta_basic_tlv(struct sk_buff *skb, struct ieee80211_vif *vif,
 	}
 
 	memcpy(basic->peer_addr, sta->addr, ETH_ALEN);
-	basic->aid = cpu_to_le16(sta->aid);
 	basic->qos = sta->wme;
 }
 
-- 
2.25.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
