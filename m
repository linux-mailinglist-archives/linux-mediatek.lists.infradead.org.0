Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CAD1B8664
	for <lists+linux-mediatek@lfdr.de>; Sat, 25 Apr 2020 14:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tBtttPaXYFksNTxGFem/wia1rhJpc1H/kSX9JBIgoX8=; b=atxmiKfOXEwXVH
	es3kYnFSDOiAfKfrPKCSY4aDEbnuZzoG/c9lR3avZsUHjd++yKQaeZL0CbhAGyqtQIzPyqUZv15mQ
	KUOPyhKatlClHrknQnBecHzVJPQcLqDvyAqJSozXfve22Nl2AspRxtEP5feWJB9akSdmFwUzHa/rJ
	4hji8cp/uSDS79XnnJ5kDFYf2M5waZFgXQ4PbvQhacETruIZvZTSZ+Feajn/AGlKgZcTHRRwOkDOa
	Y6TEae6msUsSQ2hHSZUjjAONbHHYk2ncjWNGIzYBxXn+0GO8XN0yjxMmSwEy5M3vgigRDmWzNQy3c
	xM+QC7VHaOMLaqFOJybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSJVl-00025d-T1; Sat, 25 Apr 2020 12:02:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSJVf-0001rZ-S7
 for linux-mediatek@lists.infradead.org; Sat, 25 Apr 2020 12:02:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id w3so4794015plz.5
 for <linux-mediatek@lists.infradead.org>; Sat, 25 Apr 2020 05:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4fE0KfpiQNg85jhn9LP1+W0AQjfOo+NCYB9L0xFHIy4=;
 b=nZbVCoa0fy4FCeyFDM8SWvQqIrlTcIth55XMQB4jLZOuON4FabuD/990HwFIfgUkR/
 88irSk1VYDJYF0PGJtFyhQFdNS79q1Tg0BmrWYslAM80eHNMFtgn8Epg1QcFYXjCbOhe
 upRe/8D8m7S1dP1dS35VuWFWBi67fVnePCcLPZKri3qxzOfQJgAhRlEgoNbn+17NnsxH
 sKanUW28FmyTIbSMBtH31vds0A/8lwAXXQVqdp+ekHw6C0MdXwgn4Gf3oJrKw417M5zP
 laD5WRQhR5UogSOiHgqkcuADXJNhuwPw49aRD2VRaUGmOQt6JsDGn+xYfgN8jq/BlZo4
 YLLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4fE0KfpiQNg85jhn9LP1+W0AQjfOo+NCYB9L0xFHIy4=;
 b=TqNuFSqS1zk91TZaR4TilNZOe6NIFNlpij8cjG6c5kmC2E4y5FYnivcLHXV/P35qNE
 35FhxrLya6xXjwW0P4pKD9/pq7M2ieyNQLkKV+2qAhZuQDm2hA2fv929tZ56rKeTUobc
 jerbipG5qa3HGmea7xJ23vWWxZEorpl/5AuNEx8ydyhG3dRHclCKlnjExKp6EZ13ohsR
 qxvFveBGzyUAU9eWzGAcEfJbIVGb0Km2zMsV8buGea62nvV8P294jlA1sgo57x2iTNu4
 k+Y7iUmVVB2qN9sFxAHvtodGDgAC59ixL5tmRvvVJuQLCCGoB45PVWInKufotvvcpX7x
 1ndA==
X-Gm-Message-State: AGi0PuaqjTkjeqMCSLhOjdve8FE7zW7MksR5W+dxXRlv+a9o72HJEhwb
 lGu/c6aLH1hAQY6u0q/Uio8=
X-Google-Smtp-Source: APiQypJhkR5pEjauBg7JwaRHCYIuaqgO9HwaCukWMZtxd4VNL6AL4aeupiTpeElh7efJF7RmZzVRog==
X-Received: by 2002:a17:90a:a0c:: with SMTP id
 o12mr12466652pjo.29.1587816134664; 
 Sat, 25 Apr 2020 05:02:14 -0700 (PDT)
Received: from P65xSA.lan ([2402:f000:1:1501::7416:3057])
 by smtp.gmail.com with ESMTPSA id nm22sm6878016pjb.38.2020.04.25.05.02.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 05:02:14 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: netdev@vger.kernel.org
Subject: [RFC PATCH net-next] net: dsa: mt7530: fix roaming from DSA user ports
Date: Sat, 25 Apr 2020 20:02:07 +0800
Message-Id: <20200425120207.5400-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_050215_938604_5B5F4CFE 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dqfext[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
2.26.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
