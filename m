Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA001DAE5
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 05:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HvFaSasfCzmSSrCQdwfCrV6lOksuYfJGVgOGPoM5gpE=; b=hu8HjFkgYyQ1/O
	MMUjCwpk0Mq7mU36P31ANMGkV5Ptvms6ex3n1O/OPL8fBtyzPw2NKVQT4LRHV4ba2u8/yiyfUM0GL
	YAy1RylG2oeY1ROwpzUWg63uElEIulw3mrK9Y7pcdFJnbnjKeJ4t49ZHEhaIFobw1cI0vUwitJwkY
	Ucs8cgcR2eJwLycoaduG4Yqo7bl/DtHb6KfKBdZ9HEvQ0mzw+IqFSFAXG0mCJRrmefKOu1wsKcieO
	iNiUf70lqaXtODdkZXffvvQF6YeHcAculLR2kCiwoHmyONySsmV0rjnHZULuEWs1YRAJTxdLUdsaw
	XtHNuAF9pCf0MzHXFgfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKxOD-0006Di-LG; Mon, 29 Apr 2019 03:55:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKxO4-00064f-6p
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 03:55:29 +0000
Received: by mail-pl1-x644.google.com with SMTP id b3so4418577plr.7
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Apr 2019 20:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bXk34VsYreRCPNz4i6pWPCyTwvp96N833kW5KsYPoLI=;
 b=QA3b1VEMbb59818pXyhhNImtFA59xQ9SCX5WROV+Ul/trmfLt4HCeV030EL6SVf+iL
 N4s8vtOptfY7n0NAMyGYKVz7OOd8lsdVcIlBDOPBEJ/X1a81gLUMzCzapAfpsJkywWNo
 7uLoYVxud71OMLp9bl+NqVQ57Yadzqm9zi1pg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bXk34VsYreRCPNz4i6pWPCyTwvp96N833kW5KsYPoLI=;
 b=eEvEwqM/TlI5gKys0MmJlpNRVnNySjmHcIPZwIbVLV+GRAk0JHl/JL1/FhDcv+dP2q
 IeG3VR08R2nURF5+kyURLNUzrFUtePuAJF6W84nfdHwmFib4l9GzCHVm/XgMXyryAnhj
 eB5mx5t0inUcKV+q2O9udPyShlgH7iu9bOdwYyAV77lXOSFnI/0yeIYMpkD8STBTITH0
 zK1iPtzJ3k5W1VRojjeu0Yo01QyfysDgURwNYAhfKLE/W/rQmgotWXTuVma0yAPEVHig
 zsFGo9WTDmQaxfb7Xb6PmmQogS723S6iIibosLZOxpUpz1dKNsWW0XNuRauxbtfthy+Q
 lXCw==
X-Gm-Message-State: APjAAAW1f6Q0F4oJ09r0YlAdc1CSmyfCnfdRBDwnNPvj9KigBSpsyQqY
 NadIIpI74Ec6RslEWYQnC9olEcR+yj8=
X-Google-Smtp-Source: APXvYqzjt4UrpemC6KYvWhVVLUW4VYRT494asAiDQflS3Vl76Sn5i0szake9Oj3w9XgJcvbp9UevSA==
X-Received: by 2002:a17:902:6f17:: with SMTP id
 w23mr39043760plk.29.1556510127299; 
 Sun, 28 Apr 2019 20:55:27 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id x128sm55433585pfx.103.2019.04.28.20.55.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:55:26 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 0/2] pinctrl: mediatek: Fix 2 issues related to resume from
 wake sources.
Date: Mon, 29 Apr 2019 11:55:13 +0800
Message-Id: <20190429035515.73611-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_205528_244644_E54FCD30 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This fixes 2 issues when resuming from a wake source, especially if these
wake sources are level-sensitive.

Tested on mt8183 with the series in https://patchwork.kernel.org/cover/10921121/,
but this should affect all mediatek platforms.

Nicolas Boichat (2):
  pinctrl: mediatek: Ignore interrupts that are wake only during resume
  pinctrl: mediatek: Update cur_mask in mask/mask ops

 drivers/pinctrl/mediatek/mtk-eint.c | 34 ++++++++++++++++-------------
 1 file changed, 19 insertions(+), 15 deletions(-)

-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
