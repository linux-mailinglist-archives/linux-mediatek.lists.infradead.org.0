Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBCCDCCD8
	for <lists+linux-mediatek@lfdr.de>; Fri, 18 Oct 2019 19:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cn32LLnudlmar7H3AoESGlR1q7M3AGNtjUfmb5V1HqA=; b=IZ/j0qpwrJopIJ
	BxM5X8+5wEMqpyElCI0NqLl9zo1kemB/mC9N+tc4p/rk3NvnQsT3A1nhTsOQIhXdeb3ccTDmGL5M2
	aUEc9t4kUiQTc3yKbEGN73cOi+jDVUZoNnfH0jNztADm1ZUrhLSnpiswnURTGAh79FkQsqI2pm5JY
	Mg3adNQ8/C8D8drlzXTraSxCArk606453TEeFfNQQ7AAN7VG0/ZDei5fhR4XBi1X/Up3ouuf8qCBU
	udKnXEdAFfDoQnjIJ7TGap8CbPyaPq2qqwD2azg3VcoW26W3XERv+yWUyy8oILttKwpZk2RKyogb0
	hjYT2fvJ6dQObHh3dOGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLW6w-0001UX-H0; Fri, 18 Oct 2019 17:32:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLW6t-0001Tg-0M
 for linux-mediatek@lists.infradead.org; Fri, 18 Oct 2019 17:32:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id 3so6867828wmi.3
 for <linux-mediatek@lists.infradead.org>; Fri, 18 Oct 2019 10:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Sw0jFW5jGSGbXDR6kjw3sQ7x0eXAWOU04hu+4Lun0I=;
 b=F7bCnS3unseU4Pe5IzC5zUpmWlYMdj2YoPBCoyigGCpOa5U4q61E23KUKl7/OO8nS6
 WUdzxbAus6HqI12ynE+nZwyeZbScvBHaNZ/MS3f0KnUNnx/EplI1jIZL/5iH71+0mdDz
 dcRy9M6gwI3bMmfZsccnxZpqW7Rd51W1NywMy4/Mp4wT89DnDgdkLVO9fv5sh0RYkPyS
 Ehf0VdWN6+9r6al9EuDyaJi+pPQ0TMXNqxP6f179NCcs0/5FVY+iBLYjGQ5xJXBeU71O
 Q8mJc2Fg+yP3dNOPle+Zb1QIZzX2WsgUBZelWPvl8lmHh9R83fIiczy6BM3vNpewfQqr
 /wPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Sw0jFW5jGSGbXDR6kjw3sQ7x0eXAWOU04hu+4Lun0I=;
 b=F5UwPAwzeJUzIk/Tk/EauuiOx+e/OwtkMGGApv3FTqGer2Vb+yo7r3RAVDKtS5r7OP
 HFiW/gV1L//FXGoyM8cLoqDWpaEi7tAzKaIUQ10h8bbVHEG39A2sICCRSZ2jHvtPkFl+
 tJrPoDaIWbuEK+pK1iEAAwS55716A74Me6y51vp4Qn9EK3NkkdAr06RrQsUPKMUkEJaj
 rRMRPGN5e2yn+JAnMXsIulf5ymgRIiPsbMd8N189rbjdz3zKSuyaCK4ORUeOhEYybLy0
 xOjqhno/7mqlq84rCMwEMyOu4jZxlQw1b1smBNucWnz2sFk974mqvx/hSEUVGuFi/XJJ
 WXeQ==
X-Gm-Message-State: APjAAAUl5vxQrf9tw7dJMXqln+7SwGbxxw/EBl3FNzDDjfU9KFsH/q/H
 /4G3CYo/CS3Xk878fBW4vav8Jw==
X-Google-Smtp-Source: APXvYqwLL/J/QMgyordUs7NtcgM+iCDETbDA3BzJsTD+EyqWB7RmlJjXBDAvzNb7XcPW3p+O8v6QGw==
X-Received: by 2002:a05:600c:2201:: with SMTP id
 z1mr8798906wml.169.1571419936945; 
 Fri, 18 Oct 2019 10:32:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:32c:e530:1f62:944f:4c42:96a0])
 by smtp.gmail.com with ESMTPSA id
 z4sm5911967wrh.93.2019.10.18.10.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 10:32:16 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Subject: [PATCH RESEND v2] i2c: i2c-mt65xx: fix NULL ptr dereference
Date: Fri, 18 Oct 2019 19:32:13 +0200
Message-Id: <20191018173213.13282-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_103219_073945_284EA6F4 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Ulrich Hecht <uli@fpond.eu>, drinkcat@chromium.org, wsa@the-dreams.de,
 Fabien Parent <fparent@baylibre.com>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Cengiz Can <cengiz@kernel.wtf>, tglx@linutronix.de,
 qii.wang@mediatek.com
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
Reviewed-by: Cengiz Can <cengiz@kernel.wtf>
Reviewed-by: Hsin-Yi Wang <hsinyi@chromium.org>
Tested-by: Ulrich Hecht <uli@fpond.eu>

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
