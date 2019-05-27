Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2441E2ADC6
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 06:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JGrBIQOiK3OP5QDfrVYkiYM7QW0nJoAghyDsTAfHw6E=; b=N8txmHfbbPW5jN
	U168LcSCrp7R3VI2tKyivixh9qA/6Ne8ei/hYmupbKweDmpnbvnwSS1lSUhNlX2CUYY3ZRJMlOIin
	i2ZVmdGhMmZYUT6HUlWxlA62+vtTB6ayEOqg/UU7w9X78mVsdmyoiiVWQP5HrzFGYmPt59QfD3IBq
	+Ue5XTEHUjNn1CYyf5TmJ/0ooKcbu4beHSNilKsIIAZfTHUrTUmrqmpF+QMquZPT6fYPKoOM9W7zT
	mQ2mjCFo8DUtFCl4GZ+Ate60Q4f8EodX0McKHkiqxtEs1R69+oAa4GAkhbRT/0e0JtwvuBpVp+ozT
	l4ag4LKXwsskpLrzXovA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7bd-0007et-Kj; Mon, 27 May 2019 04:51:29 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7ba-0007eG-Ae
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 04:51:27 +0000
Received: by mail-pg1-x532.google.com with SMTP id w22so8378215pgi.6
 for <linux-mediatek@lists.infradead.org>; Sun, 26 May 2019 21:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+pghJ3QtYkbMJ3TCzTPXHLJ/5p1F8C3Os/Bvo/JdKfg=;
 b=SEIZZEXrBAFGXzBgVAyoamK5sJIK5UZGppPItkKO+xGbuTud9szjLsxir/q5ZtHRrY
 A6F0w/RQHS5wiv/Nho1yKYDHxKHYaA5JpGEmYIpfAcbYpjfIzRVJNrpN6iaLC2IHuAsV
 aCbVQcAzDSmQyKMwyqZftwxAW5d/ld3/Cj9C4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+pghJ3QtYkbMJ3TCzTPXHLJ/5p1F8C3Os/Bvo/JdKfg=;
 b=IBR3ozFPiH3djKz8ib8l/5Q6+xJtKs65GfiKirlPmWthqBPnltSDcjvTHD0UC+3QVj
 MBBoBr4QfayrMW1Ck1o3EMu57jWThBmjzZ3cpA3fOQQnw5LV4vk9j7jyK4wBbCPi5kBz
 5b+r97IPdETVhVccOJ53aFR2LMsltB4pCVjCimUmoKxg0sje+5N32ZMEcmhvIpbSzayM
 9UIIndtoJUeDLVmeyFDscOzQ/6JH9g7ML6dMo6Qh55It/32I88QE7Ua1MNUnzjWBaQo+
 c/ikm8djdzaHfdGN+xvqcGOHzGpgo+7YC/5NPpyjwhQGE273fGAfB2PlXk1FNFxFA/wM
 gfIQ==
X-Gm-Message-State: APjAAAUmp5hI2C8kC9nI++EkvSo+JhKvPJBOq7XZuw5ldZfA0azeZEZO
 9j2rtQHg68diwA+Eak3OHkjdSRlcq/hRyw==
X-Google-Smtp-Source: APXvYqwh/5/rhXpwbURGFIHVfZLO0fYXK7K8Mlv98GJtnZi4raWyoWkb3AtxYitbz76kcJUga2aqBw==
X-Received: by 2002:a17:90a:2e89:: with SMTP id
 r9mr28510768pjd.117.1558932685483; 
 Sun, 26 May 2019 21:51:25 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id t18sm8082745pgm.69.2019.05.26.21.51.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 21:51:25 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] fix mediatek drm, dis, and disp-* unbind/bind
Date: Mon, 27 May 2019 12:50:51 +0800
Message-Id: <20190527045054.113259-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_215126_391892_D34D3D01 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

There are some errors when unbinding and rebinding mediatek drm, dsi,
and disp-* drivers. This series is to fix those errors and warnings.

Hsin-Yi Wang (3):
  drm: mediatek: fix unbind functions
  drm: mediatek: remove clk_unprepare() in mtk_drm_crtc_destroy()
  drm: mediatek: unbind components in mtk_drm_unbind()

 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 4 ----
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 8 +++-----
 drivers/gpu/drm/mediatek/mtk_dsi.c      | 4 +++-
 3 files changed, 6 insertions(+), 10 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
