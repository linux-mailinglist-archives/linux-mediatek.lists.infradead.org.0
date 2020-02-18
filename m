Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B39161F06
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Feb 2020 03:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yGjq5ijwCYGdIaQL/+kEKIQqgWzX9QaXcp1Cc8EVIz0=; b=mXG1W5bkRHtHWX
	w2LufEPITqa1rENo5rFqFgyKksJi5qsuW8YnwbTMDU/CMDorCspO5thwebHXhsuYtlX7DKdUPRtSo
	J+CvibjW4VG8/0/qJTff5D1+cXpMlAyJSeHEPjw2VrmxTopyQme4OnNs1vLyRA8XRG8rhZ5JqH4lK
	0h0eM527dXSZchkF1m33CXoXIKAOstnjeTpKRluXExbAdcYAgVLY0VlzpMmOnFaUocJz4mmchEijg
	lq1vER4izjFRrQ6xYHLWbfSSsSQHNI7ltQicHi7JrH8toRRpwu7LMAt2L5cQvXHspWWWPvVksr1Lt
	Tzp9xmMCIrsQ9ng3rp8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3skm-0002VL-NG; Tue, 18 Feb 2020 02:36:52 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3skk-0002U6-1u
 for linux-mediatek@lists.infradead.org; Tue, 18 Feb 2020 02:36:51 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A8648E11E7F6A8CFFD36;
 Tue, 18 Feb 2020 10:36:36 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Tue, 18 Feb 2020
 10:36:30 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <sean.wang@kernel.org>, <linus.walleij@linaro.org>,
 <matthias.bgg@gmail.com>, <light.hsieh@mediatek.com>
Subject: [PATCH -next] pinctrl: mediatek: remove set but not used variable 'e'
Date: Tue, 18 Feb 2020 10:36:25 +0800
Message-ID: <20200218023625.14324-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_183650_260255_1012CCFE 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@listd.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c: In function mtk_hw_pin_field_lookup:
drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c:70:39: warning:
 variable e set but not used [-Wunused-but-set-variable]

Since commit 3de7deefce69 ("pinctrl: mediatek: Check gpio pin
number and use binary search in mtk_hw_pin_field_lookup()"),
it is not used any more, so remove it, also remove redundant
assignment to variable c, it will be assigned a new value later
before used.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 1da9425..d3169a8 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -67,7 +67,7 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
 				   const struct mtk_pin_desc *desc,
 				   int field, struct mtk_pin_field *pfd)
 {
-	const struct mtk_pin_field_calc *c, *e;
+	const struct mtk_pin_field_calc *c;
 	const struct mtk_pin_reg_calc *rc;
 	int start = 0, end, check;
 	bool found = false;
@@ -82,8 +82,6 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
 	}
 
 	end = rc->nranges - 1;
-	c = rc->range;
-	e = c + rc->nranges;
 
 	while (start <= end) {
 		check = (start + end) >> 1;
-- 
2.7.4



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
