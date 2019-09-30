Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370BFC2446
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Sep 2019 17:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DMS8FI6I/Se3b3eiqxmDgbJ1+vc9HXpj41YUaV9Gis4=; b=AN6fdIzmHb9eQo
	D5iNSqr+GN6yN0hlMwvIH5eerpmv9amzRZwfV3BADV1May9+Mz6MIKd5SnH3xE6R3GvWWxV8ZmS2w
	2+wowlkgbXlbEH5haZxN2xkwBZ0U9Acf/+AUH8kOQyhfvqpB5gOmJk2w5pWIfkGNAOJJLiXigqfZ0
	Gf0MEPZmfmk0mg3V0HxKa9dCX7I/QabbwrKG++eBRi3ivtsQhwPc8TjYFE1hgO9q7x0mGxc1G0xAZ
	dxYStICaWkA80L/DAlkJ6AJoxC4dmyaKn4r8hs86ijX4MvLAMvCgkGl9t57dEjcAZxXGaTaCKPhKi
	EFUi+98lcxfoe9okACMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExbm-0005DK-JL; Mon, 30 Sep 2019 15:29:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExbX-000513-GI
 for linux-mediatek@lists.infradead.org; Mon, 30 Sep 2019 15:28:53 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so11833238wrw.9
 for <linux-mediatek@lists.infradead.org>; Mon, 30 Sep 2019 08:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nKNYJ+YfKpvtJJY2vQQUQXqOjR+zsvfM3h1aXu/ISL4=;
 b=H0TYWQ03EdNmCsa24PTRi/DaCpOIJ2BI1utBui9MEd6CPIO/n5FgXT5QaM7G8Byflr
 IjsUq8JljCgaDgVaAzD8uiJnP7WloIUMKN3Yd5GolIFvfw42I7kWeQ7msUUyIHgOoxmT
 qeUrgV6e8QoColLYaPZ/uWYidkmbwcECRLvj5XlCZ0prajHp0UTdR+4boOIhRHPLDq9o
 eI824KIalBfpNDFfEvSm74rwpvE1rV4I603AEVMf/nzPzkTM2snjOj9N/Ljknq6V3HMf
 EzAsVE3O+DX/VeOsQ2BL9njgaV5cZo/FxQolaudcPZx++VjdnnlQNQcuc+vizfk+Urhx
 Nb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nKNYJ+YfKpvtJJY2vQQUQXqOjR+zsvfM3h1aXu/ISL4=;
 b=SrglXBrYwnuZ0EhV48M3DD0wiLiK+m1hYEOVRY5MfoClJLkEYid6f9HFCA4+mn2jw0
 k5GRgsBnCB0gJN557+HfMLMHiWa1slxUY/HvKDIHkzSYfsH+POX83+0OUXPwukEIg/Bo
 rMOn2r+iOPGzW9Ipo2xVqd2mlTVKoWbmKlHHmulDxUNC1GsVzZtszX8XGLvjAdSQn6jQ
 2USDs8mUD+BX98/vhVrAiTbzDo8lXhg+f1B3/wXs6UGoH3Qlg+lRES5lHCkEa7dj1D2g
 onfW0rsT7ny8HCOs9nD4hWuUcz0fwM6ouuTqzu6qgXzBiW7mMlyt0R3hOYUPlwPm8Vb3
 9Z8w==
X-Gm-Message-State: APjAAAURAJwLPm9j1mh4jerGoJjoXCk0F9VHR5QjWnfiquiNKsitvDG6
 +XytS3U2k2yBPb806iB08SbtLw==
X-Google-Smtp-Source: APXvYqzP1+989rANQG2Lck5S3rwS82kAY9NARdWl/o2qRDBdRfMkejnRZIf/tpixmscYbkuO/ufQZA==
X-Received: by 2002:a5d:6a06:: with SMTP id m6mr13698975wru.190.1569857329714; 
 Mon, 30 Sep 2019 08:28:49 -0700 (PDT)
Received: from radium.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o19sm12420949wro.50.2019.09.30.08.28.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 08:28:48 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] i2c: i2c-mt65xx: fix NULL ptr dereference
Date: Mon, 30 Sep 2019 17:28:46 +0200
Message-Id: <20190930152846.5062-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_082851_539282_4E8CE581 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This commit add a call to i2c_check_quirks which will check whether
the quirks pointer is set, and if so will check if the IP has the
NO_ZERO_LEN quirk.

Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for mt8183")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

v2:
	* use i2c_check_quirks to check the quirks

---
 drivers/i2c/busses/i2c-mt65xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 29eae1bf4f86..2152ec5f535c 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -875,7 +875,7 @@ static irqreturn_t mtk_i2c_irq(int irqno, void *dev_id)
 
 static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
 {
-	if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
+	if (i2c_check_quirks(adap, I2C_AQ_NO_ZERO_LEN))
 		return I2C_FUNC_I2C |
 			(I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
 	else
-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
