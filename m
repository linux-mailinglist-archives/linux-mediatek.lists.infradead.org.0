Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0D315CC35
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 21:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OR61ChCkRXHLrALfA6hcS6crh6S9k7CQ7EHF1YQ+YaU=; b=IBZb2nIrvx2392
	swyRslhllR5o89K9/ZDPB8JszcqpXulKjF1DPERdWgFpBENwLCuLijsOKqVTF2B3yWNaomScY8jNE
	OAqcTTlfonSJQyw2Vs7ic4g8GSXfmdFXdaWpybbixbhnGtStuOCYw6oALe67BfXPC0ftaBMaD/UA/
	sxVG+cYJflezxkvffs+WsCT20krMDUbxENUfZPc9T7i2dPPy60/G43Ib1Sq/bz7CELH5VhoIol2Z7
	yOORye2azGtDrRhMSJmB977ngdnagZuunFRCYVBsV/DKp7O1na+KYZ16yw3o5qMxui7jE8/1addax
	c3JSSLccLIeMN+Ppo3Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2L0R-0002Kf-9f; Thu, 13 Feb 2020 20:22:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2KyQ-00009n-V3; Thu, 13 Feb 2020 20:20:36 +0000
Received: from ziggy.cz (unknown [37.223.145.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FAE6246B7;
 Thu, 13 Feb 2020 20:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581625234;
 bh=XcEAV579vpbhrGM7L1sLKnlD3ZwYRAAFqPyNBSpB5xc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aF+G69WLp/bU/bU3mAke9zS47x1B61phTNiilup28yjTznPqtNMNZsUKTEojghrEv
 UDhVUoHff4lZCUyXZ1sMQRtW+DuPlCp17AskgWvvuAcX1QlqU1U7eCaRsk2OL8K7fq
 5B9fX8ZndgcXDROq1g4SpccnqVBlas6ENti0jb8I=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [PATCH v7 06/13] media: mtk-mdp: Check return value of of_clk_get
Date: Thu, 13 Feb 2020 21:19:46 +0100
Message-Id: <20200213201953.15268-7-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213201953.15268-1-matthias.bgg@kernel.org>
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_122035_086817_6BED90FD 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, drinkcat@chromium.org,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Houlong Wei <houlong.wei@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, wens@csie.org,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 rdunlap@infradead.org, matthias.bgg@kernel.org,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, hsinyi@chromium.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Check the return value of of_clk_get and print an error
message if not EPROBE_DEFER.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>

---

Changes in v7:
- fix check of return value of of_clk_get
- fix identation

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index 0c4788af78dd..58abfbdfb82d 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -110,6 +110,12 @@ int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
 
 	for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
 		comp->clk[i] = of_clk_get(node, i);
+		if (IS_ERR(comp->clk[i])) {
+			if (PTR_ERR(comp->clk[i]) != -EPROBE_DEFER)
+				dev_err(dev, "Failed to get clock\n");
+
+			return PTR_ERR(comp->clk[i]);
+		}
 
 		/* Only RDMA needs two clocks */
 		if (comp->type != MTK_MDP_RDMA)
-- 
2.24.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
