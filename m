Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F69497F7
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 06:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7mRt5JdanfHryV5HcumVXCb8zpdN3Ehr2VSKpapL3Ew=; b=YFSoKCPGn/NnIr
	/MKbM5IWFFfRAq5AJIzeP/6J57B2nJ+BxNTFMm8Yu8/2hVgQfH1+XtU1zwefRCFtcVzC2V21iEdcj
	AYrU9Tk4iwpqMgOl5lqQZFlwPEggtNBBJ2t1bi4gIt+y3WerxHPmevrPvNgjfokBx+fkcbkBphrco
	mYNpqKuG7Fo3E8SFXIOnIo4eLigoCwiiFaTXFHbeg1X0wiZJ3gjJ6Ud+uOQYLYpflt3M4Bg6dTfdQ
	P5rSkK+4zxCPsBiEOs8Igcj7z6i3v77YLJdzujtyTJtTKHeASavmLUC4hEWoPjhs//WIRh7fatU/J
	RvThRNr/jlwPFu6c5MVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd5WZ-0004Us-PX; Tue, 18 Jun 2019 04:15:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd5WG-00047M-2q
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 04:14:53 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so6931429pgc.6
 for <linux-mediatek@lists.infradead.org>; Mon, 17 Jun 2019 21:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jcFyPwPNKq29ytAFd305q8rwNyzYsZ7B9zTaK8mx6W4=;
 b=k5ib5yz5jpa3Ba1wvKnJflDfqnsh3w7oWfVsHcIR29wlU3SHF2pEifWYxqhLA97FMe
 7xvOKFA9uwpxaZqS+FNvKvWuh9RiMfbc52D7g62n13fFs3PXWb0iNZ91gU7ikLXDDxcY
 H4K8xc9rKyACph6YvMZ5WoQzAKvhs/sKx3KlQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jcFyPwPNKq29ytAFd305q8rwNyzYsZ7B9zTaK8mx6W4=;
 b=PRNYyFOmMRPLN5jeuauxNRm1kBwCboh8Z8+O9brWUnBR8ThgPx2jG2yqgWy393T5xh
 fwL3PC/2EoDOSIhLn1nu01ri76exCk7ZUVcFWdXwMkQLVH+nSLZOdH9T8w431M+cjyY5
 tFECYtp2J6p770+BYui3nJ574E5A2rjGgEveg8ykX8bqAtDJ+Yrukr7WNhfEpdarzUz7
 BBEJFSEt/2h5AuU8zcWcnjO3HzOBNtksdXz+kbiGffilzhzTqve8jYVSIqekR8Q2Ma0F
 uITUHJJOaawucmTcI/GNMQ+mHbDf0hX8PpjcaxAD10olMkGzJtPSxjiLAsxb0t3S3wED
 Nzsg==
X-Gm-Message-State: APjAAAWKzNs1cpqGIrkyR5hS9TnTEi35TNsJWMpjKVeVXGXY2i3lMonj
 WZZaAKOat20pfYr6zzD8Yed6CA==
X-Google-Smtp-Source: APXvYqxGfG3zg+MvrVoA7HRSbr/Kl/ngYm8xn6JzKxClD9kGWk3bbE+WQ/dp1ZzdPxo78Q5ajjWSWg==
X-Received: by 2002:a17:90a:2562:: with SMTP id
 j89mr2781411pje.123.1560831290393; 
 Mon, 17 Jun 2019 21:14:50 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 25sm13590685pfp.76.2019.06.17.21.14.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 21:14:49 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RFC 0/2] Use cpufreq-map governor for MT8183 CCI
Date: Tue, 18 Jun 2019 12:14:32 +0800
Message-Id: <20190618041433.245629-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_211452_155802_A1EEDDC5 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Saravana Kannan <skannan@codeaurora.org>,
 "Andrew-sh . Cheng" <andrew-sh.cheng@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Hsin-Yi Wang <hsinyi@chromium.org>

This series uses cpufreq-map governor for mt8183-cci to improve performance.

Hsin-Yi Wang (1):
  devfreq: mt8183-cci: using cpufreq-map governor in cci dvfs driver

Saravana Kannan (1):
  PM / devfreq: Generic CPU frequency to device frequency mapping
    governor

 .../bindings/devfreq/devfreq-cpufreq-map.txt  |  53 ++
 drivers/devfreq/Kconfig                       |   8 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/governor_cpufreq_map.c        | 583 ++++++++++++++++++
 drivers/devfreq/mt8183-cci-devfreq.c          | 194 +-----
 5 files changed, 649 insertions(+), 190 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/devfreq-cpufreq-map.txt
 create mode 100644 drivers/devfreq/governor_cpufreq_map.c

-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
