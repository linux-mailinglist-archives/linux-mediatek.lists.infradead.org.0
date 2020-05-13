Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB75E1D18CA
	for <lists+linux-mediatek@lfdr.de>; Wed, 13 May 2020 17:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u3nlPq2sal/ufVHM4oSHSZwL6iX0qAd+/EIiNDzNjDQ=; b=bQLGM9bdYV4ayS
	ldspQkO7O0Mp+CfC37EIH2+41aRy+W1KDUx5AsIbxhZL4azeC4PGh9A31A/MQ6UXc7uyYGjfhLJ7b
	K7aG+yLTivBYePCL+Niwo20U+YGjz2PvXt9LAfIK0Mau7ovDNjSTqDk+vc9EgA9mXQQRt904Dcy99
	EoJQScPAVirSi/mXj9iSZAZtzbWPWFoVhCyRTOs5IHuZSlgbE3tSv4mVpxr4dJs9m8fEtIL6W7CDN
	j9No4bDHna6cr+dDUYK98SBK6u0N1iC1dupQ54aoyrDfCjSoSTKclbW35rlUgthEn+Xk7UsjjTEzT
	1cQ43w/9rHspFiNEezBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYt1k-0001K4-Nc; Wed, 13 May 2020 15:10:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYt1e-0001Dd-QV
 for linux-mediatek@lists.infradead.org; Wed, 13 May 2020 15:10:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id u5so5299359pgn.5
 for <linux-mediatek@lists.infradead.org>; Wed, 13 May 2020 08:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7y6hmshkKKSxjyTdVHPwU97L1AeKQYF3Z/95TQkF6E=;
 b=I4cIJIiqP11iNmQOWCGXBg1RMnKnIA0aR9YIDFQ0IprLyoBboMt1zn8/Y3Q26eCk6L
 nMbetA5UQ5Yf8eAbhubx9oQcqnMYzT5vDndVkfb/PXCh+0CiBwKTIUvTTOctEe2AdgZs
 mzMkLySNhCRMROBTpab9Gwum1nwrqbY21KohvMuHQLb0H1tQqTeK0HtHiF5Leu9/xFaI
 VG31UdZqq7RSmj9SL9ac3zFTdLNL9mcQKYbTDcRIM6OndE18waWIruxQ3rNAUiivFQ/m
 zspW88bmGIScP2zdWnSTqbniZtNz4m6PzOdzE3X8+nCljjEl8aFpx9aUZ1DQrZmDmHjd
 NXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7y6hmshkKKSxjyTdVHPwU97L1AeKQYF3Z/95TQkF6E=;
 b=sLweyXrgjSrNUO8UV/CSB1RDKiHBm0rKTMe5uLzAd6UPh8ipGw/GQuQbt4wVmQ0wxG
 OpT7mphc6mqB36yDvNn2b6AZZIi5frVoSpiaZsSwuzs5d8dpb+IBtt7p1sE9L5JxpL34
 rH1r0kpdALdOA3wUPfjY8acOlGiH52IuzPVzDvB9ZRuhA9IQvpR09L2GA3WIq2IDv+VE
 Qbmwsv5zwKRC7/Ve45rKhoZHmI3stgIq62X4WaxQEZ2EHoLqXy7pGdMK8Bf016z9OCyL
 SP2kj65M/Ux7aWGPlirjqyN/c9OHgdfO8hq6p8dC+/VOrdVCJa5oS2pwmdqLDAV652si
 Lwxg==
X-Gm-Message-State: AGi0PuYem4LSGsJ6zuFOY018Llr6Ne5HvIyo0drg762LGmyPJWPfGFED
 rYvr3JkAQpoSxS9tbSxHNoQ=
X-Google-Smtp-Source: APiQypKEowcdBOXq7xLrN0JxB381N9q9dLQualzp3aF9uW4/Ra26tVujPXdesm1UT6wgcsu4mVq0NQ==
X-Received: by 2002:a63:130c:: with SMTP id i12mr23686286pgl.122.1589382624957; 
 Wed, 13 May 2020 08:10:24 -0700 (PDT)
Received: from P65xSA.lan ([2402:f000:1:1501::3b2a:1e89])
 by smtp.gmail.com with ESMTPSA id t188sm14909829pfb.185.2020.05.13.08.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 08:10:23 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH REPOST] net: dsa: mt7530: fix roaming from DSA user ports
Date: Wed, 13 May 2020 23:10:16 +0800
Message-Id: <20200513151016.14376-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_081027_061049_F3BB00D7 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dqfext[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 riddlariddla@hotmail.com, Paul Fertser <fercerpav@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stijn Segers <foss@volatilesystems.org>,
 Szabolcs Hubai <szab.hu@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Tom James <tj17@me.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When a client moves from a DSA user port to a software port in a bridge,
it cannot reach any other clients that connected to the DSA user ports.
That is because SA learning on the CPU port is disabled, so the switch
ignores the client's frames from the CPU port and still thinks it is at
the user port.

Fix it by enabling SA learning on the CPU port.

To prevent the switch from learning from flooding frames from the CPU
port, set skb->offload_fwd_mark to 1 for unicast and broadcast frames,
and let the switch flood them instead of trapping to the CPU port.
Multicast frames still need to be trapped to the CPU port for snooping,
so set the SA_DIS bit of the MTK tag to 1 when transmitting those frames
to disable SA learning.

Fixes: b8f126a8d543 ("net-next: dsa: add dsa support for Mediatek MT7530 switch")
Signed-off-by: DENG Qingfang <dqfext@gmail.com>
---
Reposting as non-RFC

 drivers/net/dsa/mt7530.c |  9 ++-------
 drivers/net/dsa/mt7530.h |  1 +
 net/dsa/tag_mtk.c        | 15 +++++++++++++++
 3 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 5c444cd722bd..34e4aadfa705 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -628,11 +628,8 @@ mt7530_cpu_port_enable(struct mt7530_priv *priv,
 	mt7530_write(priv, MT7530_PVC_P(port),
 		     PORT_SPEC_TAG);
 
-	/* Disable auto learning on the cpu port */
-	mt7530_set(priv, MT7530_PSC_P(port), SA_DIS);
-
-	/* Unknown unicast frame fordwarding to the cpu port */
-	mt7530_set(priv, MT7530_MFC, UNU_FFP(BIT(port)));
+	/* Unknown multicast frame forwarding to the cpu port */
+	mt7530_rmw(priv, MT7530_MFC, UNM_FFP_MASK, UNM_FFP(BIT(port)));
 
 	/* Set CPU port number */
 	if (priv->id == ID_MT7621)
@@ -1294,8 +1291,6 @@ mt7530_setup(struct dsa_switch *ds)
 	/* Enable and reset MIB counters */
 	mt7530_mib_reset(ds);
 
-	mt7530_clear(priv, MT7530_MFC, UNU_FFP_MASK);
-
 	for (i = 0; i < MT7530_NUM_PORTS; i++) {
 		/* Disable forwarding by default on all ports */
 		mt7530_rmw(priv, MT7530_PCR_P(i), PCR_MATRIX_MASK,
diff --git a/drivers/net/dsa/mt7530.h b/drivers/net/dsa/mt7530.h
index 979bb6374678..82af4d2d406e 100644
--- a/drivers/net/dsa/mt7530.h
+++ b/drivers/net/dsa/mt7530.h
@@ -31,6 +31,7 @@ enum {
 #define MT7530_MFC			0x10
 #define  BC_FFP(x)			(((x) & 0xff) << 24)
 #define  UNM_FFP(x)			(((x) & 0xff) << 16)
+#define  UNM_FFP_MASK			UNM_FFP(~0)
 #define  UNU_FFP(x)			(((x) & 0xff) << 8)
 #define  UNU_FFP_MASK			UNU_FFP(~0)
 #define  CPU_EN				BIT(7)
diff --git a/net/dsa/tag_mtk.c b/net/dsa/tag_mtk.c
index b5705cba8318..d6619edd53e5 100644
--- a/net/dsa/tag_mtk.c
+++ b/net/dsa/tag_mtk.c
@@ -15,6 +15,7 @@
 #define MTK_HDR_XMIT_TAGGED_TPID_8100	1
 #define MTK_HDR_RECV_SOURCE_PORT_MASK	GENMASK(2, 0)
 #define MTK_HDR_XMIT_DP_BIT_MASK	GENMASK(5, 0)
+#define MTK_HDR_XMIT_SA_DIS		BIT(6)
 
 static struct sk_buff *mtk_tag_xmit(struct sk_buff *skb,
 				    struct net_device *dev)
@@ -22,6 +23,9 @@ static struct sk_buff *mtk_tag_xmit(struct sk_buff *skb,
 	struct dsa_port *dp = dsa_slave_to_port(dev);
 	u8 *mtk_tag;
 	bool is_vlan_skb = true;
+	unsigned char *dest = eth_hdr(skb)->h_dest;
+	bool is_multicast_skb = is_multicast_ether_addr(dest) &&
+				!is_broadcast_ether_addr(dest);
 
 	/* Build the special tag after the MAC Source Address. If VLAN header
 	 * is present, it's required that VLAN header and special tag is
@@ -47,6 +51,10 @@ static struct sk_buff *mtk_tag_xmit(struct sk_buff *skb,
 		     MTK_HDR_XMIT_UNTAGGED;
 	mtk_tag[1] = (1 << dp->index) & MTK_HDR_XMIT_DP_BIT_MASK;
 
+	/* Disable SA learning for multicast frames */
+	if (unlikely(is_multicast_skb))
+		mtk_tag[1] |= MTK_HDR_XMIT_SA_DIS;
+
 	/* Tag control information is kept for 802.1Q */
 	if (!is_vlan_skb) {
 		mtk_tag[2] = 0;
@@ -61,6 +69,9 @@ static struct sk_buff *mtk_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 {
 	int port;
 	__be16 *phdr, hdr;
+	unsigned char *dest = eth_hdr(skb)->h_dest;
+	bool is_multicast_skb = is_multicast_ether_addr(dest) &&
+				!is_broadcast_ether_addr(dest);
 
 	if (unlikely(!pskb_may_pull(skb, MTK_HDR_LEN)))
 		return NULL;
@@ -86,6 +97,10 @@ static struct sk_buff *mtk_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 	if (!skb->dev)
 		return NULL;
 
+	/* Only unicast or broadcast frames are offloaded */
+	if (likely(!is_multicast_skb))
+		skb->offload_fwd_mark = 1;
+
 	return skb;
 }
 
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
