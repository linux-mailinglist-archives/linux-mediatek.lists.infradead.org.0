Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12ADF1E60FF
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 14:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DDkgbdEx1hC/zLsKp0mUmU122vQnGZxgkgB55iowL8c=; b=qMUBtWvclbKiwr
	rQgTtb+zSBDyS3pLdaz8nrnumVvFsR6brrTYouj2nAQje1t7bcxyQ4Yxz6SMhokVJhmAPYiuE3I5K
	9VSpKnPEN2YWdSWbPNNspORRVkll+UDdrep1wdeSukK6uL5JIOMfbeB6Gk+qMd1WySGyjR8RxsNhk
	6bcDAX47lZp4Iml079/mA1/5e2vBNW7S2ViCB/N3ol6R4jzSQeX4bFCfg868tqT1fkaKUzWwe05rh
	s/+Vvz03i4RfQhZB4gFyt2sYEoJJ2ar7D1G/kyCKW0yMOEh4OsiHXDzZBmH48Psd0T+I0da887Rw5
	uD+958yAv0IkT945BNCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHlG-00081P-0v; Thu, 28 May 2020 12:35:50 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHkj-0007kU-9n
 for linux-mediatek@lists.infradead.org; Thu, 28 May 2020 12:35:18 +0000
Received: by mail-wm1-f68.google.com with SMTP id h4so2944313wmb.4
 for <linux-mediatek@lists.infradead.org>; Thu, 28 May 2020 05:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BQJlUoiEpzky8o42erc/ysy+K0QjdQ5ysTv41onRRZM=;
 b=n5TfYfHGMNMD8D+8R6USQfibZj8hFE1+qAcYAnQl3Mw9twHILNshCqgYHbRv7HpuaL
 v4IklUmYcEW5niLRusiOXOTcnxRLlH+wYowKNR3lZLf5ItsR95+s8Hv++i4vO5dC4uPh
 n0p4wW94L1kDNBcKfipskEv7wfb7426RGlrPhn4PFoxf1I0YEsoJru8lwCrLv92WVLLy
 2hlwHISith+xluEzHWoEfPddgu3jBHMUjBzpgKrfubN75bsbjR1KjwAIJGSc6VeHYsh9
 WQfz5qvkacA722/Ou4Ec0yxL3tlfgeZ+5nX5+ECK9Hx0I9c1Wqnk3rOdrygNkRJdfAh9
 V4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BQJlUoiEpzky8o42erc/ysy+K0QjdQ5ysTv41onRRZM=;
 b=nMUCpSCAGYYt5ToWJxZEJDrpvtBQ+0YOUKroDIJPwGIXh4Ad6Og8H/TTLf3is7d5Nd
 aXST8uExtWU/VFOSRnS1yt4wDOmQvpcCBd+NvtToRV5SWUJhkx/9I70A4xivOPAO5Ae0
 IwCIICKSdxsogWbW5/OpZX6pTiVcTwWOPi7aPsPL1JLqSkkDZ3lhzBdPsUrLXdv9cqnP
 jYmwfY9NWA0TecARyMdEVxOuxSNul9d/5o8ZikskatKS1J4qFXb3QNakphnqIuIOmvoz
 jEBWFUEDxykU6i6Z0G2etG7n+Kxcg2yuSrNpFhhgIWU+qRw8m6g2TswHsqwsIOoZM4dy
 gY9Q==
X-Gm-Message-State: AOAM530upBepruwf9XUJ61zsASxTfyImXOR7NMQmELhPE3IbMflnmuzE
 LaAnXPy2glIC650V4SncOQIk5Q==
X-Google-Smtp-Source: ABdhPJwkYFBW2TmPZeRXJcUrexQmKR4xdJmfkmnN7Oh42inb9Wtau1p7DRTwWhCZId+ogIBZ4nemzg==
X-Received: by 2002:a7b:ce01:: with SMTP id m1mr3261268wmc.116.1590669310774; 
 Thu, 28 May 2020 05:35:10 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c140sm6027306wmd.18.2020.05.28.05.35.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 05:35:10 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 0/2] regmap: provide simple bitops and use them in a driver
Date: Thu, 28 May 2020 14:34:57 +0200
Message-Id: <20200528123459.21168-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053517_429625_1C306376 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Hi Mark,

I noticed that oftentimes I use regmap_update_bits() for simple bit
setting or clearing. In this case the fourth argument is superfluous as
it's always 0 or equal to the mask argument.

This series proposes to add simple bit operations for setting, clearing
and testing specific bits with regmap.

The second patch uses all three in a driver that got recently picked into
the net-next tree.

The patches obviously target different trees so - if you're ok with
the change itself - I propose you pick the first one into your regmap
tree for v5.8 and then I'll resend the second patch to add the first
user for these macros for v5.9.

Bartosz Golaszewski (2):
  regmap: provide helpers for simple bit operations
  net: ethernet: mtk-star-emac: use regmap bitops

 drivers/net/ethernet/mediatek/mtk_star_emac.c | 80 ++++++++-----------
 include/linux/regmap.h                        | 18 +++++
 2 files changed, 53 insertions(+), 45 deletions(-)

-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
