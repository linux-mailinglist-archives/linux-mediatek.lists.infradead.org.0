Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108471C4F68
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 09:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yoL4INXOIloC4kJqaPI+lvbpETBcJC9KSiYhaMwhh5c=; b=oHAiXS8icS+xjy
	cTfICBZgSB22s7zm2DvHoczWlDnWeccgSw+sIBySRFF0WxqegzdXOr6aU2K5eQThJpxdbNKtduRig
	j2jJfF9K89V0BOi+EEUy82ik4oaMunxSdKkHBqccsOXtu/XUfwTe4thN1I9SREL3OxDETi3ZWIexb
	9Z0bf3mx3mZ2V2eP/RMyZYVRQ9U76+0JhUAG+qt24agoAFX0NNs/rYSCuL49cscS8bxtkBRq8bRoi
	W0tOP6Sl4aVcY3eqF9VzmgCCxgL4Gjm1adoKcyAzI0mdqmeZGj0FAtXMON82oQkRj/cn19+93tFLF
	tY4pNpHeh4XSPBIL6LGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsGF-0003bl-Rp; Tue, 05 May 2020 07:45:03 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsGA-0003Xn-Dx
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 07:45:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id s20so482186plp.6
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 00:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O2pv13qx7VFGbbGCBI+M8Dk49yxcXbYowJJnWYcKPyA=;
 b=gTUcBPhXn7zwDJld52yMM64s04tMkXRJBQG1NWq/zYwXC6B1H01YZwAbf03E0N+d3a
 dsYVRX3mdZ9pP3VUEc1ki2liSb7gzB2RnSZzS39WlTfSWX5IENahsL6Ptt8mKz3pYpcg
 OyJfrpRgzQWKerlBIyhp3wbvemUv+0LOlwiCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O2pv13qx7VFGbbGCBI+M8Dk49yxcXbYowJJnWYcKPyA=;
 b=P93U0PUQIjgcWSl307LpwG+xElSnj2y3BLHVi++EsB1kiDbN5tTkrbEhf7XY5ZxaEU
 PgGOwfHYfdO/MkpN780x8SYyPNUPsER3cqsXlNG0vNTwrq+qZbXPS7Hmd3MCjZkQ66Kq
 ksg/K5SSLgXRbqtgRCgfLCj6Ue/OBbDbTzU9E4EGDt/W13bv09Qi6tTRwE7F3DBuSbLE
 tF9eJdH4WYbjFxuiqSmsCNFyYU8VSeXkYnOL+ayLlIndja6z4AFp9T/1pDgiVBcjKzqu
 MihSJs4BHxzRMtbC2RFRdgp819QAmyXf/KDkznhX3L30V6oxvx2KBq2t5H/ayHXQX08R
 sx4Q==
X-Gm-Message-State: AGi0PuZLWoNCE+XSVWcunkePRIwIv8wTQhTzVRFRMPQDb4f3JTsVotao
 3T3DSbPQ0EWgUnqFYZLyWyPDtw==
X-Google-Smtp-Source: APiQypKEj76sEkdrmamm6pACw3UuGZqt7SISdTgTQwe/a0f+om4l4A/EzQV+B3BPoL0Bs/K056M7Kg==
X-Received: by 2002:a17:902:8687:: with SMTP id
 g7mr1976063plo.59.1588664697580; 
 Tue, 05 May 2020 00:44:57 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id j5sm1205741pfh.58.2020.05.05.00.44.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 00:44:57 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 0/2] Refactor MDP driver and add dummy component driver
Date: Tue,  5 May 2020 17:44:29 +1000
Message-Id: <20200505074431.242840-1-eizan@google.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_004458_841209_D727E1A2 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@google.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


This series depends on changes in
https://patchwork.kernel.org/patch/11528171/

We are adding a dummy MDP component driver so that all the components
are properly configured with IOMMUs and LARBs. This is required for
us to get hardware video decode working in 4.19, and possibly newer
kernels.


Eizan Miyamoto (2):
  [media] mtk-mdp: add driver to probe mdp components
  [media] mtk-mdp: use pm_runtime in MDP component driver

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 186 +++++++++++++++---
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h |  33 +---
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 177 ++++++++++++-----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.h |   1 +
 4 files changed, 297 insertions(+), 100 deletions(-)

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
