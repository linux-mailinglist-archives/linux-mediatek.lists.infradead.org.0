Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F42212D10C
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Dec 2019 15:44:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4/3AkiBWumnEbwZcmpLj/linooB0ziUrrCHDkdBvg4=; b=MfNVyJl0crA8WN
	5LF59f4/77Z635ub/cKnKICz3muXGh3/mA/JaVak9ApniZeHzUmTEHu1fSKbCYply1qWZLALwjIaR
	kJPztwczOI9vSTwkeTPl9O0CzVrSaJ72Hku4IWDtNPvX8gA1XFoNYXOSUQRFFv8YWnXXklxUqZ5FZ
	13ctJRoMd0JJ9dqrDlDILVg0UxXAeMCnkSVdkK7vLuyXLI8xCf/YaxmzLoJDhlKWizebwRaNT08cD
	yUGYy0cHoa9falNpOvZvkT7Js0/6lN3zr7airQzt3/O9xg/6/PNuUQ4Z6iNAT8RKAATkM3hMpfM94
	mL/joKAHpoMg4AVrOqQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwHW-0005Mw-JL; Mon, 30 Dec 2019 14:44:30 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFY-0003w2-Ko; Mon, 30 Dec 2019 14:42:31 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id C199F1B2199E; Mon, 30 Dec 2019 17:32:57 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru C199F1B2199E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716377; bh=oIQhxpQSU+of0GS4enDiLZVDRRd/vUUBvg7EXVnvZnE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=a4b0eZmu5mab4I8iqprKXq5h0rJ/gLc/GnAzwQywCZXr1Xn2xW+y2N1lDhn0RyRDP
 Xli11vUEXMFk9GPxGejxvvXsM+K/iuylazAuLfropKpvK3FPlydE8tLg8iHrhD1c67
 WDv80KecztONQM+ifd7jndk2n/kae8EOmwaKiQus=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id AD2C11B20206;
 Mon, 30 Dec 2019 17:31:43 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru AD2C11B20206
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id BE9641B229CB;
 Mon, 30 Dec 2019 17:31:41 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:41 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 20/20] net: core: add (unlikely) DSA support in
 napi_gro_frags()
Date: Mon, 30 Dec 2019 17:30:28 +0300
Message-Id: <20191230143028.27313-21-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064229_041870_751F8D93 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [196.196.203.126 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexander Lobakin <alobakin@dlink.ru>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Pirko <jiri@mellanox.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Make napi_gro_frags() available for DSA-enabled device drivers by adding
the same condition for them as the one in eth_type_trans().

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/core/dev.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index f1b8afcfbc0f..923b930a4506 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -142,6 +142,7 @@
 #include <linux/net_namespace.h>
 #include <linux/indirect_call_wrapper.h>
 #include <net/devlink.h>
+#include <net/dsa.h>
 
 #include "net-sysfs.h"
 
@@ -5951,6 +5952,7 @@ static gro_result_t napi_frags_finish(struct napi_struct *napi,
  */
 static struct sk_buff *napi_frags_skb(struct napi_struct *napi)
 {
+	struct net_device *dev = napi->dev;
 	struct sk_buff *skb = napi->skb;
 	const struct ethhdr *eth;
 	unsigned int hlen = sizeof(*eth);
@@ -5964,7 +5966,7 @@ static struct sk_buff *napi_frags_skb(struct napi_struct *napi)
 		eth = skb_gro_header_slow(skb, hlen, 0);
 		if (unlikely(!eth)) {
 			net_warn_ratelimited("%s: dropping impossible skb from %s\n",
-					     __func__, napi->dev->name);
+					     __func__, dev->name);
 			napi_reuse_skb(napi, skb);
 			return NULL;
 		}
@@ -5978,10 +5980,13 @@ static struct sk_buff *napi_frags_skb(struct napi_struct *napi)
 
 	/*
 	 * This works because the only protocols we care about don't require
-	 * special handling.
+	 * special handling... except for DSA.
 	 * We'll fix it up properly in napi_frags_finish()
 	 */
-	skb->protocol = eth->h_proto;
+	if (unlikely(netdev_uses_dsa(dev)) && dsa_can_decode(skb, dev))
+		skb->protocol = htons(ETH_P_XDSA);
+	else
+		skb->protocol = eth->h_proto;
 
 	return skb;
 }
-- 
2.24.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
