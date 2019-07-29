Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7538578473
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 07:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lBnjrsqInNInseVKIg7Ju7IR3fJFIZ2PfT/WAg4bvn8=; b=vAu5Anh6u8nnzJ
	YMMIHcEfb4Wpb/1Wl5zGO+4OPKji7DjzTUIcHFwgepMZMrJs6xzjWmjj3/TgKYaE1zUtIsskWBjOo
	bmM7tIggDHqJ620rrI4LGOKwfXjQv2Tofyug3WOD3RYBPjmzHMvUU65BnSxidNulPXJYrSJzsxVhG
	Q5SOdExMO6T+L1gL5j05ORJ0Wh0Iz/vtXjJD3hN77YObMsnenhZcCy8SqjFz5/2piQSFLEva/spBv
	pg5hKvRUs9P14+rhFqC45XZ2MrU2vvW/HzB10MLlL8kNazTjNzD/WUUExtMTQffCidxldu1XQ6znG
	Qp4zhATGNBaAHJSwnLYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryIL-00045W-0p; Mon, 29 Jul 2019 05:34:01 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hryII-00044J-9e
 for linux-mediatek@lists.infradead.org; Mon, 29 Jul 2019 05:33:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id r22so23241pgk.10
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Jul 2019 22:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DPXHy1a69mKAzAt5eK/5mGSu5mMYfcr+qJqjDh7NSaQ=;
 b=X7ZzQJG0cNXQD6YQsemOKW/jT5dXIqlD5c4Jcz7JtWEhIqBe209fc02CAGpqr+SYx0
 gHPYOCrdYg3Ro7wBapt85n2eL90PlzXxI3QY75kWqphNBvBEhfTaqOY9NODoZZKpkG2h
 jgrZXO+DLTuPGvJ9LjyhDaLG7s2coSQiQVGuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DPXHy1a69mKAzAt5eK/5mGSu5mMYfcr+qJqjDh7NSaQ=;
 b=IsWcWGBcJ+7rroz7gB2roLkkKrzj4MrRacUddP6+gNEi+KfYcyUDdXSGLUfV5rZMmo
 YgLP2pKamrNg0042Pj0RmIExVjpcj4sciIUYyjTmKwm2bjsfeF78WziX57thg4JrAo7H
 GwrMtKsYM1OqfDgRCQkyt6X2m0yz8Clo3p3LosJfui3+qgBoWYy0Gzb6jJoVhRDN0ANG
 vaPM/QhvyqrI8bNCVMH7q8HsDK+N2Sm5/WV6TqcilHIAguDMK5lGfs4eLi2sCJSvq6Ei
 woEm/XZ9HMU0QkXm8jUoHYpk5c9YPUD20FQcsMSdDPMPV+BoYZsHMGemLDy5cpysIecs
 kbgg==
X-Gm-Message-State: APjAAAWIp0NzfOi7NPoN+agFnifQrHmnbl6w0umhWORRlY5zNvg8HSCC
 0/AxbDyCVCSNAUJKpLOT8Fi9vA==
X-Google-Smtp-Source: APXvYqygDVAWdgpICHSE02DV6msSDKrPaHx2VAR3/vrWfQrTSpR/C3whA4rXoQaV+tRhbTuC/OWZhg==
X-Received: by 2002:a17:90a:1d8:: with SMTP id
 24mr111974489pjd.70.1564378433305; 
 Sun, 28 Jul 2019 22:33:53 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id z4sm93792810pfg.166.2019.07.28.22.33.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 22:33:52 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Tomasz Figa <tfiga@chromium.org>
Subject: [PATCH v2 0/2] drm/mediatek: make imported PRIME buffers contiguous
Date: Mon, 29 Jul 2019 14:33:33 +0900
Message-Id: <20190729053335.251379-1-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_223358_339236_C4329895 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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
Cc: Alexandre Courbot <acourbot@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The default DMA segment size was used when importing PRIME buffers,
which resulted in a chance of them not being contiguous in the virtual
IO space of the device and mtk_gem_prime_import_sg_table() complaining
that the SG table was not contiguous as it expects.

This series fixes this issue by

1) Using the correct DMA device when importing PRIME buffers,
2) Setting a more suitable DMA segment size on the DMA device than the
default 64KB.

Changes since v1:
- Split into two patches,
- Fixed an error path that would have returned 0.

Alexandre Courbot (2):
  drm/mediatek: use correct device to import PRIME buffers
  drm/mediatek: set DMA max segment size

 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 49 ++++++++++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_drm_drv.h |  2 ++
 2 files changed, 48 insertions(+), 3 deletions(-)

-- 
2.22.0.709.g102302147b-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
