Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1139ABE66A
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Sep 2019 22:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7qh1IgIdF+Al9a/LZwVg33jHU9aZ6lz/fa2MO5LTOSA=; b=Kua6oDtXsGEu/O
	wbe4iQ84+PJtEFnXJT3pFkMwOS5xZ1UffrRYHV9qF845iHnRxaLLX8iQ3eJdX2F4lN9KQyQ0Wpqm4
	bkoTDSqNi8S7lcxOiAA3aMvj+HO//NVzCNotx13RUF/g7Seh9luWNqryp5qZ89/kKKcLwE97zv03M
	nzj9GzCVx6xGP6IeZd0F9vdCvLjP4YBG7vZh0XtbxpOdFQMlfD0ZufGrYKN7aXPSRYatTLwzwvTZA
	lYPIbuO4dRHLsSrDzIz6c5Siie0IUJCKhyZ8pFpCqU9elghcvbj4CmslpfnDNBSd0VwKECDGiwQi2
	7esrskqScOzFqqywHh8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDDwZ-0003XL-QT; Wed, 25 Sep 2019 20:31:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDDwV-0003WE-Q5
 for linux-mediatek@lists.infradead.org; Wed, 25 Sep 2019 20:31:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id q17so8420459wrx.10
 for <linux-mediatek@lists.infradead.org>; Wed, 25 Sep 2019 13:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AcBsCzwhp5Ecgxfu1Yf/yNSTuRVO8fFdckSjieoTLBs=;
 b=dOzuI9mJG7MNkBkGgMGYhShhE5duhtiVQDyWLneLxX5wD/HCWf9T/PGCnLnPzC7wtc
 ysS3Th4+kQaByGMbqsOJTgU9iown1CZdT89pHVI0AwdYL8iFDKcrSGBjpJLG5UVdC/Z5
 eFEL4LYNjIxiH8xHZSo6ggGvIjxXX0eE8hVW8ghYYZYge090LkWEtqou4uIwMC+Q6C7K
 BmI6qzs0PsJPxUaEiJH3kQJ+Rut1XEYojN4XokuuEIzUqBoZdypscGa3T0t7AJulGOCi
 pQeAI/Uc1o44hsSpr1OWt2THVPdcK3Q0ilf9Qd1CykPt2J7mq2nyU7AkflhRneuODZeh
 d2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AcBsCzwhp5Ecgxfu1Yf/yNSTuRVO8fFdckSjieoTLBs=;
 b=OeuaUIDifHCbGCF+IRbE356D+VlELI5Jpbto7JtqlSDztBUEkvZFgG53nxkHkNyepd
 w+0v3zEfebyDU7r0/BqpKTMzYcgHc2jJi09Tw2g6FL/yGXX3GarLB4zLUVKRwNMP8GB8
 WYbS64hH1wfMX4GIOGtjotDAIAso+8hy/H+7QwhCqu0gp9G28lzk8TW6ffN70j8FH1Ob
 /GhyLeTGDKt8vZvgNhPCph26OrqGqtk/eLx0K9jb6bsBuj3yWhKh14z9z2fnZP9EdQiw
 ELQeUqeb8UaOFqLwhSgQ5KWK556+N8us5D7LXpEr0EvOtsDEEnd+fzRnR2YBuvXVSdId
 t84w==
X-Gm-Message-State: APjAAAVPmPsdeYl3QCmYm123qXSvRMS2HydVKyzAHaE5/sQaJYKeBDEo
 +V5yrcro2W+86QMtpn/cHAo8Lw==
X-Google-Smtp-Source: APXvYqwzQxZ9IYuGZE7fRHX9HR9jZ3vCuFGihvzGzRLMzKQ9kPDNMFvtmH/a4e7Uuo1sLkQjk6Emtw==
X-Received: by 2002:adf:cc87:: with SMTP id p7mr142508wrj.43.1569443477086;
 Wed, 25 Sep 2019 13:31:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e34:ecba:5540:2c05:40e4:899d:aef0])
 by smtp.gmail.com with ESMTPSA id j1sm301348wrg.24.2019.09.25.13.31.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 13:31:16 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] i2c: i2c-mt65xx: fix NULL ptr dereference
Date: Wed, 25 Sep 2019 22:31:13 +0200
Message-Id: <20190925203113.6972-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_133119_899617_AB124839 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: drinkcat@chromium.org, wsa@the-dreams.de,
 Fabien Parent <fparent@baylibre.com>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, tglx@linutronix.de, qii.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Since commit abf4923e97c3 ("i2c: mediatek: disable zero-length transfers
for mt8183"), there is a NULL pointer dereference for all the SoCs
that don't have any quirk. mtk_i2c_functionality is not checking that
the quirks pointer is not NULL before starting to use it.

This commit add a check on the quirk pointer before dereferencing it.

Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for mt8183")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/i2c/busses/i2c-mt65xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 29eae1bf4f86..ec00fc6af9ae 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -875,7 +875,7 @@ static irqreturn_t mtk_i2c_irq(int irqno, void *dev_id)
 
 static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
 {
-	if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
+	if (adap->quirks && adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
 		return I2C_FUNC_I2C |
 			(I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
 	else
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
