Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956071C4CE2
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 06:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dl8fUM4/uSPTpSxo7XL9FPvgu50e4oaOrSiaaFeP3P8=; b=gFAUz2htf+zlto
	niBnbsz/W5Bt0XhKDs93VQIl2HAjuc5Tmzbd8vd8y6Bu5+nkkJy2Gn8SYgF2aip3UnJyBMn3CsBg2
	9HBTLTrHkiCOuf5yCUZwcsspOFhzIc3IZ8bGGL+6kl6C7lDFE2YM5mtRRDb4guQH4umY1CF70jL5G
	SOOAngzfZZniIAtuwmo1e25wlBQbKntwc+cTJx2QUuBcFMynZy5AvWmbBHQrygAr9oTaKo5SOxSds
	h07/XT+iL1KgfBi4tik3yAE7DyATayNO6uacPKNG8epjfRtekNeNB99YqGVD035b/v6QrSf2eBnw5
	oBxIpVg+VITrmfsW0vlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVoms-0004SY-GC; Tue, 05 May 2020 04:02:30 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVomB-0003mM-Mm
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 04:01:49 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t40so435169pjb.3
 for <linux-mediatek@lists.infradead.org>; Mon, 04 May 2020 21:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bpjBtLncAz/kkdJRFvfwLGKHTuYx2q9S+ZoV2LMI0sk=;
 b=VbujnOEQMZDOvKD6JgULstaRPp5TbWOJsPdLxFzzgVi40j4j8tuBRSRFvpvzoBkYSf
 lO0M+ZVsf9myuBszhMt2QSGHGtU8kRpUIR3mj4IohA7wnTGIa+SgSww71z3yb4RyOP7h
 GcXDBs1AcsM+5xTCfeK0etclI1e+Xtsxuhr5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bpjBtLncAz/kkdJRFvfwLGKHTuYx2q9S+ZoV2LMI0sk=;
 b=QDizmpUO6Q1w0/bi2p1fC+w13dJl1evazdNVnP9KTh17q7rSmPd02Q/n1x7c7fT+0B
 m5RS2k2Rbz+RxNpDrLhhY891jdWZe6S8v8IyT4F1N2zKkMHq0tkuo8jS9myDbuxAqYpX
 5kVYGAtkGUB/Ig5HTKGjX2jO2AX83UEqZ2cE2YoGRF++KHMfjw8AD9e4TTvo5aYk8omC
 x4FVcicmESPXMw77WuJwUovVRRxhKxFPYbZbyKFl95oYW8uETbaX7F1pQjvAi4WnQpQt
 L+wXk4mESwNwePQQRWioEnCyXg+g4icZOP9t+x5nwvbfohyuSSPJOd4UcDX+DyBofTdA
 yj6g==
X-Gm-Message-State: AGi0PuZVBYYa/GA6HmDIyM7CXTHQ+CPfLILREAN9YXd4llDrTEIF6V2O
 wkTPjdYobR97mbu7xpJnPQmtQg==
X-Google-Smtp-Source: APiQypIIT08h1AWzqb1iRTGb9ruvQSlZZOU8/i1YaxP5EHPA9oPU9ul/hj4nqNSO5G0FMS7NhYGjDA==
X-Received: by 2002:a17:90a:25cb:: with SMTP id
 k69mr514820pje.93.1588651307182; 
 Mon, 04 May 2020 21:01:47 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id x132sm588010pfc.57.2020.05.04.21.01.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:01:46 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 5/5] [media] mtk-mdp: Remove mtk_mdp_comp.id and supporting
 functionality
Date: Tue,  5 May 2020 14:00:48 +1000
Message-Id: <20200505125042.v1.5.I1c85bddc262913b8572d892dd6bf9bc03fbe0ec7@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200505040048.132493-1-eizan@google.com>
References: <20200505040048.132493-1-eizan@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210147_759178_56E9EF74 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@google.com>,
 eizan@chromium.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Since components are registered in a list, the numeric component id that
specified a location in an array is not necessary.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@google.com>
---

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 60 +++----------------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 19 +-----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 10 +---
 3 files changed, 11 insertions(+), 78 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index d4afed1363d5..362fff924aef 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -14,46 +14,6 @@
 #include "mtk_mdp_comp.h"
 
 
-static const char * const mtk_mdp_comp_stem[MTK_MDP_COMP_TYPE_MAX] = {
-	"mdp_rdma",
-	"mdp_rsz",
-	"mdp_wdma",
-	"mdp_wrot",
-};
-
-struct mtk_mdp_comp_match {
-	enum mtk_mdp_comp_type type;
-	int alias_id;
-};
-
-static const struct mtk_mdp_comp_match mtk_mdp_matches[MTK_MDP_COMP_ID_MAX] = {
-	{ MTK_MDP_RDMA,	0 },
-	{ MTK_MDP_RDMA,	1 },
-	{ MTK_MDP_RSZ,	0 },
-	{ MTK_MDP_RSZ,	1 },
-	{ MTK_MDP_RSZ,	2 },
-	{ MTK_MDP_WDMA,	0 },
-	{ MTK_MDP_WROT,	0 },
-	{ MTK_MDP_WROT,	1 },
-};
-
-int mtk_mdp_comp_get_id(struct device *dev, struct device_node *node,
-			enum mtk_mdp_comp_type comp_type)
-{
-	int id = of_alias_get_id(node, mtk_mdp_comp_stem[comp_type]);
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(mtk_mdp_matches); i++) {
-		if (comp_type == mtk_mdp_matches[i].type &&
-		    id == mtk_mdp_matches[i].alias_id)
-			return i;
-	}
-
-	dev_err(dev, "Failed to get id. type: %d, id: %d\n", comp_type, id);
-
-	return -EINVAL;
-}
-
 void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
 {
 	int i, err;
@@ -62,8 +22,8 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
 		err = mtk_smi_larb_get(comp->larb_dev);
 		if (err)
 			dev_err(dev,
-				"failed to get larb, err %d. type:%d id:%d\n",
-				err, comp->type, comp->id);
+				"failed to get larb, err %d. type:%d\n",
+				err, comp->type);
 	}
 
 	for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
@@ -72,8 +32,8 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
 		err = clk_prepare_enable(comp->clk[i]);
 		if (err)
 			dev_err(dev,
-			"failed to enable clock, err %d. type:%d id:%d i:%d\n",
-				err, comp->type, comp->id, i);
+			"failed to enable clock, err %d. type:%d i:%d\n",
+				err, comp->type, i);
 	}
 }
 
@@ -92,21 +52,15 @@ void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp)
 }
 
 int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
-		      struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id)
+		      struct mtk_mdp_comp *comp,
+		      enum mtk_mdp_comp_type comp_type)
 {
 	struct device_node *larb_node;
 	struct platform_device *larb_pdev;
 	int i;
 
-	if (comp_id < 0 || comp_id >= MTK_MDP_COMP_ID_MAX) {
-		dev_err(dev, "Invalid comp_id %d\n", comp_id);
-		return -EINVAL;
-	}
-
-	INIT_LIST_HEAD(&comp->node);
 	comp->dev_node = of_node_get(node);
-	comp->id = comp_id;
-	comp->type = mtk_mdp_matches[comp_id].type;
+	comp->type = comp_type;
 
 	for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
 		comp->clk[i] = of_clk_get(node, i);
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
index 1f745891c6c3..1bf0242cce46 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
@@ -22,18 +22,6 @@ enum mtk_mdp_comp_type {
 	MTK_MDP_COMP_TYPE_MAX,
 };
 
-enum mtk_mdp_comp_id {
-	MTK_MDP_COMP_RDMA0,
-	MTK_MDP_COMP_RDMA1,
-	MTK_MDP_COMP_RSZ0,
-	MTK_MDP_COMP_RSZ1,
-	MTK_MDP_COMP_RSZ2,
-	MTK_MDP_COMP_WDMA,
-	MTK_MDP_COMP_WROT0,
-	MTK_MDP_COMP_WROT1,
-	MTK_MDP_COMP_ID_MAX,
-};
-
 /**
  * struct mtk_mdp_comp - the MDP's function component data
  * @node:	list node to track sibing MDP components
@@ -41,7 +29,6 @@ enum mtk_mdp_comp_id {
  * @clk:	clocks required for component
  * @larb_dev:	SMI device required for component
  * @type:	component type
- * @id:		component ID
  */
 struct mtk_mdp_comp {
 	struct list_head	node;
@@ -49,14 +36,12 @@ struct mtk_mdp_comp {
 	struct clk		*clk[2];
 	struct device		*larb_dev;
 	enum mtk_mdp_comp_type	type;
-	enum mtk_mdp_comp_id	id;
 };
 
 int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
-		      struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id);
+		      struct mtk_mdp_comp *comp,
+		      enum mtk_mdp_comp_type comp_type);
 void mtk_mdp_comp_deinit(struct device *dev, struct mtk_mdp_comp *comp);
-int mtk_mdp_comp_get_id(struct device *dev, struct device_node *node,
-			enum mtk_mdp_comp_type comp_type);
 void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp);
 void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp);
 
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index e6e702d9cb69..b1227c99569a 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -137,7 +137,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 	for_each_child_of_node(parent, node) {
 		const struct of_device_id *of_id;
 		enum mtk_mdp_comp_type comp_type;
-		int comp_id;
 
 		of_id = of_match_node(mtk_mdp_comp_dt_ids, node);
 		if (!of_id)
@@ -150,12 +149,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 		}
 
 		comp_type = (enum mtk_mdp_comp_type)of_id->data;
-		comp_id = mtk_mdp_comp_get_id(dev, node, comp_type);
-		if (comp_id < 0) {
-			dev_warn(dev, "Skipping unknown component %pOF\n",
-				 node);
-			continue;
-		}
+
 
 		comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
 		if (!comp) {
@@ -164,7 +158,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 			goto err_comp;
 		}
 
-		ret = mtk_mdp_comp_init(dev, node, comp, comp_id);
+		ret = mtk_mdp_comp_init(dev, node, comp, comp_type);
 		if (ret) {
 			of_node_put(node);
 			goto err_comp;
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
