Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863ED12BE86
	for <lists+linux-mediatek@lfdr.de>; Sat, 28 Dec 2019 19:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6Tl24QS7B9Wy2EyjBAGN8NpXRT6huepX6FLP9Gx7cYU=; b=aCfyepbTAIwaK2SP7DxTXnWvFw
	dZ2S3l/EfgLmBrD7mplzo/jbAijR+tciziG3s3o3ZHaBlFB1iHMkZn5PNIdm1CJ74Oocdeis8y+ge
	gx+Z6aXJJ6jsDiAXUiYwFjSM6zHLDYrOGbAj+7EyLIhbloFlPMbPJohqKDzqsDhQCnAREEUJIQwiO
	Ne0Q8cx3PIGHY8j+/e6DL9OocHuMSXK8g9EptXUg34Y4MFdYXuCBR53DIHuKBLzHNRDylQgg3j/51
	HDhrLw+rfyDuczaDivrh352GncWQm6X2kzKpJQ8jHXQ3uzak1lL+4aL/ACRF4QZahkklicTWYQOXo
	x1a1txCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGz8-0007Rs-Ps; Sat, 28 Dec 2019 18:38:46 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwJ-0004yJ-JK; Sat, 28 Dec 2019 18:35:52 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d5so6116097pjz.5;
 Sat, 28 Dec 2019 10:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wHDWNkKUY/7HcK7MqADsWD8av4WLf/lhpq+f70oOVx4=;
 b=Nyg2CImHIlC00wE5qnxxCd4xvhYPSTqURjgeLIlpMMiH+Hv5taQKrd8r720IzIBAGR
 nZRD2oKDccKM/yuGWeJRcmnj2+SYaO0cStDR4fRrmidSo76bcIhoTbCfYR0PlGyb2fFd
 emyVPlFXLJi9tObOLVe+/5iePjUhXIrC39i3wjkLInXeLkqTHHH4cYIueyRGCiqVVpT7
 oqEep1j22vmUS8N8PkBcEdMibggLi1RMRklHW4jnAP49yx6KEcvqsAFIoG939aoRxKDH
 EFq2ycJTA5aeOUf2Y1/Bge3TG8s9hNorF0D2GyfxQRa3Od50CwHYL7+JIMw4qmOOS3xM
 G/MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wHDWNkKUY/7HcK7MqADsWD8av4WLf/lhpq+f70oOVx4=;
 b=EXh8O0ocvX5Wla98rfhBE3BCjESI3QQKyRXrvPyp6/5OeDDtT5s8MzqBtJk4VVOS1d
 N1RSyTzojMkedR6e4JzjaMvB7C5+XsXLIYtIyE0tJyzLBArQCA+ATlUA3KeiXONOFPy8
 a2XHfb9BYN191rNxYRHvVYOl8ZFWjhpMV9o3g3t1zt98qM04QxzVR7Uq5+NosUlJxDQ4
 O3J+9o4tDPu6uATBbhFAHpO8x/h3j9AuaBm2OIC5GuWEt3iYoKwIWJMNey7OkhBXCU1n
 x4vpGsbPT3Xll6RzStWbkUB6lqdUm1IKC68KHG0QnCaX239icDEv6W/MAjz0KcCwt78a
 BoBQ==
X-Gm-Message-State: APjAAAU+5kxF+bO0vwoOU5AT5UPhVT+Tm+I7znRetldu15d4EGQllq/M
 M7vyq1qHJGksDfIsJREHRXg=
X-Google-Smtp-Source: APXvYqzg4HSZcS//Fgz3qJ6tuCit2iLqCHRWiMt5cWev8Yt8+UHZ0o3AuJy9vdLOuNpfASdbLD8YRA==
X-Received: by 2002:a17:902:b187:: with SMTP id
 s7mr59226454plr.104.1577558150166; 
 Sat, 28 Dec 2019 10:35:50 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id n7sm18754871pjq.8.2019.12.28.10.35.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:49 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 07/13] mailbox: platform-mhu: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:32 +0000
Message-Id: <20191228183538.26189-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103551_661488_DA3A3046 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/platform_mhu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/platform_mhu.c b/drivers/mailbox/platform_mhu.c
index b6e34952246b..a5922ac0b0bf 100644
--- a/drivers/mailbox/platform_mhu.c
+++ b/drivers/mailbox/platform_mhu.c
@@ -117,7 +117,6 @@ static int platform_mhu_probe(struct platform_device *pdev)
 	int i, err;
 	struct platform_mhu *mhu;
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	int platform_mhu_reg[MHU_CHANS] = {
 		MHU_SEC_OFFSET, MHU_LP_OFFSET, MHU_HP_OFFSET
 	};
@@ -127,8 +126,7 @@ static int platform_mhu_probe(struct platform_device *pdev)
 	if (!mhu)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mhu->base = devm_ioremap_resource(dev, res);
+	mhu->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mhu->base)) {
 		dev_err(dev, "ioremap failed\n");
 		return PTR_ERR(mhu->base);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
