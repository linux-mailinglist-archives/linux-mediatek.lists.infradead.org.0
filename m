Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB670169050
	for <lists+linux-mediatek@lfdr.de>; Sat, 22 Feb 2020 17:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b6gDYqfXb/2NQcUULqO12wfqm0a9rf2vDGaN+0C1LIc=; b=JlDGOBbCnk0xUch/XpkfDOuAIo
	y0Gtj4Cbrz3glFU693UiiomICRwSHa1RE2EMwJDDf+YRtzLxTAX0fhvBXCkV8IqBil/OWUPjXg84r
	9SWKtmLHLOBWHX2uvE7thB5tCxGb+Dy/mELhVUhnFfUPiaPxQqgcGhGOd6RItukbzEJ1LeEOaRAS+
	yRxvsmd2ETV4G/lOCRdhjIfYEhVXTqFT4hP00OEshNN7cXB/Lr8NzWRn7NFQpLITzPKxPi4pX3xao
	fWp0XrY6DVlt8s8miBrBCIRsIu+iRV9BMloPa9RYzTYEzm3Xfe0pBxIHx3Ybt+aROWhT2LrHsKqpB
	ZMsGvbEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Xan-0000pE-Lu; Sat, 22 Feb 2020 16:25:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5XaX-0000Na-CI
 for linux-mediatek@lists.infradead.org; Sat, 22 Feb 2020 16:25:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id j7so2191369plt.1
 for <linux-mediatek@lists.infradead.org>; Sat, 22 Feb 2020 08:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VcbN+zbqnNuxs1Y+XpjZhKj62zQGe5VKHxFInvYNzhY=;
 b=XkrY8yO4wKTo1Ip/tvQeTKJ6BzqMkJdo09DcPnZHfMbhF8ykoejeQh+siDxQLdIimL
 qn5Sz4uupzVNkVPjXrEYXgm101KJVUF3dB5wABhKDecayZ7Zn3BtMJtPGlE9aVQAqGnG
 kwiUp7nlyF+uhreEYdaZZpvI57blTv9VB8HN2ZT+ndjzpEyk2hPHvCvM03ZP64ZMs7ky
 /Zu4yfinheyLwFBGvn3vLSu33X6gSq6brXGxMjNVcSxGVdKT4Z03s9SMCBzHef3g6VhD
 mhuHW/BSrvmEUJ7PUF3ICazyTYRHdRhWPwuPklGPwwrzfeT0y6hn0/95iIGSYjy/maaT
 h//w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VcbN+zbqnNuxs1Y+XpjZhKj62zQGe5VKHxFInvYNzhY=;
 b=lXnDtEeox4DEYPgipQwvBStyZBPT6hYaXQRUvbJuSiZYmOVUFj9PzKgqytJQKiK7QH
 TTmsY17h9TMj13JboMhSMyWSVI367OF8mUWN+cFdhyw1FawQUg+BASKVCY/Jokz6G9OW
 aEpCPkgfeN65mVAX15MrmSr6O8L44Jor+mt6j4LypLuyCI3eTbLQXxNDZYRP8+qk3+g+
 4OT+938kMpRUFrdnFxvyMyKMnyCfZP/MoxVvR7ed6ZoSoJyDbIoJ23edZigd8Zz5tq64
 JftP8+QHKshsPySmhRwE0KrZhjGPXouTDUOAheyrJhtiqN4dG1vENvxKB5USaLuKNhsg
 iPjQ==
X-Gm-Message-State: APjAAAWJ4lA/PtO8h9SclZ4p231hFqCvCdH/zmM8NbmtyNKblHVtp5ZH
 pgE1QbIgLdYH8QqIXjnfanFw
X-Google-Smtp-Source: APXvYqx/LFN4kFjlJlu5S7c+YgXjlHWaEEHF6Jx72iqDrj6XzazM2iceQO8QQj3BejL48ZDwDwQ9dg==
X-Received: by 2002:a17:902:b409:: with SMTP id
 x9mr42518281plr.218.1582388706985; 
 Sat, 22 Feb 2020 08:25:06 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:801:b38c:89e8:305c:23c4:b77f])
 by smtp.gmail.com with ESMTPSA id q17sm6851296pfg.123.2020.02.22.08.25.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 08:25:05 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: matthias.bgg@gmail.com,
	robh+dt@kernel.org
Subject: [PATCH 1/4] dt-bindings: i2c: Document I2C controller binding for
 MT6797 SoC
Date: Sat, 22 Feb 2020 21:54:41 +0530
Message-Id: <20200222162444.11590-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_082509_466714_FF646416 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 adamboardman@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

I2C controller driver for MT6577 SoC is reused for MT6797 SoC. Hence,
document that in DT binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
index 68f6d73a8b73..88b71c1b32c9 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
@@ -8,6 +8,7 @@ Required properties:
       "mediatek,mt2712-i2c": for MediaTek MT2712
       "mediatek,mt6577-i2c": for MediaTek MT6577
       "mediatek,mt6589-i2c": for MediaTek MT6589
+      "mediatek,mt6797-i2c", "mediatek,mt6577-i2c": for MediaTek MT6797
       "mediatek,mt7622-i2c": for MediaTek MT7622
       "mediatek,mt7623-i2c", "mediatek,mt6577-i2c": for MediaTek MT7623
       "mediatek,mt7629-i2c", "mediatek,mt2712-i2c": for MediaTek MT7629
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
