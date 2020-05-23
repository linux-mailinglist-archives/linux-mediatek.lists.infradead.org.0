Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF681DF79C
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 May 2020 15:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mm05YctDaTKfxhzeAi5RFa5kwKELVnbSMnJaDiTpAWY=; b=GZMU5vOXjkL3hj
	mWI7TSbXbP3z7KBdnYz2ngGu330JO4B8CxIn0b5kiG73ZPPMaXcIQA5t4nlWNjAT1vmk3BlRJV/jI
	0MIjDQt8WcmHtFYz/FbIA0GGSrYWtNQvGhxwh9k9gEP34mLGfyPwPZPjkEiMCqPCTBr1WZPcAN8Nu
	o0/vCcBY73kRpU/RoKcUxjqhViYgJbNEAUlHQDaBtBVvEESnjcTpCH4vN+zdnztkI7FeJXSCY27qg
	be7OXAye0AE83Fbs/z6xvQuVpm1N5c6XjOMIdbxJyoGkj43uYUudZwMSgnD7OZLE67VtyZDtdR33l
	BO8RGCff7YMSlLQ0+bXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcUBm-0003CI-M9; Sat, 23 May 2020 13:27:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcUBN-0002wW-VX
 for linux-mediatek@lists.infradead.org; Sat, 23 May 2020 13:27:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so8726031wru.12
 for <linux-mediatek@lists.infradead.org>; Sat, 23 May 2020 06:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=Jb+5ZKalM86utufO41gum/2tS7OCDO9S01QHf7MGzAdq8QJbiQutr25oxxnlWFKFjx
 SZR18qW8XesCnotOkM8H9quVQqYTgPCdLi6Hhg42qTzojhe4TfWrzycKi3iHikDyNJsf
 Ky8/1dwIBaNGn+BmOnu4CzyVMTy5XGhLj6c2FWrDQ7sNwWtbGGg15vH/P5a5y6+hovy8
 0rlqQeKnqGk4cNbfwQjDY2T8Oh4k/d1T2eWIevxv44tfqW6CCjW1/zyJBqc/LB1fD7fQ
 e6hxAoYbB+3ek0K4qJKeZW6zAPnzXJfiIuSvoj5gtKzV/sqVyURCSsJZ7bY796SijLfg
 e/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=Emk32Svugt9dFN8Zt54KllHOLnImXfVHznfWcGeXUIAd59QhOysqch0Z1/FtL3ekdd
 fJF3NSZU9DfNwiv/U6elupVtrkRm/mlkTr91ATNgnLZ4nd3yh4T0zi0BcdvASBVM9Ruo
 IRMjojevEoy6T643pKbW9JOjGy+BgEfA3Oq+aEORF5LpAwsaoe7Hj7aEeHnD3erte1Qb
 glXMHbSWXAA9TyuoSkaHFLT85r87EJokB8+ksmCPinaIrNMf0eZXaZugELfO/PBNbYeG
 NHa9bwIYybKAqQe1SN7laS5dvRYSsW3eGNph1iEtV0zVh7XIVcVlqGR1BOhL+2ViR/3Q
 CIug==
X-Gm-Message-State: AOAM531cYTxettv5p0FTEE8/cKr5kR0iRUxQNyJQFVOrVFcJdYqy53rE
 3LHIuT2FdQl3U/ZcLd3zr7WQrw==
X-Google-Smtp-Source: ABdhPJwRfYPqDnrdo+HMqNm8KeR9hux7USj8U+isJ4xnjN1tAmXFnQplrYileiKI5uqJotyI3sPrWw==
X-Received: by 2002:adf:f907:: with SMTP id b7mr7636363wrr.203.1590240440783; 
 Sat, 23 May 2020 06:27:20 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id g69sm8098703wmg.15.2020.05.23.06.27.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:27:20 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 1/5] Documentation: devres: add a missing section for
 networking helpers
Date: Sat, 23 May 2020 15:27:07 +0200
Message-Id: <20200523132711.30617-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200523132711.30617-1-brgl@bgdev.pl>
References: <20200523132711.30617-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_062722_011677_E118A028 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add a new section for networking devres helpers to devres.rst and list
the two existing devm functions.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 Documentation/driver-api/driver-model/devres.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/driver-api/driver-model/devres.rst b/Documentation/driver-api/driver-model/devres.rst
index 46c13780994c..50df28d20fa7 100644
--- a/Documentation/driver-api/driver-model/devres.rst
+++ b/Documentation/driver-api/driver-model/devres.rst
@@ -372,6 +372,10 @@ MUX
   devm_mux_chip_register()
   devm_mux_control_get()
 
+NET
+  devm_alloc_etherdev()
+  devm_alloc_etherdev_mqs()
+
 PER-CPU MEM
   devm_alloc_percpu()
   devm_free_percpu()
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
