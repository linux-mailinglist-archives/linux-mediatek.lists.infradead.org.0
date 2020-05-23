Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D3D1DF78E
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 May 2020 15:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AfDlaquNacXOnVt/RmjX0ibjNzme+EbettEZfkn4bqc=; b=FdYFgBXTDfoev4
	YY1PKeKcZMDhvhjEUSonwNo0KdoZ5Hd+qouSpVej0W2z0mSjGSH/hweuU4Kuxdcop0QDBxTqyy5FA
	EWNq3QUC0WkxOR/BfDx75LwH17Lk0G3kO+1C3ZBIZ9Tq237hDbZcJ3Z3YdXA2RxxJOIfVXRRvE6iW
	adM64seesbP4xDgaPhczEDu0AevQehyOsxnga/jlToJaa8h4POge1FbUpWjppz4SMZ7904ogwCh+5
	Nu2zP5HtJpVcfCKjQ1uYjerhR6JfPLg6v9KPYtNr551r9ihcd3G/Y9hPBX+L925fT29+9I3fFqaiZ
	Qb/cm2+o31CwunUZmO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcUBQ-0002xJ-3f; Sat, 23 May 2020 13:27:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcUBM-0002w6-Ro
 for linux-mediatek@lists.infradead.org; Sat, 23 May 2020 13:27:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id u13so2535758wml.1
 for <linux-mediatek@lists.infradead.org>; Sat, 23 May 2020 06:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vkX2gAQLIXJ9uj3WUomW1bZyEutKwO7zwPcKUvDNbGs=;
 b=aZv6u+u9OcqamzTM8oSsMQCNupHcwIZaVmUQ/fuDEAEexf93ZxyIIjhx/CDw4aXOgv
 NOPwijbXQXl+FdHr6Gj5klzGzceksP3UAh/tC40uAT6uib99m4ACrWQjfI0LuP1TDWvz
 R+rymcQKGqccVYvw53qMdoLS3UoIPQ63N4laBhqwXtg+r8GnxpHw89Odof1q5alrLC9i
 m1uJD4F8+Sp2as/kHK7dAxCVLkML/rW+rE9amtXsHc+eeINmpPp0wVCw0REwh1uCTivn
 owbwr8iy0v3xnFeZaNjnOMrfR7o9IAhLk9WBAE8IPU+/QUkYsJcKepvoMR0SNAPBPs+8
 mKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vkX2gAQLIXJ9uj3WUomW1bZyEutKwO7zwPcKUvDNbGs=;
 b=QNhqQwR52guhkxfG4sLch0Om1a1dzYSNB01PGlm4aYCfUBAKTNJjm+XlgSxEiMvS83
 rVTfXqBA5wEBvOiuV2Tpo6OUSt1gcZJRVS/7rTXikQcsRRT6GmSMQ9XlXBJkMA0h9cYt
 VxXVWBk0Vw2LbNTqTENHV3T/R0yY7JWOrar765LALpxIHfbQJUHMZD4RDJmRh5m1FU0X
 d7UVspratQtt6h36hocJNeQhSotRuyKAkyT2q/B+Cz5zSyqRSV6W86kYY8pfgsMs/WK5
 wq41wDSjLhJvuOl8GXUJp3JLiLR57A0/BdcrdrbmU/WUy0yt544bqqOMKgiSNOZokzvh
 CX8Q==
X-Gm-Message-State: AOAM530Co9MDCpHyIYK7/YiWvX7N+EFSqtXjV42BDByz8UY02FSP1BWF
 XDGLKTW5WPIgxW7L90xZjvVjlg==
X-Google-Smtp-Source: ABdhPJxC8nZI33xT+XlLdoH7IBEbX8XggatVzrK5OwzBh8IMeKhz7+y+q4FCGYH/str1A7VuWBOXaw==
X-Received: by 2002:a05:600c:20ca:: with SMTP id
 y10mr18295681wmm.126.1590240439200; 
 Sat, 23 May 2020 06:27:19 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id g69sm8098703wmg.15.2020.05.23.06.27.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:27:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 0/5] net: provide a devres variant of register_netdev()
Date: Sat, 23 May 2020 15:27:06 +0200
Message-Id: <20200523132711.30617-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_062720_901745_8F75442E 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Using devres helpers allows to shrink the probing code, avoid memory leaks in
error paths make sure the order in which resources are freed is the exact
opposite of their allocation. This series proposes to add a devres variant
of register_netdev() that will only work with net_device structures whose
memory is also managed.

First we add the missing documentation entry for the only other networking
devres helper: devm_alloc_etherdev().

Next we move devm_alloc_etherdev() into a separate source file.

We then use a proxy structure in devm_alloc_etherdev() to improve readability.

Last: we implement devm_register_netdev() and use it in mtk-eth-mac driver.

v1 -> v2:
- rebase on top of net-next after driver rename, no functional changes

Bartosz Golaszewski (5):
  Documentation: devres: add a missing section for networking helpers
  net: move devres helpers into a separate source file
  net: devres: define a separate devres structure for
    devm_alloc_etherdev()
  net: devres: provide devm_register_netdev()
  net: ethernet: mtk_star_emac: use devm_register_netdev()

 .../driver-api/driver-model/devres.rst        |  5 +
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 17 +---
 include/linux/netdevice.h                     |  2 +
 net/Makefile                                  |  2 +-
 net/devres.c                                  | 95 +++++++++++++++++++
 net/ethernet/eth.c                            | 28 ------
 6 files changed, 104 insertions(+), 45 deletions(-)
 create mode 100644 net/devres.c

-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
