Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7537166F3F
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Feb 2020 06:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sTPSqXMA94kuR2zSnuobyrA02ZUgx7h0xhFCOHKjRJM=; b=QSAD7xBxaTPvvS
	tDvqaKlWV1tOEdh7eYOv375Ta3Ww2KoDxc+vCPIbJiSU7be3SJt++fjECtQ3dDBg3wcRaiwEV+3sX
	PweDu1ONG/Jbw/GYo/KFkSIBppNz7xbtirorYCjuoxNLvD5n3v4lE3z605a+k7K3aph9/92GFimp0
	6LMszZ+bQXdQy154BDRRn+YQWDY3+5nohSulahp0sM/cfLQqr5mzuR5oLSv2DuSSx1ElHLpz1/13D
	fI6JBgByAiQ39c7BmuuGpsOaJ/fK7cYpo1bW9upAOIOwGYDqQcuCcQGPNNMvO1VBRAOVFRL8cstGT
	Fjwjtj1ZiYPmwlmbGcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5115-0000A8-N0; Fri, 21 Feb 2020 05:38:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5112-00009J-4m
 for linux-mediatek@lists.infradead.org; Fri, 21 Feb 2020 05:38:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id 70so406431pgf.8
 for <linux-mediatek@lists.infradead.org>; Thu, 20 Feb 2020 21:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xR1GRxFdUV2TwDvxuNR/pK3VYzRWJYZmKivDEUcKc5w=;
 b=QVp/FC2NiAc3rBycqqqlyoa0rlWBGhP8nW8nvvVd1pRXp9Io6ugF1YFhOrlCramk4m
 maGakRF1l77Fn3JdI/QLF3uqnkV56NYnLn0ct7McCl8jjFS/RuIzCVK4rKwS0eMsanTp
 JJZ6xUxzRnD685IHKwcVyvWnx6ogkbaou6bhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xR1GRxFdUV2TwDvxuNR/pK3VYzRWJYZmKivDEUcKc5w=;
 b=ojSr/5/4xuuMoqba/1JO7lBKrWqMvWFx5LhYP27/Y9Fi79yt9dfqLwFkiNWtJesqRW
 KaBdmlvlRPdZW3v/1MBiB48lOiR6hicJqtL2ScNkoYwsoL/z/Qk10JYk1ZPq7/5+yz/K
 GuYZmJal3+7PGW8xjjtmMfTnvT60qLmsQBiUyBJUiq1vFb6g1DVenr/Y1tra35e0pvzV
 0FJ923ulsH5z7xe4K7xBaK1CxxmenKVw5qXFSSu1q/v+TluMq2mDyFtedZoVQPlsHlyj
 pAs5jJOQrtWM+9jX5H3HrVHCN7sRXUcLtsv/CbJei8Tw535v3ZUduayeR5W2GAUfWM6p
 Zueg==
X-Gm-Message-State: APjAAAUH1OzP583/I3RaZGuLDAdelK0EbpiCE43t3XNqrhvkD2iRoF1G
 UpNfE/V78I6w67ie3LdB8e8pyw==
X-Google-Smtp-Source: APXvYqwNbEeASGO4ArQ+KQ49tlopvldlo5/I0QneTu45MVpD2X1Vvxvy9falEjB7Hs8GL48/Mzv+xA==
X-Received: by 2002:a62:486:: with SMTP id 128mr36207829pfe.236.1582263499298; 
 Thu, 20 Feb 2020 21:38:19 -0800 (PST)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id b25sm1329060pfo.38.2020.02.20.21.38.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 21:38:18 -0800 (PST)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
Date: Fri, 21 Feb 2020 16:38:00 +1100
Message-Id: <20200221053802.70716-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_213820_211012_F9B81948 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Olof Johansson <olof@lixom.net>,
 jwerner@chromium.org, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This is currently supported in firmware deployed on oak, hana and elm mt8173
chromebook devices. The kernel driver is written to be a generic SMC
watchdog driver.

Arm Trusted Firmware upstreaming review:
    https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405

Patch to add oak, hana, elm device tree:
    https://lore.kernel.org/linux-arm-kernel/20200110073730.213789-1-hsinyi@chromium.org/
I would like to add the device tree support after the above patch is
accepted.

Changes in v2:
- Change name arm > mt8173
- use watchdog_stop_on_reboot
- use watchdog_stop_on_unregister
- use devm_watchdog_register_device
- remove smcwd_shutdown, smcwd_remove
- change error codes

Evan Benn (1):
  dt-bindings: watchdog: Add mt8173,smc-wdt watchdog

Julius Werner (1):
  watchdog: Add new mt8173_smc_wdt watchdog driver

 .../bindings/watchdog/mt8173,smc-wdt.yaml     |  30 ++++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  13 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/mt8173_smc_wdt.c             | 160 ++++++++++++++++++
 6 files changed, 212 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
 create mode 100644 drivers/watchdog/mt8173_smc_wdt.c

-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
