Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6DA1C4C89
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 05:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CS39ANfqumgareaqHM5HFMaecNcUrgVcHktFLu0Tu9Q=; b=O0/SfMiR7EdVwA
	iNJZdrjrTPS2PUbDg8itMab6LWx30JjJ62JpMBt4AEAvPtW6fs4FgxyHFHQ9nHWga+3WYKoMtNVH0
	M14Sbs9Qos29s6eueiIdRR8HfP+Qq22i/yftxi5Ra7yAdjSSrOdHTo8XXUxNktSQHVK30ix3fE9i2
	JzwkBxiI2QYz55mX1lP82wnQC4uYMStbqvJwwpuM1IcG2ei5jJV+wlLxxnRzyUbfNkar+Hbv9P5vL
	+SFBAgWGTvxSGPuypcbwjsK0GBoBqrSv1da6D82djZeRi8IsqE/SQzQ6OihgbF3xdmwrFPPVYMjMS
	NQYYSKR0fKzNCiuBEqeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVo1o-0004CX-8F; Tue, 05 May 2020 03:13:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVo1k-0004B6-HS
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 03:13:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id a4so461228pgc.0
 for <linux-mediatek@lists.infradead.org>; Mon, 04 May 2020 20:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GYizcWQEdFFMME7plWgxGUqZtB5T/alBirdJJTamDl0=;
 b=OpgztqxbjjIWT0S0o1w7IFpGpHzmzY39WXydiZMi6ldwkil3Y4q4qejU5vjDm3/nUe
 fEbipUBhO56RPrSNWfIWQCFHFBpbKJLw1sKyAEBOzfq4LHO5St/jUkn5GRAaJv8IaDNi
 edyX5q2ArkjAFFHnUrW3ROVTOSpJ39tUMixto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GYizcWQEdFFMME7plWgxGUqZtB5T/alBirdJJTamDl0=;
 b=WuLqmTNC1LpIrYqBgDUN4s+Th2QlRYw1L5/TmCaeTeh4noA/4CwcxNot0qjc5Pmqbe
 9UJc43nxH4MNJWfTyLIkpmGhV2/F/25AXYw5EuZxNu/PxxLP0WvLNxJZ55+/i5wsI3az
 NT2P1fH/GTJFFnuZARNMPg0v4x/o2wM7bPSbBCzMT2kJQnTWmbz/3cMlY6/63DeMxRUT
 ux6DkvaeYoFF9AkC7ytZIQdHDkt1rbGfjEzvWRBUivktvgZh83qeJlVPkh6Royg/2kFJ
 SHftbiPkFGcI8dXoalx+bcTtewjuZeUQzWtXhOtP5B4xGlQohvteyjvBk5WUJxotaxQO
 ylwQ==
X-Gm-Message-State: AGi0PuZ29Ww3Af1i4/7JFUW9Yq850fLVkMquCJlmFOWL+8wujjFWhFAj
 CSFoW7sPZe+KGSskVYmNVl84YQ==
X-Google-Smtp-Source: APiQypI+UM9kyqMuWaig7fH+0C3WOrdDmMQJzXMbRfY/YxLoaAju9lVlr4yyrM8odb3a1HXE2WF9Fg==
X-Received: by 2002:a62:e803:: with SMTP id c3mr1104548pfi.228.1588648425913; 
 Mon, 04 May 2020 20:13:45 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id a12sm398974pgv.14.2020.05.04.20.13.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 20:13:45 -0700 (PDT)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
Date: Tue,  5 May 2020 13:13:29 +1000
Message-Id: <20200505031331.122781-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_201348_603843_50FEF9F5 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, jwerner@chromium.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
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

Changes in v6:
- Don't use dt default
- Use default arm,smc-id value if non provided by dt

Changes in v5:
- Change compatible to arm,smc-wdt
- Make timeleft return 0 on error
- Use type punning on smc_func_id to save an alloc
- Change compatible to arm,smc-wdt

Changes in v4:
- Add arm,smc-id property
- Get smc-id from of property
- Return a1 instead of a0 in timeleft

Changes in v3:
- Change name back to arm
- Add optional get_timeleft op
- change name to arm_smc_wdt

Changes in v2:
- Change name arm > mt8173
- use watchdog_stop_on_reboot
- use watchdog_stop_on_unregister
- use devm_watchdog_register_device
- remove smcwd_shutdown, smcwd_remove
- change error codes

Evan Benn (1):
  dt-bindings: watchdog: Add ARM smc wdt for mt8173 watchdog

Julius Werner (1):
  watchdog: Add new arm_smc_wdt watchdog driver

 .../bindings/watchdog/arm-smc-wdt.yaml        |  37 ++++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  13 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/arm_smc_wdt.c                | 188 ++++++++++++++++++
 6 files changed, 247 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
