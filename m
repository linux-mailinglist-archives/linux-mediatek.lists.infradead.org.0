Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E625B172A1
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 09:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/8uXYT9U44T2+Nz2Rv3301Xn9Aq2WzFhDZlKV7udh3c=; b=qJ6GSJq9FPIgzD
	r13dhn/jLg1Y5ujJbdn8HHXQKigwVAQG0+pSTW4v3homuA22Ztu7FFxtlNS9jXNTcrEHNzWiKzz1K
	NSqgZxIXPB/Opiqy7p1KtGp/vRzZj8SEWaOkHU7qZ719D8TM4FjyF1vmB7B4JYDJYNjuxdCDQpyjR
	Oeqhdpi6Zuu4B5ZCTYprqehnPEhqa4aSUSVr/xM3rVKrF8bTPtIxbxLOvquwbGBd6gUBzOL7UP8vC
	FiDecLTzhHBkBf2pzBwMsu83P/I18v+q8I9s9Wmq/QSprvsW3stOnd680VwRvJGdltT0ukWUYyvBZ
	/W9HAKDmqqNZOrlrzywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOH5I-0001e6-FC; Wed, 08 May 2019 07:33:48 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOH58-0001Vg-Am
 for linux-mediatek@lists.infradead.org; Wed, 08 May 2019 07:33:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id j11so10018838pff.13
 for <linux-mediatek@lists.infradead.org>; Wed, 08 May 2019 00:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cXDSUoWLJ80ofU9SNBABTlyG/UyP3q/4EzPOKhLgxHM=;
 b=JAI6ShQFH5LPrZX4xP0iFXDlDAd4VN4ubLGwY2TwHwEtFJ4qd+UKB0kAFNMmlDUy3/
 9k6f03F08QS2BDgt/s4UrtkxIbFJsaLs76mX9jjd5fOIsOuNzAivPbnD08UX7gb3Jgqw
 1ldBY+aY6kti87kHKpHzxW5ZMzbT0SLV3Eitc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cXDSUoWLJ80ofU9SNBABTlyG/UyP3q/4EzPOKhLgxHM=;
 b=tqQhH7PVfhZ7x4ZW2l4iJamLhNPcZcIGMgo7tLWmwDVvO3gwetn5HWEyt3GL+hBuDb
 mBUET84l/gj1HDg2A63WjE3/cL8e0ckulHjPwIdhWpYKydcCHc7NbcDy6Q0q4Q0egOy2
 EM5ztZfPzj+wYgUOOT7Aj7RRClbLvtHjizZXhfBf37BigiHl90cVW7eq/jvrJK6wmBke
 5EqSuTY/cnWnpwDbe3QN0Uqqr+hgpbfAAV/EvBWLSI/oUJkc3Ew6B/AOf1pcP5bP/BeD
 dbbjCyhjb8/kqsxKSqWCeJSjJ/Z+NzLkg7TeC2W3bZ7tKlD3LV3fKxgYkLkqmAL7YXyy
 1Qpw==
X-Gm-Message-State: APjAAAWURyQEPUkthmypNM1v3wtQB3vOnuAqHLrcgYr0WrGczA88JwsI
 vpK85ysPM3NyE89M+3OqYQXgDToMkLubnGnB
X-Google-Smtp-Source: APXvYqwZZ1j+Kgl5thN1AhwfMfoLsny+ZI4X49uRTCohf76ophHTPd+CXngETV9CgnXsMhUfkhp3zg==
X-Received: by 2002:a62:1897:: with SMTP id 145mr47430119pfy.122.1557300817134; 
 Wed, 08 May 2019 00:33:37 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n26sm29539047pfi.165.2019.05.08.00.33.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 00:33:36 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake sources
Date: Wed,  8 May 2019 15:33:29 +0800
Message-Id: <20190508073331.27475-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_003338_399482_4FCCDCE8 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

This adds support for wake sources in pinctrl-mtk-common-v2, and
pinctrl-mt8183. Without this patch, all interrupts that are left
enabled on suspend act as wake sources (and wake sources without
interrupt enabled do not).

Changes since v1:
 - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
   recommended by Sean, to keep better separation between eint
   and pinctrl-common features.

Nicolas Boichat (2):
  pinctrl: mediatek: Add pm_ops to pinctrl-paris
  pinctrl: mediatek: mt8183: Add mtk_pinctrl_paris_pm_ops

 drivers/pinctrl/mediatek/pinctrl-mt8183.c |  1 +
 drivers/pinctrl/mediatek/pinctrl-paris.c  | 19 +++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.h  |  2 ++
 3 files changed, 22 insertions(+)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
