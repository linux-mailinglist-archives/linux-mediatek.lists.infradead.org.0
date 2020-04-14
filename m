Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EDE1A73C0
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 08:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=khOWoaLWtn8/vaVEvxn/m3mdj8+f7lcR1N32Ha/XXCg=; b=GaxJaS8QagDRCP
	UjGC5MqI04xaVBjf3OqvoLhLuOaNhcyoGVtnRhRZiVTsV5Wqmz7yPsnYiY4ITIHmuiBlS8+MVPy02
	AxUqrhUBAi4FjU1c0y4+v117zHV8kfDTa7MNlSyssNXV9HzL6xfPxGHCT/qwytfwe9YAR0ziHS8EB
	2gE4qost67aenJLRwRn/k7EZcP+1JCAjE9mypTOooq+WYz7zjJPlHLMvmn63Dq6kYMpiJ6o9YssXh
	AZlFdASlfYVH7Hxuev2BOlcE6HrmEx3L989iNsMVHfy9KMD8BuZymjpw0E0zl9kWZK0+rOwdj/vo0
	L5vbnU/9LWn1z4JEe11g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOF9a-0004kZ-MP; Tue, 14 Apr 2020 06:34:38 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOF9W-0004kE-Rg
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 06:34:36 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e16so4568830pjp.1
 for <linux-mediatek@lists.infradead.org>; Mon, 13 Apr 2020 23:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lCgKt0xDcuY135+09OPgT/EcdOM3zQzZDMMz+79/NNk=;
 b=GugkgpIEKM7VxKSpkpL0XWrFfsRSLr9R6sAT3M4Ho0by3ZOIaiRFiQwgmJxfblDGDt
 AmSot/Bf8QkjceqzqEiSBrmiB+0nJT5vzwQPFcPwYWiRa51uA8v8zvHyVW7+NQ+loWtd
 RcoNSCUvS1o+p6lyezjhC9jrPoglJbG3KaAsUjpvvRQajFiz0Zuoe2Yk65uWLlED1TyH
 ktBPQHGAzulACRYuF7ATq3FTHTEp4t3EkLe28BQn6+J8ZOg8UwJN+MVuPm1aa2OWOsUn
 T+IVtxqlq/OyDn6ZP7DoQTF3v70G+QcI82zJhdrwWeWwKTCMaUHzqE8PL8KlZ2g+mhJR
 hjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lCgKt0xDcuY135+09OPgT/EcdOM3zQzZDMMz+79/NNk=;
 b=c02ZJxUhdgUhX8VA/2uzZp7AGuMkZopUt4XJjVuXqKgHLrEzxrZgjCgsOouyHYO2VZ
 NtrsFYBJMY6eAPpoCxl7KEf2lDp0A+ZZGEHn4JHLKEJI5HA0l6EEQ0MdYfpgMSiu1XSd
 OdFNJN5CRL/IzE6zqrgtH6XmZFQ8Dbo0Fij3Jy2OXEzsno6iVKwIaQvmIJyAYk1hZ/YC
 p0Ij8Ar+glX1v/FhzJbfmo0ZIFEcaEm0opzwAZM5W8377zQqFQGFfvS/8Ik4ORXZIka5
 w1A3QTRUoHhO6K+Vde980Ix7M/ono0jsi1tZqU8lxYzNZ1WmAZ3GuwthZ8wCtO9XmvyY
 ariA==
X-Gm-Message-State: AGi0PuYk9UK/jbO3N4W0G52Jsx7dxVyf1Z8/fSyeZNZD7lM0IIII60Gz
 WHCT6pBzl5DSYVOaOmPQnRo=
X-Google-Smtp-Source: APiQypI7bn1wRxKkG/AA79N2PtMpYLo3Khjme9hkksmNcibqEQKSlAuUAYStAhVxm92yzcMwNgmVAQ==
X-Received: by 2002:a17:90a:a111:: with SMTP id
 s17mr27456565pjp.129.1586846073031; 
 Mon, 13 Apr 2020 23:34:33 -0700 (PDT)
Received: from example.com ([2408:84f3:1457:b125:9ead:97ff:fed1:5059])
 by smtp.gmail.com with ESMTPSA id i190sm8400774pfc.119.2020.04.13.23.34.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 23:34:32 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2] net: dsa: mt7530: fix tagged frames pass-through
 in VLAN-unaware mode
Date: Tue, 14 Apr 2020 14:34:08 +0800
Message-Id: <20200414063408.4026-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_233434_923564_FC774633 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dqfext[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Paul Fertser <fercerpav@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, riddlariddla@hotmail.com,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stijn Segers <foss@volatilesystems.org>,
 CHEN Minqiang <ptpt52@gmail.com>, John Crispin <john@phrozen.org>,
 Szabolcs Hubai <szab.hu@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In VLAN-unaware mode, the Egress Tag (EG_TAG) field in Port VLAN
Control register must be set to Consistent to let tagged frames pass
through as is, otherwise their tags will be stripped.

Fixes: 83163f7dca56 ("net: dsa: mediatek: add VLAN support for MT7530")
Signed-off-by: DENG Qingfang <dqfext@gmail.com>
---
Changes since v1:
- Fix build error

---
 drivers/net/dsa/mt7530.c | 18 ++++++++++++------
 drivers/net/dsa/mt7530.h |  7 +++++++
 2 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 2d0d91db0ddb..951a65ac7f73 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -846,8 +846,9 @@ mt7530_port_set_vlan_unaware(struct dsa_switch *ds, int port)
 	 */
 	mt7530_rmw(priv, MT7530_PCR_P(port), PCR_PORT_VLAN_MASK,
 		   MT7530_PORT_MATRIX_MODE);
-	mt7530_rmw(priv, MT7530_PVC_P(port), VLAN_ATTR_MASK,
-		   VLAN_ATTR(MT7530_VLAN_TRANSPARENT));
+	mt7530_rmw(priv, MT7530_PVC_P(port), VLAN_ATTR_MASK | PVC_EG_TAG_MASK,
+		   VLAN_ATTR(MT7530_VLAN_TRANSPARENT) |
+		   PVC_EG_TAG(MT7530_VLAN_EG_CONSISTENT));
 
 	for (i = 0; i < MT7530_NUM_PORTS; i++) {
 		if (dsa_is_user_port(ds, i) &&
@@ -863,8 +864,8 @@ mt7530_port_set_vlan_unaware(struct dsa_switch *ds, int port)
 	if (all_user_ports_removed) {
 		mt7530_write(priv, MT7530_PCR_P(MT7530_CPU_PORT),
 			     PCR_MATRIX(dsa_user_ports(priv->ds)));
-		mt7530_write(priv, MT7530_PVC_P(MT7530_CPU_PORT),
-			     PORT_SPEC_TAG);
+		mt7530_write(priv, MT7530_PVC_P(MT7530_CPU_PORT), PORT_SPEC_TAG
+			     | PVC_EG_TAG(MT7530_VLAN_EG_CONSISTENT));
 	}
 }
 
@@ -890,8 +891,9 @@ mt7530_port_set_vlan_aware(struct dsa_switch *ds, int port)
 	/* Set the port as a user port which is to be able to recognize VID
 	 * from incoming packets before fetching entry within the VLAN table.
 	 */
-	mt7530_rmw(priv, MT7530_PVC_P(port), VLAN_ATTR_MASK,
-		   VLAN_ATTR(MT7530_VLAN_USER));
+	mt7530_rmw(priv, MT7530_PVC_P(port), VLAN_ATTR_MASK | PVC_EG_TAG_MASK,
+		   VLAN_ATTR(MT7530_VLAN_USER) |
+		   PVC_EG_TAG(MT7530_VLAN_EG_DISABLED));
 }
 
 static void
@@ -1380,6 +1382,10 @@ mt7530_setup(struct dsa_switch *ds)
 			mt7530_cpu_port_enable(priv, i);
 		else
 			mt7530_port_disable(ds, i);
+
+		/* Enable consistent egress tag */
+		mt7530_rmw(priv, MT7530_PVC_P(i), PVC_EG_TAG_MASK,
+			   PVC_EG_TAG(MT7530_VLAN_EG_CONSISTENT));
 	}
 
 	/* Setup port 5 */
diff --git a/drivers/net/dsa/mt7530.h b/drivers/net/dsa/mt7530.h
index ef9b52f3152b..2528232d3325 100644
--- a/drivers/net/dsa/mt7530.h
+++ b/drivers/net/dsa/mt7530.h
@@ -172,9 +172,16 @@ enum mt7530_port_mode {
 /* Register for port vlan control */
 #define MT7530_PVC_P(x)			(0x2010 + ((x) * 0x100))
 #define  PORT_SPEC_TAG			BIT(5)
+#define  PVC_EG_TAG(x)			(((x) & 0x7) << 8)
+#define  PVC_EG_TAG_MASK		PVC_EG_TAG(7)
 #define  VLAN_ATTR(x)			(((x) & 0x3) << 6)
 #define  VLAN_ATTR_MASK			VLAN_ATTR(3)
 
+enum mt7530_vlan_port_eg_tag {
+	MT7530_VLAN_EG_DISABLED = 0,
+	MT7530_VLAN_EG_CONSISTENT = 1,
+};
+
 enum mt7530_vlan_port_attr {
 	MT7530_VLAN_USER = 0,
 	MT7530_VLAN_TRANSPARENT = 3,
-- 
2.26.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
