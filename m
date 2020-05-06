Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE9A1C679A
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 07:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gBlnONFR+W08IiyZPMS8IAINiS6g3vI3iWmgQ2KSU9k=; b=jD9CsCLMedXU42
	WGkw+5Pq/eFd4PDHZAU/T6YdtJvzWXZhO10zaYw1wL1qvgovgjUVKSU+E4w+2vR7fIxYthwl3291D
	WtgeT9B5CTgKNcOaNQUHo0PAQiiwrBQTd1kO1ixot9Ursib1SZ7Pbz6VCo+q/0SX0aJnBJ89qlvCt
	P8Ds9tqy0GbXQGg0s3+r17Dy9nqjS1G9QbuCIHMEvh6CHF1p+pw6rwKEJ3ntZ+hiprDNFmuiAyAAz
	h+dk6gpzN6hfoHUakyRjsobZ/HqoccpFqT7/SKDVEm5yco9pwcWelcP21rMzmLA/zcSM+IMkKgWjO
	bc/0n94jYqvjYBGfDzGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCwm-00076B-Vk; Wed, 06 May 2020 05:50:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCwS-0004XU-ON
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 05:50:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id q124so292269pgq.13
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 22:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yzL6cUEC8Sb9M0V1vJgMsz/nqVpMVfxLp+rf/lwsZKU=;
 b=kAUBHaIn2XglY81EN0TH5ycwufqdQH9VevoTUibsMR40E5b2pIhc6cR9QKtdpRt36a
 Tbc7Iftyur5i+FyD7I2vkmk3ZmM0uWNr41YIGEsZ70mj/JHi7UC1LnPWsJL8DGq9kez4
 vswVXvyYNPJBwPManb3stNUHuwpIIufgTSweQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yzL6cUEC8Sb9M0V1vJgMsz/nqVpMVfxLp+rf/lwsZKU=;
 b=dPt/5RmZe8CbXa/A1+BXyPBncEX4TLPm7Ag6l/6KyCD26w6vV8gNoZ5Wqced+eZT7d
 CsYVB8RQZPv0gjSwTzTTKOg2FC3OaJVjUolxSP0kmWZYZh0vatd2ZHvvyxm2hyxW/9PI
 7ghNaAre0iEc1oe8E1m/dd/Am6TX2NWWzwnAaIMKS6xwMw9Y7GrkX1sQHdSrtTDYcwDq
 exYa/FvOoXvLE86/Qe4dTThPNz6DRLQlX/pi94uEpcWDy6tpWare7uWpbVxrpag5osqx
 4BlFxzhBO0AxXdP1Z6hKHDB+YEyFjzoQ5BJJ0L7YMf8hw6U4kvcSfzzCC7LCzIWbFUzz
 6rVA==
X-Gm-Message-State: AGi0PuaFaZuPZT4zbCmXog5ZclcX/cOpwmuFNAHHr1XqVcB72GnVOPi/
 kOY/jBJhe890RJgnTC47ADBm6Q==
X-Google-Smtp-Source: APiQypL44xNcKeY9JS5dfmN3iPs0MNug++UkszcoF+ZJvAg0ou5lbnqsDADn1qqg9HVVdPkFsqBSJA==
X-Received: by 2002:aa7:9589:: with SMTP id z9mr6512255pfj.247.1588744199913; 
 Tue, 05 May 2020 22:49:59 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id t5sm729738pgp.80.2020.05.05.22.49.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 22:49:59 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/5] MTK MDP driver cleanups to prep for futher work
Date: Wed,  6 May 2020 15:49:15 +1000
Message-Id: <20200506054920.109738-1-eizan@chromium.org>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_225000_812896_AE0C15B4 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


It most notably converts an array of MDP components to a list instead,
but also removes some unused fields.

This series of patches does some cleanup in preparation for futher work
so that hardware video decode works on 4.19 and later kernels. We are
planning on adding a dummy driver for the relevant MDP components that
will be bound together using the component framework, which will enable
calls to set up IOMMUs and LARBs, and make calls into pm_runtime.

Changes in v2:
- remove unnecessary error handling labels in favor of err_m2m_register
- rebase onto linux-next/master to pick up
  757570f11fa4b0ce5472a6583de6f06e996a8527

Eizan Miyamoto (5):
  [media] mtk-mdp: remove mtk_mdp_comp.regs from mtk_mdp_comp.h
  [media] mtk-mdp: handle vb2_dma_contig_set_max_seg_size errors during
    probe
  [media] mtk-mdp: handle vpu_wdt_reg_handler() errors during probe
  [media] mtk-mdp: convert mtk_mdp_dev.comp array to list
  [media] mtk-mdp: Remove mtk_mdp_comp.id and supporting functionality

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 60 ++--------------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 23 ++----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 70 ++++++++++++-------
 drivers/media/platform/mtk-mdp/mtk_mdp_core.h | 10 ++-
 4 files changed, 64 insertions(+), 99 deletions(-)

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
