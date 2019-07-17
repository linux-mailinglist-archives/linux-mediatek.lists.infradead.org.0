Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E32A6B65F
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 08:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TwlJdm8u3FrKJ+y692RmI8t6U2ndy59i0313CI5F4pM=; b=IqhfkckZKxd0r1
	6wtO+Ex+fMuUIiWtY3PCBRtN8BnVrYn32OZ73Xb49r2SH0lhUmvHRDTDpzrXKUmmxUYQhaqFxBmdu
	AqdbZN3uliiI8uzAOv48HempylytodTIQUkBW57KP88FBVHgHXWVXL9JGmzTW0V/ufmPfM6FbpR3n
	8usXE7b2UcIVuej2pr9yF7UOInEhXznkK0OLd1EesZUsuCXJO5eVihi0ZPAUqLaE6jueHmFqN84U1
	bZaI4HgliQyb9V5FMDoddXSQjLKAs8JjIbb3pwxgFwtFnifKPs2wHslRx/rBY3luQnpWgX38KXngU
	xkjxQnquDINGlww+iyyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndBB-0007ol-RQ; Wed, 17 Jul 2019 06:12:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndAn-0007XV-QH
 for linux-mediatek@lists.infradead.org; Wed, 17 Jul 2019 06:12:21 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so11393949plt.3
 for <linux-mediatek@lists.infradead.org>; Tue, 16 Jul 2019 23:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hX8hf9utWo00QXSsxtdhEp75HuksEWkyDN5DV1hGs/c=;
 b=C9aDlQBqiWF6wX4UpDuCRAK0wSVSUY8S4julEUtAgSAQ4JK2huok+EwaIQyXMDSmoP
 FJfMYo7rE64OK5UFoprt8hIW3B0WFiNnIi9f0CwJ8EJsUrnyNI/uI6dZdah5yhJ4Y3QN
 JjVo8YUwD0dBemQZMYmyko/aTBBuk3ZFd6Se0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hX8hf9utWo00QXSsxtdhEp75HuksEWkyDN5DV1hGs/c=;
 b=jGKV0jB+yBUDxcC34jfEO5CM4D9IetPFUasvRgdgqiV79N4P1ehkr22UlPk1Yb9zxa
 A27nhDcRpUa5EKNRVfUX2VeQwPgYXrLBFh2mBs5pu0G0qn5i9B/GPW82uShKteI8Cc2n
 7H5HKZ/QowsOS1aVxjECBFNAtIoeZzOltNzUxwJw9TISHNCak885Q9WT/my2eYBcWyHZ
 60hMkL38q21XFUjbOyVJnKsbKINUYVV1B1z+9CGa1FShMay3THzQEe/Wb9AiTOEat68k
 AtEFTsTgGe7XLlJlRbCVNDy+G0pZBcenANbKAN6ARBUXf95Iy4JvT/jFgN1jBQVMR3h/
 IY2A==
X-Gm-Message-State: APjAAAWWXmTeYMkf6OTpeQaurc+yoYKHuSbWUlQ/hNDyAv1UGvcTNMj4
 hayMKcOCA4My+opKWZw726YzLg==
X-Google-Smtp-Source: APXvYqxNE13JnywfYhewdRhwTWC8GYKJF1jON6Pv+BmrCJJvKvetxpRVsPZ30aJ03cT3aBK85DHdQQ==
X-Received: by 2002:a17:902:b43:: with SMTP id
 61mr41949977plq.322.1563343935979; 
 Tue, 16 Jul 2019 23:12:15 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y23sm24079706pfo.106.2019.07.16.23.12.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 23:12:15 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RFC v2 0/2] Use cpu based scaling passive governor for MT8183
 CCI
Date: Wed, 17 Jul 2019 14:11:23 +0800
Message-Id: <20190717061124.453-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_231217_885323_898ED06D 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "MyungJoo Ham \)" <myungjoo.ham@samsung.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series depends on following series:
1. mt8183 cpufreq and cci devfreq from andrew-sh.cheng
https://patchwork.kernel.org/cover/10946047/

2. cpu based scaling support to passive_governor from Sibi Sankar
https://lore.kernel.org/patchwork/patch/1101049/

This series uses cpu based scaling passive governor for mt8183-cci to improve
performance and deal with shared regulator voltage setting issue.

Hsin-Yi Wang (2):
  devfreq: mt8183-cci: using cpu based scaling passive_governor
  cpufreq: mediatek: Support vproc shared by multiple component

 drivers/cpufreq/mediatek-cpufreq.c   |  16 +-
 drivers/devfreq/mt8183-cci-devfreq.c | 239 +++++++--------------------
 2 files changed, 68 insertions(+), 187 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
