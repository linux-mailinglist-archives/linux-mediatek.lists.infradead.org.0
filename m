Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57450DABF
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 05:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W4Fsr6nM38kljLMZZfgHRTf9rQDXjzqKVQCaGGdWVT0=; b=jx6ooQqp0hLuS9
	ADQm7kY8SfsnzPPjX1zxhL37Y6K1Y1XJtqzwGB+9mG7nfpLXAXY4ACXu+Qyt5W+XQkSNnhIV6NrT1
	r6EnsQSYGKCxXtktnes/lW3U3f9uAVzwDmHD6xwsqYQtSHR2htcr0NW6Liuba2/34nZA+zSEUKLaI
	J8SFDZiWq63RQf7YayJKCD4r+RKQQ9w+82Zk28T/1ZnlVOldw2cyXh5bTpGEHiFDtTE2MJw0TbViS
	7574PlR5seNW3vHJc+VDU/fTFfvxFlwUa94SP8ZkTemNppsxYRXsifX4cQomUIQhZ6SrG5e2zjbvf
	PpR+klLUqZrckfd1ddZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwvp-0004um-Ke; Mon, 29 Apr 2019 03:26:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwvg-0004m4-3f
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 03:26:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id n8so4379407plp.10
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Apr 2019 20:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfaUjavgU7FLcbQRnhsJ2vG6fwuvzcfeYnH0eMo2lew=;
 b=ZIO9fcp3UVgcrIpro2HhbPWDhopkv0jrc/1NOivlvUpXqUNgaAWC3mq2KSfBJcfro6
 FnUyZrktLKoHzUugRUgUO1fD0EBf6bACTP64AxQFAlOpDPq31IP1E0S/bAmcVJXu/mAx
 CW/Fu5r6XzT83MF0MjYDhG2nocDhko8GyAYAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VfaUjavgU7FLcbQRnhsJ2vG6fwuvzcfeYnH0eMo2lew=;
 b=A/K3Yn9o/6qg8ATO2eMeXJ3m6rqoeyl04rxDzwG0IwKVLjjdlGumvG15+UYDHTmMdl
 P4RGKAPFuTNUyKb48SEACroYk9ITWNsaiW7PU/bKiupArqAtXH+53NOQZ14/mKIzo6p0
 LzxUGfzIDs5/nkWpNtsDCuzk5WNJcGKdTJ19qcYRpfQzoiJryST/I8yy4/GBsqXuU0Jv
 VsHI7lyp1asQNLTjpJGLjvnknV3fjDKnc5/0xDwFUQc2jmnn7+lsrkLvO0Aw5yKi5QVn
 jF+yAE5akEnfbSDUADozTqui3xTUGYm4BI8qkCT0ylhF1nqea5oOoEzh3Hy9R+/zmBqH
 CLeA==
X-Gm-Message-State: APjAAAW1wrwPl3yKLUD/ZfzfrGdRsPxJpSPOtfEGRUJxio1SFMWOxW/n
 p5C02lKgSs3fdzoZtok/jlD8Hk5P/Vo=
X-Google-Smtp-Source: APXvYqx3ji95ro+Qgz/gh/2nu0EmODc2XcZ6cLoCoVh777KZZC76LVFq9Evhuk0WPUubiVGpIc4D9g==
X-Received: by 2002:a17:902:b089:: with SMTP id
 p9mr59602794plr.185.1556508366781; 
 Sun, 28 Apr 2019 20:26:06 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a10sm41364938pfc.21.2019.04.28.20.26.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:26:05 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 0/2] pinctrl: mediatek: mt8183: Add support for wake sources
Date: Mon, 29 Apr 2019 11:25:49 +0800
Message-Id: <20190429032551.65975-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202608_154678_34B0A710 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

This adds support for wake sources in pinctrl-mtk-common-v2, and
pinctrl-mt8183. Without this patch, all interrupts that are left
enabled on suspend act as wake sources (and wake sources without
interrupt enabled do not).

Nicolas Boichat (2):
  pinctrl: mediatek: Add mtk_eint_pm_ops to common-v2
  pinctrl: mediatek: mt8183: Add mtk_eint_pm_ops

 drivers/pinctrl/mediatek/pinctrl-mt8183.c     |  1 +
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  | 19 +++++++++++++++++++
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |  1 +
 3 files changed, 21 insertions(+)

-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
