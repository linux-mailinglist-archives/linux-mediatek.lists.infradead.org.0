Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527FCD9B42
	for <lists+linux-mediatek@lfdr.de>; Wed, 16 Oct 2019 22:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPnyRFaO5NP5aWC4Dm5M+ejWm5H78mkmJYpjp97LTQw=; b=IbL49yufxqaUcC
	CxOj8fcGFcjWwxE9XEb1XHo4Xg7R/S4Gdj6+UIz6YCSYKz/7SdER5wYbfyKuGko4S601A2oSPJsLJ
	GnVpNy+GlFd/Z5tiQ6ZLkrpBs1H8ZNS3VYXN1B4YmyMncM6CrywLJFQHs68LQ52wE4+7moEtJNGS+
	JWC57m3Y16s31Yg42eZ+I3//6pAWdxmmVVXuSJ+FVL/FnWgTh+1Z1qxq5bkkztA4aw9cSxF/5zHZM
	zV7ovxRUBcW5BVU+8+dmJQGVF/Ob5OO6pnyyiHEEHr57M+yzKvsFxbYaSs5JUAgnc7eZ//B69Sh5N
	sIon5FUnrWZWoM6NVVpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpgn-0000Sl-LG; Wed, 16 Oct 2019 20:14:33 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZN-0001qe-UT; Wed, 16 Oct 2019 20:06:56 +0000
Received: by mail-oi1-f196.google.com with SMTP id i16so130021oie.4;
 Wed, 16 Oct 2019 13:06:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A4I4vYKlrRjeCcvZ3gdAUf5OIh4K24Pgv1HRMaUxQSM=;
 b=hMXFh0+MAk7dGtoFmjIY09stAMv0pFxcJl0znYAb9uJ/MLRsGdR0pp5JF/Xgfavmj+
 2+6vlC4iNb4EA14vk+eTMCc/vRhEpqUy7XfnSxxJlitWsgl8/mTyLmA8EYiZgPLYzg+A
 KZsDrO19MRlfk8l2lhIy4O24EG1sz0Yti+NyejJKzQkkZNNVnLTfhCLkM12Utk3QPkJR
 iCfd7T+uQXAniuwNa0f3P0jt5nLLErgeKaSDF6vW+03cNpJ4rPlaJblgnRXbD/EOtBuR
 xuZtZxu5DnqUr42Qwqpz0KceCfQ9fQFBbwKuoq7fen5dMoQ8KeqS2c6AE6plhXvqFJUK
 yogQ==
X-Gm-Message-State: APjAAAVutIBzYKja1XSYqTep137LTuxwimsXjpHt7jEeHD33PUYQoMuM
 ecP3ocvDzv+9WlDHhxm5zw==
X-Google-Smtp-Source: APXvYqy2RgxqIowsn3RilHDMVL8ZYUZqVhZ4FNbcwDaYFpFY5yEQQz1OcvvwTVzq3lVosqWKYYObvw==
X-Received: by 2002:aca:b9d7:: with SMTP id j206mr110297oif.112.1571256412390; 
 Wed, 16 Oct 2019 13:06:52 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.06.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:06:51 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 01/25] resource: Add a resource_list_get_entry_of_type
 helper
Date: Wed, 16 Oct 2019 15:06:23 -0500
Message-Id: <20191016200647.32050-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130654_045438_D9FA2BD7 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

A common pattern is looping over a resource_list just to get a matching
entry with a specific type. Add resource_list_get_entry_of_type() helper
which implements this.

Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch

 include/linux/resource_ext.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/linux/resource_ext.h b/include/linux/resource_ext.h
index 06da59b23b79..9f52183fab8b 100644
--- a/include/linux/resource_ext.h
+++ b/include/linux/resource_ext.h
@@ -66,4 +66,16 @@ resource_list_destroy_entry(struct resource_entry *entry)
 #define resource_list_for_each_entry_safe(entry, tmp, list)	\
 	list_for_each_entry_safe((entry), (tmp), (list), node)

+static inline struct resource_entry *resource_list_get_entry_of_type(struct list_head *list,
+							      unsigned long type)
+{
+	struct resource_entry *entry;
+
+	resource_list_for_each_entry(entry, list) {
+		if (resource_type(entry->res) == type)
+			return entry;
+	}
+	return NULL;
+}
+
 #endif /* _LINUX_RESOURCE_EXT_H */
--
2.20.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
