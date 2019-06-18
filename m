Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F6A4A5AF
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 17:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sCFMDGjCYddyQ0KIJ+vewawwGt6wGMypA0DChGHMUd8=; b=fZ7tV9Qglf4cjT
	wTlmdKH2TKdm/vdtQEyDYT4ttm0GW/h0yyf2kppyB+fTEHvug9y6teu9Nht/W/o1DOaG66IULGPWJ
	T9IEf7aLucRHvNRAaGxJeFRlXippsRGpgxFYsjh5M6kVbPDDonIEYEFGQOdehYo+nTqF/epmLx1dt
	uiR5o3taUYEYoEQE57LSDYSvXu9XsF+IoJugBzlsUAzANPZr/EiHNM/4xfuHsB4VFurU28ocKJRaX
	qh2hf3s66uht0Ovad740/Cp4GcsuJSw/iRBVPJrbGU1BeShlon955XelwW6qUGSdsZWcRFv+XNOj4
	zLzVTtzXMdIbixQLGFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGHC-0007GV-MM; Tue, 18 Jun 2019 15:44:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGH3-0007Cp-6l
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 15:43:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so6111wru.10
 for <linux-mediatek@lists.infradead.org>; Tue, 18 Jun 2019 08:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z2DroQv2ruFtbq7x0Nc/gqYAN5TH+pK8pLfYV3S723M=;
 b=RUZ5pi4GEOGMywZronlWI8Un8Y1j8se22zqHCih+IyO1yuWzno8FVkuUjJBI3m0H6Q
 WP+YBGRHeje8c5wvIMHqN7krS90n0cJhrasXt3x0ulEmWaGWSp/ys+LYjmb7QWdcRWu+
 niqe1vDD6rIcuo2KfRBS5a2SQZMCAzEE7Ydb2pGdgWlJblMRS7A2EL3Pt31Z29uGh/Co
 /96ef69t97+oB8uh+groM6vvJwNTZ4IdxZE9tWyCd1AnCvU2fOJB/EJvIs/1t2gKJJv2
 Hzb6Bdqzi6zhHpcMMg+XCwpFEzxSGcqCaQoIFoAWu8YaeF2JM64TdjnYcyWZNTccyS3v
 vbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z2DroQv2ruFtbq7x0Nc/gqYAN5TH+pK8pLfYV3S723M=;
 b=sG4R4PXHALUNp/X4iaRKln04QDYX+eAamohKX1ePlg2fe1yDqSj8cOTu+9SceGPPv+
 /OCmgbk96j2I59RfNv6KPllsnOmKps0uxI/U2k077Xz0TXO/iZ6rY8w39IJFcF/8gGAn
 Es74VQUvpZ97BEI3pJq9sa1J+VglYABEssLTES4FeuaiqhIhWWj6kcF07bX42sN5G1p/
 VyZt4Psk2LLHNeJcEMqO0DKKzOFpbnZGeu6qpUSN/Ss7Ox9s4AMPx0cC8rZ4IR1AFyps
 Qn3kOU5lAEMeWG7D3rG12u1PfFc9l/AP7MZu7zeTIoS6WD8hXf+qMIDfluqAS8eCpzCq
 zwHg==
X-Gm-Message-State: APjAAAUolS4Vm1Zv08HjcO0QLSRtExEFuX3l7CCp274aOWmfwVppGUqT
 qupVdelprVlB5M8WlZf0l/E9ew==
X-Google-Smtp-Source: APXvYqz3Tk6+Cw9PNouMQlpWVk3VHeEq+wax/N8KlWO1MqvPx1tt7KUzbGTY6HmB7/AfzGz9g8DQjg==
X-Received: by 2002:a05:6000:1c6:: with SMTP id
 t6mr40208869wrx.236.1560872631011; 
 Tue, 18 Jun 2019 08:43:51 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z5sm2633287wma.36.2019.06.18.08.43.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 08:43:50 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lee.jones@linaro.org,
	matthias.bgg@gmail.com
Subject: [PATCH 1/2] mfd: mt6397: Use PLATFORM_DEVID_NONE macro instead of -1
Date: Tue, 18 Jun 2019 17:43:46 +0200
Message-Id: <20190618154347.16991-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_084353_319686_3F288EB7 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use the correct macro when adding the MFD devices instead of using
directly '-1' value.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/mfd/mt6397-core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 337bcccdb914..190ed86ad93e 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -299,9 +299,9 @@ static int mt6397_probe(struct platform_device *pdev)
 		if (ret)
 			return ret;
 
-		ret = devm_mfd_add_devices(&pdev->dev, -1, mt6323_devs,
-					   ARRAY_SIZE(mt6323_devs), NULL,
-					   0, pmic->irq_domain);
+		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+					   mt6323_devs, ARRAY_SIZE(mt6323_devs),
+					   NULL, 0, pmic->irq_domain);
 		break;
 
 	case MT6397_CID_CODE:
@@ -314,9 +314,9 @@ static int mt6397_probe(struct platform_device *pdev)
 		if (ret)
 			return ret;
 
-		ret = devm_mfd_add_devices(&pdev->dev, -1, mt6397_devs,
-					   ARRAY_SIZE(mt6397_devs), NULL,
-					   0, pmic->irq_domain);
+		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+					   mt6397_devs, ARRAY_SIZE(mt6397_devs),
+					   NULL, 0, pmic->irq_domain);
 		break;
 
 	default:
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
